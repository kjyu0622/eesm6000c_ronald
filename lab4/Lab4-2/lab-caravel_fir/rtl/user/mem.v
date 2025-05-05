// memory with long latency
module bram_wrapper#(
    parameter delay = 10
) 
(
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output reg wbs_ack_o,
    output reg [31:0] wbs_dat_o
);

    wire [31:0] tmp_bram_data;
    wire [31:0] data_out_bram;
    wire [3:0] wren;
    wire en;

    assign en = wbs_stb_i & wbs_cyc_i;
    assign wren = {4{en}} & ({4{wbs_we_i}} & wbs_sel_i);
    
    // for implementing delay
    reg [31:0] shift_data [delay-1:0];
    reg [delay-1:0] shift_rvalid;

    // Instantiate the bram module
    bram bram_inst (
        .CLK(wb_clk_i),
        .WE0(wren),
        .EN0(en),
        .Di0(wbs_dat_i),
        .Do0(tmp_bram_data),
        .A0(wbs_adr_i << 2)
    );

    always @ (posedge wb_clk_i, posedge wb_rst_i) begin
        if (wb_rst_i == 1'b1) begin
            shift_rvalid <= '0;
            wbs_ack_o <= 1'b0;
        end else begin
            shift_rvalid <= { shift_rvalid[delay-2:0], en & ~wbs_we_i};
            wbs_ack_o <= shift_rvalid[delay-1];
        end
    end

    genvar j;
    generate
        for (j=0; j < delay -1; j = j+1) begin
            always @ (posedge wb_clk_i, posedge wb_rst_i) begin
                if (wb_rst_i == 1'b1) begin
                        shift_data[j] <= 32'h0;
                end else begin
                        shift_data[j] <= shift_data[j+1];
                end
            end
        end
    endgenerate

    always @(*) begin
        shift_data[delay-1] = tmp_bram_data;
        wbs_dat_o = shift_data[0];
    end

endmodule