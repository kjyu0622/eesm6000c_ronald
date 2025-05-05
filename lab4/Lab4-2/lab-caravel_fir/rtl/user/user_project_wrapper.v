// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

// below migrated from lab3 tb
localparam pADDR_WIDTH = 12;
localparam pDATA_WIDTH = 32;
wire                        awready;
wire                        wready;
wire                         awvalid;
wire   [(pADDR_WIDTH-1): 0]  awaddr;
wire                         wvalid;
wire signed [(pDATA_WIDTH-1) : 0] wdata;
wire                        arready;
wire                         rready;
wire                         arvalid;
wire         [(pADDR_WIDTH-1): 0] araddr;
wire                        rvalid;
wire signed [(pDATA_WIDTH-1): 0] rdata;
wire                         ss_tvalid;
wire signed [(pDATA_WIDTH-1) : 0] ss_tdata;
wire                         ss_tlast;
wire                        ss_tready;
wire                         sm_tready;
wire                        sm_tvalid;
wire signed [(pDATA_WIDTH-1) : 0] sm_tdata;
wire                        sm_tlast;
wire                         axis_clk;
wire                         axis_rst_n;

// ram for tap
wire [3:0]               tap_WE;
wire                     tap_EN;
wire [(pDATA_WIDTH-1):0] tap_Di;
wire [(pADDR_WIDTH-1):0] tap_A;
wire [(pDATA_WIDTH-1):0] tap_Do;

// ram for data RAM
wire [3:0]               data_WE;
wire                     data_EN;
wire [(pDATA_WIDTH-1):0] data_Di;
wire [(pADDR_WIDTH-1):0] data_A;
wire [(pDATA_WIDTH-1):0] data_Do;


wire ack_mem, ack_fir;
wire [31:0] data_mem, data_fir;
assign wbs_ack_o = ack_mem || ack_fir;
assign wbs_dat_o = ack_mem ? data_mem : data_fir;

//external bram
bram_wrapper bram_wrapper_inst(
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_we_i(wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_ack_o(ack_mem),
    .wbs_dat_o(data_mem)
);

// fir instance
fir fir_engine(
    .awready(awready),
    .wready(wready),
    .awvalid(awvalid),
    .awaddr(awaddr),
    .wvalid(wvalid),
    .wdata(wdata),
    .arready(arready),
    .rready(rready),
    .arvalid(arvalid),
    .araddr(araddr),
    .rvalid(rvalid),
    .rdata(rdata),
    .ss_tvalid(ss_tvalid),
    .ss_tdata(ss_tdata),
    .ss_tlast(ss_tlast),
    .ss_tready(ss_tready),
    .sm_tready(sm_tready),
    .sm_tvalid(sm_tvalid),
    .sm_tdata(sm_tdata),
    .sm_tlast(sm_tlast),
    .tap_WE(tap_WE),
    .tap_EN(tap_EN),
    .tap_Di(tap_Di),
    .tap_A(tap_A),
    .tap_Do(tap_Do),
    .data_WE(data_WE),
    .data_EN(data_EN),
    .data_Di(data_Di),
    .data_A(data_A),
    .data_Do(data_Do),
    .axis_clk(wb_clk_i),
    .axis_rst_n(~wb_rst_i)
);

// RAM for tap
    bram11 tap_RAM (
        .clk(axis_clk),
        .we(|tap_WE),
        .re(|(tap_EN & ~tap_WE)),
        .wdi(tap_Di),
        .waddr(tap_A),
        .raddr(tap_A),
        .rdo(tap_Do)
    );

    // RAM for data: choose bram11 or bram12
    bram11 data_RAM(
        .clk(axis_clk),
        .we(|data_WE),
        .re(|(data_EN & ~data_WE)),
        .wdi(data_Di),
        .waddr(data_A),
        .raddr(data_A),
        .rdo(data_Do)
    );

// wishbone interface
wb_slave_2_axi wb_intf(
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .i_if_wbs_stb_i(wbs_stb_i),
    .i_if_wbs_cyc_i(wbs_cyc_i),
    .i_if_wbs_we_i(wbs_we_i),
    .i_if_wbs_sel_i(wbs_sel_i),
    .i_if_wbs_dat_i(wbs_dat_i),
    .i_if_wbs_adr_i(wbs_adr_i),
    .o_if_wbs_ack_o(ack_fir),
    .o_if_wbs_dat_o(data_fir),

    .i_if_awready(awready),
    .i_if_wready(wready),
    .o_if_awvalid(awvalid),
    .o_if_awaddr(awaddr),
    .o_if_wvalid(wvalid),
    .o_if_wdata(wdata),

    .i_if_arready(arready),
    .o_if_rready(rready),
    .o_if_arvalid(arvalid),
    .o_if_araddr(araddr),
    .i_if_rvalid(rvalid),
    .i_if_rdata(rdata),

    .o_if_ss_tvalid(ss_tvalid),
    .o_if_ss_tdata(ss_tdata),
    .o_if_ss_tlast(ss_tlast),
    .i_if_ss_tready(ss_tready),

    .o_if_sm_tready(sm_tready),
    .i_if_sm_tvalid(sm_tvalid),
    .i_if_sm_tdata(sm_tdata),
    .i_if_sm_tlast(sm_tlast)
);

endmodule	// user_project_wrapper

`default_nettype wire
