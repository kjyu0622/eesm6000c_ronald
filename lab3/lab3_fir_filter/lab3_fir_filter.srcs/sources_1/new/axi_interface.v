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
    localparam starting         = 3'h1;
    localparam wrote_tap        = 3'h2;
    localparam start_process    = 3'h3;
    localparam last_data        = 3'h4;
    localparam done_and_idle    = 3'h5;
    
    reg     [2:0]               nxt_state_running;
    reg     [1:0]               nxt_state_arr;
    reg     [2:0]               state_running;
    reg     [1:0]               state_arr;

    reg     [2:0]               run_status; // idle, done, start
    reg     [2:0]               run_status_internal;
    wire    [2:0]               nxt_run_status;

    // for handling we_tap
    wire            we_tap_from_in;
    wire            we_tap_from_out;
    wire    [2:0]   wdata_upd_from_in;
    wire    [pDATA_WIDTH-1:0]   wdata_upd;

    reg             valid_read;
    reg     [3:0]   tap_count;
    

    // read handling
    wire            en_read_tap;

    // fifo interface
    wire wr_en_fifo;
    wire [31:0] data_in_fifo;
    wire [31:0] data_sram_to_fifo;
    wire [11:0] ain_str_r;
    wire [11:0] ain_str_w;
    wire [31:0] data_fifo_to_sram;
    wire        full_fifo;
    wire [31:0] data_out_fifo;

    // computed result
    reg  [31:0] num_vld;
    reg         result_vld_1;
    reg  [31:0] max_num;
    wire [31:0] nxt_num_vld;

    // clk gate
    assign clk_comp = clk && rd_en_source;
    
    // put addr/data to reg when is ready and valid
    assign conf_a_arrive = awready && awvalid;
    assign conf_d_arrive = wvalid && wready;
    assign raddr_arrive = arready && arvalid;
    assign awaddr_upd  = (conf_a_arrive) ? awaddr : awaddr_prev;
    assign wdata_upd   = (conf_d_arrive) ? wdata : wdata_prev;
    assign araddr_upd  = (raddr_arrive)  ? araddr : araddr_prev;
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
                if (state_arr == d_arrived || state_arr == a_arrived) begin
                    nxt_state_arr = state_arr;
                end
                else begin
                    nxt_state_arr = not_arrived;
                end
            end
            2'h1:
            begin
                if (state_arr == not_arrived || state_arr == both_arrived) begin
                    nxt_state_arr = d_arrived;
                end else if (state_arr == a_arrived) begin
                    nxt_state_arr = both_arrived;
                end else begin
                    nxt_state_arr = 2'bxx;
                end
            end
            2'h2:
            begin
                if (state_arr == not_arrived || state_arr == both_arrived) begin
                    nxt_state_arr = a_arrived;
                end else if (state_arr == d_arrived) begin
                    nxt_state_arr = both_arrived;
                end else begin
                    nxt_state_arr = 2'bxx;
                end
            end
            2'h3:
            begin
                if (state_arr == not_arrived || state_arr == both_arrived) begin
                    nxt_state_arr = both_arrived;
                end else begin
                    nxt_state_arr = 2'bxx;
                end
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

    assign we_tap_from_out = (state_arr == both_arrived);

    // updated core status as well as tap sram
    assign nxt_run_status = (we_tap_from_out && awaddr_upd == 32'h0) ? wdata_upd[2:0] : run_status_internal;
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            run_status <= 3'h4;
        end else begin
            run_status <= nxt_run_status;
        end
    end
    assign we_tap   = we_tap_from_out || we_tap_from_in;
    assign awready  = ~we_tap_from_in;
    assign wready   = ~we_tap_from_in;
    
    // for updating wdata_upd_from_in and we_tap_from_in (cases write to tap ram due to state transition)
    assign we_tap_from_in = (nxt_state_running != state_running 
                            && nxt_state_running != wrote_tap
                            && nxt_state_running != last_data);
    assign wdata_upd_from_in = (nxt_state_running == starting && state_running == reset_and_idle) ? 3'h1:
                               (nxt_state_running == start_process && state_running == wrote_tap) ? 3'h0:
                               (nxt_state_running == done_and_idle && state_running == last_data) ? 3'h7:
                               (nxt_state_running == reset_and_idle && done_and_idle == done_and_idle) ? 3'h4:
                                3'hx;


    // nxt state for core state, update state running and run_status_internal
    always @ (*) begin
        if (we_tap_from_out == 1'b1 && awaddr_upd == 32'h0) begin // received 1st data or leave from idle
            nxt_state_running = (wdata_upd[0]) ? starting : wrote_tap;
        end else if (ss_tvalid && ss_tready) begin
            nxt_state_running = start_process;
        end else if (ss_tlast) begin
            nxt_state_running = last_data;
        end else if (sm_tlast) begin
            nxt_state_running = done_and_idle;
        end else begin
            nxt_state_running = reset_and_idle;
        end
    end
    // see which path should tap ram be updated to
    assign din_tap = we_tap_from_in ? {29'b0, wdata_upd_from_in} : wdata_upd;
    assign ain_tap = we_tap_from_in ? {pADDR_WIDTH{1'b0}} : 
                    ((rd_en_source && (~raddr_arrive)) ? tap_count : araddr_upd);
    
    
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            state_running <= reset_and_idle;
            run_status_internal <= 3'h4;
        end
        else begin
            state_running <= nxt_state_running;
        end
    end

    // handle read operation
    assign en_read_tap  = arready && arvalid;
    assign arready      = (state_running > wrote_tap);
    assign rdata        = dout_tap;

    always @(posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            valid_read <= 1'b0; 
        end else begin
            valid_read <= en_read_tap;
        end
    end
    
    assign rvalid      = valid_read;
    

    // enable of tap sram
    assign en_tap = en_read_tap || we_tap;

    // handling data stream
    FIFO_WRAPPER_SYNC #(
    .pADDR_WIDTH(4),
    .pDATA_WIDTH(pDATA_WIDTH),
    .Tape_Num(Tape_Num))

    fifo_1(
    .clk(clk),
    .rst_n(rst_n),
    .wr_en_fifo(wr_en_fifo),
    .rd_en_fifo(rd_en_fifo),
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
    assign ain_str = (we_str) ? ain_str_w : ain_str_r;

    // computed result from core interfacing with outside
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            max_num <= 32'h0;
            num_vld <= 32'h0;
            result_vld_1 <= 1'b0;
        end else begin
            max_num <= (awaddr == 12'h10 && we_tap_from_out == 1'b1) ? wdata : 32'h0;
            num_vld <= nxt_num_vld;
            result_vld_1 <= result_vld;
        end
    end

    assign sm_tvalid = (num_vld==max_num && num_vld!=0);
    assign sm_tlast = (num_vld==max_num);
    assign nxt_num_vld = result_vld ? (sm_tvalid ? num_vld + 1 : 32'h0): (sm_tvalid ? num_vld : 32'h0);
    assign rd_en_source = sm_tready && result_vld_1;
    assign sm_tdata = core_result;

    // address handling of tap address
    //assign ain_tap = (rd_en_source && (~raddr_arrive)) ? tap_count : araddr_upd;
    
    always @ (posedge clk_comp, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            tap_count <= 4'h0;
        end else begin
            tap_count <= (tap_count != Tape_Num) ? tap_count + 1 : 4'h0;
        end
    end

endmodule
