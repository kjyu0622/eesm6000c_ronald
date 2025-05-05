module wb_slave_2_axi (
    input         wb_clk_i,
    input         wb_rst_i,
    input         i_if_wbs_stb_i,
    input         i_if_wbs_cyc_i,
    input         i_if_wbs_we_i,
    input  [3:0]  i_if_wbs_sel_i,
    input  [31:0] i_if_wbs_dat_i,
    input  [31:0] i_if_wbs_adr_i,
    output        o_if_wbs_ack_o,
    output [31:0] o_if_wbs_dat_o,

    input         i_if_awready,
    input         i_if_wready,
    output        o_if_awvalid,
    output [11:0] o_if_awaddr,
    output        o_if_wvalid,
    output [31:0] o_if_wdata,

    input         i_if_arready,
    output        o_if_rready,
    output        o_if_arvalid,
    output [11:0] o_if_araddr,
    input         i_if_rvalid,
    input  [31:0] i_if_rdata,

    output        o_if_ss_tvalid,
    output [31:0] o_if_ss_tdata,
    output        o_if_ss_tlast,
    input         i_if_ss_tready,

    output        o_if_sm_tready,
    input         i_if_sm_tvalid,
    input  [31:0] i_if_sm_tdata,
    input         i_if_sm_tlast
);
//
wire valid_transact; // to signal transaction is valid (must be granted first)
// the four signals below is according to wb master, not fir engine
wire is_read_tap; // to indicate what transaction it is (all 4)
wire is_read_sm;
wire is_write_tap;
wire is_write_ss;
reg  is_read_tap_1dly;

reg  [31:0] num_sent;

// address parameters
localparam fir_base_addr_pref = 24'h300000;
localparam mem_start_addr_pref = 24'h380000;
localparam x_addr = 8'h80;
localparam y_addr = 8'h84;
localparam data_length_addr = 8'h10;
localparam tap_start_addr = 8'h40;

// setup for valid signal
assign valid_transact = i_if_wbs_cyc_i & i_if_wbs_stb_i;

// check which transaction it is
assign is_read_tap  = valid_transact &&
                    i_if_wbs_adr_i[31:8] == fir_base_addr_pref &&
                    //i_if_wbs_adr_i[7:0]  >= tap_start_addr &&
                    i_if_wbs_adr_i[7:0]  <  x_addr &&
                    ~i_if_wbs_we_i;
assign is_read_sm   = valid_transact &&
                    i_if_wbs_adr_i[31:8] == fir_base_addr_pref &&
                    i_if_wbs_adr_i[7:0]  == x_addr &&
                    ~i_if_wbs_we_i;
assign is_write_ss  = valid_transact &&
                    i_if_wbs_adr_i[31:8] == fir_base_addr_pref &&
                    i_if_wbs_adr_i[7:0]  == y_addr &&
                    i_if_wbs_we_i;
assign is_write_tap = valid_transact &&
                    i_if_wbs_adr_i[31:8] == fir_base_addr_pref &&
                    //i_if_wbs_adr_i[7:0]  >= tap_start_addr &&
                    i_if_wbs_adr_i[7:0]  <  x_addr &&
                    i_if_wbs_we_i;
always @(posedge wb_clk_i, posedge wb_rst_i) begin
    if (wb_rst_i == 1'b1)
        is_read_tap_1dly <= 1'b0;
    else
        is_read_tap_1dly <= is_read_tap;
end

// output valid/ ready signals
assign o_if_awvalid = is_write_tap;
assign o_if_wvalid  = is_write_tap;
assign o_if_arvalid = is_read_tap;
assign o_if_rready  = is_read_tap;
assign o_if_sm_tready = is_write_ss;
assign o_if_ss_tvalid = is_read_sm;

// output data flow, to fir engine
assign o_if_wdata = i_if_wbs_dat_i;
assign o_if_ss_tdata = i_if_wbs_dat_i;

// output address flow, to fir engine
assign o_if_araddr = i_if_wbs_adr_i;
assign o_if_awaddr = i_if_wbs_adr_i;

// output data flow, to wb master
assign o_if_wbs_dat_o = is_read_sm ? i_if_sm_tdata : i_if_rdata;

// wishbone output to master
    assign o_wbs_ack_o = valid_transact & (
                        (is_write_tap & i_if_wready & i_if_awready)
                    ||  (is_read_tap_1dly & i_if_rvalid)
                    ||  (is_write_ss & i_if_ss_tready)
                    ||  (is_read_sm & i_if_sm_tvalid));

// logic for ss_tlast
always @(posedge wb_clk_i, posedge wb_rst_i) begin
    if (wb_rst_i == 1'b1) begin
        num_sent <= '0;
    end else begin
        if (valid_transact && i_if_wbs_adr_i == {fir_base_addr_pref,data_length_addr})
            num_sent <= i_if_wbs_dat_i;
        else if (is_write_ss)
            num_sent <= num_sent-1;
        else
            num_sent <= num_sent;
    end
end
assign o_if_ss_tlast = is_write_ss & (num_sent == 32'h0);

endmodule
