module AXI_INTERACE
#(  parameter pADDR_WIDTH = 12,
    parameter pDATA_WIDTH = 32,
    parameter Tape_Num    = 11
)(
    // input
    input                       clk,
    input                       rst_n,
    
    // AXI interface, data input to MAC part
    input                       awvalid,
    input [pADDR_WIDTH-1:0]     awaddr,
    input                       wvalid,
    input [pDATA_WIDTH-1:0]     wdata,
    input                       arvalid,
    input [pADDR_WIDTH-1:0]     araddr,
    input                       rready,
    input                       ss_tvalid,
    input                       ss_tlast,
    input [pDATA_WIDTH-1:0]     ss_tdata,

    input [pDATA_WIDTH-1:0]     dout_tap,
    input                       rd_en_fifo,
    
    // AXI interface, core computed result to output
    input [pDATA_WIDTH-1:0]     core_result,
    input                       result_vld,
    input                       sm_tready,
    //input                       sm_tlast,
    input                       upd_str_data,
    input   [3:0]               i_tap_count,
    input [pDATA_WIDTH-1:0]     num_vld_ops,
       
    //output
    // AXI interface, data input to MAC part
    output                      awready,
    output                      wready,
    output                      arready,
    output                      rvalid,
    output [pDATA_WIDTH-1:0]    rdata,
    output                      ss_tready,
    
    output                      we_tap,
    output                      en_tap,
    output [pDATA_WIDTH-1:0]    din_tap,
    output [pADDR_WIDTH-1:0]    ain_tap,
    
    output                      we_str,
    output                      en_str,
    output [pDATA_WIDTH-1:0]    din_str,
    output [pADDR_WIDTH-1:0]    ain_str,
    
    // AXI interface, core computed result to output
    output                      rd_en_source,
    output                      sm_tvalid,
    output [pDATA_WIDTH-1:0]    sm_tdata,
    output                      sm_tlast

    
);
    wire clk_comp;

    wire conf_a_arrive;
    wire conf_d_arrive;
    wire raddr_arrive;
    reg [pADDR_WIDTH-1:0]   awaddr_prev;
    reg [pDATA_WIDTH-1:0]   wdata_prev;
    reg [pADDR_WIDTH-1:0]   araddr_prev;

    // states for reading input data
    localparam not_arrived  = 2'h0;
    localparam d_arrived    = 2'h1;
    localparam a_arrived    = 2'h2;
    localparam both_arrived = 2'h3;
    
    // states for running, idle,...
    localparam reset_and_idle   = 3'h0;
    localparam wrote_tap        = 3'h1;
    localparam start_process    = 3'h2;
    localparam last_data        = 3'h3;
    localparam done_and_idle    = 3'h4;

    // for core
    localparam pipelines        = 4;
    localparam e2e_lat          = pipelines + Tape_Num;
    
    reg     [2:0]               nxt_state_running;
    reg     [1:0]               nxt_state_arr;
    reg     [2:0]               state_running;
    reg     [1:0]               state_arr;

    reg     [2:0]               run_status; // idle, done, start
    wire    [2:0]               nxt_run_status;

    // for handling we_tap
    wire                        we_tap_from_in;
    wire                        we_tap_from_out;
    wire    [2:0]               wdata_upd_from_in;
    wire    [pDATA_WIDTH-1:0]   wdata_upd;

    reg             valid_read;
    
   
    wire     [pADDR_WIDTH-1:0]  awaddr_upd;
    wire     [pADDR_WIDTH-1:0]  araddr_upd;
    
    wire    [2:0]   tap_internal_upd; // containing what to write to run_status by internal state machine

    // read handling
    wire            en_read_tap;
    reg      [$clog2(pADDR_WIDTH+1)-1:0] num_writes;
    reg             rvalid_stat;
    reg      [pDATA_WIDTH-1:0]  read_tap_internal; // for reading max_num or run_status instead of tap ram

    // fifo interface
    wire wr_en_fifo;
    wire [31:0] data_in_fifo;
    wire [31:0] data_sram_to_fifo;
    wire [11:0] ain_str_r;
    wire [11:0] ain_str_r_fifo; // left shift 2
    wire [11:0] ain_str_w;
    wire [11:0] ain_str_w_fifo; // left shift 2
    wire [31:0] data_fifo_to_sram;
    wire        full_fifo;
    wire [31:0] data_out_fifo;

    reg         rd_en_fifo_1;
    reg  [3:0]  tap_count;

    // computed result
    reg  [31:0] num_vld;
    reg         result_vld_1;
    reg  [31:0] max_num;
    wire [31:0] nxt_num_vld;

    // clk gate
    reg rd_en_source_1, rd_en_source_2, rd_en_source_3, rd_en_source_4;
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            rd_en_source_1 <= 1'b0;
            rd_en_source_2 <= 1'b0;
            rd_en_source_3 <= 1'b0;
            rd_en_source_4 <= 1'b0;
        end else begin
            rd_en_source_1 <= rd_en_source;
            rd_en_source_2 <= rd_en_source_1;
            rd_en_source_3 <= rd_en_source_2;
            rd_en_source_4 <= rd_en_source_3;
        end
    end

    assign clk_comp = clk && rd_en_source_4;
    
    // put addr/data to reg when is ready and valid
    assign conf_a_arrive = awready && awvalid;
    assign conf_d_arrive = wvalid && wready;
    assign raddr_arrive = arready && arvalid;
    assign awaddr_upd  = (conf_a_arrive==1'b1) ? (awaddr - 12'h20) : awaddr_prev;
    assign wdata_upd   = (conf_d_arrive) ? wdata : wdata_prev;
    assign araddr_upd  = (raddr_arrive)  ? (araddr - 12'h20) : araddr_prev;
    always @ (posedge clk) begin
        awaddr_prev <= awaddr_upd;
        wdata_prev  <= wdata_upd;
        araddr_prev <= araddr_upd;
    end
    
    // state machine for arrive condition
    always @ (*) begin
        case ({conf_a_arrive, conf_d_arrive})
            2'h0:
            begin
                nxt_state_arr = state_arr;
            end
            2'h1:
            begin
                if (state_arr == not_arrived) begin
                    nxt_state_arr = d_arrived;
                end else if (state_arr == a_arrived) begin
                    nxt_state_arr = not_arrived;
                end else begin
                    nxt_state_arr = 2'bxx;
                end
            end
            2'h2:
            begin
                if (state_arr == not_arrived) begin
                    nxt_state_arr = a_arrived;
                end else if (state_arr == d_arrived) begin
                    nxt_state_arr = not_arrived;
                end else begin
                    nxt_state_arr = 2'bxx;
                end
            end
            2'h3:
            begin
                nxt_state_arr = not_arrived;
            end   
        endcase
    end
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            state_arr <= not_arrived;
        end else begin
            state_arr <= nxt_state_arr;
        end
    end

    assign we_tap_from_out = (conf_a_arrive && conf_d_arrive) || (nxt_state_arr == not_arrived && state_arr != not_arrived);

    // updated core status as well as tap sram
    assign tap_internal_upd = ((nxt_state_running == start_process || full_fifo ) && state_running == wrote_tap ) ? 3'b0:
                              (nxt_state_running == done_and_idle && state_running == last_data ) ? 3'b111:
                              (nxt_state_running == reset_and_idle && state_running == done_and_idle ) ? 3'b100:
                              run_status;
    assign nxt_run_status = (we_tap_from_out && awaddr_upd  == 12'hfe0) ? wdata_upd[2:0] : tap_internal_upd;
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            run_status <= 3'h4;
        end else begin
            run_status <= nxt_run_status;
        end
    end
//    assign we_tap   = we_tap_from_out || we_tap_from_in;
    assign we_tap   = we_tap_from_out;
    assign awready  = (~we_tap_from_in && rst_n == 1'b1) && state_running < start_process;
    assign wready   = (~we_tap_from_in && rst_n == 1'b1) && state_running < start_process;
    
    // for updating wdata_upd_from_in and we_tap_from_in (cases write to tap ram due to state transition)
    assign we_tap_from_in = (state_running == wrote_tap || state_running > last_data);
    assign wdata_upd_from_in = (nxt_state_running == reset_and_idle) ? 3'h4:
                               //(nxt_state_running == start_process && state_running == wrote_tap) ? 3'h0:
                               (nxt_state_running == done_and_idle && state_running == last_data) ? 3'h7: 
                                3'hx;


    // nxt state for core state, update state running and run_status_internal
    always @ (*) begin
        case(state_running)
            3'h0: nxt_state_running = (run_status == 3'h1) ? wrote_tap : state_running;
            3'h1: nxt_state_running = (run_status == 3'h0) ? start_process : state_running;
            3'h2: nxt_state_running = (ss_tlast == 1'b1) ? last_data : state_running;
            3'h3: nxt_state_running = (sm_tlast == 1'b1) ? done_and_idle : state_running;
            3'h4: nxt_state_running = (sm_tlast == 1'b0) ? reset_and_idle : state_running;
            default: nxt_state_running = 3'hx;
        endcase
