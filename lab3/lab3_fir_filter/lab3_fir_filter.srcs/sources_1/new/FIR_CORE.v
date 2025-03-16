`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2025 09:09:09 AM
// Design Name: 
// Module Name: FIR_CORE
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


module FIR_CORE
#(  parameter pADDR_WIDTH = 12,
    parameter pDATA_WIDTH = 32,
    parameter Tape_Num    = 11
)(
    input clk,
    input rst_n,
    input [pDATA_WIDTH-1:0] data_in_tap,
    input [pDATA_WIDTH-1:0] data_in_str,
    input data_str_vld,
    input rd_en_source,
    output [pDATA_WIDTH-1:0] core_result,
    output result_vld
);

    // clk gate
    wire clk_core;
    reg  rd_en_source_ext;
    
    // calc cycles
    reg [4:0] core_cycle;
    wire [4:0] core_cycle_nxt;

    // shift reg for data_in and data select
    reg [pDATA_WIDTH-1:0] data_in_tap_prep;
    reg [pDATA_WIDTH-1:0] str_shift [Tape_Num-1:0];
    reg [3:0]             data_sel_str;
    reg                   shift_upd;

    // computation path
    reg [pDATA_WIDTH-1:0] mult_prod;
    reg [pDATA_WIDTH-1:0] sum;
    wire [pDATA_WIDTH-1:0] adder_a;
    wire [pDATA_WIDTH-1:0] adder_b;

    // clk gate
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            rd_en_source_ext <= 1'b0;
        end else begin
            rd_en_source_ext <= rd_en_source;
        end
    end
    
    assign clk_core = rd_en_source_ext && clk;

    // data shift
    integer i = 0;
    always @ (posedge clk_core, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            data_sel_str <= 4'd0;
            shift_upd <= 1'b0;
        end else begin
            if (data_sel_str !=0) begin
                data_sel_str <= data_sel_str-1;
                shift_upd <= 1'b0;
            end else begin
                data_sel_str <= 4'd10;
                shift_upd <= 1'b1;
            end
        end
    end

    integer i;
    always @ (posedge shift_upd, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            for(i=0; i<Tape_Num; i=i+1) begin
                str_shift[i] <= 32'h0;
            end
        end else begin
            for(i=Tape_Num-1; i>0; i=i-1) begin
                str_shift[i] <= str_shift[i];
            end
            str_shift[0] <= data_in_str;
        end
    end
   
    // generate vld
    assign result_vld = (core_cycle == (Tape_Num + 2));
    assign core_cycle_nxt = result_vld ? 5'h0 : core_cycle + 1;
    always @ (posedge clk_core, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            core_cycle <= 5'h0;
        end else begin
            core_cycle <= core_cycle_nxt;
        end
    end

    // data path
    always @ (posedge clk_core, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            sum <= 32'h0;
            mult_prod <= 32'h0;
        end else begin
            mult_prod <= data_in_tap_prep * str_shift[core_cycle];
            sum <= adder_a + adder_b;
        end
    end
    assign adder_a = mult_prod;
    assign adder_b = (result_vld) ? 32'h0 : sum;
    assign core_result = sum;
    
    
    
endmodule
