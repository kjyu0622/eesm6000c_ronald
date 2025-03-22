`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2025 06:32:43 AM
// Design Name: 
// Module Name: FIFO_SYNC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FIFO_WRAPPER_SYNC
#(  
    parameter pADDR_WIDTH = 12,
    parameter pDATA_WIDTH = 32,
    parameter Tape_Num    = 11
)(
    input clk,
    input rst_n,
    input wr_en_fifo,
    input rd_en_fifo,
    input [pDATA_WIDTH-1:0] data_in_fifo,
    output [pDATA_WIDTH-1:0] data_fifo_to_sram,
    output [pADDR_WIDTH-1:0] ain_str_r,
    output [pADDR_WIDTH-1:0] ain_str_w,
    output en_str,
    output we_str,
    output empty_fifo,
    output full_fifo
    );
    localparam PAD_Z_ADDR_LEN = pADDR_WIDTH - 4;

    // update pointer for read and write

    wire [3:0] nxt_wrt_ptr, nxt_rd_ptr;
    reg  [3:0] wrt_ptr, rd_ptr;

    reg empty_pre, full_pre;

    // start condition handling
    reg not_sleep;
    reg not_sleep_ext;
    reg clk_start;
    always @ (clk or rst_n or not_sleep_ext) begin
        if (rst_n == 1'b0) begin
            clk_start <= 1'b0;
        end else if (not_sleep_ext == 1'b0) begin
            clk_start <= clk;
        end else begin
            clk_start <= clk_start;
        end
    end

    always @ (posedge clk_start, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            not_sleep <= 1'b0;
            not_sleep_ext <= 1'b0;
        end else begin
            not_sleep <= 1'b1;
            not_sleep_ext <= not_sleep;
        end
    end

    assign nxt_wrt_ptr = wr_en_fifo ? 
                        ((wrt_ptr == Tape_Num-1) ? 4'h0 : wrt_ptr + 1) :
                        wrt_ptr;
    assign nxt_rd_ptr = rd_en_fifo ?
                        ((rd_ptr == Tape_Num-1) ? 4'h0 : rd_ptr + 1) :
                        rd_ptr;

    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            wrt_ptr <= 4'h0;
            rd_ptr <= 4'h0;
        end else begin
            wrt_ptr <= nxt_wrt_ptr;
            rd_ptr <= nxt_rd_ptr;
        end
    end

    // empty full condition

    assign empty_fifo = (wrt_ptr == rd_ptr) && not_sleep_ext == 1'b1;
    assign full_fifo = (wrt_ptr == rd_ptr-1) || ((wrt_ptr == Tape_Num-1) && rd_ptr == 0) || not_sleep_ext == 1'b0;

    // redirecting data/addr flow
    assign data_fifo_to_sram    = data_in_fifo; 
    assign we_str               = wr_en_fifo;
    assign ain_str_r            = { {PAD_Z_ADDR_LEN{1'b0}}, rd_ptr};
    assign ain_str_w            = { {PAD_Z_ADDR_LEN{1'b0}}, wrt_ptr};

    assign en_str               = wr_en_fifo || rd_en_fifo;

endmodule
