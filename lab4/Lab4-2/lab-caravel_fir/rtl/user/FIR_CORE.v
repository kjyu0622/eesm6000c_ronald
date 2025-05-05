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
    output result_vld,
    output upd_str_data,
    output [3:0] tap_count,
    output [pDATA_WIDTH-1:0] num_vld_operations
);

    // user params
    localparam pipeline_stages = 4;
    localparam e2e_lat = Tape_Num + pipeline_stages;

    // clk gate
    reg  clk_core;
    reg  rd_en_source_1;
    reg  rd_en_source_2;
    reg  rd_en_source_3;
    
    // calc cycles
    reg [4:0] core_cycle;
    wire [4:0] core_cycle_nxt;

    // shift reg for data_in and data select
    //reg [pDATA_WIDTH-1:0] data_in_tap_prep;
    reg [pDATA_WIDTH-1:0] str_shift [Tape_Num-1:0];
    reg [3:0]             data_sel_str;
    reg [3:0]             data_sel_str_pre;
    reg                   shift_upd;
    reg                   shift_upd_pre;
    reg                   shift_upd_clk;

    // computation path
    reg [pDATA_WIDTH-1:0] m_tap, m_tap_tmp;
    reg [pDATA_WIDTH-1:0] m_data;
    reg [pDATA_WIDTH-1:0] mult_prod;
    reg [pDATA_WIDTH-1:0] sum;
    wire [pDATA_WIDTH-1:0] adder_a;
    wire [pDATA_WIDTH-1:0] adder_b;

    reg [pDATA_WIDTH-1:0] num_vld;

    // clk gate
    always @ (posedge clk, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            rd_en_source_1 <= 1'b0;
            rd_en_source_2 <= 1'b0;
        end else begin
            rd_en_source_1 <= rd_en_source;
            rd_en_source_2 <= rd_en_source_1;
        end
    end

    always @ (clk or rd_en_source_1 or rst_n) begin
        if (rst_n == 1'b0) begin
            clk_core <= 1'b0;
        end else if (rd_en_source_2) begin
            clk_core <= clk;
        end else begin
            clk_core <= clk_core;
        end
    end


    // data shift
    always @ (posedge clk_core, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            data_sel_str <= 4'd0;
            data_sel_str_pre <= 4'b0;
            shift_upd_pre <= 1'b0;
            shift_upd <= 1'b0;
        end else begin
            if (data_sel_str_pre != 0) begin
                data_sel_str_pre <= data_sel_str_pre-1;
                shift_upd_pre <= 1'b0;
            end else begin
                data_sel_str_pre <= e2e_lat-1;
                shift_upd_pre <= 1'b1;
            end
            data_sel_str <= data_sel_str_pre;
            shift_upd <= shift_upd_pre;
        end
    end
    assign tap_count = data_sel_str;
    assign upd_str_data = shift_upd_pre;

//    always @ (clk or shift_upd or rst_n) begin
//        if (rst_n == 1'b0) begin
//            shift_upd_clk <= 1'b0;
//        end else if (shift_upd) begin
//            shift_upd_clk <= clk;
//        end else begin
//            shift_upd_clk <= shift_upd_clk;
//        end
//    end

    integer i;
    always @ (posedge clk_core, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            for(i=0; i<Tape_Num; i=i+1) begin
                str_shift[i] <= 32'h0;
            end
        end else if (shift_upd_pre) begin
            for(i=Tape_Num-1; i>0; i=i-1) begin
                str_shift[i] <= str_shift[i-1];
            end
            str_shift[0] <= data_in_str;
            //$display("data_in_str is %h and str_shift[0] is %h", data_in_str, str_shift[0]);
        end else begin
            for(i=Tape_Num-1; i>=0; i=i-1) begin
                str_shift[i] <= str_shift[i];
            end
        end
    end
   
    // generate vld
    assign result_vld = (core_cycle == (e2e_lat-1));
    assign core_cycle_nxt = (result_vld || upd_str_data) ? 5'h0 : core_cycle + 1;
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
            m_tap <= 32'h0;
            m_tap_tmp <= 32'h0;
            m_data <= 32'h0;
        end else begin
            if (core_cycle >= Tape_Num) begin
                m_data <= 32'h0;
                m_tap_tmp <= 32'h0;
                m_tap <= 32'h0;
            end else begin
                m_data <= str_shift[core_cycle];
                m_tap_tmp <= data_in_tap;
                 m_tap <= m_tap_tmp;
            end
            mult_prod <= m_tap * m_data;
            sum <= adder_a + adder_b;
        end
    end
    assign adder_a = mult_prod;
    assign adder_b = (result_vld) ? 32'h0 : sum;
    assign core_result = sum;
   
    // counnt number of valid
    always @ (posedge clk_core, negedge rst_n) begin
        if (rst_n == 1'b0) begin
            num_vld <= 32'h0;
        end else begin
            num_vld <= (result_vld) ? num_vld + 1 : num_vld;
        end
    end
    assign num_vld_operations = num_vld; 
    
    
endmodule
