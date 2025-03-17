module fir 
#(  parameter pADDR_WIDTH = 12,
    parameter pDATA_WIDTH = 32,
    parameter Tape_Num    = 11
)
(
    output  wire                     awready,
    output  wire                     wready,
    input   wire                     awvalid,
    input   wire [(pADDR_WIDTH-1):0] awaddr,
    input   wire                     wvalid,
    input   wire [(pDATA_WIDTH-1):0] wdata,
    output  wire                     arready,
    input   wire                     rready,
    input   wire                     arvalid,
    input   wire [(pADDR_WIDTH-1):0] araddr,
    output  wire                     rvalid,
    output  wire [(pDATA_WIDTH-1):0] rdata,    
    input   wire                     ss_tvalid, 
    input   wire [(pDATA_WIDTH-1):0] ss_tdata, 
    input   wire                     ss_tlast, 
    output  wire                     ss_tready, 
    input   wire                     sm_tready, 
    output  wire                     sm_tvalid, 
    output  wire [(pDATA_WIDTH-1):0] sm_tdata, 
    output  wire                     sm_tlast, 
    
    // bram for tap RAM
    output  wire [3:0]               tap_WE,
    output  wire                     tap_EN,
    output  wire [(pDATA_WIDTH-1):0] tap_Di,
    output  wire [(pADDR_WIDTH-1):0] tap_A,
    input   wire [(pDATA_WIDTH-1):0] tap_Do,

    // bram for data RAM
    output  wire [3:0]               data_WE,
    output  wire                     data_EN,
    output  wire [(pDATA_WIDTH-1):0] data_Di,
    output  wire [(pADDR_WIDTH-1):0] data_A,
    input   wire [(pDATA_WIDTH-1):0] data_Do,

    input   wire                     axis_clk,
    input   wire                     axis_rst_n
);

    wire rslt_vld; 
    wire [(pDATA_WIDTH-1):0] core_result;
    wire rd_en_source;
    wire we_tap;
    wire we_str;
    

    // write your code here!
    AXI_INTERACE #(
    .pADDR_WIDTH(pADDR_WIDTH),
    .pDATA_WIDTH(pDATA_WIDTH),
    .Tape_Num(Tape_Num)
    )
    axi_intf_inst(
    .clk(axis_clk),
    .rst_n(axis_rst_n),
    .awvalid(awvalid),
    .awaddr(awaddr),
    .wvalid(wvalid),
    .wdata(wdata),
    .arvalid(arvalid),
    .ss_tvalid(ss_tvalid),
    .ss_tlast(ss_tlast),
    .ss_tdata(ss_tdata),
    .dout_tap(tap_Do),
    .rd_en_fifo(rd_en_source),
    .core_result(core_result),
    .result_vld(rslt_vld),
    .sm_tready(sm_tready),
    .awready(awready),
    .wready(wready),
    .arready(arready),
    .rvalid(rvalid),
    .rdata(rdata),
    .ss_tready(ss_tready),
    .we_tap(we_tap),
    .en_tap(tap_EN),
    .din_tap(tap_Di),
    .ain_tap(tap_A),
    .we_str(we_str),
    .en_str(data_EN),
    .din_str(data_Di),
    .ain_str(data_A),
    .rd_en_source(rd_en_source),
    .sm_tvalid(sm_tvalid),
    .sm_tdata(sm_tdata),
    .sm_tlast(sm_tlast)
    );
    assign tap_WE = {4{we_tap}};
    assign data_WE = {4{we_str}};

    FIR_CORE #(
    .pADDR_WIDTH(pADDR_WIDTH),
    .pDATA_WIDTH(pDATA_WIDTH),
    .Tape_Num(Tape_Num)
    )
    fir_core_inst(
    .clk(axis_clk),
    .rst_n(axis_rst_n),
    .data_in_tap(tap_Do),
    .data_in_str(data_Do),
    .data_str_vld(),
    .rd_en_source(rd_en_source),
    .core_result(core_result),
    .result_vld(rslt_vld)
    );

endmodule