//        if (we_tap_from_out == 1'b1 && awaddr_upd == 32'h0) begin // received 1st data or leave from idle
//            nxt_state_running = (wdata_upd[0] || state_running==wrote_tap) ? wrote_tap : starting;
//        end else if (ss_tvalid && ss_tready) begin
//            nxt_state_running = start_process;
//        end else if (ss_tlast) begin
//            nxt_state_running = last_data;
//        end else if (sm_tlast) begin
//            nxt_state_running = done_and_idle;
//        end else begin
//            nxt_state_running = reset_and_idle;
//        end
    end
    // see which path should tap ram be updated to
    assign din_tap = we_tap_from_in ? {29'b0, wdata_upd_from_in} : wdata_upd;
    assign ain_tap = we_tap_from_in ? {pADDR_WIDTH{1'b0}} : 
                    (rd_en_source && (~raddr_arrive || araddr_upd == 12'hfe0)) ? {6'b0, tap_count, 2'b0} : 
                    (we_tap_from_out ? awaddr_upd : araddr_upd);
    
    
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            state_running <= reset_and_idle;
        end
        else begin
            state_running <= nxt_state_running;
         end
    end

    // handle read operation
    assign en_read_tap  = (arready && arvalid) || (state_running == start_process && num_vld < max_num );

    // if read address is status reg or num_of_data, use different path instead of sram output
    always @ (posedge clk) begin
        read_tap_internal <= (araddr_upd[4]) ? max_num : {29'b0, run_status};
    end
    assign rdata        = (araddr_prev[11:5] == 7'h7f && araddr_prev[3:0] == 4'h0) ? read_tap_internal : dout_tap;

    always @(posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            valid_read <= 1'b0; 
        end else begin
            valid_read <= en_read_tap;
        end
    end
    
    //arready is 1 when read tap_num + 1 times
    //assign clk_upd_numw = clk && we_tap_from_out;
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            num_writes <= 0;
            rvalid_stat <= 1'b0;
        end else begin
            num_writes <= (we_tap_from_out) ? num_writes + 1 : num_writes;
            rvalid_stat <= raddr_arrive;
        end
    end
    assign arready = (num_writes > Tape_Num);
    assign rvalid = rvalid_stat;
       

    // enable of tap sram
    assign en_tap = en_read_tap || we_tap;

    // delay for enable fifo read
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            rd_en_fifo_1 <= 1'b0;
        end else begin
            rd_en_fifo_1 <= rd_en_fifo;
        end
    end

    // handling data stream
    assign ain_str_r_fifo = {ain_str_r[9:0], 2'b0};
    assign ain_str_w_fifo = {ain_str_w[9:0], 2'b0};
    FIFO_WRAPPER_SYNC #(
    .pADDR_WIDTH(12),
    .pDATA_WIDTH(pDATA_WIDTH),
    .Tape_Num(Tape_Num))

    fifo_1(
    .clk(clk),
    .rst_n(rst_n),
    .wr_en_fifo(wr_en_fifo),
    .rd_en_fifo(rd_en_fifo_1 && upd_str_data), // rd_en_fifo_1 : in running state, upd_str_data: so should be updated in this cycle
    .data_in_fifo(data_in_fifo),
    //.data_sram_to_fifo(data_sram_to_fifo),
    .ain_str_r(ain_str_r),
    .ain_str_w(ain_str_w),
    .en_str(en_str),
    .we_str(we_str),
    .data_fifo_to_sram(data_fifo_to_sram),
    .empty_fifo(empty_fifo),
    .full_fifo(full_fifo)
    );

    assign wr_en_fifo = ss_tvalid && ss_tready; 
    assign data_in_fifo = ss_tdata;
    assign ss_tready = ~full_fifo;

    // interfacing with data sram
    assign din_str = data_fifo_to_sram;
    assign ain_str = (we_str) ? ain_str_w_fifo : ain_str_r_fifo;

    // computed result from core interfacing with outside
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            max_num <= 32'h0;
            num_vld <= 32'h0;
            result_vld_1 <= 1'b0;
        end else begin
            max_num <= (awaddr == 12'h10 && we_tap_from_out == 1'b1) ? wdata : max_num;
            num_vld <= nxt_num_vld;
            result_vld_1 <= result_vld;
        end
    end

    assign sm_tvalid = result_vld; //(num_vld==max_num && num_vld!=0);
    //assign sm_tlast = (num_vld==max_num && state_running >= wrote_tap);
    assign sm_tlast = (num_vld_ops==max_num && state_running >= wrote_tap);
    //assign nxt_num_vld = result_vld ? (sm_tvalid ? num_vld + 1 : 32'h0): (sm_tvalid ? num_vld : 32'h0);
    assign nxt_num_vld = (state_running == reset_and_idle) ? 32'h0 : (result_vld && sm_tvalid) ? num_vld + 1 : num_vld;
    assign rd_en_source = sm_tready && (state_running == start_process || state_running == last_data);
    assign sm_tdata = core_result;

    // address handling of tap address
    //assign ain_tap = (rd_en_source && (~raddr_arrive)) ? tap_count : araddr_upd;
    
    always @ (posedge clk_comp, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            tap_count <= 4'h0;
        end else begin
            tap_count <= (tap_count != e2e_lat-1) ? tap_count + 1 : 4'h0;
        end
    end


endmodule
