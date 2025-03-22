// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Mar 22 19:14:14 2025
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/ubuntu/Desktop/EESM6000C/eesm6000c_ronald/lab3/lab3_fir_filter/lab3_fir_filter.sim/sim_1/synth/timing/xsim/fir_tb_time_synth.v
// Design      : fir
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module AXI_INTERACE
   (rvalid_OBUF,
    rd_en_fifo_1,
    rd_en_source_2,
    data_EN_OBUF,
    data_WE_OBUF,
    data_A_OBUF,
    ss_tready_OBUF,
    tap_A_OBUF,
    wready_OBUF,
    tap_Di_OBUF,
    tap_WE_OBUF,
    tap_EN_OBUF,
    sm_tlast_OBUF,
    arready_OBUF,
    Q,
    rdata_OBUF,
    CLK,
    not_sleep_ext_reg,
    awaddr_IBUF,
    araddr_IBUF,
    upd_str_data,
    ss_tvalid_IBUF,
    sm_tready_IBUF,
    axis_rst_n_IBUF,
    D,
    arvalid_IBUF,
    awvalid_IBUF,
    wvalid_IBUF,
    axis_clk_IBUF,
    ss_tlast_IBUF,
    tap_Do_IBUF,
    E,
    \num_vld_reg[31]_0 );
  output rvalid_OBUF;
  output rd_en_fifo_1;
  output rd_en_source_2;
  output data_EN_OBUF;
  output [0:0]data_WE_OBUF;
  output [3:0]data_A_OBUF;
  output ss_tready_OBUF;
  output [11:0]tap_A_OBUF;
  output wready_OBUF;
  output [31:0]tap_Di_OBUF;
  output [0:0]tap_WE_OBUF;
  output tap_EN_OBUF;
  output sm_tlast_OBUF;
  output arready_OBUF;
  output [0:0]Q;
  output [31:0]rdata_OBUF;
  input CLK;
  input not_sleep_ext_reg;
  input [11:0]awaddr_IBUF;
  input [11:0]araddr_IBUF;
  input upd_str_data;
  input ss_tvalid_IBUF;
  input sm_tready_IBUF;
  input axis_rst_n_IBUF;
  input [31:0]D;
  input arvalid_IBUF;
  input awvalid_IBUF;
  input wvalid_IBUF;
  input axis_clk_IBUF;
  input ss_tlast_IBUF;
  input [31:0]tap_Do_IBUF;
  input [0:0]E;
  input [0:0]\num_vld_reg[31]_0 ;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_running[0]_i_1_n_0 ;
  wire \FSM_onehot_state_running[1]_i_1_n_0 ;
  wire \FSM_onehot_state_running[2]_i_1_n_0 ;
  wire \FSM_onehot_state_running[3]_i_1_n_0 ;
  wire \FSM_onehot_state_running[4]_i_1_n_0 ;
  wire \FSM_onehot_state_running_reg_n_0_[0] ;
  wire \FSM_onehot_state_running_reg_n_0_[4] ;
  wire [0:0]Q;
  wire [11:0]araddr_IBUF;
  wire [11:0]araddr_prev;
  wire [11:0]araddr_upd;
  wire [11:4]araddr_upd0;
  wire araddr_upd0_carry__0_i_1_n_0;
  wire araddr_upd0_carry__0_i_2_n_0;
  wire araddr_upd0_carry__0_i_3_n_0;
  wire araddr_upd0_carry__0_i_4_n_0;
  wire araddr_upd0_carry__0_n_1;
  wire araddr_upd0_carry__0_n_2;
  wire araddr_upd0_carry__0_n_3;
  wire araddr_upd0_carry_i_1_n_0;
  wire araddr_upd0_carry_i_2_n_0;
  wire araddr_upd0_carry_i_3_n_0;
  wire araddr_upd0_carry_n_0;
  wire araddr_upd0_carry_n_1;
  wire araddr_upd0_carry_n_2;
  wire araddr_upd0_carry_n_3;
  wire arready_OBUF;
  wire arvalid_IBUF;
  wire [11:0]awaddr_IBUF;
  wire [11:0]awaddr_prev;
  wire \awaddr_prev[0]_i_1_n_0 ;
  wire \awaddr_prev[10]_i_1_n_0 ;
  wire \awaddr_prev[11]_i_1_n_0 ;
  wire \awaddr_prev[1]_i_1_n_0 ;
  wire \awaddr_prev[2]_i_1_n_0 ;
  wire \awaddr_prev[3]_i_1_n_0 ;
  wire \awaddr_prev[4]_i_1_n_0 ;
  wire \awaddr_prev[5]_i_1_n_0 ;
  wire \awaddr_prev[6]_i_1_n_0 ;
  wire \awaddr_prev[7]_i_1_n_0 ;
  wire \awaddr_prev[8]_i_1_n_0 ;
  wire \awaddr_prev[9]_i_1_n_0 ;
  wire [11:4]awaddr_upd0;
  wire awaddr_upd0_carry__0_i_1_n_0;
  wire awaddr_upd0_carry__0_i_2_n_0;
  wire awaddr_upd0_carry__0_i_3_n_0;
  wire awaddr_upd0_carry__0_i_4_n_0;
  wire awaddr_upd0_carry__0_n_1;
  wire awaddr_upd0_carry__0_n_2;
  wire awaddr_upd0_carry__0_n_3;
  wire awaddr_upd0_carry_i_1_n_0;
  wire awaddr_upd0_carry_i_2_n_0;
  wire awaddr_upd0_carry_i_3_n_0;
  wire awaddr_upd0_carry_n_0;
  wire awaddr_upd0_carry_n_1;
  wire awaddr_upd0_carry_n_2;
  wire awaddr_upd0_carry_n_3;
  wire awvalid_IBUF;
  wire axis_clk_IBUF;
  wire axis_rst_n_IBUF;
  wire clk_comp;
  wire [3:0]data_A_OBUF;
  wire data_EN_OBUF;
  wire [0:0]data_WE_OBUF;
  wire en_read_tap1__15;
  wire en_read_tap1_carry__0_i_1_n_0;
  wire en_read_tap1_carry__0_i_2_n_0;
  wire en_read_tap1_carry__0_i_3_n_0;
  wire en_read_tap1_carry__0_i_4_n_0;
  wire en_read_tap1_carry__0_i_5_n_0;
  wire en_read_tap1_carry__0_i_6_n_0;
  wire en_read_tap1_carry__0_i_7_n_0;
  wire en_read_tap1_carry__0_i_8_n_0;
  wire en_read_tap1_carry__0_n_0;
  wire en_read_tap1_carry__0_n_1;
  wire en_read_tap1_carry__0_n_2;
  wire en_read_tap1_carry__0_n_3;
  wire en_read_tap1_carry__1_i_1_n_0;
  wire en_read_tap1_carry__1_i_2_n_0;
  wire en_read_tap1_carry__1_i_3_n_0;
  wire en_read_tap1_carry__1_i_4_n_0;
  wire en_read_tap1_carry__1_i_5_n_0;
  wire en_read_tap1_carry__1_i_6_n_0;
  wire en_read_tap1_carry__1_i_7_n_0;
  wire en_read_tap1_carry__1_i_8_n_0;
  wire en_read_tap1_carry__1_n_0;
  wire en_read_tap1_carry__1_n_1;
  wire en_read_tap1_carry__1_n_2;
  wire en_read_tap1_carry__1_n_3;
  wire en_read_tap1_carry__2_i_1_n_0;
  wire en_read_tap1_carry__2_i_2_n_0;
  wire en_read_tap1_carry__2_i_3_n_0;
  wire en_read_tap1_carry__2_i_4_n_0;
  wire en_read_tap1_carry__2_i_5_n_0;
  wire en_read_tap1_carry__2_i_6_n_0;
  wire en_read_tap1_carry__2_i_7_n_0;
  wire en_read_tap1_carry__2_i_8_n_0;
  wire en_read_tap1_carry__2_n_1;
  wire en_read_tap1_carry__2_n_2;
  wire en_read_tap1_carry__2_n_3;
  wire en_read_tap1_carry_i_1_n_0;
  wire en_read_tap1_carry_i_2_n_0;
  wire en_read_tap1_carry_i_3_n_0;
  wire en_read_tap1_carry_i_4_n_0;
  wire en_read_tap1_carry_i_5_n_0;
  wire en_read_tap1_carry_i_6_n_0;
  wire en_read_tap1_carry_i_7_n_0;
  wire en_read_tap1_carry_i_8_n_0;
  wire en_read_tap1_carry_n_0;
  wire en_read_tap1_carry_n_1;
  wire en_read_tap1_carry_n_2;
  wire en_read_tap1_carry_n_3;
  wire fifo_1_n_7;
  wire [31:1]in16;
  wire [31:0]max_num;
  wire max_num0;
  wire \max_num[31]_i_2_n_0 ;
  wire \max_num[31]_i_3_n_0 ;
  wire not_sleep_ext_reg;
  wire [31:0]num_vld;
  wire \num_vld_reg[12]_i_2_n_0 ;
  wire \num_vld_reg[12]_i_2_n_1 ;
  wire \num_vld_reg[12]_i_2_n_2 ;
  wire \num_vld_reg[12]_i_2_n_3 ;
  wire \num_vld_reg[16]_i_2_n_0 ;
  wire \num_vld_reg[16]_i_2_n_1 ;
  wire \num_vld_reg[16]_i_2_n_2 ;
  wire \num_vld_reg[16]_i_2_n_3 ;
  wire \num_vld_reg[20]_i_2_n_0 ;
  wire \num_vld_reg[20]_i_2_n_1 ;
  wire \num_vld_reg[20]_i_2_n_2 ;
  wire \num_vld_reg[20]_i_2_n_3 ;
  wire \num_vld_reg[24]_i_2_n_0 ;
  wire \num_vld_reg[24]_i_2_n_1 ;
  wire \num_vld_reg[24]_i_2_n_2 ;
  wire \num_vld_reg[24]_i_2_n_3 ;
  wire \num_vld_reg[28]_i_2_n_0 ;
  wire \num_vld_reg[28]_i_2_n_1 ;
  wire \num_vld_reg[28]_i_2_n_2 ;
  wire \num_vld_reg[28]_i_2_n_3 ;
  wire [0:0]\num_vld_reg[31]_0 ;
  wire \num_vld_reg[31]_i_3_n_2 ;
  wire \num_vld_reg[31]_i_3_n_3 ;
  wire \num_vld_reg[4]_i_2_n_0 ;
  wire \num_vld_reg[4]_i_2_n_1 ;
  wire \num_vld_reg[4]_i_2_n_2 ;
  wire \num_vld_reg[4]_i_2_n_3 ;
  wire \num_vld_reg[8]_i_2_n_0 ;
  wire \num_vld_reg[8]_i_2_n_1 ;
  wire \num_vld_reg[8]_i_2_n_2 ;
  wire \num_vld_reg[8]_i_2_n_3 ;
  wire [3:2]num_writes_reg;
  wire \num_writes_reg_n_0_[0] ;
  wire \num_writes_reg_n_0_[1] ;
  wire [31:0]nxt_num_vld;
  wire [3:0]p_0_in;
  wire p_0_in0;
  wire p_0_in_1;
  wire [3:0]p_0_in__0;
  wire [31:0]p_1_in;
  wire p_1_in_0;
  wire raddr_arrive;
  wire rd_en_fifo_1;
  wire rd_en_source;
  wire rd_en_source_2;
  wire rd_en_source_3;
  wire rd_en_source_4;
  wire [31:0]rdata_OBUF;
  wire \rdata_OBUF[31]_inst_i_2_n_0 ;
  wire \rdata_OBUF[31]_inst_i_3_n_0 ;
  wire \rdata_OBUF[31]_inst_i_4_n_0 ;
  wire [31:0]read_tap_internal;
  wire [2:0]run_status;
  wire \run_status[0]_i_1_n_0 ;
  wire \run_status[1]_i_1_n_0 ;
  wire \run_status[1]_i_2_n_0 ;
  wire \run_status[2]_i_10_n_0 ;
  wire \run_status[2]_i_11_n_0 ;
  wire \run_status[2]_i_1_n_0 ;
  wire \run_status[2]_i_2_n_0 ;
  wire \run_status[2]_i_4_n_0 ;
  wire \run_status[2]_i_5_n_0 ;
  wire \run_status[2]_i_6_n_0 ;
  wire \run_status[2]_i_7_n_0 ;
  wire \run_status[2]_i_8_n_0 ;
  wire \run_status[2]_i_9_n_0 ;
  wire rvalid_OBUF;
  wire sm_tlast03_in;
  wire sm_tlast0_carry__0_i_1_n_0;
  wire sm_tlast0_carry__0_i_2_n_0;
  wire sm_tlast0_carry__0_i_3_n_0;
  wire sm_tlast0_carry__0_i_4_n_0;
  wire sm_tlast0_carry__0_n_0;
  wire sm_tlast0_carry__0_n_1;
  wire sm_tlast0_carry__0_n_2;
  wire sm_tlast0_carry__0_n_3;
  wire sm_tlast0_carry__1_i_1_n_0;
  wire sm_tlast0_carry__1_i_2_n_0;
  wire sm_tlast0_carry__1_i_3_n_0;
  wire sm_tlast0_carry__1_n_2;
  wire sm_tlast0_carry__1_n_3;
  wire sm_tlast0_carry_i_1_n_0;
  wire sm_tlast0_carry_i_2_n_0;
  wire sm_tlast0_carry_i_3_n_0;
  wire sm_tlast0_carry_i_4_n_0;
  wire sm_tlast0_carry_n_0;
  wire sm_tlast0_carry_n_1;
  wire sm_tlast0_carry_n_2;
  wire sm_tlast0_carry_n_3;
  wire sm_tlast_OBUF;
  wire sm_tready_IBUF;
  wire ss_tlast_IBUF;
  wire ss_tready_OBUF;
  wire ss_tvalid_IBUF;
  wire [1:0]state_arr;
  wire \state_arr[0]_i_1_n_0 ;
  wire \state_arr[1]_i_1_n_0 ;
  wire [11:0]tap_A_OBUF;
  wire \tap_A_OBUF[0]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[10]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[10]_inst_i_3_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_10_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_3_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_4_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_5_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_6_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_7_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_8_n_0 ;
  wire \tap_A_OBUF[11]_inst_i_9_n_0 ;
  wire \tap_A_OBUF[1]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[2]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[3]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[3]_inst_i_3_n_0 ;
  wire \tap_A_OBUF[4]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[5]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[5]_inst_i_3_n_0 ;
  wire \tap_A_OBUF[5]_inst_i_4_n_0 ;
  wire \tap_A_OBUF[5]_inst_i_5_n_0 ;
  wire \tap_A_OBUF[6]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[7]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[7]_inst_i_3_n_0 ;
  wire \tap_A_OBUF[8]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[9]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[9]_inst_i_3_n_0 ;
  wire [31:0]tap_Di_OBUF;
  wire \tap_Di_OBUF[2]_inst_i_2_n_0 ;
  wire \tap_Di_OBUF[2]_inst_i_3_n_0 ;
  wire \tap_Di_OBUF[2]_inst_i_4_n_0 ;
  wire \tap_Di_OBUF[2]_inst_i_5_n_0 ;
  wire \tap_Di_OBUF[2]_inst_i_6_n_0 ;
  wire \tap_Di_OBUF[2]_inst_i_7_n_0 ;
  wire [31:0]tap_Do_IBUF;
  wire tap_EN_OBUF;
  wire [0:0]tap_WE_OBUF;
  wire \tap_WE_OBUF[3]_inst_i_2_n_0 ;
  wire \tap_WE_OBUF[3]_inst_i_3_n_0 ;
  wire [3:0]tap_count_reg;
  wire upd_str_data;
  wire [31:0]wdata_prev;
  wire [31:0]wdata_upd;
  wire wready_OBUF;
  wire wvalid_IBUF;
  wire [3:3]NLW_araddr_upd0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_awaddr_upd0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_en_read_tap1_carry_O_UNCONNECTED;
  wire [3:0]NLW_en_read_tap1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_en_read_tap1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_en_read_tap1_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_num_vld_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_num_vld_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_sm_tlast0_carry_O_UNCONNECTED;
  wire [3:0]NLW_sm_tlast0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_sm_tlast0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sm_tlast0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state_running[0]_i_1 
       (.I0(sm_tlast03_in),
        .I1(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I2(p_0_in_1),
        .O(\FSM_onehot_state_running[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF00FFFFEF00EF00)) 
    \FSM_onehot_state_running[1]_i_1 
       (.I0(run_status[1]),
        .I1(run_status[2]),
        .I2(run_status[0]),
        .I3(Q),
        .I4(sm_tlast03_in),
        .I5(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(\FSM_onehot_state_running[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hBA30)) 
    \FSM_onehot_state_running[2]_i_1 
       (.I0(ss_tlast_IBUF),
        .I1(sm_tlast03_in),
        .I2(p_0_in_1),
        .I3(p_1_in_0),
        .O(\FSM_onehot_state_running[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    \FSM_onehot_state_running[3]_i_1 
       (.I0(run_status[0]),
        .I1(run_status[1]),
        .I2(run_status[2]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(ss_tlast_IBUF),
        .I5(p_1_in_0),
        .O(\FSM_onehot_state_running[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABA8AAA8)) 
    \FSM_onehot_state_running[4]_i_1 
       (.I0(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I1(run_status[1]),
        .I2(run_status[2]),
        .I3(run_status[0]),
        .I4(Q),
        .O(\FSM_onehot_state_running[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10000,iSTATE0:01000,iSTATE1:00100,iSTATE2:00001,iSTATE3:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_running_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(\FSM_onehot_state_running[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_running_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:10000,iSTATE0:01000,iSTATE1:00100,iSTATE2:00001,iSTATE3:00010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_running_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_running[1]_i_1_n_0 ),
        .PRE(not_sleep_ext_reg),
        .Q(Q));
  (* FSM_ENCODED_STATES = "iSTATE:10000,iSTATE0:01000,iSTATE1:00100,iSTATE2:00001,iSTATE3:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_running_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(\FSM_onehot_state_running[2]_i_1_n_0 ),
        .Q(p_0_in_1));
  (* FSM_ENCODED_STATES = "iSTATE:10000,iSTATE0:01000,iSTATE1:00100,iSTATE2:00001,iSTATE3:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_running_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(\FSM_onehot_state_running[3]_i_1_n_0 ),
        .Q(p_1_in_0));
  (* FSM_ENCODED_STATES = "iSTATE:10000,iSTATE0:01000,iSTATE1:00100,iSTATE2:00001,iSTATE3:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_running_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(\FSM_onehot_state_running[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_running_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \araddr_prev[0]_i_1 
       (.I0(araddr_prev[0]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_IBUF[0]),
        .O(araddr_upd[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \araddr_prev[10]_i_1 
       (.I0(araddr_upd0[10]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[10]),
        .O(araddr_upd[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \araddr_prev[11]_i_1 
       (.I0(araddr_upd0[11]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[11]),
        .O(araddr_upd[11]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \araddr_prev[1]_i_1 
       (.I0(araddr_prev[1]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_IBUF[1]),
        .O(araddr_upd[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \araddr_prev[2]_i_1 
       (.I0(araddr_prev[2]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_IBUF[2]),
        .O(araddr_upd[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \araddr_prev[3]_i_1 
       (.I0(araddr_IBUF[3]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[3]),
        .O(araddr_upd[3]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \araddr_prev[4]_i_1 
       (.I0(araddr_prev[4]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_upd0[4]),
        .O(araddr_upd[4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \araddr_prev[5]_i_1 
       (.I0(araddr_upd0[5]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[5]),
        .O(araddr_upd[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \araddr_prev[6]_i_1 
       (.I0(araddr_upd0[6]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[6]),
        .O(araddr_upd[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \araddr_prev[7]_i_1 
       (.I0(araddr_upd0[7]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[7]),
        .O(araddr_upd[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \araddr_prev[8]_i_1 
       (.I0(araddr_upd0[8]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[8]),
        .O(araddr_upd[8]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \araddr_prev[9]_i_1 
       (.I0(araddr_upd0[9]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[9]),
        .O(araddr_upd[9]));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[0]),
        .Q(araddr_prev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[10]),
        .Q(araddr_prev[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[11]),
        .Q(araddr_prev[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[1]),
        .Q(araddr_prev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[2]),
        .Q(araddr_prev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[3]),
        .Q(araddr_prev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[4]),
        .Q(araddr_prev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[5]),
        .Q(araddr_prev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[6]),
        .Q(araddr_prev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[7]),
        .Q(araddr_prev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[8]),
        .Q(araddr_prev[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_prev_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(araddr_upd[9]),
        .Q(araddr_prev[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 araddr_upd0_carry
       (.CI(1'b0),
        .CO({araddr_upd0_carry_n_0,araddr_upd0_carry_n_1,araddr_upd0_carry_n_2,araddr_upd0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({araddr_IBUF[7:5],1'b0}),
        .O(araddr_upd0[7:4]),
        .S({araddr_upd0_carry_i_1_n_0,araddr_upd0_carry_i_2_n_0,araddr_upd0_carry_i_3_n_0,araddr_IBUF[4]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 araddr_upd0_carry__0
       (.CI(araddr_upd0_carry_n_0),
        .CO({NLW_araddr_upd0_carry__0_CO_UNCONNECTED[3],araddr_upd0_carry__0_n_1,araddr_upd0_carry__0_n_2,araddr_upd0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,araddr_IBUF[10:8]}),
        .O(araddr_upd0[11:8]),
        .S({araddr_upd0_carry__0_i_1_n_0,araddr_upd0_carry__0_i_2_n_0,araddr_upd0_carry__0_i_3_n_0,araddr_upd0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    araddr_upd0_carry__0_i_1
       (.I0(araddr_IBUF[11]),
        .O(araddr_upd0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    araddr_upd0_carry__0_i_2
       (.I0(araddr_IBUF[10]),
        .O(araddr_upd0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    araddr_upd0_carry__0_i_3
       (.I0(araddr_IBUF[9]),
        .O(araddr_upd0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    araddr_upd0_carry__0_i_4
       (.I0(araddr_IBUF[8]),
        .O(araddr_upd0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    araddr_upd0_carry_i_1
       (.I0(araddr_IBUF[7]),
        .O(araddr_upd0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    araddr_upd0_carry_i_2
       (.I0(araddr_IBUF[6]),
        .O(araddr_upd0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    araddr_upd0_carry_i_3
       (.I0(araddr_IBUF[5]),
        .O(araddr_upd0_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    arready_OBUF_inst_i_1
       (.I0(num_writes_reg[3]),
        .I1(num_writes_reg[2]),
        .O(arready_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[0]_i_1 
       (.I0(awaddr_prev[0]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_IBUF[0]),
        .O(\awaddr_prev[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[10]_i_1 
       (.I0(awaddr_prev[10]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_upd0[10]),
        .O(\awaddr_prev[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[11]_i_1 
       (.I0(awaddr_prev[11]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_upd0[11]),
        .O(\awaddr_prev[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[1]_i_1 
       (.I0(awaddr_prev[1]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_IBUF[1]),
        .O(\awaddr_prev[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[2]_i_1 
       (.I0(awaddr_prev[2]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_IBUF[2]),
        .O(\awaddr_prev[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[3]_i_1 
       (.I0(awaddr_prev[3]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_IBUF[3]),
        .O(\awaddr_prev[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \awaddr_prev[4]_i_1 
       (.I0(awaddr_upd0[4]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[4]),
        .O(\awaddr_prev[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[5]_i_1 
       (.I0(awaddr_prev[5]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_upd0[5]),
        .O(\awaddr_prev[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[6]_i_1 
       (.I0(awaddr_prev[6]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_upd0[6]),
        .O(\awaddr_prev[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[7]_i_1 
       (.I0(awaddr_prev[7]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_upd0[7]),
        .O(\awaddr_prev[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[8]_i_1 
       (.I0(awaddr_prev[8]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_upd0[8]),
        .O(\awaddr_prev[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_prev[9]_i_1 
       (.I0(awaddr_prev[9]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_upd0[9]),
        .O(\awaddr_prev[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[0]_i_1_n_0 ),
        .Q(awaddr_prev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[10]_i_1_n_0 ),
        .Q(awaddr_prev[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[11]_i_1_n_0 ),
        .Q(awaddr_prev[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[1]_i_1_n_0 ),
        .Q(awaddr_prev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[2]_i_1_n_0 ),
        .Q(awaddr_prev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[3]_i_1_n_0 ),
        .Q(awaddr_prev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[4]_i_1_n_0 ),
        .Q(awaddr_prev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[5]_i_1_n_0 ),
        .Q(awaddr_prev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[6]_i_1_n_0 ),
        .Q(awaddr_prev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[7]_i_1_n_0 ),
        .Q(awaddr_prev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[8]_i_1_n_0 ),
        .Q(awaddr_prev[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_prev_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\awaddr_prev[9]_i_1_n_0 ),
        .Q(awaddr_prev[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 awaddr_upd0_carry
       (.CI(1'b0),
        .CO({awaddr_upd0_carry_n_0,awaddr_upd0_carry_n_1,awaddr_upd0_carry_n_2,awaddr_upd0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({awaddr_IBUF[7:5],1'b0}),
        .O(awaddr_upd0[7:4]),
        .S({awaddr_upd0_carry_i_1_n_0,awaddr_upd0_carry_i_2_n_0,awaddr_upd0_carry_i_3_n_0,awaddr_IBUF[4]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 awaddr_upd0_carry__0
       (.CI(awaddr_upd0_carry_n_0),
        .CO({NLW_awaddr_upd0_carry__0_CO_UNCONNECTED[3],awaddr_upd0_carry__0_n_1,awaddr_upd0_carry__0_n_2,awaddr_upd0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,awaddr_IBUF[10:8]}),
        .O(awaddr_upd0[11:8]),
        .S({awaddr_upd0_carry__0_i_1_n_0,awaddr_upd0_carry__0_i_2_n_0,awaddr_upd0_carry__0_i_3_n_0,awaddr_upd0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    awaddr_upd0_carry__0_i_1
       (.I0(awaddr_IBUF[11]),
        .O(awaddr_upd0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    awaddr_upd0_carry__0_i_2
       (.I0(awaddr_IBUF[10]),
        .O(awaddr_upd0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    awaddr_upd0_carry__0_i_3
       (.I0(awaddr_IBUF[9]),
        .O(awaddr_upd0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    awaddr_upd0_carry__0_i_4
       (.I0(awaddr_IBUF[8]),
        .O(awaddr_upd0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    awaddr_upd0_carry_i_1
       (.I0(awaddr_IBUF[7]),
        .O(awaddr_upd0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    awaddr_upd0_carry_i_2
       (.I0(awaddr_IBUF[6]),
        .O(awaddr_upd0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    awaddr_upd0_carry_i_3
       (.I0(awaddr_IBUF[5]),
        .O(awaddr_upd0_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    awready_OBUF_inst_i_1
       (.I0(axis_rst_n_IBUF),
        .I1(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I3(p_1_in_0),
        .I4(p_0_in_1),
        .O(wready_OBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 en_read_tap1_carry
       (.CI(1'b0),
        .CO({en_read_tap1_carry_n_0,en_read_tap1_carry_n_1,en_read_tap1_carry_n_2,en_read_tap1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({en_read_tap1_carry_i_1_n_0,en_read_tap1_carry_i_2_n_0,en_read_tap1_carry_i_3_n_0,en_read_tap1_carry_i_4_n_0}),
        .O(NLW_en_read_tap1_carry_O_UNCONNECTED[3:0]),
        .S({en_read_tap1_carry_i_5_n_0,en_read_tap1_carry_i_6_n_0,en_read_tap1_carry_i_7_n_0,en_read_tap1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 en_read_tap1_carry__0
       (.CI(en_read_tap1_carry_n_0),
        .CO({en_read_tap1_carry__0_n_0,en_read_tap1_carry__0_n_1,en_read_tap1_carry__0_n_2,en_read_tap1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({en_read_tap1_carry__0_i_1_n_0,en_read_tap1_carry__0_i_2_n_0,en_read_tap1_carry__0_i_3_n_0,en_read_tap1_carry__0_i_4_n_0}),
        .O(NLW_en_read_tap1_carry__0_O_UNCONNECTED[3:0]),
        .S({en_read_tap1_carry__0_i_5_n_0,en_read_tap1_carry__0_i_6_n_0,en_read_tap1_carry__0_i_7_n_0,en_read_tap1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__0_i_1
       (.I0(num_vld[15]),
        .I1(max_num[15]),
        .I2(max_num[14]),
        .I3(num_vld[14]),
        .O(en_read_tap1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__0_i_2
       (.I0(num_vld[13]),
        .I1(max_num[13]),
        .I2(max_num[12]),
        .I3(num_vld[12]),
        .O(en_read_tap1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__0_i_3
       (.I0(num_vld[11]),
        .I1(max_num[11]),
        .I2(max_num[10]),
        .I3(num_vld[10]),
        .O(en_read_tap1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__0_i_4
       (.I0(num_vld[9]),
        .I1(max_num[9]),
        .I2(max_num[8]),
        .I3(num_vld[8]),
        .O(en_read_tap1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__0_i_5
       (.I0(max_num[14]),
        .I1(num_vld[14]),
        .I2(max_num[15]),
        .I3(num_vld[15]),
        .O(en_read_tap1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__0_i_6
       (.I0(max_num[13]),
        .I1(num_vld[13]),
        .I2(max_num[12]),
        .I3(num_vld[12]),
        .O(en_read_tap1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__0_i_7
       (.I0(max_num[11]),
        .I1(num_vld[11]),
        .I2(max_num[10]),
        .I3(num_vld[10]),
        .O(en_read_tap1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__0_i_8
       (.I0(max_num[8]),
        .I1(num_vld[8]),
        .I2(max_num[9]),
        .I3(num_vld[9]),
        .O(en_read_tap1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 en_read_tap1_carry__1
       (.CI(en_read_tap1_carry__0_n_0),
        .CO({en_read_tap1_carry__1_n_0,en_read_tap1_carry__1_n_1,en_read_tap1_carry__1_n_2,en_read_tap1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({en_read_tap1_carry__1_i_1_n_0,en_read_tap1_carry__1_i_2_n_0,en_read_tap1_carry__1_i_3_n_0,en_read_tap1_carry__1_i_4_n_0}),
        .O(NLW_en_read_tap1_carry__1_O_UNCONNECTED[3:0]),
        .S({en_read_tap1_carry__1_i_5_n_0,en_read_tap1_carry__1_i_6_n_0,en_read_tap1_carry__1_i_7_n_0,en_read_tap1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__1_i_1
       (.I0(num_vld[23]),
        .I1(max_num[23]),
        .I2(max_num[22]),
        .I3(num_vld[22]),
        .O(en_read_tap1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__1_i_2
       (.I0(num_vld[21]),
        .I1(max_num[21]),
        .I2(max_num[20]),
        .I3(num_vld[20]),
        .O(en_read_tap1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__1_i_3
       (.I0(num_vld[19]),
        .I1(max_num[19]),
        .I2(max_num[18]),
        .I3(num_vld[18]),
        .O(en_read_tap1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__1_i_4
       (.I0(num_vld[17]),
        .I1(max_num[17]),
        .I2(max_num[16]),
        .I3(num_vld[16]),
        .O(en_read_tap1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__1_i_5
       (.I0(max_num[23]),
        .I1(num_vld[23]),
        .I2(max_num[22]),
        .I3(num_vld[22]),
        .O(en_read_tap1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__1_i_6
       (.I0(max_num[20]),
        .I1(num_vld[20]),
        .I2(max_num[21]),
        .I3(num_vld[21]),
        .O(en_read_tap1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__1_i_7
       (.I0(max_num[19]),
        .I1(num_vld[19]),
        .I2(max_num[18]),
        .I3(num_vld[18]),
        .O(en_read_tap1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__1_i_8
       (.I0(max_num[17]),
        .I1(num_vld[17]),
        .I2(max_num[16]),
        .I3(num_vld[16]),
        .O(en_read_tap1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 en_read_tap1_carry__2
       (.CI(en_read_tap1_carry__1_n_0),
        .CO({en_read_tap1__15,en_read_tap1_carry__2_n_1,en_read_tap1_carry__2_n_2,en_read_tap1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({en_read_tap1_carry__2_i_1_n_0,en_read_tap1_carry__2_i_2_n_0,en_read_tap1_carry__2_i_3_n_0,en_read_tap1_carry__2_i_4_n_0}),
        .O(NLW_en_read_tap1_carry__2_O_UNCONNECTED[3:0]),
        .S({en_read_tap1_carry__2_i_5_n_0,en_read_tap1_carry__2_i_6_n_0,en_read_tap1_carry__2_i_7_n_0,en_read_tap1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__2_i_1
       (.I0(num_vld[31]),
        .I1(max_num[31]),
        .I2(max_num[30]),
        .I3(num_vld[30]),
        .O(en_read_tap1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__2_i_2
       (.I0(num_vld[29]),
        .I1(max_num[29]),
        .I2(max_num[28]),
        .I3(num_vld[28]),
        .O(en_read_tap1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__2_i_3
       (.I0(num_vld[27]),
        .I1(max_num[27]),
        .I2(max_num[26]),
        .I3(num_vld[26]),
        .O(en_read_tap1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry__2_i_4
       (.I0(num_vld[25]),
        .I1(max_num[25]),
        .I2(max_num[24]),
        .I3(num_vld[24]),
        .O(en_read_tap1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__2_i_5
       (.I0(max_num[31]),
        .I1(num_vld[31]),
        .I2(max_num[30]),
        .I3(num_vld[30]),
        .O(en_read_tap1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__2_i_6
       (.I0(max_num[29]),
        .I1(num_vld[29]),
        .I2(max_num[28]),
        .I3(num_vld[28]),
        .O(en_read_tap1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__2_i_7
       (.I0(max_num[26]),
        .I1(num_vld[26]),
        .I2(max_num[27]),
        .I3(num_vld[27]),
        .O(en_read_tap1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry__2_i_8
       (.I0(max_num[25]),
        .I1(num_vld[25]),
        .I2(max_num[24]),
        .I3(num_vld[24]),
        .O(en_read_tap1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry_i_1
       (.I0(num_vld[7]),
        .I1(max_num[7]),
        .I2(max_num[6]),
        .I3(num_vld[6]),
        .O(en_read_tap1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry_i_2
       (.I0(num_vld[5]),
        .I1(max_num[5]),
        .I2(max_num[4]),
        .I3(num_vld[4]),
        .O(en_read_tap1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry_i_3
       (.I0(num_vld[3]),
        .I1(max_num[3]),
        .I2(max_num[2]),
        .I3(num_vld[2]),
        .O(en_read_tap1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    en_read_tap1_carry_i_4
       (.I0(num_vld[1]),
        .I1(max_num[1]),
        .I2(max_num[0]),
        .I3(num_vld[0]),
        .O(en_read_tap1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry_i_5
       (.I0(max_num[7]),
        .I1(num_vld[7]),
        .I2(max_num[6]),
        .I3(num_vld[6]),
        .O(en_read_tap1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry_i_6
       (.I0(max_num[5]),
        .I1(num_vld[5]),
        .I2(max_num[4]),
        .I3(num_vld[4]),
        .O(en_read_tap1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry_i_7
       (.I0(max_num[2]),
        .I1(num_vld[2]),
        .I2(max_num[3]),
        .I3(num_vld[3]),
        .O(en_read_tap1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    en_read_tap1_carry_i_8
       (.I0(max_num[1]),
        .I1(num_vld[1]),
        .I2(max_num[0]),
        .I3(num_vld[0]),
        .O(en_read_tap1_carry_i_8_n_0));
  FIFO_WRAPPER_SYNC fifo_1
       (.CLK(CLK),
        .D(\FSM_onehot_state_running[0]_i_1_n_0 ),
        .E(data_WE_OBUF),
        .\FSM_onehot_state_running_reg[4] (fifo_1_n_7),
        .Q(\FSM_onehot_state_running_reg_n_0_[4] ),
        .data_A_OBUF(data_A_OBUF),
        .data_EN_OBUF(data_EN_OBUF),
        .not_sleep_ext_reg_0(not_sleep_ext_reg),
        .rd_en_fifo_1(rd_en_fifo_1),
        .\rd_ptr_reg[0]_0 (E),
        .\run_status_reg[0] (\tap_Di_OBUF[2]_inst_i_5_n_0 ),
        .\run_status_reg[0]_0 (\tap_Di_OBUF[2]_inst_i_6_n_0 ),
        .ss_tready_OBUF(ss_tready_OBUF),
        .ss_tvalid_IBUF(ss_tvalid_IBUF),
        .upd_str_data(upd_str_data));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \max_num[31]_i_1 
       (.I0(tap_WE_OBUF),
        .I1(\max_num[31]_i_2_n_0 ),
        .I2(awaddr_IBUF[3]),
        .I3(awaddr_IBUF[7]),
        .I4(awaddr_IBUF[8]),
        .I5(awaddr_IBUF[9]),
        .O(max_num0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \max_num[31]_i_2 
       (.I0(awaddr_IBUF[11]),
        .I1(awaddr_IBUF[2]),
        .I2(awaddr_IBUF[6]),
        .I3(awaddr_IBUF[5]),
        .I4(\max_num[31]_i_3_n_0 ),
        .O(\max_num[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \max_num[31]_i_3 
       (.I0(awaddr_IBUF[4]),
        .I1(awaddr_IBUF[1]),
        .I2(awaddr_IBUF[0]),
        .I3(awaddr_IBUF[10]),
        .O(\max_num[31]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[0] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[0]),
        .Q(max_num[0]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[10] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[10]),
        .Q(max_num[10]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[11] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[11]),
        .Q(max_num[11]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[12] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[12]),
        .Q(max_num[12]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[13] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[13]),
        .Q(max_num[13]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[14] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[14]),
        .Q(max_num[14]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[15] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[15]),
        .Q(max_num[15]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[16] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[16]),
        .Q(max_num[16]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[17] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[17]),
        .Q(max_num[17]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[18] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[18]),
        .Q(max_num[18]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[19] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[19]),
        .Q(max_num[19]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[1] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[1]),
        .Q(max_num[1]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[20] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[20]),
        .Q(max_num[20]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[21] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[21]),
        .Q(max_num[21]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[22] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[22]),
        .Q(max_num[22]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[23] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[23]),
        .Q(max_num[23]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[24] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[24]),
        .Q(max_num[24]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[25] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[25]),
        .Q(max_num[25]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[26] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[26]),
        .Q(max_num[26]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[27] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[27]),
        .Q(max_num[27]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[28] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[28]),
        .Q(max_num[28]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[29] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[29]),
        .Q(max_num[29]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[2] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[2]),
        .Q(max_num[2]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[30] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[30]),
        .Q(max_num[30]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[31] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[31]),
        .Q(max_num[31]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[3] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[3]),
        .Q(max_num[3]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[4] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[4]),
        .Q(max_num[4]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[5] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[5]),
        .Q(max_num[5]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[6] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[6]),
        .Q(max_num[6]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[7] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[7]),
        .Q(max_num[7]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[8] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[8]),
        .Q(max_num[8]));
  FDCE #(
    .INIT(1'b0)) 
    \max_num_reg[9] 
       (.C(CLK),
        .CE(max_num0),
        .CLR(not_sleep_ext_reg),
        .D(D[9]),
        .Q(max_num[9]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \num_vld[0]_i_1 
       (.I0(Q),
        .I1(num_vld[0]),
        .O(nxt_num_vld[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[10]_i_1 
       (.I0(in16[10]),
        .I1(Q),
        .O(nxt_num_vld[10]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[11]_i_1 
       (.I0(in16[11]),
        .I1(Q),
        .O(nxt_num_vld[11]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[12]_i_1 
       (.I0(in16[12]),
        .I1(Q),
        .O(nxt_num_vld[12]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[13]_i_1 
       (.I0(in16[13]),
        .I1(Q),
        .O(nxt_num_vld[13]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[14]_i_1 
       (.I0(in16[14]),
        .I1(Q),
        .O(nxt_num_vld[14]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[15]_i_1 
       (.I0(in16[15]),
        .I1(Q),
        .O(nxt_num_vld[15]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[16]_i_1 
       (.I0(in16[16]),
        .I1(Q),
        .O(nxt_num_vld[16]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[17]_i_1 
       (.I0(in16[17]),
        .I1(Q),
        .O(nxt_num_vld[17]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[18]_i_1 
       (.I0(in16[18]),
        .I1(Q),
        .O(nxt_num_vld[18]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[19]_i_1 
       (.I0(in16[19]),
        .I1(Q),
        .O(nxt_num_vld[19]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[1]_i_1 
       (.I0(in16[1]),
        .I1(Q),
        .O(nxt_num_vld[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[20]_i_1 
       (.I0(in16[20]),
        .I1(Q),
        .O(nxt_num_vld[20]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[21]_i_1 
       (.I0(in16[21]),
        .I1(Q),
        .O(nxt_num_vld[21]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[22]_i_1 
       (.I0(in16[22]),
        .I1(Q),
        .O(nxt_num_vld[22]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[23]_i_1 
       (.I0(in16[23]),
        .I1(Q),
        .O(nxt_num_vld[23]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[24]_i_1 
       (.I0(in16[24]),
        .I1(Q),
        .O(nxt_num_vld[24]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[25]_i_1 
       (.I0(in16[25]),
        .I1(Q),
        .O(nxt_num_vld[25]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[26]_i_1 
       (.I0(in16[26]),
        .I1(Q),
        .O(nxt_num_vld[26]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[27]_i_1 
       (.I0(in16[27]),
        .I1(Q),
        .O(nxt_num_vld[27]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[28]_i_1 
       (.I0(in16[28]),
        .I1(Q),
        .O(nxt_num_vld[28]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[29]_i_1 
       (.I0(in16[29]),
        .I1(Q),
        .O(nxt_num_vld[29]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[2]_i_1 
       (.I0(in16[2]),
        .I1(Q),
        .O(nxt_num_vld[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[30]_i_1 
       (.I0(in16[30]),
        .I1(Q),
        .O(nxt_num_vld[30]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[31]_i_2 
       (.I0(in16[31]),
        .I1(Q),
        .O(nxt_num_vld[31]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[3]_i_1 
       (.I0(in16[3]),
        .I1(Q),
        .O(nxt_num_vld[3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[4]_i_1 
       (.I0(in16[4]),
        .I1(Q),
        .O(nxt_num_vld[4]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[5]_i_1 
       (.I0(in16[5]),
        .I1(Q),
        .O(nxt_num_vld[5]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[6]_i_1 
       (.I0(in16[6]),
        .I1(Q),
        .O(nxt_num_vld[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[7]_i_1 
       (.I0(in16[7]),
        .I1(Q),
        .O(nxt_num_vld[7]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[8]_i_1 
       (.I0(in16[8]),
        .I1(Q),
        .O(nxt_num_vld[8]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_vld[9]_i_1 
       (.I0(in16[9]),
        .I1(Q),
        .O(nxt_num_vld[9]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[0] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[0]),
        .Q(num_vld[0]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[10] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[10]),
        .Q(num_vld[10]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[11] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[11]),
        .Q(num_vld[11]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[12] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[12]),
        .Q(num_vld[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_vld_reg[12]_i_2 
       (.CI(\num_vld_reg[8]_i_2_n_0 ),
        .CO({\num_vld_reg[12]_i_2_n_0 ,\num_vld_reg[12]_i_2_n_1 ,\num_vld_reg[12]_i_2_n_2 ,\num_vld_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[12:9]),
        .S(num_vld[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[13] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[13]),
        .Q(num_vld[13]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[14] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[14]),
        .Q(num_vld[14]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[15] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[15]),
        .Q(num_vld[15]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[16] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[16]),
        .Q(num_vld[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_vld_reg[16]_i_2 
       (.CI(\num_vld_reg[12]_i_2_n_0 ),
        .CO({\num_vld_reg[16]_i_2_n_0 ,\num_vld_reg[16]_i_2_n_1 ,\num_vld_reg[16]_i_2_n_2 ,\num_vld_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[16:13]),
        .S(num_vld[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[17] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[17]),
        .Q(num_vld[17]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[18] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[18]),
        .Q(num_vld[18]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[19] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[19]),
        .Q(num_vld[19]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[1] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[1]),
        .Q(num_vld[1]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[20] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[20]),
        .Q(num_vld[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_vld_reg[20]_i_2 
       (.CI(\num_vld_reg[16]_i_2_n_0 ),
        .CO({\num_vld_reg[20]_i_2_n_0 ,\num_vld_reg[20]_i_2_n_1 ,\num_vld_reg[20]_i_2_n_2 ,\num_vld_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[20:17]),
        .S(num_vld[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[21] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[21]),
        .Q(num_vld[21]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[22] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[22]),
        .Q(num_vld[22]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[23] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[23]),
        .Q(num_vld[23]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[24] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[24]),
        .Q(num_vld[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_vld_reg[24]_i_2 
       (.CI(\num_vld_reg[20]_i_2_n_0 ),
        .CO({\num_vld_reg[24]_i_2_n_0 ,\num_vld_reg[24]_i_2_n_1 ,\num_vld_reg[24]_i_2_n_2 ,\num_vld_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[24:21]),
        .S(num_vld[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[25] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[25]),
        .Q(num_vld[25]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[26] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[26]),
        .Q(num_vld[26]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[27] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[27]),
        .Q(num_vld[27]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[28] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[28]),
        .Q(num_vld[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_vld_reg[28]_i_2 
       (.CI(\num_vld_reg[24]_i_2_n_0 ),
        .CO({\num_vld_reg[28]_i_2_n_0 ,\num_vld_reg[28]_i_2_n_1 ,\num_vld_reg[28]_i_2_n_2 ,\num_vld_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[28:25]),
        .S(num_vld[28:25]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[29] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[29]),
        .Q(num_vld[29]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[2] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[2]),
        .Q(num_vld[2]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[30] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[30]),
        .Q(num_vld[30]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[31] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[31]),
        .Q(num_vld[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_vld_reg[31]_i_3 
       (.CI(\num_vld_reg[28]_i_2_n_0 ),
        .CO({\NLW_num_vld_reg[31]_i_3_CO_UNCONNECTED [3:2],\num_vld_reg[31]_i_3_n_2 ,\num_vld_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_num_vld_reg[31]_i_3_O_UNCONNECTED [3],in16[31:29]}),
        .S({1'b0,num_vld[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[3] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[3]),
        .Q(num_vld[3]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[4] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[4]),
        .Q(num_vld[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_vld_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\num_vld_reg[4]_i_2_n_0 ,\num_vld_reg[4]_i_2_n_1 ,\num_vld_reg[4]_i_2_n_2 ,\num_vld_reg[4]_i_2_n_3 }),
        .CYINIT(num_vld[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[4:1]),
        .S(num_vld[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[5] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[5]),
        .Q(num_vld[5]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[6] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[6]),
        .Q(num_vld[6]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[7] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[7]),
        .Q(num_vld[7]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[8] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[8]),
        .Q(num_vld[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \num_vld_reg[8]_i_2 
       (.CI(\num_vld_reg[4]_i_2_n_0 ),
        .CO({\num_vld_reg[8]_i_2_n_0 ,\num_vld_reg[8]_i_2_n_1 ,\num_vld_reg[8]_i_2_n_2 ,\num_vld_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[8:5]),
        .S(num_vld[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \num_vld_reg[9] 
       (.C(CLK),
        .CE(\num_vld_reg[31]_0 ),
        .CLR(not_sleep_ext_reg),
        .D(nxt_num_vld[9]),
        .Q(num_vld[9]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \num_writes[0]_i_1 
       (.I0(\num_writes_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \num_writes[1]_i_1 
       (.I0(\num_writes_reg_n_0_[0] ),
        .I1(\num_writes_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \num_writes[2]_i_1 
       (.I0(num_writes_reg[2]),
        .I1(\num_writes_reg_n_0_[1] ),
        .I2(\num_writes_reg_n_0_[0] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \num_writes[3]_i_1 
       (.I0(num_writes_reg[3]),
        .I1(\num_writes_reg_n_0_[0] ),
        .I2(\num_writes_reg_n_0_[1] ),
        .I3(num_writes_reg[2]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \num_writes_reg[0] 
       (.C(CLK),
        .CE(tap_WE_OBUF),
        .CLR(not_sleep_ext_reg),
        .D(p_0_in[0]),
        .Q(\num_writes_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \num_writes_reg[1] 
       (.C(CLK),
        .CE(tap_WE_OBUF),
        .CLR(not_sleep_ext_reg),
        .D(p_0_in[1]),
        .Q(\num_writes_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \num_writes_reg[2] 
       (.C(CLK),
        .CE(tap_WE_OBUF),
        .CLR(not_sleep_ext_reg),
        .D(p_0_in[2]),
        .Q(num_writes_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \num_writes_reg[3] 
       (.C(CLK),
        .CE(tap_WE_OBUF),
        .CLR(not_sleep_ext_reg),
        .D(p_0_in[3]),
        .Q(num_writes_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    rd_en_source_1_i_1
       (.I0(sm_tready_IBUF),
        .I1(p_1_in_0),
        .I2(p_0_in_1),
        .O(rd_en_source));
  FDCE #(
    .INIT(1'b0)) 
    rd_en_source_1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(rd_en_source),
        .Q(rd_en_fifo_1));
  FDCE #(
    .INIT(1'b0)) 
    rd_en_source_2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(rd_en_fifo_1),
        .Q(rd_en_source_2));
  FDCE #(
    .INIT(1'b0)) 
    rd_en_source_3_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(rd_en_source_2),
        .Q(rd_en_source_3));
  FDCE #(
    .INIT(1'b0)) 
    rd_en_source_4_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(rd_en_source_3),
        .Q(rd_en_source_4));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[0]_inst_i_1 
       (.I0(tap_Do_IBUF[0]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[0]),
        .O(rdata_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[10]_inst_i_1 
       (.I0(tap_Do_IBUF[10]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[10]),
        .O(rdata_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[11]_inst_i_1 
       (.I0(tap_Do_IBUF[11]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[11]),
        .O(rdata_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[12]_inst_i_1 
       (.I0(tap_Do_IBUF[12]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[12]),
        .O(rdata_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[13]_inst_i_1 
       (.I0(tap_Do_IBUF[13]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[13]),
        .O(rdata_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[14]_inst_i_1 
       (.I0(tap_Do_IBUF[14]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[14]),
        .O(rdata_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[15]_inst_i_1 
       (.I0(tap_Do_IBUF[15]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[15]),
        .O(rdata_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[16]_inst_i_1 
       (.I0(tap_Do_IBUF[16]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[16]),
        .O(rdata_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[17]_inst_i_1 
       (.I0(tap_Do_IBUF[17]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[17]),
        .O(rdata_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[18]_inst_i_1 
       (.I0(tap_Do_IBUF[18]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[18]),
        .O(rdata_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[19]_inst_i_1 
       (.I0(tap_Do_IBUF[19]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[19]),
        .O(rdata_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[1]_inst_i_1 
       (.I0(tap_Do_IBUF[1]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[1]),
        .O(rdata_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[20]_inst_i_1 
       (.I0(tap_Do_IBUF[20]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[20]),
        .O(rdata_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[21]_inst_i_1 
       (.I0(tap_Do_IBUF[21]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[21]),
        .O(rdata_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[22]_inst_i_1 
       (.I0(tap_Do_IBUF[22]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[22]),
        .O(rdata_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[23]_inst_i_1 
       (.I0(tap_Do_IBUF[23]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[23]),
        .O(rdata_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[24]_inst_i_1 
       (.I0(tap_Do_IBUF[24]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[24]),
        .O(rdata_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[25]_inst_i_1 
       (.I0(tap_Do_IBUF[25]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[25]),
        .O(rdata_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[26]_inst_i_1 
       (.I0(tap_Do_IBUF[26]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[26]),
        .O(rdata_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[27]_inst_i_1 
       (.I0(tap_Do_IBUF[27]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[27]),
        .O(rdata_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[28]_inst_i_1 
       (.I0(tap_Do_IBUF[28]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[28]),
        .O(rdata_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[29]_inst_i_1 
       (.I0(tap_Do_IBUF[29]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[29]),
        .O(rdata_OBUF[29]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[2]_inst_i_1 
       (.I0(tap_Do_IBUF[2]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[2]),
        .O(rdata_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[30]_inst_i_1 
       (.I0(tap_Do_IBUF[30]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[30]),
        .O(rdata_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[31]_inst_i_1 
       (.I0(tap_Do_IBUF[31]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[31]),
        .O(rdata_OBUF[31]));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \rdata_OBUF[31]_inst_i_2 
       (.I0(araddr_prev[11]),
        .I1(araddr_prev[0]),
        .I2(araddr_prev[7]),
        .I3(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I4(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(\rdata_OBUF[31]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \rdata_OBUF[31]_inst_i_3 
       (.I0(araddr_prev[6]),
        .I1(araddr_prev[2]),
        .I2(araddr_prev[10]),
        .I3(araddr_prev[1]),
        .O(\rdata_OBUF[31]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rdata_OBUF[31]_inst_i_4 
       (.I0(araddr_prev[9]),
        .I1(araddr_prev[3]),
        .I2(araddr_prev[8]),
        .I3(araddr_prev[5]),
        .O(\rdata_OBUF[31]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[3]_inst_i_1 
       (.I0(tap_Do_IBUF[3]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[3]),
        .O(rdata_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[4]_inst_i_1 
       (.I0(tap_Do_IBUF[4]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[4]),
        .O(rdata_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[5]_inst_i_1 
       (.I0(tap_Do_IBUF[5]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[5]),
        .O(rdata_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[6]_inst_i_1 
       (.I0(tap_Do_IBUF[6]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[6]),
        .O(rdata_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[7]_inst_i_1 
       (.I0(tap_Do_IBUF[7]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[7]),
        .O(rdata_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[8]_inst_i_1 
       (.I0(tap_Do_IBUF[8]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[8]),
        .O(rdata_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata_OBUF[9]_inst_i_1 
       (.I0(tap_Do_IBUF[9]),
        .I1(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I2(read_tap_internal[9]),
        .O(rdata_OBUF[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_tap_internal[0]_i_1 
       (.I0(max_num[0]),
        .I1(araddr_upd[4]),
        .I2(run_status[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[10]_i_1 
       (.I0(max_num[10]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[11]_i_1 
       (.I0(max_num[11]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[12]_i_1 
       (.I0(max_num[12]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[13]_i_1 
       (.I0(max_num[13]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[14]_i_1 
       (.I0(max_num[14]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[15]_i_1 
       (.I0(max_num[15]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[16]_i_1 
       (.I0(max_num[16]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[17]_i_1 
       (.I0(max_num[17]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[18]_i_1 
       (.I0(max_num[18]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[19]_i_1 
       (.I0(max_num[19]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_tap_internal[1]_i_1 
       (.I0(max_num[1]),
        .I1(araddr_upd[4]),
        .I2(run_status[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[20]_i_1 
       (.I0(max_num[20]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[21]_i_1 
       (.I0(max_num[21]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[22]_i_1 
       (.I0(max_num[22]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[23]_i_1 
       (.I0(max_num[23]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[24]_i_1 
       (.I0(max_num[24]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[25]_i_1 
       (.I0(max_num[25]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[26]_i_1 
       (.I0(max_num[26]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[27]_i_1 
       (.I0(max_num[27]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[28]_i_1 
       (.I0(max_num[28]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[29]_i_1 
       (.I0(max_num[29]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_tap_internal[2]_i_1 
       (.I0(max_num[2]),
        .I1(araddr_upd[4]),
        .I2(run_status[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[30]_i_1 
       (.I0(max_num[30]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'h40007FFF)) 
    \read_tap_internal[31]_i_1 
       (.I0(araddr_upd0[4]),
        .I1(arvalid_IBUF),
        .I2(num_writes_reg[2]),
        .I3(num_writes_reg[3]),
        .I4(araddr_prev[4]),
        .O(p_0_in0));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[31]_i_2 
       (.I0(max_num[31]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[3]_i_1 
       (.I0(max_num[3]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[4]_i_1 
       (.I0(max_num[4]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[5]_i_1 
       (.I0(max_num[5]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[6]_i_1 
       (.I0(max_num[6]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[7]_i_1 
       (.I0(max_num[7]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[8]_i_1 
       (.I0(max_num[8]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h8AAAAAAA80000000)) 
    \read_tap_internal[9]_i_1 
       (.I0(max_num[9]),
        .I1(araddr_upd0[4]),
        .I2(arvalid_IBUF),
        .I3(num_writes_reg[2]),
        .I4(num_writes_reg[3]),
        .I5(araddr_prev[4]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(read_tap_internal[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(read_tap_internal[10]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(read_tap_internal[11]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(read_tap_internal[12]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(read_tap_internal[13]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(read_tap_internal[14]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(read_tap_internal[15]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(read_tap_internal[16]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(read_tap_internal[17]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(read_tap_internal[18]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(read_tap_internal[19]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(read_tap_internal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(read_tap_internal[20]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(read_tap_internal[21]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(read_tap_internal[22]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(read_tap_internal[23]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(read_tap_internal[24]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(read_tap_internal[25]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(read_tap_internal[26]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(read_tap_internal[27]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(read_tap_internal[28]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(read_tap_internal[29]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(read_tap_internal[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(read_tap_internal[30]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(read_tap_internal[31]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(read_tap_internal[3]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(read_tap_internal[4]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(read_tap_internal[5]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(read_tap_internal[6]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(read_tap_internal[7]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(read_tap_internal[8]),
        .R(p_0_in0));
  FDRE #(
    .INIT(1'b0)) 
    \read_tap_internal_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(read_tap_internal[9]),
        .R(p_0_in0));
  LUT6 #(
    .INIT(64'hEEEECFCCEEEECCCC)) 
    \run_status[0]_i_1 
       (.I0(wdata_upd[0]),
        .I1(\tap_Di_OBUF[2]_inst_i_3_n_0 ),
        .I2(\run_status[1]_i_2_n_0 ),
        .I3(fifo_1_n_7),
        .I4(\run_status[2]_i_4_n_0 ),
        .I5(run_status[0]),
        .O(\run_status[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEECFCCEEEECCCC)) 
    \run_status[1]_i_1 
       (.I0(wdata_upd[1]),
        .I1(\tap_Di_OBUF[2]_inst_i_3_n_0 ),
        .I2(\run_status[1]_i_2_n_0 ),
        .I3(fifo_1_n_7),
        .I4(\run_status[2]_i_4_n_0 ),
        .I5(run_status[1]),
        .O(\run_status[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \run_status[1]_i_2 
       (.I0(\tap_Di_OBUF[2]_inst_i_6_n_0 ),
        .I1(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I2(sm_tlast03_in),
        .I3(\tap_Di_OBUF[2]_inst_i_5_n_0 ),
        .O(\run_status[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAF0AAC0)) 
    \run_status[2]_i_1 
       (.I0(wdata_upd[2]),
        .I1(\run_status[2]_i_2_n_0 ),
        .I2(fifo_1_n_7),
        .I3(\run_status[2]_i_4_n_0 ),
        .I4(run_status[2]),
        .O(\run_status[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF5FFF533)) 
    \run_status[2]_i_10 
       (.I0(awaddr_prev[9]),
        .I1(awaddr_upd0[9]),
        .I2(awaddr_prev[4]),
        .I3(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I4(awaddr_upd0[4]),
        .O(\run_status[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \run_status[2]_i_11 
       (.I0(awaddr_IBUF[3]),
        .I1(awaddr_prev[3]),
        .I2(awaddr_IBUF[2]),
        .I3(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I4(awaddr_prev[2]),
        .O(\run_status[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00000098)) 
    \run_status[2]_i_2 
       (.I0(p_0_in_1),
        .I1(sm_tlast03_in),
        .I2(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I3(\tap_Di_OBUF[2]_inst_i_7_n_0 ),
        .I4(\tap_Di_OBUF[2]_inst_i_5_n_0 ),
        .O(\run_status[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \run_status[2]_i_4 
       (.I0(\run_status[2]_i_5_n_0 ),
        .I1(\run_status[2]_i_6_n_0 ),
        .I2(\run_status[2]_i_7_n_0 ),
        .I3(\run_status[2]_i_8_n_0 ),
        .I4(\run_status[2]_i_9_n_0 ),
        .I5(\run_status[2]_i_10_n_0 ),
        .O(\run_status[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF355F3)) 
    \run_status[2]_i_5 
       (.I0(awaddr_prev[10]),
        .I1(awaddr_upd0[10]),
        .I2(awaddr_IBUF[1]),
        .I3(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I4(awaddr_prev[1]),
        .O(\run_status[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFF355F3)) 
    \run_status[2]_i_6 
       (.I0(awaddr_prev[5]),
        .I1(awaddr_upd0[5]),
        .I2(awaddr_IBUF[0]),
        .I3(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I4(awaddr_prev[0]),
        .O(\run_status[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8A80)) 
    \run_status[2]_i_7 
       (.I0(tap_WE_OBUF),
        .I1(awaddr_prev[6]),
        .I2(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I3(awaddr_upd0[6]),
        .O(\run_status[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4777CFFF)) 
    \run_status[2]_i_8 
       (.I0(awaddr_prev[11]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_upd0[11]),
        .I3(awaddr_upd0[8]),
        .I4(awaddr_prev[8]),
        .I5(\run_status[2]_i_11_n_0 ),
        .O(\run_status[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \run_status[2]_i_9 
       (.I0(awaddr_upd0[7]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[7]),
        .O(\run_status[2]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \run_status_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(\run_status[0]_i_1_n_0 ),
        .Q(run_status[0]));
  FDCE #(
    .INIT(1'b0)) 
    \run_status_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(\run_status[1]_i_1_n_0 ),
        .Q(run_status[1]));
  FDPE #(
    .INIT(1'b1)) 
    \run_status_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\run_status[2]_i_1_n_0 ),
        .PRE(not_sleep_ext_reg),
        .Q(run_status[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rvalid_stat_i_1
       (.I0(arvalid_IBUF),
        .I1(num_writes_reg[2]),
        .I2(num_writes_reg[3]),
        .O(raddr_arrive));
  FDCE #(
    .INIT(1'b0)) 
    rvalid_stat_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(raddr_arrive),
        .Q(rvalid_OBUF));
  CARRY4 sm_tlast0_carry
       (.CI(1'b0),
        .CO({sm_tlast0_carry_n_0,sm_tlast0_carry_n_1,sm_tlast0_carry_n_2,sm_tlast0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sm_tlast0_carry_O_UNCONNECTED[3:0]),
        .S({sm_tlast0_carry_i_1_n_0,sm_tlast0_carry_i_2_n_0,sm_tlast0_carry_i_3_n_0,sm_tlast0_carry_i_4_n_0}));
  CARRY4 sm_tlast0_carry__0
       (.CI(sm_tlast0_carry_n_0),
        .CO({sm_tlast0_carry__0_n_0,sm_tlast0_carry__0_n_1,sm_tlast0_carry__0_n_2,sm_tlast0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sm_tlast0_carry__0_O_UNCONNECTED[3:0]),
        .S({sm_tlast0_carry__0_i_1_n_0,sm_tlast0_carry__0_i_2_n_0,sm_tlast0_carry__0_i_3_n_0,sm_tlast0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry__0_i_1
       (.I0(num_vld[22]),
        .I1(max_num[22]),
        .I2(num_vld[23]),
        .I3(max_num[23]),
        .I4(max_num[21]),
        .I5(num_vld[21]),
        .O(sm_tlast0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry__0_i_2
       (.I0(num_vld[18]),
        .I1(max_num[18]),
        .I2(num_vld[19]),
        .I3(max_num[19]),
        .I4(max_num[20]),
        .I5(num_vld[20]),
        .O(sm_tlast0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry__0_i_3
       (.I0(num_vld[16]),
        .I1(max_num[16]),
        .I2(num_vld[17]),
        .I3(max_num[17]),
        .I4(max_num[15]),
        .I5(num_vld[15]),
        .O(sm_tlast0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry__0_i_4
       (.I0(num_vld[12]),
        .I1(max_num[12]),
        .I2(num_vld[13]),
        .I3(max_num[13]),
        .I4(max_num[14]),
        .I5(num_vld[14]),
        .O(sm_tlast0_carry__0_i_4_n_0));
  CARRY4 sm_tlast0_carry__1
       (.CI(sm_tlast0_carry__0_n_0),
        .CO({NLW_sm_tlast0_carry__1_CO_UNCONNECTED[3],sm_tlast03_in,sm_tlast0_carry__1_n_2,sm_tlast0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sm_tlast0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,sm_tlast0_carry__1_i_1_n_0,sm_tlast0_carry__1_i_2_n_0,sm_tlast0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    sm_tlast0_carry__1_i_1
       (.I0(max_num[31]),
        .I1(num_vld[31]),
        .I2(max_num[30]),
        .I3(num_vld[30]),
        .O(sm_tlast0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry__1_i_2
       (.I0(num_vld[28]),
        .I1(max_num[28]),
        .I2(num_vld[29]),
        .I3(max_num[29]),
        .I4(max_num[27]),
        .I5(num_vld[27]),
        .O(sm_tlast0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry__1_i_3
       (.I0(num_vld[24]),
        .I1(max_num[24]),
        .I2(num_vld[25]),
        .I3(max_num[25]),
        .I4(max_num[26]),
        .I5(num_vld[26]),
        .O(sm_tlast0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry_i_1
       (.I0(num_vld[10]),
        .I1(max_num[10]),
        .I2(num_vld[11]),
        .I3(max_num[11]),
        .I4(max_num[9]),
        .I5(num_vld[9]),
        .O(sm_tlast0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry_i_2
       (.I0(num_vld[6]),
        .I1(max_num[6]),
        .I2(num_vld[7]),
        .I3(max_num[7]),
        .I4(max_num[8]),
        .I5(num_vld[8]),
        .O(sm_tlast0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry_i_3
       (.I0(num_vld[4]),
        .I1(max_num[4]),
        .I2(num_vld[5]),
        .I3(max_num[5]),
        .I4(max_num[3]),
        .I5(num_vld[3]),
        .O(sm_tlast0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tlast0_carry_i_4
       (.I0(num_vld[0]),
        .I1(max_num[0]),
        .I2(num_vld[1]),
        .I3(max_num[1]),
        .I4(max_num[2]),
        .I5(num_vld[2]),
        .O(sm_tlast0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    sm_tlast_OBUF_inst_i_1
       (.I0(sm_tlast03_in),
        .I1(p_0_in_1),
        .I2(p_1_in_0),
        .I3(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[4] ),
        .O(sm_tlast_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h2600)) 
    \state_arr[0]_i_1 
       (.I0(state_arr[0]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(state_arr[1]),
        .I3(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .O(\state_arr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h00C1)) 
    \state_arr[1]_i_1 
       (.I0(state_arr[0]),
        .I1(state_arr[1]),
        .I2(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I3(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .O(\state_arr[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_arr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(\state_arr[0]_i_1_n_0 ),
        .Q(state_arr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_arr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(\state_arr[1]_i_1_n_0 ),
        .Q(state_arr[1]));
  LUT6 #(
    .INIT(64'h000055F700000000)) 
    \tap_A_OBUF[0]_inst_i_1 
       (.I0(rd_en_source),
        .I1(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_4_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I5(\tap_A_OBUF[0]_inst_i_2_n_0 ),
        .O(tap_A_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tap_A_OBUF[0]_inst_i_2 
       (.I0(awaddr_prev[0]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_IBUF[0]),
        .I3(tap_WE_OBUF),
        .I4(araddr_upd[0]),
        .O(\tap_A_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000055F7)) 
    \tap_A_OBUF[10]_inst_i_1 
       (.I0(rd_en_source),
        .I1(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_4_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I5(\tap_A_OBUF[10]_inst_i_2_n_0 ),
        .O(tap_A_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \tap_A_OBUF[10]_inst_i_2 
       (.I0(awaddr_upd0[10]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[10]),
        .I3(tap_WE_OBUF),
        .I4(\tap_A_OBUF[10]_inst_i_3_n_0 ),
        .O(\tap_A_OBUF[10]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h1555D555)) 
    \tap_A_OBUF[10]_inst_i_3 
       (.I0(araddr_prev[10]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_upd0[10]),
        .O(\tap_A_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222AA2A)) 
    \tap_A_OBUF[11]_inst_i_1 
       (.I0(\tap_A_OBUF[11]_inst_i_2_n_0 ),
        .I1(rd_en_source),
        .I2(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_4_n_0 ),
        .I4(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I5(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .O(tap_A_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h1555D555)) 
    \tap_A_OBUF[11]_inst_i_10 
       (.I0(araddr_prev[6]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_upd0[6]),
        .O(\tap_A_OBUF[11]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \tap_A_OBUF[11]_inst_i_2 
       (.I0(\awaddr_prev[11]_i_1_n_0 ),
        .I1(tap_WE_OBUF),
        .I2(araddr_upd0[11]),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(araddr_prev[11]),
        .O(\tap_A_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A800A0080800000)) 
    \tap_A_OBUF[11]_inst_i_3 
       (.I0(\tap_A_OBUF[11]_inst_i_6_n_0 ),
        .I1(araddr_prev[5]),
        .I2(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I3(araddr_upd0[5]),
        .I4(araddr_prev[7]),
        .I5(araddr_upd0[7]),
        .O(\tap_A_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tap_A_OBUF[11]_inst_i_4 
       (.I0(araddr_upd[4]),
        .I1(\tap_A_OBUF[11]_inst_i_7_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_8_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_9_n_0 ),
        .I4(\tap_A_OBUF[11]_inst_i_10_n_0 ),
        .I5(araddr_upd[0]),
        .O(\tap_A_OBUF[11]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \tap_A_OBUF[11]_inst_i_5 
       (.I0(num_writes_reg[3]),
        .I1(num_writes_reg[2]),
        .I2(arvalid_IBUF),
        .O(\tap_A_OBUF[11]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \tap_A_OBUF[11]_inst_i_6 
       (.I0(araddr_IBUF[3]),
        .I1(araddr_prev[3]),
        .I2(araddr_IBUF[1]),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(araddr_prev[1]),
        .O(\tap_A_OBUF[11]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h1555D555)) 
    \tap_A_OBUF[11]_inst_i_7 
       (.I0(araddr_prev[8]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_upd0[8]),
        .O(\tap_A_OBUF[11]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFF533F5)) 
    \tap_A_OBUF[11]_inst_i_8 
       (.I0(araddr_upd0[11]),
        .I1(araddr_prev[11]),
        .I2(araddr_IBUF[2]),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(araddr_prev[2]),
        .O(\tap_A_OBUF[11]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \tap_A_OBUF[11]_inst_i_9 
       (.I0(araddr_upd0[10]),
        .I1(araddr_prev[10]),
        .I2(araddr_upd0[9]),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(araddr_prev[9]),
        .O(\tap_A_OBUF[11]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000055F700000000)) 
    \tap_A_OBUF[1]_inst_i_1 
       (.I0(rd_en_source),
        .I1(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_4_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I5(\tap_A_OBUF[1]_inst_i_2_n_0 ),
        .O(tap_A_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tap_A_OBUF[1]_inst_i_2 
       (.I0(awaddr_prev[1]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_IBUF[1]),
        .I3(tap_WE_OBUF),
        .I4(araddr_upd[1]),
        .O(\tap_A_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5551111100011111)) 
    \tap_A_OBUF[2]_inst_i_1 
       (.I0(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I1(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I3(\tap_A_OBUF[5]_inst_i_3_n_0 ),
        .I4(rd_en_source),
        .I5(tap_count_reg[0]),
        .O(tap_A_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h470047FF)) 
    \tap_A_OBUF[2]_inst_i_2 
       (.I0(awaddr_prev[2]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_IBUF[2]),
        .I3(tap_WE_OBUF),
        .I4(araddr_upd[2]),
        .O(\tap_A_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEAA02AA)) 
    \tap_A_OBUF[3]_inst_i_1 
       (.I0(\tap_A_OBUF[3]_inst_i_2_n_0 ),
        .I1(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I2(\tap_A_OBUF[5]_inst_i_3_n_0 ),
        .I3(rd_en_source),
        .I4(tap_count_reg[1]),
        .I5(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .O(tap_A_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hCFC05555)) 
    \tap_A_OBUF[3]_inst_i_2 
       (.I0(\tap_A_OBUF[3]_inst_i_3_n_0 ),
        .I1(awaddr_prev[3]),
        .I2(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I3(awaddr_IBUF[3]),
        .I4(tap_WE_OBUF),
        .O(\tap_A_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h1555D555)) 
    \tap_A_OBUF[3]_inst_i_3 
       (.I0(araddr_prev[3]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_IBUF[3]),
        .O(\tap_A_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5551111100011111)) 
    \tap_A_OBUF[4]_inst_i_1 
       (.I0(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I1(\tap_A_OBUF[4]_inst_i_2_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I3(\tap_A_OBUF[5]_inst_i_3_n_0 ),
        .I4(rd_en_source),
        .I5(tap_count_reg[2]),
        .O(tap_A_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h1D001DFF)) 
    \tap_A_OBUF[4]_inst_i_2 
       (.I0(awaddr_upd0[4]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[4]),
        .I3(tap_WE_OBUF),
        .I4(araddr_upd[4]),
        .O(\tap_A_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5551111100011111)) 
    \tap_A_OBUF[5]_inst_i_1 
       (.I0(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I1(\tap_A_OBUF[5]_inst_i_2_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I3(\tap_A_OBUF[5]_inst_i_3_n_0 ),
        .I4(rd_en_source),
        .I5(tap_count_reg[3]),
        .O(tap_A_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \tap_A_OBUF[5]_inst_i_2 
       (.I0(awaddr_upd0[5]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[5]),
        .I3(tap_WE_OBUF),
        .I4(\tap_A_OBUF[5]_inst_i_4_n_0 ),
        .O(\tap_A_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \tap_A_OBUF[5]_inst_i_3 
       (.I0(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I1(\tap_A_OBUF[5]_inst_i_5_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_9_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_8_n_0 ),
        .I4(\tap_A_OBUF[11]_inst_i_7_n_0 ),
        .I5(araddr_upd[4]),
        .O(\tap_A_OBUF[5]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h1555D555)) 
    \tap_A_OBUF[5]_inst_i_4 
       (.I0(araddr_prev[5]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_upd0[5]),
        .O(\tap_A_OBUF[5]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF533F5)) 
    \tap_A_OBUF[5]_inst_i_5 
       (.I0(araddr_upd0[6]),
        .I1(araddr_prev[6]),
        .I2(araddr_IBUF[0]),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(araddr_prev[0]),
        .O(\tap_A_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000055F7)) 
    \tap_A_OBUF[6]_inst_i_1 
       (.I0(rd_en_source),
        .I1(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_4_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I5(\tap_A_OBUF[6]_inst_i_2_n_0 ),
        .O(tap_A_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \tap_A_OBUF[6]_inst_i_2 
       (.I0(awaddr_upd0[6]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[6]),
        .I3(tap_WE_OBUF),
        .I4(\tap_A_OBUF[11]_inst_i_10_n_0 ),
        .O(\tap_A_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000055F7)) 
    \tap_A_OBUF[7]_inst_i_1 
       (.I0(rd_en_source),
        .I1(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_4_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I5(\tap_A_OBUF[7]_inst_i_2_n_0 ),
        .O(tap_A_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \tap_A_OBUF[7]_inst_i_2 
       (.I0(awaddr_upd0[7]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[7]),
        .I3(tap_WE_OBUF),
        .I4(\tap_A_OBUF[7]_inst_i_3_n_0 ),
        .O(\tap_A_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h1555D555)) 
    \tap_A_OBUF[7]_inst_i_3 
       (.I0(araddr_prev[7]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_upd0[7]),
        .O(\tap_A_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000055F7)) 
    \tap_A_OBUF[8]_inst_i_1 
       (.I0(rd_en_source),
        .I1(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_4_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I5(\tap_A_OBUF[8]_inst_i_2_n_0 ),
        .O(tap_A_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \tap_A_OBUF[8]_inst_i_2 
       (.I0(awaddr_upd0[8]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[8]),
        .I3(tap_WE_OBUF),
        .I4(\tap_A_OBUF[11]_inst_i_7_n_0 ),
        .O(\tap_A_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000055F7)) 
    \tap_A_OBUF[9]_inst_i_1 
       (.I0(rd_en_source),
        .I1(\tap_A_OBUF[11]_inst_i_3_n_0 ),
        .I2(\tap_A_OBUF[11]_inst_i_4_n_0 ),
        .I3(\tap_A_OBUF[11]_inst_i_5_n_0 ),
        .I4(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I5(\tap_A_OBUF[9]_inst_i_2_n_0 ),
        .O(tap_A_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \tap_A_OBUF[9]_inst_i_2 
       (.I0(awaddr_upd0[9]),
        .I1(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .I2(awaddr_prev[9]),
        .I3(tap_WE_OBUF),
        .I4(\tap_A_OBUF[9]_inst_i_3_n_0 ),
        .O(\tap_A_OBUF[9]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h1555D555)) 
    \tap_A_OBUF[9]_inst_i_3 
       (.I0(araddr_prev[9]),
        .I1(num_writes_reg[3]),
        .I2(num_writes_reg[2]),
        .I3(arvalid_IBUF),
        .I4(araddr_upd0[9]),
        .O(\tap_A_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \tap_Di_OBUF[0]_inst_i_1 
       (.I0(\tap_Di_OBUF[2]_inst_i_3_n_0 ),
        .I1(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I3(D[0]),
        .I4(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I5(wdata_prev[0]),
        .O(tap_Di_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[10]_inst_i_1 
       (.I0(wdata_prev[10]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[10]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[11]_inst_i_1 
       (.I0(wdata_prev[11]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[11]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[12]_inst_i_1 
       (.I0(wdata_prev[12]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[12]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[13]_inst_i_1 
       (.I0(wdata_prev[13]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[13]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[14]_inst_i_1 
       (.I0(wdata_prev[14]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[14]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[15]_inst_i_1 
       (.I0(wdata_prev[15]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[15]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[16]_inst_i_1 
       (.I0(wdata_prev[16]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[16]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[17]_inst_i_1 
       (.I0(wdata_prev[17]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[17]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[18]_inst_i_1 
       (.I0(wdata_prev[18]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[18]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[19]_inst_i_1 
       (.I0(wdata_prev[19]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[19]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[19]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \tap_Di_OBUF[1]_inst_i_1 
       (.I0(\tap_Di_OBUF[2]_inst_i_3_n_0 ),
        .I1(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I3(D[1]),
        .I4(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I5(wdata_prev[1]),
        .O(tap_Di_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[20]_inst_i_1 
       (.I0(wdata_prev[20]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[20]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[21]_inst_i_1 
       (.I0(wdata_prev[21]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[21]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[22]_inst_i_1 
       (.I0(wdata_prev[22]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[22]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[23]_inst_i_1 
       (.I0(wdata_prev[23]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[23]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[24]_inst_i_1 
       (.I0(wdata_prev[24]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[24]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[25]_inst_i_1 
       (.I0(wdata_prev[25]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[25]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[26]_inst_i_1 
       (.I0(wdata_prev[26]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[26]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[27]_inst_i_1 
       (.I0(wdata_prev[27]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[27]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[28]_inst_i_1 
       (.I0(wdata_prev[28]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[28]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[29]_inst_i_1 
       (.I0(wdata_prev[29]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[29]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[29]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \tap_Di_OBUF[2]_inst_i_1 
       (.I0(\tap_Di_OBUF[2]_inst_i_2_n_0 ),
        .I1(\tap_Di_OBUF[2]_inst_i_3_n_0 ),
        .I2(\tap_Di_OBUF[2]_inst_i_4_n_0 ),
        .I3(D[2]),
        .I4(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I5(wdata_prev[2]),
        .O(tap_Di_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \tap_Di_OBUF[2]_inst_i_2 
       (.I0(\tap_Di_OBUF[2]_inst_i_5_n_0 ),
        .I1(sm_tlast03_in),
        .I2(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I3(p_0_in_1),
        .I4(\tap_Di_OBUF[2]_inst_i_6_n_0 ),
        .O(\tap_Di_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \tap_Di_OBUF[2]_inst_i_3 
       (.I0(\tap_Di_OBUF[2]_inst_i_5_n_0 ),
        .I1(p_0_in_1),
        .I2(sm_tlast03_in),
        .I3(\tap_Di_OBUF[2]_inst_i_7_n_0 ),
        .O(\tap_Di_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tap_Di_OBUF[2]_inst_i_4 
       (.I0(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_running_reg_n_0_[4] ),
        .O(\tap_Di_OBUF[2]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hEEFEAAFA)) 
    \tap_Di_OBUF[2]_inst_i_5 
       (.I0(\FSM_onehot_state_running[4]_i_1_n_0 ),
        .I1(p_1_in_0),
        .I2(p_0_in_1),
        .I3(sm_tlast03_in),
        .I4(ss_tlast_IBUF),
        .O(\tap_Di_OBUF[2]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \tap_Di_OBUF[2]_inst_i_6 
       (.I0(\tap_Di_OBUF[2]_inst_i_7_n_0 ),
        .I1(sm_tlast03_in),
        .I2(p_0_in_1),
        .O(\tap_Di_OBUF[2]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \tap_Di_OBUF[2]_inst_i_7 
       (.I0(p_1_in_0),
        .I1(run_status[0]),
        .I2(run_status[1]),
        .I3(run_status[2]),
        .I4(\FSM_onehot_state_running_reg_n_0_[4] ),
        .O(\tap_Di_OBUF[2]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[30]_inst_i_1 
       (.I0(wdata_prev[30]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[30]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[31]_inst_i_1 
       (.I0(wdata_prev[31]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[31]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[3]_inst_i_1 
       (.I0(wdata_prev[3]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[3]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[4]_inst_i_1 
       (.I0(wdata_prev[4]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[4]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[5]_inst_i_1 
       (.I0(wdata_prev[5]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[5]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[6]_inst_i_1 
       (.I0(wdata_prev[6]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[6]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[7]_inst_i_1 
       (.I0(wdata_prev[7]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[7]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[8]_inst_i_1 
       (.I0(wdata_prev[8]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[8]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tap_Di_OBUF[9]_inst_i_1 
       (.I0(wdata_prev[9]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(D[9]),
        .I3(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_running_reg_n_0_[0] ),
        .O(tap_Di_OBUF[9]));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    tap_EN_OBUF_inst_i_1
       (.I0(tap_WE_OBUF),
        .I1(p_1_in_0),
        .I2(en_read_tap1__15),
        .I3(num_writes_reg[3]),
        .I4(num_writes_reg[2]),
        .I5(arvalid_IBUF),
        .O(tap_EN_OBUF));
  LUT5 #(
    .INIT(32'hCCC8FFF8)) 
    \tap_WE_OBUF[3]_inst_i_1 
       (.I0(awvalid_IBUF),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(state_arr[1]),
        .I3(state_arr[0]),
        .I4(\tap_WE_OBUF[3]_inst_i_3_n_0 ),
        .O(tap_WE_OBUF));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \tap_WE_OBUF[3]_inst_i_2 
       (.I0(wvalid_IBUF),
        .I1(axis_rst_n_IBUF),
        .I2(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I4(p_1_in_0),
        .I5(p_0_in_1),
        .O(\tap_WE_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \tap_WE_OBUF[3]_inst_i_3 
       (.I0(axis_rst_n_IBUF),
        .I1(\FSM_onehot_state_running_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_running_reg_n_0_[0] ),
        .I3(p_1_in_0),
        .I4(p_0_in_1),
        .I5(awvalid_IBUF),
        .O(\tap_WE_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \tap_count[0]_i_1 
       (.I0(tap_count_reg[2]),
        .I1(tap_count_reg[1]),
        .I2(tap_count_reg[3]),
        .I3(tap_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0F70)) 
    \tap_count[1]_i_1 
       (.I0(tap_count_reg[2]),
        .I1(tap_count_reg[3]),
        .I2(tap_count_reg[1]),
        .I3(tap_count_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h1FC0)) 
    \tap_count[2]_i_1 
       (.I0(tap_count_reg[3]),
        .I1(tap_count_reg[0]),
        .I2(tap_count_reg[1]),
        .I3(tap_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h5F80)) 
    \tap_count[3]_i_1 
       (.I0(tap_count_reg[1]),
        .I1(tap_count_reg[0]),
        .I2(tap_count_reg[2]),
        .I3(tap_count_reg[3]),
        .O(p_0_in__0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \tap_count[3]_i_2 
       (.I0(rd_en_source_4),
        .I1(axis_clk_IBUF),
        .O(clk_comp));
  FDCE #(
    .INIT(1'b0)) 
    \tap_count_reg[0] 
       (.C(clk_comp),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(p_0_in__0[0]),
        .Q(tap_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_count_reg[1] 
       (.C(clk_comp),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(p_0_in__0[1]),
        .Q(tap_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_count_reg[2] 
       (.C(clk_comp),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(p_0_in__0[2]),
        .Q(tap_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_count_reg[3] 
       (.C(clk_comp),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg),
        .D(p_0_in__0[3]),
        .Q(tap_count_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[0]_i_1 
       (.I0(D[0]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[0]),
        .O(wdata_upd[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[10]_i_1 
       (.I0(D[10]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[10]),
        .O(wdata_upd[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[11]_i_1 
       (.I0(D[11]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[11]),
        .O(wdata_upd[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[12]_i_1 
       (.I0(D[12]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[12]),
        .O(wdata_upd[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[13]_i_1 
       (.I0(D[13]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[13]),
        .O(wdata_upd[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[14]_i_1 
       (.I0(D[14]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[14]),
        .O(wdata_upd[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[15]_i_1 
       (.I0(D[15]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[15]),
        .O(wdata_upd[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[16]_i_1 
       (.I0(D[16]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[16]),
        .O(wdata_upd[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[17]_i_1 
       (.I0(D[17]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[17]),
        .O(wdata_upd[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[18]_i_1 
       (.I0(D[18]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[18]),
        .O(wdata_upd[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[19]_i_1 
       (.I0(D[19]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[19]),
        .O(wdata_upd[19]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[1]_i_1 
       (.I0(D[1]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[1]),
        .O(wdata_upd[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[20]_i_1 
       (.I0(D[20]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[20]),
        .O(wdata_upd[20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[21]_i_1 
       (.I0(D[21]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[21]),
        .O(wdata_upd[21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[22]_i_1 
       (.I0(D[22]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[22]),
        .O(wdata_upd[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[23]_i_1 
       (.I0(D[23]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[23]),
        .O(wdata_upd[23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[24]_i_1 
       (.I0(D[24]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[24]),
        .O(wdata_upd[24]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[25]_i_1 
       (.I0(D[25]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[25]),
        .O(wdata_upd[25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[26]_i_1 
       (.I0(D[26]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[26]),
        .O(wdata_upd[26]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[27]_i_1 
       (.I0(D[27]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[27]),
        .O(wdata_upd[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[28]_i_1 
       (.I0(D[28]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[28]),
        .O(wdata_upd[28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[29]_i_1 
       (.I0(D[29]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[29]),
        .O(wdata_upd[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[2]_i_1 
       (.I0(D[2]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[2]),
        .O(wdata_upd[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[30]_i_1 
       (.I0(D[30]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[30]),
        .O(wdata_upd[30]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[31]_i_1 
       (.I0(D[31]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[31]),
        .O(wdata_upd[31]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[3]_i_1 
       (.I0(D[3]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[3]),
        .O(wdata_upd[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[4]_i_1 
       (.I0(D[4]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[4]),
        .O(wdata_upd[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[5]_i_1 
       (.I0(D[5]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[5]),
        .O(wdata_upd[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[6]_i_1 
       (.I0(D[6]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[6]),
        .O(wdata_upd[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[7]_i_1 
       (.I0(D[7]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[7]),
        .O(wdata_upd[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[8]_i_1 
       (.I0(D[8]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[8]),
        .O(wdata_upd[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_prev[9]_i_1 
       (.I0(D[9]),
        .I1(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .I2(wdata_prev[9]),
        .O(wdata_upd[9]));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[0]),
        .Q(wdata_prev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[10]),
        .Q(wdata_prev[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[11]),
        .Q(wdata_prev[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[12]),
        .Q(wdata_prev[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[13]),
        .Q(wdata_prev[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[14]),
        .Q(wdata_prev[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[15]),
        .Q(wdata_prev[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[16]),
        .Q(wdata_prev[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[17]),
        .Q(wdata_prev[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[18]),
        .Q(wdata_prev[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[19]),
        .Q(wdata_prev[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[1]),
        .Q(wdata_prev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[20]),
        .Q(wdata_prev[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[21]),
        .Q(wdata_prev[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[22]),
        .Q(wdata_prev[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[23]),
        .Q(wdata_prev[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[24]),
        .Q(wdata_prev[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[25]),
        .Q(wdata_prev[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[26]),
        .Q(wdata_prev[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[27]),
        .Q(wdata_prev[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[28]),
        .Q(wdata_prev[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[29]),
        .Q(wdata_prev[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[2]),
        .Q(wdata_prev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[30]),
        .Q(wdata_prev[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[31]),
        .Q(wdata_prev[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[3]),
        .Q(wdata_prev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[4]),
        .Q(wdata_prev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[5]),
        .Q(wdata_prev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[6]),
        .Q(wdata_prev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[7]),
        .Q(wdata_prev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[8]),
        .Q(wdata_prev[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_prev_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(wdata_upd[9]),
        .Q(wdata_prev[9]),
        .R(1'b0));
endmodule

module FIFO_WRAPPER_SYNC
   (data_EN_OBUF,
    E,
    data_A_OBUF,
    ss_tready_OBUF,
    \FSM_onehot_state_running_reg[4] ,
    CLK,
    not_sleep_ext_reg_0,
    rd_en_fifo_1,
    upd_str_data,
    ss_tvalid_IBUF,
    \run_status_reg[0] ,
    D,
    \run_status_reg[0]_0 ,
    Q,
    \rd_ptr_reg[0]_0 );
  output data_EN_OBUF;
  output [0:0]E;
  output [3:0]data_A_OBUF;
  output ss_tready_OBUF;
  output \FSM_onehot_state_running_reg[4] ;
  input CLK;
  input not_sleep_ext_reg_0;
  input rd_en_fifo_1;
  input upd_str_data;
  input ss_tvalid_IBUF;
  input \run_status_reg[0] ;
  input [0:0]D;
  input \run_status_reg[0]_0 ;
  input [0:0]Q;
  input [0:0]\rd_ptr_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_running_reg[4] ;
  wire [0:0]Q;
  wire [3:0]ain_str_r;
  wire [3:0]ain_str_w;
  wire clk_start;
  wire [3:0]data_A_OBUF;
  wire data_EN_OBUF;
  wire full_fifo10_in;
  wire full_fifo1_carry__0_i_1_n_0;
  wire full_fifo1_carry__0_i_2_n_0;
  wire full_fifo1_carry__0_i_3_n_0;
  wire full_fifo1_carry__0_i_4_n_0;
  wire full_fifo1_carry__0_n_0;
  wire full_fifo1_carry__0_n_1;
  wire full_fifo1_carry__0_n_2;
  wire full_fifo1_carry__0_n_3;
  wire full_fifo1_carry__1_i_1_n_0;
  wire full_fifo1_carry__1_i_2_n_0;
  wire full_fifo1_carry__1_i_3_n_0;
  wire full_fifo1_carry__1_n_2;
  wire full_fifo1_carry__1_n_3;
  wire full_fifo1_carry_i_1_n_0;
  wire full_fifo1_carry_i_2_n_0;
  wire full_fifo1_carry_i_3_n_0;
  wire full_fifo1_carry_i_4_n_0;
  wire full_fifo1_carry_n_0;
  wire full_fifo1_carry_n_1;
  wire full_fifo1_carry_n_2;
  wire full_fifo1_carry_n_3;
  wire not_sleep;
  wire not_sleep_ext;
  wire not_sleep_ext_reg_0;
  wire rd_en_fifo_1;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_1_n_0 ;
  wire \rd_ptr[3]_i_2_n_0 ;
  wire [0:0]\rd_ptr_reg[0]_0 ;
  wire \run_status_reg[0] ;
  wire \run_status_reg[0]_0 ;
  wire ss_tready_OBUF;
  wire ss_tready_OBUF_inst_i_2_n_0;
  wire ss_tready_OBUF_inst_i_3_n_0;
  wire ss_tvalid_IBUF;
  wire upd_str_data;
  wire \wrt_ptr[0]_i_1_n_0 ;
  wire \wrt_ptr[1]_i_1_n_0 ;
  wire \wrt_ptr[2]_i_1_n_0 ;
  wire \wrt_ptr[3]_i_1_n_0 ;
  wire [3:0]NLW_full_fifo1_carry_O_UNCONNECTED;
  wire [3:0]NLW_full_fifo1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_full_fifo1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_full_fifo1_carry__1_O_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    clk_start_reg
       (.CLR(not_sleep_ext_reg_0),
        .D(CLK),
        .G(not_sleep_ext),
        .GE(1'b1),
        .Q(clk_start));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_A_OBUF[2]_inst_i_1 
       (.I0(ain_str_w[0]),
        .I1(E),
        .I2(ain_str_r[0]),
        .O(data_A_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_A_OBUF[3]_inst_i_1 
       (.I0(ain_str_w[1]),
        .I1(E),
        .I2(ain_str_r[1]),
        .O(data_A_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_A_OBUF[4]_inst_i_1 
       (.I0(ain_str_w[2]),
        .I1(E),
        .I2(ain_str_r[2]),
        .O(data_A_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_A_OBUF[5]_inst_i_1 
       (.I0(ain_str_w[3]),
        .I1(E),
        .I2(ain_str_r[3]),
        .O(data_A_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    data_EN_OBUF_inst_i_1
       (.I0(rd_en_fifo_1),
        .I1(upd_str_data),
        .I2(E),
        .O(data_EN_OBUF));
  LUT5 #(
    .INIT(32'h20202000)) 
    \data_WE_OBUF[3]_inst_i_1 
       (.I0(ss_tvalid_IBUF),
        .I1(full_fifo10_in),
        .I2(not_sleep_ext),
        .I3(ss_tready_OBUF_inst_i_3_n_0),
        .I4(ss_tready_OBUF_inst_i_2_n_0),
        .O(E));
  CARRY4 full_fifo1_carry
       (.CI(1'b0),
        .CO({full_fifo1_carry_n_0,full_fifo1_carry_n_1,full_fifo1_carry_n_2,full_fifo1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_fifo1_carry_O_UNCONNECTED[3:0]),
        .S({full_fifo1_carry_i_1_n_0,full_fifo1_carry_i_2_n_0,full_fifo1_carry_i_3_n_0,full_fifo1_carry_i_4_n_0}));
  CARRY4 full_fifo1_carry__0
       (.CI(full_fifo1_carry_n_0),
        .CO({full_fifo1_carry__0_n_0,full_fifo1_carry__0_n_1,full_fifo1_carry__0_n_2,full_fifo1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_fifo1_carry__0_O_UNCONNECTED[3:0]),
        .S({full_fifo1_carry__0_i_1_n_0,full_fifo1_carry__0_i_2_n_0,full_fifo1_carry__0_i_3_n_0,full_fifo1_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry__0_i_1
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry__0_i_2
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry__0_i_3
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry__0_i_4
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry__0_i_4_n_0));
  CARRY4 full_fifo1_carry__1
       (.CI(full_fifo1_carry__0_n_0),
        .CO({NLW_full_fifo1_carry__1_CO_UNCONNECTED[3],full_fifo10_in,full_fifo1_carry__1_n_2,full_fifo1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_fifo1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,full_fifo1_carry__1_i_1_n_0,full_fifo1_carry__1_i_2_n_0,full_fifo1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry__1_i_1
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry__1_i_2
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry__1_i_3
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry_i_1
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    full_fifo1_carry_i_2
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(full_fifo1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAA85556)) 
    full_fifo1_carry_i_3
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .I4(ain_str_w[3]),
        .O(full_fifo1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000096090090000)) 
    full_fifo1_carry_i_4
       (.I0(ain_str_r[2]),
        .I1(ain_str_w[2]),
        .I2(ain_str_w[1]),
        .I3(ain_str_r[1]),
        .I4(ain_str_r[0]),
        .I5(ain_str_w[0]),
        .O(full_fifo1_carry_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    not_sleep_ext_reg
       (.C(clk_start),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg_0),
        .D(not_sleep),
        .Q(not_sleep_ext));
  FDCE #(
    .INIT(1'b0)) 
    not_sleep_reg
       (.C(clk_start),
        .CE(1'b1),
        .CLR(not_sleep_ext_reg_0),
        .D(1'b1),
        .Q(not_sleep));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0B0F)) 
    \rd_ptr[0]_i_1 
       (.I0(ain_str_r[2]),
        .I1(ain_str_r[3]),
        .I2(ain_str_r[0]),
        .I3(ain_str_r[1]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \rd_ptr[1]_i_1 
       (.I0(ain_str_r[2]),
        .I1(ain_str_r[3]),
        .I2(ain_str_r[0]),
        .I3(ain_str_r[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr[2]_i_1 
       (.I0(ain_str_r[2]),
        .I1(ain_str_r[1]),
        .I2(ain_str_r[0]),
        .O(\rd_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h68CC)) 
    \rd_ptr[3]_i_2 
       (.I0(ain_str_r[2]),
        .I1(ain_str_r[3]),
        .I2(ain_str_r[0]),
        .I3(ain_str_r[1]),
        .O(\rd_ptr[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(CLK),
        .CE(\rd_ptr_reg[0]_0 ),
        .CLR(not_sleep_ext_reg_0),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(ain_str_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(CLK),
        .CE(\rd_ptr_reg[0]_0 ),
        .CLR(not_sleep_ext_reg_0),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(ain_str_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(CLK),
        .CE(\rd_ptr_reg[0]_0 ),
        .CLR(not_sleep_ext_reg_0),
        .D(\rd_ptr[2]_i_1_n_0 ),
        .Q(ain_str_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[3] 
       (.C(CLK),
        .CE(\rd_ptr_reg[0]_0 ),
        .CLR(not_sleep_ext_reg_0),
        .D(\rd_ptr[3]_i_2_n_0 ),
        .Q(ain_str_r[3]));
  LUT5 #(
    .INIT(32'hEF00FFFF)) 
    \run_status[2]_i_3 
       (.I0(\run_status_reg[0] ),
        .I1(D),
        .I2(\run_status_reg[0]_0 ),
        .I3(ss_tready_OBUF),
        .I4(Q),
        .O(\FSM_onehot_state_running_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    ss_tready_OBUF_inst_i_1
       (.I0(ss_tready_OBUF_inst_i_2_n_0),
        .I1(ss_tready_OBUF_inst_i_3_n_0),
        .I2(not_sleep_ext),
        .I3(full_fifo10_in),
        .O(ss_tready_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ss_tready_OBUF_inst_i_2
       (.I0(ain_str_r[3]),
        .I1(ain_str_r[0]),
        .I2(ain_str_r[1]),
        .I3(ain_str_r[2]),
        .O(ss_tready_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    ss_tready_OBUF_inst_i_3
       (.I0(ain_str_w[3]),
        .I1(ain_str_w[2]),
        .I2(ain_str_w[1]),
        .I3(ain_str_w[0]),
        .O(ss_tready_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \wrt_ptr[0]_i_1 
       (.I0(ain_str_w[1]),
        .I1(ain_str_w[2]),
        .I2(ain_str_w[3]),
        .I3(ain_str_w[0]),
        .O(\wrt_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \wrt_ptr[1]_i_1 
       (.I0(ain_str_w[2]),
        .I1(ain_str_w[3]),
        .I2(ain_str_w[1]),
        .I3(ain_str_w[0]),
        .O(\wrt_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wrt_ptr[2]_i_1 
       (.I0(ain_str_w[2]),
        .I1(ain_str_w[1]),
        .I2(ain_str_w[0]),
        .O(\wrt_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7B80)) 
    \wrt_ptr[3]_i_1 
       (.I0(ain_str_w[2]),
        .I1(ain_str_w[1]),
        .I2(ain_str_w[0]),
        .I3(ain_str_w[3]),
        .O(\wrt_ptr[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wrt_ptr_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(not_sleep_ext_reg_0),
        .D(\wrt_ptr[0]_i_1_n_0 ),
        .Q(ain_str_w[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wrt_ptr_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(not_sleep_ext_reg_0),
        .D(\wrt_ptr[1]_i_1_n_0 ),
        .Q(ain_str_w[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wrt_ptr_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(not_sleep_ext_reg_0),
        .D(\wrt_ptr[2]_i_1_n_0 ),
        .Q(ain_str_w[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wrt_ptr_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(not_sleep_ext_reg_0),
        .D(\wrt_ptr[3]_i_1_n_0 ),
        .Q(ain_str_w[3]));
endmodule

module FIR_CORE
   (rd_en_source_2_reg,
    axis_rst_n,
    upd_str_data,
    sm_tdata_OBUF,
    E,
    \FSM_onehot_state_running_reg[1] ,
    sm_tvalid_OBUF,
    CLK,
    rd_en_source_2,
    clk_core,
    rd_en_fifo_1,
    Q,
    tap_Do_IBUF,
    mult_prod0_carry__2_0,
    axis_rst_n_IBUF,
    D);
  output rd_en_source_2_reg;
  output axis_rst_n;
  output upd_str_data;
  output [31:0]sm_tdata_OBUF;
  output [0:0]E;
  output [0:0]\FSM_onehot_state_running_reg[1] ;
  output sm_tvalid_OBUF;
  input CLK;
  input rd_en_source_2;
  input clk_core;
  input rd_en_fifo_1;
  input [0:0]Q;
  input [31:0]tap_Do_IBUF;
  input mult_prod0_carry__2_0;
  input axis_rst_n_IBUF;
  input [31:0]D;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_running_reg[1] ;
  wire [0:0]Q;
  wire axis_rst_n;
  wire axis_rst_n_IBUF;
  wire clk_core;
  wire [4:0]core_cycle_nxt;
  wire [4:0]core_cycle_reg;
  wire \data_sel_str_pre[0]_i_1_n_0 ;
  wire \data_sel_str_pre[1]_i_1_n_0 ;
  wire [3:0]data_sel_str_pre_reg;
  wire [31:0]m_data;
  wire \m_data[0]_i_1_n_0 ;
  wire \m_data[0]_i_2_n_0 ;
  wire \m_data[0]_i_3_n_0 ;
  wire \m_data[0]_i_4_n_0 ;
  wire \m_data[10]_i_1_n_0 ;
  wire \m_data[10]_i_2_n_0 ;
  wire \m_data[10]_i_3_n_0 ;
  wire \m_data[10]_i_4_n_0 ;
  wire \m_data[11]_i_1_n_0 ;
  wire \m_data[11]_i_2_n_0 ;
  wire \m_data[11]_i_3_n_0 ;
  wire \m_data[11]_i_4_n_0 ;
  wire \m_data[12]_i_1_n_0 ;
  wire \m_data[12]_i_2_n_0 ;
  wire \m_data[12]_i_3_n_0 ;
  wire \m_data[12]_i_4_n_0 ;
  wire \m_data[13]_i_1_n_0 ;
  wire \m_data[13]_i_2_n_0 ;
  wire \m_data[13]_i_3_n_0 ;
  wire \m_data[13]_i_4_n_0 ;
  wire \m_data[14]_i_1_n_0 ;
  wire \m_data[14]_i_2_n_0 ;
  wire \m_data[14]_i_3_n_0 ;
  wire \m_data[14]_i_4_n_0 ;
  wire \m_data[15]_i_1_n_0 ;
  wire \m_data[15]_i_2_n_0 ;
  wire \m_data[15]_i_3_n_0 ;
  wire \m_data[15]_i_4_n_0 ;
  wire \m_data[16]_i_1_n_0 ;
  wire \m_data[16]_i_2_n_0 ;
  wire \m_data[16]_i_3_n_0 ;
  wire \m_data[16]_i_4_n_0 ;
  wire \m_data[17]_i_1_n_0 ;
  wire \m_data[17]_i_2_n_0 ;
  wire \m_data[17]_i_3_n_0 ;
  wire \m_data[17]_i_4_n_0 ;
  wire \m_data[18]_i_1_n_0 ;
  wire \m_data[18]_i_2_n_0 ;
  wire \m_data[18]_i_3_n_0 ;
  wire \m_data[18]_i_4_n_0 ;
  wire \m_data[19]_i_1_n_0 ;
  wire \m_data[19]_i_2_n_0 ;
  wire \m_data[19]_i_3_n_0 ;
  wire \m_data[19]_i_4_n_0 ;
  wire \m_data[1]_i_1_n_0 ;
  wire \m_data[1]_i_2_n_0 ;
  wire \m_data[1]_i_3_n_0 ;
  wire \m_data[1]_i_4_n_0 ;
  wire \m_data[20]_i_1_n_0 ;
  wire \m_data[20]_i_2_n_0 ;
  wire \m_data[20]_i_3_n_0 ;
  wire \m_data[20]_i_4_n_0 ;
  wire \m_data[21]_i_1_n_0 ;
  wire \m_data[21]_i_2_n_0 ;
  wire \m_data[21]_i_3_n_0 ;
  wire \m_data[21]_i_4_n_0 ;
  wire \m_data[22]_i_1_n_0 ;
  wire \m_data[22]_i_2_n_0 ;
  wire \m_data[22]_i_3_n_0 ;
  wire \m_data[22]_i_4_n_0 ;
  wire \m_data[23]_i_1_n_0 ;
  wire \m_data[23]_i_2_n_0 ;
  wire \m_data[23]_i_3_n_0 ;
  wire \m_data[23]_i_4_n_0 ;
  wire \m_data[24]_i_1_n_0 ;
  wire \m_data[24]_i_2_n_0 ;
  wire \m_data[24]_i_3_n_0 ;
  wire \m_data[24]_i_4_n_0 ;
  wire \m_data[25]_i_1_n_0 ;
  wire \m_data[25]_i_2_n_0 ;
  wire \m_data[25]_i_3_n_0 ;
  wire \m_data[25]_i_4_n_0 ;
  wire \m_data[26]_i_1_n_0 ;
  wire \m_data[26]_i_2_n_0 ;
  wire \m_data[26]_i_3_n_0 ;
  wire \m_data[26]_i_4_n_0 ;
  wire \m_data[27]_i_1_n_0 ;
  wire \m_data[27]_i_2_n_0 ;
  wire \m_data[27]_i_3_n_0 ;
  wire \m_data[27]_i_4_n_0 ;
  wire \m_data[28]_i_1_n_0 ;
  wire \m_data[28]_i_2_n_0 ;
  wire \m_data[28]_i_3_n_0 ;
  wire \m_data[28]_i_4_n_0 ;
  wire \m_data[29]_i_1_n_0 ;
  wire \m_data[29]_i_2_n_0 ;
  wire \m_data[29]_i_3_n_0 ;
  wire \m_data[29]_i_4_n_0 ;
  wire \m_data[2]_i_1_n_0 ;
  wire \m_data[2]_i_2_n_0 ;
  wire \m_data[2]_i_3_n_0 ;
  wire \m_data[2]_i_4_n_0 ;
  wire \m_data[30]_i_1_n_0 ;
  wire \m_data[30]_i_2_n_0 ;
  wire \m_data[30]_i_3_n_0 ;
  wire \m_data[30]_i_4_n_0 ;
  wire \m_data[31]_i_1_n_0 ;
  wire \m_data[31]_i_2_n_0 ;
  wire \m_data[31]_i_3_n_0 ;
  wire \m_data[31]_i_4_n_0 ;
  wire \m_data[31]_i_5_n_0 ;
  wire \m_data[31]_i_6_n_0 ;
  wire \m_data[3]_i_1_n_0 ;
  wire \m_data[3]_i_2_n_0 ;
  wire \m_data[3]_i_3_n_0 ;
  wire \m_data[3]_i_4_n_0 ;
  wire \m_data[4]_i_1_n_0 ;
  wire \m_data[4]_i_2_n_0 ;
  wire \m_data[4]_i_3_n_0 ;
  wire \m_data[4]_i_4_n_0 ;
  wire \m_data[5]_i_1_n_0 ;
  wire \m_data[5]_i_2_n_0 ;
  wire \m_data[5]_i_3_n_0 ;
  wire \m_data[5]_i_4_n_0 ;
  wire \m_data[6]_i_1_n_0 ;
  wire \m_data[6]_i_2_n_0 ;
  wire \m_data[6]_i_3_n_0 ;
  wire \m_data[6]_i_4_n_0 ;
  wire \m_data[7]_i_1_n_0 ;
  wire \m_data[7]_i_2_n_0 ;
  wire \m_data[7]_i_3_n_0 ;
  wire \m_data[7]_i_4_n_0 ;
  wire \m_data[8]_i_1_n_0 ;
  wire \m_data[8]_i_2_n_0 ;
  wire \m_data[8]_i_3_n_0 ;
  wire \m_data[8]_i_4_n_0 ;
  wire \m_data[9]_i_1_n_0 ;
  wire \m_data[9]_i_2_n_0 ;
  wire \m_data[9]_i_3_n_0 ;
  wire \m_data[9]_i_4_n_0 ;
  wire [31:0]m_tap;
  wire \m_tap[0]_i_1_n_0 ;
  wire \m_tap[10]_i_1_n_0 ;
  wire \m_tap[11]_i_1_n_0 ;
  wire \m_tap[12]_i_1_n_0 ;
  wire \m_tap[13]_i_1_n_0 ;
  wire \m_tap[14]_i_1_n_0 ;
  wire \m_tap[15]_i_1_n_0 ;
  wire \m_tap[16]_i_1_n_0 ;
  wire \m_tap[17]_i_1_n_0 ;
  wire \m_tap[18]_i_1_n_0 ;
  wire \m_tap[19]_i_1_n_0 ;
  wire \m_tap[1]_i_1_n_0 ;
  wire \m_tap[20]_i_1_n_0 ;
  wire \m_tap[21]_i_1_n_0 ;
  wire \m_tap[22]_i_1_n_0 ;
  wire \m_tap[23]_i_1_n_0 ;
  wire \m_tap[24]_i_1_n_0 ;
  wire \m_tap[25]_i_1_n_0 ;
  wire \m_tap[26]_i_1_n_0 ;
  wire \m_tap[27]_i_1_n_0 ;
  wire \m_tap[28]_i_1_n_0 ;
  wire \m_tap[29]_i_1_n_0 ;
  wire \m_tap[2]_i_1_n_0 ;
  wire \m_tap[30]_i_1_n_0 ;
  wire \m_tap[31]_i_1_n_0 ;
  wire \m_tap[3]_i_1_n_0 ;
  wire \m_tap[4]_i_1_n_0 ;
  wire \m_tap[5]_i_1_n_0 ;
  wire \m_tap[6]_i_1_n_0 ;
  wire \m_tap[7]_i_1_n_0 ;
  wire \m_tap[8]_i_1_n_0 ;
  wire \m_tap[9]_i_1_n_0 ;
  wire [31:0]m_tap_tmp;
  wire \m_tap_tmp[0]_i_1_n_0 ;
  wire \m_tap_tmp[10]_i_1_n_0 ;
  wire \m_tap_tmp[11]_i_1_n_0 ;
  wire \m_tap_tmp[12]_i_1_n_0 ;
  wire \m_tap_tmp[13]_i_1_n_0 ;
  wire \m_tap_tmp[14]_i_1_n_0 ;
  wire \m_tap_tmp[15]_i_1_n_0 ;
  wire \m_tap_tmp[16]_i_1_n_0 ;
  wire \m_tap_tmp[17]_i_1_n_0 ;
  wire \m_tap_tmp[18]_i_1_n_0 ;
  wire \m_tap_tmp[19]_i_1_n_0 ;
  wire \m_tap_tmp[1]_i_1_n_0 ;
  wire \m_tap_tmp[20]_i_1_n_0 ;
  wire \m_tap_tmp[21]_i_1_n_0 ;
  wire \m_tap_tmp[22]_i_1_n_0 ;
  wire \m_tap_tmp[23]_i_1_n_0 ;
  wire \m_tap_tmp[24]_i_1_n_0 ;
  wire \m_tap_tmp[25]_i_1_n_0 ;
  wire \m_tap_tmp[26]_i_1_n_0 ;
  wire \m_tap_tmp[27]_i_1_n_0 ;
  wire \m_tap_tmp[28]_i_1_n_0 ;
  wire \m_tap_tmp[29]_i_1_n_0 ;
  wire \m_tap_tmp[2]_i_1_n_0 ;
  wire \m_tap_tmp[30]_i_1_n_0 ;
  wire \m_tap_tmp[31]_i_1_n_0 ;
  wire \m_tap_tmp[3]_i_1_n_0 ;
  wire \m_tap_tmp[4]_i_1_n_0 ;
  wire \m_tap_tmp[5]_i_1_n_0 ;
  wire \m_tap_tmp[6]_i_1_n_0 ;
  wire \m_tap_tmp[7]_i_1_n_0 ;
  wire \m_tap_tmp[8]_i_1_n_0 ;
  wire \m_tap_tmp[9]_i_1_n_0 ;
  wire mult_prod0__0_n_100;
  wire mult_prod0__0_n_101;
  wire mult_prod0__0_n_102;
  wire mult_prod0__0_n_103;
  wire mult_prod0__0_n_104;
  wire mult_prod0__0_n_105;
  wire mult_prod0__0_n_106;
  wire mult_prod0__0_n_107;
  wire mult_prod0__0_n_108;
  wire mult_prod0__0_n_109;
  wire mult_prod0__0_n_110;
  wire mult_prod0__0_n_111;
  wire mult_prod0__0_n_112;
  wire mult_prod0__0_n_113;
  wire mult_prod0__0_n_114;
  wire mult_prod0__0_n_115;
  wire mult_prod0__0_n_116;
  wire mult_prod0__0_n_117;
  wire mult_prod0__0_n_118;
  wire mult_prod0__0_n_119;
  wire mult_prod0__0_n_120;
  wire mult_prod0__0_n_121;
  wire mult_prod0__0_n_122;
  wire mult_prod0__0_n_123;
  wire mult_prod0__0_n_124;
  wire mult_prod0__0_n_125;
  wire mult_prod0__0_n_126;
  wire mult_prod0__0_n_127;
  wire mult_prod0__0_n_128;
  wire mult_prod0__0_n_129;
  wire mult_prod0__0_n_130;
  wire mult_prod0__0_n_131;
  wire mult_prod0__0_n_132;
  wire mult_prod0__0_n_133;
  wire mult_prod0__0_n_134;
  wire mult_prod0__0_n_135;
  wire mult_prod0__0_n_136;
  wire mult_prod0__0_n_137;
  wire mult_prod0__0_n_138;
  wire mult_prod0__0_n_139;
  wire mult_prod0__0_n_140;
  wire mult_prod0__0_n_141;
  wire mult_prod0__0_n_142;
  wire mult_prod0__0_n_143;
  wire mult_prod0__0_n_144;
  wire mult_prod0__0_n_145;
  wire mult_prod0__0_n_146;
  wire mult_prod0__0_n_147;
  wire mult_prod0__0_n_148;
  wire mult_prod0__0_n_149;
  wire mult_prod0__0_n_150;
  wire mult_prod0__0_n_151;
  wire mult_prod0__0_n_152;
  wire mult_prod0__0_n_153;
  wire mult_prod0__0_n_24;
  wire mult_prod0__0_n_25;
  wire mult_prod0__0_n_26;
  wire mult_prod0__0_n_27;
  wire mult_prod0__0_n_28;
  wire mult_prod0__0_n_29;
  wire mult_prod0__0_n_30;
  wire mult_prod0__0_n_31;
  wire mult_prod0__0_n_32;
  wire mult_prod0__0_n_33;
  wire mult_prod0__0_n_34;
  wire mult_prod0__0_n_35;
  wire mult_prod0__0_n_36;
  wire mult_prod0__0_n_37;
  wire mult_prod0__0_n_38;
  wire mult_prod0__0_n_39;
  wire mult_prod0__0_n_40;
  wire mult_prod0__0_n_41;
  wire mult_prod0__0_n_42;
  wire mult_prod0__0_n_43;
  wire mult_prod0__0_n_44;
  wire mult_prod0__0_n_45;
  wire mult_prod0__0_n_46;
  wire mult_prod0__0_n_47;
  wire mult_prod0__0_n_48;
  wire mult_prod0__0_n_49;
  wire mult_prod0__0_n_50;
  wire mult_prod0__0_n_51;
  wire mult_prod0__0_n_52;
  wire mult_prod0__0_n_53;
  wire mult_prod0__0_n_58;
  wire mult_prod0__0_n_59;
  wire mult_prod0__0_n_60;
  wire mult_prod0__0_n_61;
  wire mult_prod0__0_n_62;
  wire mult_prod0__0_n_63;
  wire mult_prod0__0_n_64;
  wire mult_prod0__0_n_65;
  wire mult_prod0__0_n_66;
  wire mult_prod0__0_n_67;
  wire mult_prod0__0_n_68;
  wire mult_prod0__0_n_69;
  wire mult_prod0__0_n_70;
  wire mult_prod0__0_n_71;
  wire mult_prod0__0_n_72;
  wire mult_prod0__0_n_73;
  wire mult_prod0__0_n_74;
  wire mult_prod0__0_n_75;
  wire mult_prod0__0_n_76;
  wire mult_prod0__0_n_77;
  wire mult_prod0__0_n_78;
  wire mult_prod0__0_n_79;
  wire mult_prod0__0_n_80;
  wire mult_prod0__0_n_81;
  wire mult_prod0__0_n_82;
  wire mult_prod0__0_n_83;
  wire mult_prod0__0_n_84;
  wire mult_prod0__0_n_85;
  wire mult_prod0__0_n_86;
  wire mult_prod0__0_n_87;
  wire mult_prod0__0_n_88;
  wire mult_prod0__0_n_89;
  wire mult_prod0__0_n_90;
  wire mult_prod0__0_n_91;
  wire mult_prod0__0_n_92;
  wire mult_prod0__0_n_93;
  wire mult_prod0__0_n_94;
  wire mult_prod0__0_n_95;
  wire mult_prod0__0_n_96;
  wire mult_prod0__0_n_97;
  wire mult_prod0__0_n_98;
  wire mult_prod0__0_n_99;
  wire mult_prod0__1_n_100;
  wire mult_prod0__1_n_101;
  wire mult_prod0__1_n_102;
  wire mult_prod0__1_n_103;
  wire mult_prod0__1_n_104;
  wire mult_prod0__1_n_105;
  wire mult_prod0__1_n_58;
  wire mult_prod0__1_n_59;
  wire mult_prod0__1_n_60;
  wire mult_prod0__1_n_61;
  wire mult_prod0__1_n_62;
  wire mult_prod0__1_n_63;
  wire mult_prod0__1_n_64;
  wire mult_prod0__1_n_65;
  wire mult_prod0__1_n_66;
  wire mult_prod0__1_n_67;
  wire mult_prod0__1_n_68;
  wire mult_prod0__1_n_69;
  wire mult_prod0__1_n_70;
  wire mult_prod0__1_n_71;
  wire mult_prod0__1_n_72;
  wire mult_prod0__1_n_73;
  wire mult_prod0__1_n_74;
  wire mult_prod0__1_n_75;
  wire mult_prod0__1_n_76;
  wire mult_prod0__1_n_77;
  wire mult_prod0__1_n_78;
  wire mult_prod0__1_n_79;
  wire mult_prod0__1_n_80;
  wire mult_prod0__1_n_81;
  wire mult_prod0__1_n_82;
  wire mult_prod0__1_n_83;
  wire mult_prod0__1_n_84;
  wire mult_prod0__1_n_85;
  wire mult_prod0__1_n_86;
  wire mult_prod0__1_n_87;
  wire mult_prod0__1_n_88;
  wire mult_prod0__1_n_89;
  wire mult_prod0__1_n_90;
  wire mult_prod0__1_n_91;
  wire mult_prod0__1_n_92;
  wire mult_prod0__1_n_93;
  wire mult_prod0__1_n_94;
  wire mult_prod0__1_n_95;
  wire mult_prod0__1_n_96;
  wire mult_prod0__1_n_97;
  wire mult_prod0__1_n_98;
  wire mult_prod0__1_n_99;
  wire mult_prod0_carry__0_i_1_n_0;
  wire mult_prod0_carry__0_i_2_n_0;
  wire mult_prod0_carry__0_i_3_n_0;
  wire mult_prod0_carry__0_i_4_n_0;
  wire mult_prod0_carry__0_i_5_n_0;
  wire mult_prod0_carry__0_i_6_n_0;
  wire mult_prod0_carry__0_i_7_n_0;
  wire mult_prod0_carry__0_i_8_n_0;
  wire mult_prod0_carry__0_n_0;
  wire mult_prod0_carry__0_n_1;
  wire mult_prod0_carry__0_n_2;
  wire mult_prod0_carry__0_n_3;
  wire mult_prod0_carry__1_i_1_n_0;
  wire mult_prod0_carry__1_i_2_n_0;
  wire mult_prod0_carry__1_i_3_n_0;
  wire mult_prod0_carry__1_i_4_n_0;
  wire mult_prod0_carry__1_i_5_n_0;
  wire mult_prod0_carry__1_i_6_n_0;
  wire mult_prod0_carry__1_i_7_n_0;
  wire mult_prod0_carry__1_i_8_n_0;
  wire mult_prod0_carry__1_n_0;
  wire mult_prod0_carry__1_n_1;
  wire mult_prod0_carry__1_n_2;
  wire mult_prod0_carry__1_n_3;
  wire mult_prod0_carry__2_0;
  wire mult_prod0_carry__2_i_1_n_0;
  wire mult_prod0_carry__2_i_2_n_0;
  wire mult_prod0_carry__2_i_3_n_0;
  wire mult_prod0_carry__2_i_4_n_0;
  wire mult_prod0_carry__2_i_5_n_0;
  wire mult_prod0_carry__2_i_6_n_0;
  wire mult_prod0_carry__2_i_7_n_0;
  wire mult_prod0_carry__2_n_1;
  wire mult_prod0_carry__2_n_2;
  wire mult_prod0_carry__2_n_3;
  wire mult_prod0_carry_i_1_n_0;
  wire mult_prod0_carry_i_2_n_0;
  wire mult_prod0_carry_i_3_n_0;
  wire mult_prod0_carry_i_4_n_0;
  wire mult_prod0_carry_i_5_n_0;
  wire mult_prod0_carry_i_6_n_0;
  wire mult_prod0_carry_n_0;
  wire mult_prod0_carry_n_1;
  wire mult_prod0_carry_n_2;
  wire mult_prod0_carry_n_3;
  wire mult_prod0_n_100;
  wire mult_prod0_n_101;
  wire mult_prod0_n_102;
  wire mult_prod0_n_103;
  wire mult_prod0_n_104;
  wire mult_prod0_n_105;
  wire mult_prod0_n_106;
  wire mult_prod0_n_107;
  wire mult_prod0_n_108;
  wire mult_prod0_n_109;
  wire mult_prod0_n_110;
  wire mult_prod0_n_111;
  wire mult_prod0_n_112;
  wire mult_prod0_n_113;
  wire mult_prod0_n_114;
  wire mult_prod0_n_115;
  wire mult_prod0_n_116;
  wire mult_prod0_n_117;
  wire mult_prod0_n_118;
  wire mult_prod0_n_119;
  wire mult_prod0_n_120;
  wire mult_prod0_n_121;
  wire mult_prod0_n_122;
  wire mult_prod0_n_123;
  wire mult_prod0_n_124;
  wire mult_prod0_n_125;
  wire mult_prod0_n_126;
  wire mult_prod0_n_127;
  wire mult_prod0_n_128;
  wire mult_prod0_n_129;
  wire mult_prod0_n_130;
  wire mult_prod0_n_131;
  wire mult_prod0_n_132;
  wire mult_prod0_n_133;
  wire mult_prod0_n_134;
  wire mult_prod0_n_135;
  wire mult_prod0_n_136;
  wire mult_prod0_n_137;
  wire mult_prod0_n_138;
  wire mult_prod0_n_139;
  wire mult_prod0_n_140;
  wire mult_prod0_n_141;
  wire mult_prod0_n_142;
  wire mult_prod0_n_143;
  wire mult_prod0_n_144;
  wire mult_prod0_n_145;
  wire mult_prod0_n_146;
  wire mult_prod0_n_147;
  wire mult_prod0_n_148;
  wire mult_prod0_n_149;
  wire mult_prod0_n_150;
  wire mult_prod0_n_151;
  wire mult_prod0_n_152;
  wire mult_prod0_n_153;
  wire mult_prod0_n_58;
  wire mult_prod0_n_59;
  wire mult_prod0_n_60;
  wire mult_prod0_n_61;
  wire mult_prod0_n_62;
  wire mult_prod0_n_63;
  wire mult_prod0_n_64;
  wire mult_prod0_n_65;
  wire mult_prod0_n_66;
  wire mult_prod0_n_67;
  wire mult_prod0_n_68;
  wire mult_prod0_n_69;
  wire mult_prod0_n_70;
  wire mult_prod0_n_71;
  wire mult_prod0_n_72;
  wire mult_prod0_n_73;
  wire mult_prod0_n_74;
  wire mult_prod0_n_75;
  wire mult_prod0_n_76;
  wire mult_prod0_n_77;
  wire mult_prod0_n_78;
  wire mult_prod0_n_79;
  wire mult_prod0_n_80;
  wire mult_prod0_n_81;
  wire mult_prod0_n_82;
  wire mult_prod0_n_83;
  wire mult_prod0_n_84;
  wire mult_prod0_n_85;
  wire mult_prod0_n_86;
  wire mult_prod0_n_87;
  wire mult_prod0_n_88;
  wire mult_prod0_n_89;
  wire mult_prod0_n_90;
  wire mult_prod0_n_91;
  wire mult_prod0_n_92;
  wire mult_prod0_n_93;
  wire mult_prod0_n_94;
  wire mult_prod0_n_95;
  wire mult_prod0_n_96;
  wire mult_prod0_n_97;
  wire mult_prod0_n_98;
  wire mult_prod0_n_99;
  wire [31:16]mult_prod_reg;
  wire \mult_prod_reg[0]__1_n_0 ;
  wire \mult_prod_reg[10]__1_n_0 ;
  wire \mult_prod_reg[11]__1_n_0 ;
  wire \mult_prod_reg[12]__1_n_0 ;
  wire \mult_prod_reg[13]__1_n_0 ;
  wire \mult_prod_reg[14]__1_n_0 ;
  wire \mult_prod_reg[15]__1_n_0 ;
  wire \mult_prod_reg[16]__1_n_0 ;
  wire \mult_prod_reg[1]__1_n_0 ;
  wire \mult_prod_reg[2]__1_n_0 ;
  wire \mult_prod_reg[3]__1_n_0 ;
  wire \mult_prod_reg[4]__1_n_0 ;
  wire \mult_prod_reg[5]__1_n_0 ;
  wire \mult_prod_reg[6]__1_n_0 ;
  wire \mult_prod_reg[7]__1_n_0 ;
  wire \mult_prod_reg[8]__1_n_0 ;
  wire \mult_prod_reg[9]__1_n_0 ;
  wire [3:2]p_0_in__1;
  wire rd_en_fifo_1;
  wire rd_en_source_2;
  wire rd_en_source_2_reg;
  wire shift_upd_pre_i_1_n_0;
  wire [31:0]sm_tdata_OBUF;
  wire sm_tvalid_OBUF;
  wire [31:0]\str_shift_reg[0] ;
  wire [31:0]\str_shift_reg[10] ;
  wire [31:0]\str_shift_reg[1] ;
  wire [31:0]\str_shift_reg[2] ;
  wire [31:0]\str_shift_reg[3] ;
  wire [31:0]\str_shift_reg[4] ;
  wire [31:0]\str_shift_reg[5] ;
  wire [31:0]\str_shift_reg[6] ;
  wire [31:0]\str_shift_reg[7] ;
  wire [31:0]\str_shift_reg[8] ;
  wire [31:0]\str_shift_reg[9] ;
  wire \sum[0]_i_2_n_0 ;
  wire \sum[0]_i_3_n_0 ;
  wire \sum[0]_i_4_n_0 ;
  wire \sum[0]_i_5_n_0 ;
  wire \sum[12]_i_2_n_0 ;
  wire \sum[12]_i_3_n_0 ;
  wire \sum[12]_i_4_n_0 ;
  wire \sum[12]_i_5_n_0 ;
  wire \sum[16]_i_2_n_0 ;
  wire \sum[16]_i_3_n_0 ;
  wire \sum[16]_i_4_n_0 ;
  wire \sum[16]_i_5_n_0 ;
  wire \sum[20]_i_2_n_0 ;
  wire \sum[20]_i_3_n_0 ;
  wire \sum[20]_i_4_n_0 ;
  wire \sum[20]_i_5_n_0 ;
  wire \sum[24]_i_2_n_0 ;
  wire \sum[24]_i_3_n_0 ;
  wire \sum[24]_i_4_n_0 ;
  wire \sum[24]_i_5_n_0 ;
  wire \sum[28]_i_2_n_0 ;
  wire \sum[28]_i_3_n_0 ;
  wire \sum[28]_i_4_n_0 ;
  wire \sum[28]_i_5_n_0 ;
  wire \sum[4]_i_2_n_0 ;
  wire \sum[4]_i_3_n_0 ;
  wire \sum[4]_i_4_n_0 ;
  wire \sum[4]_i_5_n_0 ;
  wire \sum[8]_i_2_n_0 ;
  wire \sum[8]_i_3_n_0 ;
  wire \sum[8]_i_4_n_0 ;
  wire \sum[8]_i_5_n_0 ;
  wire \sum_reg[0]_i_1_n_0 ;
  wire \sum_reg[0]_i_1_n_1 ;
  wire \sum_reg[0]_i_1_n_2 ;
  wire \sum_reg[0]_i_1_n_3 ;
  wire \sum_reg[0]_i_1_n_4 ;
  wire \sum_reg[0]_i_1_n_5 ;
  wire \sum_reg[0]_i_1_n_6 ;
  wire \sum_reg[0]_i_1_n_7 ;
  wire \sum_reg[12]_i_1_n_0 ;
  wire \sum_reg[12]_i_1_n_1 ;
  wire \sum_reg[12]_i_1_n_2 ;
  wire \sum_reg[12]_i_1_n_3 ;
  wire \sum_reg[12]_i_1_n_4 ;
  wire \sum_reg[12]_i_1_n_5 ;
  wire \sum_reg[12]_i_1_n_6 ;
  wire \sum_reg[12]_i_1_n_7 ;
  wire \sum_reg[16]_i_1_n_0 ;
  wire \sum_reg[16]_i_1_n_1 ;
  wire \sum_reg[16]_i_1_n_2 ;
  wire \sum_reg[16]_i_1_n_3 ;
  wire \sum_reg[16]_i_1_n_4 ;
  wire \sum_reg[16]_i_1_n_5 ;
  wire \sum_reg[16]_i_1_n_6 ;
  wire \sum_reg[16]_i_1_n_7 ;
  wire \sum_reg[20]_i_1_n_0 ;
  wire \sum_reg[20]_i_1_n_1 ;
  wire \sum_reg[20]_i_1_n_2 ;
  wire \sum_reg[20]_i_1_n_3 ;
  wire \sum_reg[20]_i_1_n_4 ;
  wire \sum_reg[20]_i_1_n_5 ;
  wire \sum_reg[20]_i_1_n_6 ;
  wire \sum_reg[20]_i_1_n_7 ;
  wire \sum_reg[24]_i_1_n_0 ;
  wire \sum_reg[24]_i_1_n_1 ;
  wire \sum_reg[24]_i_1_n_2 ;
  wire \sum_reg[24]_i_1_n_3 ;
  wire \sum_reg[24]_i_1_n_4 ;
  wire \sum_reg[24]_i_1_n_5 ;
  wire \sum_reg[24]_i_1_n_6 ;
  wire \sum_reg[24]_i_1_n_7 ;
  wire \sum_reg[28]_i_1_n_1 ;
  wire \sum_reg[28]_i_1_n_2 ;
  wire \sum_reg[28]_i_1_n_3 ;
  wire \sum_reg[28]_i_1_n_4 ;
  wire \sum_reg[28]_i_1_n_5 ;
  wire \sum_reg[28]_i_1_n_6 ;
  wire \sum_reg[28]_i_1_n_7 ;
  wire \sum_reg[4]_i_1_n_0 ;
  wire \sum_reg[4]_i_1_n_1 ;
  wire \sum_reg[4]_i_1_n_2 ;
  wire \sum_reg[4]_i_1_n_3 ;
  wire \sum_reg[4]_i_1_n_4 ;
  wire \sum_reg[4]_i_1_n_5 ;
  wire \sum_reg[4]_i_1_n_6 ;
  wire \sum_reg[4]_i_1_n_7 ;
  wire \sum_reg[8]_i_1_n_0 ;
  wire \sum_reg[8]_i_1_n_1 ;
  wire \sum_reg[8]_i_1_n_2 ;
  wire \sum_reg[8]_i_1_n_3 ;
  wire \sum_reg[8]_i_1_n_4 ;
  wire \sum_reg[8]_i_1_n_5 ;
  wire \sum_reg[8]_i_1_n_6 ;
  wire \sum_reg[8]_i_1_n_7 ;
  wire [31:0]tap_Do_IBUF;
  wire upd_str_data;
  wire NLW_mult_prod0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_prod0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_prod0_OVERFLOW_UNCONNECTED;
  wire NLW_mult_prod0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_prod0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_prod0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_prod0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_prod0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_prod0_CARRYOUT_UNCONNECTED;
  wire NLW_mult_prod0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_prod0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_prod0__0_OVERFLOW_UNCONNECTED;
  wire NLW_mult_prod0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_prod0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_prod0__0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_mult_prod0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_prod0__0_CARRYOUT_UNCONNECTED;
  wire NLW_mult_prod0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_prod0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_prod0__1_OVERFLOW_UNCONNECTED;
  wire NLW_mult_prod0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_prod0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_prod0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_prod0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_prod0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_prod0__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mult_prod0__1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_mult_prod0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_sum_reg[28]_i_1_CO_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    clk_core_reg
       (.CLR(axis_rst_n),
        .D(CLK),
        .G(rd_en_source_2),
        .GE(1'b1),
        .Q(rd_en_source_2_reg));
  LUT1 #(
    .INIT(2'h1)) 
    clk_start_reg_i_2
       (.I0(axis_rst_n_IBUF),
        .O(axis_rst_n));
  LUT6 #(
    .INIT(64'h000000000000FF7F)) 
    \core_cycle[0]_i_1 
       (.I0(core_cycle_reg[3]),
        .I1(core_cycle_reg[1]),
        .I2(core_cycle_reg[2]),
        .I3(core_cycle_reg[4]),
        .I4(upd_str_data),
        .I5(core_cycle_reg[0]),
        .O(core_cycle_nxt[0]));
  LUT6 #(
    .INIT(64'h000000FF00F70000)) 
    \core_cycle[1]_i_1 
       (.I0(core_cycle_reg[3]),
        .I1(core_cycle_reg[2]),
        .I2(core_cycle_reg[4]),
        .I3(upd_str_data),
        .I4(core_cycle_reg[1]),
        .I5(core_cycle_reg[0]),
        .O(core_cycle_nxt[1]));
  LUT6 #(
    .INIT(64'h000D0F0F0F000000)) 
    \core_cycle[2]_i_1 
       (.I0(core_cycle_reg[3]),
        .I1(core_cycle_reg[4]),
        .I2(upd_str_data),
        .I3(core_cycle_reg[0]),
        .I4(core_cycle_reg[1]),
        .I5(core_cycle_reg[2]),
        .O(core_cycle_nxt[2]));
  LUT6 #(
    .INIT(64'h0323333330000000)) 
    \core_cycle[3]_i_1 
       (.I0(core_cycle_reg[4]),
        .I1(upd_str_data),
        .I2(core_cycle_reg[1]),
        .I3(core_cycle_reg[0]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[3]),
        .O(core_cycle_nxt[3]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \core_cycle[4]_i_1 
       (.I0(upd_str_data),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[2]),
        .I3(core_cycle_reg[0]),
        .I4(core_cycle_reg[1]),
        .I5(core_cycle_reg[4]),
        .O(core_cycle_nxt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \core_cycle_reg[0] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(core_cycle_nxt[0]),
        .Q(core_cycle_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \core_cycle_reg[1] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(core_cycle_nxt[1]),
        .Q(core_cycle_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \core_cycle_reg[2] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(core_cycle_nxt[2]),
        .Q(core_cycle_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \core_cycle_reg[3] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(core_cycle_nxt[3]),
        .Q(core_cycle_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \core_cycle_reg[4] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(core_cycle_nxt[4]),
        .Q(core_cycle_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \data_sel_str_pre[0]_i_1 
       (.I0(data_sel_str_pre_reg[3]),
        .I1(data_sel_str_pre_reg[1]),
        .I2(data_sel_str_pre_reg[0]),
        .I3(data_sel_str_pre_reg[2]),
        .O(\data_sel_str_pre[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_sel_str_pre[1]_i_1 
       (.I0(data_sel_str_pre_reg[0]),
        .I1(data_sel_str_pre_reg[1]),
        .O(\data_sel_str_pre[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \data_sel_str_pre[2]_i_1 
       (.I0(data_sel_str_pre_reg[2]),
        .I1(data_sel_str_pre_reg[1]),
        .I2(data_sel_str_pre_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \data_sel_str_pre[3]_i_1 
       (.I0(data_sel_str_pre_reg[3]),
        .I1(data_sel_str_pre_reg[2]),
        .I2(data_sel_str_pre_reg[0]),
        .I3(data_sel_str_pre_reg[1]),
        .O(p_0_in__1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sel_str_pre_reg[0] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\data_sel_str_pre[0]_i_1_n_0 ),
        .Q(data_sel_str_pre_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sel_str_pre_reg[1] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\data_sel_str_pre[1]_i_1_n_0 ),
        .Q(data_sel_str_pre_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sel_str_pre_reg[2] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(p_0_in__1[2]),
        .Q(data_sel_str_pre_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sel_str_pre_reg[3] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(p_0_in__1[3]),
        .Q(data_sel_str_pre_reg[3]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[0]_i_1 
       (.I0(\m_data[0]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[0]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[0]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[0]_i_2 
       (.I0(\str_shift_reg[7] [0]),
        .I1(\str_shift_reg[6] [0]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [0]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [0]),
        .O(\m_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[0]_i_3 
       (.I0(\str_shift_reg[3] [0]),
        .I1(\str_shift_reg[2] [0]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [0]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [0]),
        .O(\m_data[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[0]_i_4 
       (.I0(\str_shift_reg[9] [0]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [0]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [0]),
        .O(\m_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[10]_i_1 
       (.I0(\m_data[10]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[10]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[10]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[10]_i_2 
       (.I0(\str_shift_reg[7] [10]),
        .I1(\str_shift_reg[6] [10]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [10]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [10]),
        .O(\m_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[10]_i_3 
       (.I0(\str_shift_reg[3] [10]),
        .I1(\str_shift_reg[2] [10]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [10]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [10]),
        .O(\m_data[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[10]_i_4 
       (.I0(\str_shift_reg[9] [10]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [10]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [10]),
        .O(\m_data[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[11]_i_1 
       (.I0(\m_data[11]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[11]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[11]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[11]_i_2 
       (.I0(\str_shift_reg[7] [11]),
        .I1(\str_shift_reg[6] [11]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [11]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [11]),
        .O(\m_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[11]_i_3 
       (.I0(\str_shift_reg[3] [11]),
        .I1(\str_shift_reg[2] [11]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [11]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [11]),
        .O(\m_data[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[11]_i_4 
       (.I0(\str_shift_reg[9] [11]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [11]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [11]),
        .O(\m_data[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[12]_i_1 
       (.I0(\m_data[12]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[12]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[12]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[12]_i_2 
       (.I0(\str_shift_reg[7] [12]),
        .I1(\str_shift_reg[6] [12]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [12]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [12]),
        .O(\m_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[12]_i_3 
       (.I0(\str_shift_reg[3] [12]),
        .I1(\str_shift_reg[2] [12]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [12]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [12]),
        .O(\m_data[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[12]_i_4 
       (.I0(\str_shift_reg[9] [12]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [12]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [12]),
        .O(\m_data[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[13]_i_1 
       (.I0(\m_data[13]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[13]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[13]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[13]_i_2 
       (.I0(\str_shift_reg[7] [13]),
        .I1(\str_shift_reg[6] [13]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [13]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [13]),
        .O(\m_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[13]_i_3 
       (.I0(\str_shift_reg[3] [13]),
        .I1(\str_shift_reg[2] [13]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [13]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [13]),
        .O(\m_data[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[13]_i_4 
       (.I0(\str_shift_reg[9] [13]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [13]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [13]),
        .O(\m_data[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[14]_i_1 
       (.I0(\m_data[14]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[14]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[14]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[14]_i_2 
       (.I0(\str_shift_reg[7] [14]),
        .I1(\str_shift_reg[6] [14]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [14]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [14]),
        .O(\m_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[14]_i_3 
       (.I0(\str_shift_reg[3] [14]),
        .I1(\str_shift_reg[2] [14]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [14]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [14]),
        .O(\m_data[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[14]_i_4 
       (.I0(\str_shift_reg[9] [14]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [14]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [14]),
        .O(\m_data[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[15]_i_1 
       (.I0(\m_data[15]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[15]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[15]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[15]_i_2 
       (.I0(\str_shift_reg[7] [15]),
        .I1(\str_shift_reg[6] [15]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [15]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [15]),
        .O(\m_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[15]_i_3 
       (.I0(\str_shift_reg[3] [15]),
        .I1(\str_shift_reg[2] [15]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [15]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [15]),
        .O(\m_data[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[15]_i_4 
       (.I0(\str_shift_reg[9] [15]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [15]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [15]),
        .O(\m_data[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[16]_i_1 
       (.I0(\m_data[16]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[16]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[16]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[16]_i_2 
       (.I0(\str_shift_reg[7] [16]),
        .I1(\str_shift_reg[6] [16]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [16]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [16]),
        .O(\m_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[16]_i_3 
       (.I0(\str_shift_reg[3] [16]),
        .I1(\str_shift_reg[2] [16]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [16]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [16]),
        .O(\m_data[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[16]_i_4 
       (.I0(\str_shift_reg[9] [16]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [16]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [16]),
        .O(\m_data[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[17]_i_1 
       (.I0(\m_data[17]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[17]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[17]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[17]_i_2 
       (.I0(\str_shift_reg[7] [17]),
        .I1(\str_shift_reg[6] [17]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [17]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [17]),
        .O(\m_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[17]_i_3 
       (.I0(\str_shift_reg[3] [17]),
        .I1(\str_shift_reg[2] [17]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [17]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [17]),
        .O(\m_data[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[17]_i_4 
       (.I0(\str_shift_reg[9] [17]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [17]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [17]),
        .O(\m_data[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[18]_i_1 
       (.I0(\m_data[18]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[18]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[18]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[18]_i_2 
       (.I0(\str_shift_reg[7] [18]),
        .I1(\str_shift_reg[6] [18]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [18]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [18]),
        .O(\m_data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[18]_i_3 
       (.I0(\str_shift_reg[3] [18]),
        .I1(\str_shift_reg[2] [18]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [18]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [18]),
        .O(\m_data[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[18]_i_4 
       (.I0(\str_shift_reg[9] [18]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [18]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [18]),
        .O(\m_data[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[19]_i_1 
       (.I0(\m_data[19]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[19]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[19]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[19]_i_2 
       (.I0(\str_shift_reg[7] [19]),
        .I1(\str_shift_reg[6] [19]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [19]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [19]),
        .O(\m_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[19]_i_3 
       (.I0(\str_shift_reg[3] [19]),
        .I1(\str_shift_reg[2] [19]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [19]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [19]),
        .O(\m_data[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[19]_i_4 
       (.I0(\str_shift_reg[9] [19]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [19]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [19]),
        .O(\m_data[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[1]_i_1 
       (.I0(\m_data[1]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[1]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[1]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[1]_i_2 
       (.I0(\str_shift_reg[7] [1]),
        .I1(\str_shift_reg[6] [1]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [1]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [1]),
        .O(\m_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[1]_i_3 
       (.I0(\str_shift_reg[3] [1]),
        .I1(\str_shift_reg[2] [1]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [1]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [1]),
        .O(\m_data[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[1]_i_4 
       (.I0(\str_shift_reg[9] [1]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [1]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [1]),
        .O(\m_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[20]_i_1 
       (.I0(\m_data[20]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[20]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[20]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[20]_i_2 
       (.I0(\str_shift_reg[7] [20]),
        .I1(\str_shift_reg[6] [20]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [20]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [20]),
        .O(\m_data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[20]_i_3 
       (.I0(\str_shift_reg[3] [20]),
        .I1(\str_shift_reg[2] [20]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [20]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [20]),
        .O(\m_data[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[20]_i_4 
       (.I0(\str_shift_reg[9] [20]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [20]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [20]),
        .O(\m_data[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[21]_i_1 
       (.I0(\m_data[21]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[21]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[21]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[21]_i_2 
       (.I0(\str_shift_reg[7] [21]),
        .I1(\str_shift_reg[6] [21]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [21]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [21]),
        .O(\m_data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[21]_i_3 
       (.I0(\str_shift_reg[3] [21]),
        .I1(\str_shift_reg[2] [21]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [21]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [21]),
        .O(\m_data[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[21]_i_4 
       (.I0(\str_shift_reg[9] [21]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [21]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [21]),
        .O(\m_data[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[22]_i_1 
       (.I0(\m_data[22]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[22]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[22]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[22]_i_2 
       (.I0(\str_shift_reg[7] [22]),
        .I1(\str_shift_reg[6] [22]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [22]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [22]),
        .O(\m_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[22]_i_3 
       (.I0(\str_shift_reg[3] [22]),
        .I1(\str_shift_reg[2] [22]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [22]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [22]),
        .O(\m_data[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[22]_i_4 
       (.I0(\str_shift_reg[9] [22]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [22]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [22]),
        .O(\m_data[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[23]_i_1 
       (.I0(\m_data[23]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[23]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[23]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[23]_i_2 
       (.I0(\str_shift_reg[7] [23]),
        .I1(\str_shift_reg[6] [23]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [23]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [23]),
        .O(\m_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[23]_i_3 
       (.I0(\str_shift_reg[3] [23]),
        .I1(\str_shift_reg[2] [23]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [23]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [23]),
        .O(\m_data[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[23]_i_4 
       (.I0(\str_shift_reg[9] [23]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [23]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [23]),
        .O(\m_data[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[24]_i_1 
       (.I0(\m_data[24]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[24]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[24]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[24]_i_2 
       (.I0(\str_shift_reg[7] [24]),
        .I1(\str_shift_reg[6] [24]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [24]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [24]),
        .O(\m_data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[24]_i_3 
       (.I0(\str_shift_reg[3] [24]),
        .I1(\str_shift_reg[2] [24]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [24]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [24]),
        .O(\m_data[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[24]_i_4 
       (.I0(\str_shift_reg[9] [24]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [24]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [24]),
        .O(\m_data[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[25]_i_1 
       (.I0(\m_data[25]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[25]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[25]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[25]_i_2 
       (.I0(\str_shift_reg[7] [25]),
        .I1(\str_shift_reg[6] [25]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [25]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [25]),
        .O(\m_data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[25]_i_3 
       (.I0(\str_shift_reg[3] [25]),
        .I1(\str_shift_reg[2] [25]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [25]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [25]),
        .O(\m_data[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[25]_i_4 
       (.I0(\str_shift_reg[9] [25]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [25]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [25]),
        .O(\m_data[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[26]_i_1 
       (.I0(\m_data[26]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[26]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[26]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[26]_i_2 
       (.I0(\str_shift_reg[7] [26]),
        .I1(\str_shift_reg[6] [26]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [26]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [26]),
        .O(\m_data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[26]_i_3 
       (.I0(\str_shift_reg[3] [26]),
        .I1(\str_shift_reg[2] [26]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [26]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [26]),
        .O(\m_data[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[26]_i_4 
       (.I0(\str_shift_reg[9] [26]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [26]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [26]),
        .O(\m_data[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[27]_i_1 
       (.I0(\m_data[27]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[27]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[27]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[27]_i_2 
       (.I0(\str_shift_reg[7] [27]),
        .I1(\str_shift_reg[6] [27]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [27]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [27]),
        .O(\m_data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[27]_i_3 
       (.I0(\str_shift_reg[3] [27]),
        .I1(\str_shift_reg[2] [27]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [27]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [27]),
        .O(\m_data[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[27]_i_4 
       (.I0(\str_shift_reg[9] [27]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [27]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [27]),
        .O(\m_data[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[28]_i_1 
       (.I0(\m_data[28]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[28]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[28]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[28]_i_2 
       (.I0(\str_shift_reg[7] [28]),
        .I1(\str_shift_reg[6] [28]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [28]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [28]),
        .O(\m_data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[28]_i_3 
       (.I0(\str_shift_reg[3] [28]),
        .I1(\str_shift_reg[2] [28]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [28]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [28]),
        .O(\m_data[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[28]_i_4 
       (.I0(\str_shift_reg[9] [28]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [28]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [28]),
        .O(\m_data[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[29]_i_1 
       (.I0(\m_data[29]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[29]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[29]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[29]_i_2 
       (.I0(\str_shift_reg[7] [29]),
        .I1(\str_shift_reg[6] [29]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [29]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [29]),
        .O(\m_data[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[29]_i_3 
       (.I0(\str_shift_reg[3] [29]),
        .I1(\str_shift_reg[2] [29]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [29]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [29]),
        .O(\m_data[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[29]_i_4 
       (.I0(\str_shift_reg[9] [29]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [29]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [29]),
        .O(\m_data[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[2]_i_1 
       (.I0(\m_data[2]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[2]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[2]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[2]_i_2 
       (.I0(\str_shift_reg[7] [2]),
        .I1(\str_shift_reg[6] [2]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [2]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [2]),
        .O(\m_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[2]_i_3 
       (.I0(\str_shift_reg[3] [2]),
        .I1(\str_shift_reg[2] [2]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [2]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [2]),
        .O(\m_data[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[2]_i_4 
       (.I0(\str_shift_reg[9] [2]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [2]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [2]),
        .O(\m_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[30]_i_1 
       (.I0(\m_data[30]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[30]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[30]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[30]_i_2 
       (.I0(\str_shift_reg[7] [30]),
        .I1(\str_shift_reg[6] [30]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [30]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [30]),
        .O(\m_data[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[30]_i_3 
       (.I0(\str_shift_reg[3] [30]),
        .I1(\str_shift_reg[2] [30]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [30]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [30]),
        .O(\m_data[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[30]_i_4 
       (.I0(\str_shift_reg[9] [30]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [30]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [30]),
        .O(\m_data[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[31]_i_1 
       (.I0(\m_data[31]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[31]_i_4_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[31]_i_5_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[31]_i_2 
       (.I0(\str_shift_reg[7] [31]),
        .I1(\str_shift_reg[6] [31]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [31]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [31]),
        .O(\m_data[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \m_data[31]_i_3 
       (.I0(core_cycle_reg[2]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[1]),
        .O(\m_data[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[31]_i_4 
       (.I0(\str_shift_reg[3] [31]),
        .I1(\str_shift_reg[2] [31]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [31]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [31]),
        .O(\m_data[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[31]_i_5 
       (.I0(\str_shift_reg[9] [31]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [31]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [31]),
        .O(\m_data[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \m_data[31]_i_6 
       (.I0(core_cycle_reg[4]),
        .I1(core_cycle_reg[2]),
        .I2(core_cycle_reg[1]),
        .I3(core_cycle_reg[0]),
        .I4(core_cycle_reg[3]),
        .O(\m_data[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[3]_i_1 
       (.I0(\m_data[3]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[3]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[3]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[3]_i_2 
       (.I0(\str_shift_reg[7] [3]),
        .I1(\str_shift_reg[6] [3]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [3]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [3]),
        .O(\m_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[3]_i_3 
       (.I0(\str_shift_reg[3] [3]),
        .I1(\str_shift_reg[2] [3]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [3]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [3]),
        .O(\m_data[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[3]_i_4 
       (.I0(\str_shift_reg[9] [3]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [3]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [3]),
        .O(\m_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[4]_i_1 
       (.I0(\m_data[4]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[4]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[4]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[4]_i_2 
       (.I0(\str_shift_reg[7] [4]),
        .I1(\str_shift_reg[6] [4]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [4]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [4]),
        .O(\m_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[4]_i_3 
       (.I0(\str_shift_reg[3] [4]),
        .I1(\str_shift_reg[2] [4]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [4]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [4]),
        .O(\m_data[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[4]_i_4 
       (.I0(\str_shift_reg[9] [4]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [4]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [4]),
        .O(\m_data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[5]_i_1 
       (.I0(\m_data[5]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[5]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[5]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[5]_i_2 
       (.I0(\str_shift_reg[7] [5]),
        .I1(\str_shift_reg[6] [5]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [5]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [5]),
        .O(\m_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[5]_i_3 
       (.I0(\str_shift_reg[3] [5]),
        .I1(\str_shift_reg[2] [5]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [5]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [5]),
        .O(\m_data[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[5]_i_4 
       (.I0(\str_shift_reg[9] [5]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [5]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [5]),
        .O(\m_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[6]_i_1 
       (.I0(\m_data[6]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[6]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[6]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[6]_i_2 
       (.I0(\str_shift_reg[7] [6]),
        .I1(\str_shift_reg[6] [6]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [6]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [6]),
        .O(\m_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[6]_i_3 
       (.I0(\str_shift_reg[3] [6]),
        .I1(\str_shift_reg[2] [6]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [6]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [6]),
        .O(\m_data[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[6]_i_4 
       (.I0(\str_shift_reg[9] [6]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [6]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [6]),
        .O(\m_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[7]_i_1 
       (.I0(\m_data[7]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[7]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[7]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[7]_i_2 
       (.I0(\str_shift_reg[7] [7]),
        .I1(\str_shift_reg[6] [7]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [7]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [7]),
        .O(\m_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[7]_i_3 
       (.I0(\str_shift_reg[3] [7]),
        .I1(\str_shift_reg[2] [7]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [7]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [7]),
        .O(\m_data[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[7]_i_4 
       (.I0(\str_shift_reg[9] [7]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [7]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [7]),
        .O(\m_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[8]_i_1 
       (.I0(\m_data[8]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[8]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[8]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[8]_i_2 
       (.I0(\str_shift_reg[7] [8]),
        .I1(\str_shift_reg[6] [8]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [8]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [8]),
        .O(\m_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[8]_i_3 
       (.I0(\str_shift_reg[3] [8]),
        .I1(\str_shift_reg[2] [8]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [8]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [8]),
        .O(\m_data[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[8]_i_4 
       (.I0(\str_shift_reg[9] [8]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [8]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [8]),
        .O(\m_data[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \m_data[9]_i_1 
       (.I0(\m_data[9]_i_2_n_0 ),
        .I1(\m_data[31]_i_3_n_0 ),
        .I2(\m_data[9]_i_3_n_0 ),
        .I3(core_cycle_reg[3]),
        .I4(\m_data[9]_i_4_n_0 ),
        .I5(\m_data[31]_i_6_n_0 ),
        .O(\m_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[9]_i_2 
       (.I0(\str_shift_reg[7] [9]),
        .I1(\str_shift_reg[6] [9]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[5] [9]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[4] [9]),
        .O(\m_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_data[9]_i_3 
       (.I0(\str_shift_reg[3] [9]),
        .I1(\str_shift_reg[2] [9]),
        .I2(core_cycle_reg[1]),
        .I3(\str_shift_reg[1] [9]),
        .I4(core_cycle_reg[0]),
        .I5(\str_shift_reg[0] [9]),
        .O(\m_data[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_data[9]_i_4 
       (.I0(\str_shift_reg[9] [9]),
        .I1(core_cycle_reg[0]),
        .I2(\str_shift_reg[8] [9]),
        .I3(\m_data[31]_i_3_n_0 ),
        .I4(\str_shift_reg[10] [9]),
        .O(\m_data[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[0] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[0]_i_1_n_0 ),
        .Q(m_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[10] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[10]_i_1_n_0 ),
        .Q(m_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[11] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[11]_i_1_n_0 ),
        .Q(m_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[12] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[12]_i_1_n_0 ),
        .Q(m_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[13] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[13]_i_1_n_0 ),
        .Q(m_data[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[14] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[14]_i_1_n_0 ),
        .Q(m_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[15] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[15]_i_1_n_0 ),
        .Q(m_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[16] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[16]_i_1_n_0 ),
        .Q(m_data[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[17] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[17]_i_1_n_0 ),
        .Q(m_data[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[18] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[18]_i_1_n_0 ),
        .Q(m_data[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[19] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[19]_i_1_n_0 ),
        .Q(m_data[19]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[1] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[1]_i_1_n_0 ),
        .Q(m_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[20] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[20]_i_1_n_0 ),
        .Q(m_data[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[21] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[21]_i_1_n_0 ),
        .Q(m_data[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[22] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[22]_i_1_n_0 ),
        .Q(m_data[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[23] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[23]_i_1_n_0 ),
        .Q(m_data[23]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[24] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[24]_i_1_n_0 ),
        .Q(m_data[24]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[25] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[25]_i_1_n_0 ),
        .Q(m_data[25]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[26] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[26]_i_1_n_0 ),
        .Q(m_data[26]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[27] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[27]_i_1_n_0 ),
        .Q(m_data[27]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[28] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[28]_i_1_n_0 ),
        .Q(m_data[28]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[29] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[29]_i_1_n_0 ),
        .Q(m_data[29]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[2] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[2]_i_1_n_0 ),
        .Q(m_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[30] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[30]_i_1_n_0 ),
        .Q(m_data[30]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[31] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[31]_i_1_n_0 ),
        .Q(m_data[31]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[3] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[3]_i_1_n_0 ),
        .Q(m_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[4] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[4]_i_1_n_0 ),
        .Q(m_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[5] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[5]_i_1_n_0 ),
        .Q(m_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[6] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[6]_i_1_n_0 ),
        .Q(m_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[7] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[7]_i_1_n_0 ),
        .Q(m_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[8] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[8]_i_1_n_0 ),
        .Q(m_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_data_reg[9] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_data[9]_i_1_n_0 ),
        .Q(m_data[9]));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[0]_i_1 
       (.I0(m_tap_tmp[0]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[10]_i_1 
       (.I0(m_tap_tmp[10]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[11]_i_1 
       (.I0(m_tap_tmp[11]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[12]_i_1 
       (.I0(m_tap_tmp[12]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[13]_i_1 
       (.I0(m_tap_tmp[13]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[14]_i_1 
       (.I0(m_tap_tmp[14]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[15]_i_1 
       (.I0(m_tap_tmp[15]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[16]_i_1 
       (.I0(m_tap_tmp[16]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[17]_i_1 
       (.I0(m_tap_tmp[17]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[18]_i_1 
       (.I0(m_tap_tmp[18]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[19]_i_1 
       (.I0(m_tap_tmp[19]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[1]_i_1 
       (.I0(m_tap_tmp[1]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[20]_i_1 
       (.I0(m_tap_tmp[20]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[21]_i_1 
       (.I0(m_tap_tmp[21]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[22]_i_1 
       (.I0(m_tap_tmp[22]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[23]_i_1 
       (.I0(m_tap_tmp[23]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[24]_i_1 
       (.I0(m_tap_tmp[24]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[25]_i_1 
       (.I0(m_tap_tmp[25]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[26]_i_1 
       (.I0(m_tap_tmp[26]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[27]_i_1 
       (.I0(m_tap_tmp[27]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[28]_i_1 
       (.I0(m_tap_tmp[28]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[29]_i_1 
       (.I0(m_tap_tmp[29]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[2]_i_1 
       (.I0(m_tap_tmp[2]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[30]_i_1 
       (.I0(m_tap_tmp[30]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[31]_i_1 
       (.I0(m_tap_tmp[31]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[3]_i_1 
       (.I0(m_tap_tmp[3]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[4]_i_1 
       (.I0(m_tap_tmp[4]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[5]_i_1 
       (.I0(m_tap_tmp[5]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[6]_i_1 
       (.I0(m_tap_tmp[6]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[7]_i_1 
       (.I0(m_tap_tmp[7]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[8]_i_1 
       (.I0(m_tap_tmp[8]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap[9]_i_1 
       (.I0(m_tap_tmp[9]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[0] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[0]_i_1_n_0 ),
        .Q(m_tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[10] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[10]_i_1_n_0 ),
        .Q(m_tap[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[11] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[11]_i_1_n_0 ),
        .Q(m_tap[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[12] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[12]_i_1_n_0 ),
        .Q(m_tap[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[13] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[13]_i_1_n_0 ),
        .Q(m_tap[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[14] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[14]_i_1_n_0 ),
        .Q(m_tap[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[15] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[15]_i_1_n_0 ),
        .Q(m_tap[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[16] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[16]_i_1_n_0 ),
        .Q(m_tap[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[17] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[17]_i_1_n_0 ),
        .Q(m_tap[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[18] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[18]_i_1_n_0 ),
        .Q(m_tap[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[19] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[19]_i_1_n_0 ),
        .Q(m_tap[19]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[1] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[1]_i_1_n_0 ),
        .Q(m_tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[20] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[20]_i_1_n_0 ),
        .Q(m_tap[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[21] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[21]_i_1_n_0 ),
        .Q(m_tap[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[22] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[22]_i_1_n_0 ),
        .Q(m_tap[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[23] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[23]_i_1_n_0 ),
        .Q(m_tap[23]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[24] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[24]_i_1_n_0 ),
        .Q(m_tap[24]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[25] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[25]_i_1_n_0 ),
        .Q(m_tap[25]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[26] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[26]_i_1_n_0 ),
        .Q(m_tap[26]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[27] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[27]_i_1_n_0 ),
        .Q(m_tap[27]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[28] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[28]_i_1_n_0 ),
        .Q(m_tap[28]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[29] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[29]_i_1_n_0 ),
        .Q(m_tap[29]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[2] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[2]_i_1_n_0 ),
        .Q(m_tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[30] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[30]_i_1_n_0 ),
        .Q(m_tap[30]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[31] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[31]_i_1_n_0 ),
        .Q(m_tap[31]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[3] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[3]_i_1_n_0 ),
        .Q(m_tap[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[4] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[4]_i_1_n_0 ),
        .Q(m_tap[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[5] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[5]_i_1_n_0 ),
        .Q(m_tap[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[6] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[6]_i_1_n_0 ),
        .Q(m_tap[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[7] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[7]_i_1_n_0 ),
        .Q(m_tap[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[8] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[8]_i_1_n_0 ),
        .Q(m_tap[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_reg[9] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap[9]_i_1_n_0 ),
        .Q(m_tap[9]));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[0]_i_1 
       (.I0(tap_Do_IBUF[0]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[10]_i_1 
       (.I0(tap_Do_IBUF[10]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[11]_i_1 
       (.I0(tap_Do_IBUF[11]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[12]_i_1 
       (.I0(tap_Do_IBUF[12]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[13]_i_1 
       (.I0(tap_Do_IBUF[13]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[14]_i_1 
       (.I0(tap_Do_IBUF[14]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[15]_i_1 
       (.I0(tap_Do_IBUF[15]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[16]_i_1 
       (.I0(tap_Do_IBUF[16]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[17]_i_1 
       (.I0(tap_Do_IBUF[17]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[18]_i_1 
       (.I0(tap_Do_IBUF[18]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[19]_i_1 
       (.I0(tap_Do_IBUF[19]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[1]_i_1 
       (.I0(tap_Do_IBUF[1]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[20]_i_1 
       (.I0(tap_Do_IBUF[20]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[21]_i_1 
       (.I0(tap_Do_IBUF[21]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[22]_i_1 
       (.I0(tap_Do_IBUF[22]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[23]_i_1 
       (.I0(tap_Do_IBUF[23]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[24]_i_1 
       (.I0(tap_Do_IBUF[24]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[25]_i_1 
       (.I0(tap_Do_IBUF[25]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[26]_i_1 
       (.I0(tap_Do_IBUF[26]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[27]_i_1 
       (.I0(tap_Do_IBUF[27]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[28]_i_1 
       (.I0(tap_Do_IBUF[28]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[29]_i_1 
       (.I0(tap_Do_IBUF[29]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[2]_i_1 
       (.I0(tap_Do_IBUF[2]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[30]_i_1 
       (.I0(tap_Do_IBUF[30]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[31]_i_1 
       (.I0(tap_Do_IBUF[31]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[3]_i_1 
       (.I0(tap_Do_IBUF[3]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[4]_i_1 
       (.I0(tap_Do_IBUF[4]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[5]_i_1 
       (.I0(tap_Do_IBUF[5]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[6]_i_1 
       (.I0(tap_Do_IBUF[6]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[7]_i_1 
       (.I0(tap_Do_IBUF[7]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[8]_i_1 
       (.I0(tap_Do_IBUF[8]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \m_tap_tmp[9]_i_1 
       (.I0(tap_Do_IBUF[9]),
        .I1(core_cycle_reg[3]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[1]),
        .I4(core_cycle_reg[2]),
        .I5(core_cycle_reg[4]),
        .O(\m_tap_tmp[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[0] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[0]_i_1_n_0 ),
        .Q(m_tap_tmp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[10] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[10]_i_1_n_0 ),
        .Q(m_tap_tmp[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[11] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[11]_i_1_n_0 ),
        .Q(m_tap_tmp[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[12] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[12]_i_1_n_0 ),
        .Q(m_tap_tmp[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[13] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[13]_i_1_n_0 ),
        .Q(m_tap_tmp[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[14] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[14]_i_1_n_0 ),
        .Q(m_tap_tmp[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[15] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[15]_i_1_n_0 ),
        .Q(m_tap_tmp[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[16] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[16]_i_1_n_0 ),
        .Q(m_tap_tmp[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[17] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[17]_i_1_n_0 ),
        .Q(m_tap_tmp[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[18] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[18]_i_1_n_0 ),
        .Q(m_tap_tmp[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[19] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[19]_i_1_n_0 ),
        .Q(m_tap_tmp[19]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[1] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[1]_i_1_n_0 ),
        .Q(m_tap_tmp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[20] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[20]_i_1_n_0 ),
        .Q(m_tap_tmp[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[21] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[21]_i_1_n_0 ),
        .Q(m_tap_tmp[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[22] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[22]_i_1_n_0 ),
        .Q(m_tap_tmp[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[23] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[23]_i_1_n_0 ),
        .Q(m_tap_tmp[23]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[24] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[24]_i_1_n_0 ),
        .Q(m_tap_tmp[24]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[25] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[25]_i_1_n_0 ),
        .Q(m_tap_tmp[25]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[26] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[26]_i_1_n_0 ),
        .Q(m_tap_tmp[26]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[27] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[27]_i_1_n_0 ),
        .Q(m_tap_tmp[27]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[28] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[28]_i_1_n_0 ),
        .Q(m_tap_tmp[28]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[29] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[29]_i_1_n_0 ),
        .Q(m_tap_tmp[29]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[2] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[2]_i_1_n_0 ),
        .Q(m_tap_tmp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[30] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[30]_i_1_n_0 ),
        .Q(m_tap_tmp[30]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[31] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[31]_i_1_n_0 ),
        .Q(m_tap_tmp[31]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[3] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[3]_i_1_n_0 ),
        .Q(m_tap_tmp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[4] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[4]_i_1_n_0 ),
        .Q(m_tap_tmp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[5] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[5]_i_1_n_0 ),
        .Q(m_tap_tmp[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[6] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[6]_i_1_n_0 ),
        .Q(m_tap_tmp[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[7] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[7]_i_1_n_0 ),
        .Q(m_tap_tmp[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[8] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[8]_i_1_n_0 ),
        .Q(m_tap_tmp[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tap_tmp_reg[9] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\m_tap_tmp[9]_i_1_n_0 ),
        .Q(m_tap_tmp[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_prod0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m_data[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_prod0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,m_tap[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_prod0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_prod0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_prod0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_core),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_prod0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_prod0_OVERFLOW_UNCONNECTED),
        .P({mult_prod0_n_58,mult_prod0_n_59,mult_prod0_n_60,mult_prod0_n_61,mult_prod0_n_62,mult_prod0_n_63,mult_prod0_n_64,mult_prod0_n_65,mult_prod0_n_66,mult_prod0_n_67,mult_prod0_n_68,mult_prod0_n_69,mult_prod0_n_70,mult_prod0_n_71,mult_prod0_n_72,mult_prod0_n_73,mult_prod0_n_74,mult_prod0_n_75,mult_prod0_n_76,mult_prod0_n_77,mult_prod0_n_78,mult_prod0_n_79,mult_prod0_n_80,mult_prod0_n_81,mult_prod0_n_82,mult_prod0_n_83,mult_prod0_n_84,mult_prod0_n_85,mult_prod0_n_86,mult_prod0_n_87,mult_prod0_n_88,mult_prod0_n_89,mult_prod0_n_90,mult_prod0_n_91,mult_prod0_n_92,mult_prod0_n_93,mult_prod0_n_94,mult_prod0_n_95,mult_prod0_n_96,mult_prod0_n_97,mult_prod0_n_98,mult_prod0_n_99,mult_prod0_n_100,mult_prod0_n_101,mult_prod0_n_102,mult_prod0_n_103,mult_prod0_n_104,mult_prod0_n_105}),
        .PATTERNBDETECT(NLW_mult_prod0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_prod0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mult_prod0_n_106,mult_prod0_n_107,mult_prod0_n_108,mult_prod0_n_109,mult_prod0_n_110,mult_prod0_n_111,mult_prod0_n_112,mult_prod0_n_113,mult_prod0_n_114,mult_prod0_n_115,mult_prod0_n_116,mult_prod0_n_117,mult_prod0_n_118,mult_prod0_n_119,mult_prod0_n_120,mult_prod0_n_121,mult_prod0_n_122,mult_prod0_n_123,mult_prod0_n_124,mult_prod0_n_125,mult_prod0_n_126,mult_prod0_n_127,mult_prod0_n_128,mult_prod0_n_129,mult_prod0_n_130,mult_prod0_n_131,mult_prod0_n_132,mult_prod0_n_133,mult_prod0_n_134,mult_prod0_n_135,mult_prod0_n_136,mult_prod0_n_137,mult_prod0_n_138,mult_prod0_n_139,mult_prod0_n_140,mult_prod0_n_141,mult_prod0_n_142,mult_prod0_n_143,mult_prod0_n_144,mult_prod0_n_145,mult_prod0_n_146,mult_prod0_n_147,mult_prod0_n_148,mult_prod0_n_149,mult_prod0_n_150,mult_prod0_n_151,mult_prod0_n_152,mult_prod0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_prod0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_prod0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m_tap[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({mult_prod0__0_n_24,mult_prod0__0_n_25,mult_prod0__0_n_26,mult_prod0__0_n_27,mult_prod0__0_n_28,mult_prod0__0_n_29,mult_prod0__0_n_30,mult_prod0__0_n_31,mult_prod0__0_n_32,mult_prod0__0_n_33,mult_prod0__0_n_34,mult_prod0__0_n_35,mult_prod0__0_n_36,mult_prod0__0_n_37,mult_prod0__0_n_38,mult_prod0__0_n_39,mult_prod0__0_n_40,mult_prod0__0_n_41,mult_prod0__0_n_42,mult_prod0__0_n_43,mult_prod0__0_n_44,mult_prod0__0_n_45,mult_prod0__0_n_46,mult_prod0__0_n_47,mult_prod0__0_n_48,mult_prod0__0_n_49,mult_prod0__0_n_50,mult_prod0__0_n_51,mult_prod0__0_n_52,mult_prod0__0_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,m_data[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_prod0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_prod0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_prod0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_prod0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_prod0__0_OVERFLOW_UNCONNECTED),
        .P({mult_prod0__0_n_58,mult_prod0__0_n_59,mult_prod0__0_n_60,mult_prod0__0_n_61,mult_prod0__0_n_62,mult_prod0__0_n_63,mult_prod0__0_n_64,mult_prod0__0_n_65,mult_prod0__0_n_66,mult_prod0__0_n_67,mult_prod0__0_n_68,mult_prod0__0_n_69,mult_prod0__0_n_70,mult_prod0__0_n_71,mult_prod0__0_n_72,mult_prod0__0_n_73,mult_prod0__0_n_74,mult_prod0__0_n_75,mult_prod0__0_n_76,mult_prod0__0_n_77,mult_prod0__0_n_78,mult_prod0__0_n_79,mult_prod0__0_n_80,mult_prod0__0_n_81,mult_prod0__0_n_82,mult_prod0__0_n_83,mult_prod0__0_n_84,mult_prod0__0_n_85,mult_prod0__0_n_86,mult_prod0__0_n_87,mult_prod0__0_n_88,mult_prod0__0_n_89,mult_prod0__0_n_90,mult_prod0__0_n_91,mult_prod0__0_n_92,mult_prod0__0_n_93,mult_prod0__0_n_94,mult_prod0__0_n_95,mult_prod0__0_n_96,mult_prod0__0_n_97,mult_prod0__0_n_98,mult_prod0__0_n_99,mult_prod0__0_n_100,mult_prod0__0_n_101,mult_prod0__0_n_102,mult_prod0__0_n_103,mult_prod0__0_n_104,mult_prod0__0_n_105}),
        .PATTERNBDETECT(NLW_mult_prod0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_prod0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mult_prod0__0_n_106,mult_prod0__0_n_107,mult_prod0__0_n_108,mult_prod0__0_n_109,mult_prod0__0_n_110,mult_prod0__0_n_111,mult_prod0__0_n_112,mult_prod0__0_n_113,mult_prod0__0_n_114,mult_prod0__0_n_115,mult_prod0__0_n_116,mult_prod0__0_n_117,mult_prod0__0_n_118,mult_prod0__0_n_119,mult_prod0__0_n_120,mult_prod0__0_n_121,mult_prod0__0_n_122,mult_prod0__0_n_123,mult_prod0__0_n_124,mult_prod0__0_n_125,mult_prod0__0_n_126,mult_prod0__0_n_127,mult_prod0__0_n_128,mult_prod0__0_n_129,mult_prod0__0_n_130,mult_prod0__0_n_131,mult_prod0__0_n_132,mult_prod0__0_n_133,mult_prod0__0_n_134,mult_prod0__0_n_135,mult_prod0__0_n_136,mult_prod0__0_n_137,mult_prod0__0_n_138,mult_prod0__0_n_139,mult_prod0__0_n_140,mult_prod0__0_n_141,mult_prod0__0_n_142,mult_prod0__0_n_143,mult_prod0__0_n_144,mult_prod0__0_n_145,mult_prod0__0_n_146,mult_prod0__0_n_147,mult_prod0__0_n_148,mult_prod0__0_n_149,mult_prod0__0_n_150,mult_prod0__0_n_151,mult_prod0__0_n_152,mult_prod0__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_prod0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_prod0__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({mult_prod0__0_n_24,mult_prod0__0_n_25,mult_prod0__0_n_26,mult_prod0__0_n_27,mult_prod0__0_n_28,mult_prod0__0_n_29,mult_prod0__0_n_30,mult_prod0__0_n_31,mult_prod0__0_n_32,mult_prod0__0_n_33,mult_prod0__0_n_34,mult_prod0__0_n_35,mult_prod0__0_n_36,mult_prod0__0_n_37,mult_prod0__0_n_38,mult_prod0__0_n_39,mult_prod0__0_n_40,mult_prod0__0_n_41,mult_prod0__0_n_42,mult_prod0__0_n_43,mult_prod0__0_n_44,mult_prod0__0_n_45,mult_prod0__0_n_46,mult_prod0__0_n_47,mult_prod0__0_n_48,mult_prod0__0_n_49,mult_prod0__0_n_50,mult_prod0__0_n_51,mult_prod0__0_n_52,mult_prod0__0_n_53}),
        .ACOUT(NLW_mult_prod0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,m_data[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_prod0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_prod0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_prod0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_core),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_prod0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_prod0__1_OVERFLOW_UNCONNECTED),
        .P({mult_prod0__1_n_58,mult_prod0__1_n_59,mult_prod0__1_n_60,mult_prod0__1_n_61,mult_prod0__1_n_62,mult_prod0__1_n_63,mult_prod0__1_n_64,mult_prod0__1_n_65,mult_prod0__1_n_66,mult_prod0__1_n_67,mult_prod0__1_n_68,mult_prod0__1_n_69,mult_prod0__1_n_70,mult_prod0__1_n_71,mult_prod0__1_n_72,mult_prod0__1_n_73,mult_prod0__1_n_74,mult_prod0__1_n_75,mult_prod0__1_n_76,mult_prod0__1_n_77,mult_prod0__1_n_78,mult_prod0__1_n_79,mult_prod0__1_n_80,mult_prod0__1_n_81,mult_prod0__1_n_82,mult_prod0__1_n_83,mult_prod0__1_n_84,mult_prod0__1_n_85,mult_prod0__1_n_86,mult_prod0__1_n_87,mult_prod0__1_n_88,mult_prod0__1_n_89,mult_prod0__1_n_90,mult_prod0__1_n_91,mult_prod0__1_n_92,mult_prod0__1_n_93,mult_prod0__1_n_94,mult_prod0__1_n_95,mult_prod0__1_n_96,mult_prod0__1_n_97,mult_prod0__1_n_98,mult_prod0__1_n_99,mult_prod0__1_n_100,mult_prod0__1_n_101,mult_prod0__1_n_102,mult_prod0__1_n_103,mult_prod0__1_n_104,mult_prod0__1_n_105}),
        .PATTERNBDETECT(NLW_mult_prod0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_prod0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({mult_prod0__0_n_106,mult_prod0__0_n_107,mult_prod0__0_n_108,mult_prod0__0_n_109,mult_prod0__0_n_110,mult_prod0__0_n_111,mult_prod0__0_n_112,mult_prod0__0_n_113,mult_prod0__0_n_114,mult_prod0__0_n_115,mult_prod0__0_n_116,mult_prod0__0_n_117,mult_prod0__0_n_118,mult_prod0__0_n_119,mult_prod0__0_n_120,mult_prod0__0_n_121,mult_prod0__0_n_122,mult_prod0__0_n_123,mult_prod0__0_n_124,mult_prod0__0_n_125,mult_prod0__0_n_126,mult_prod0__0_n_127,mult_prod0__0_n_128,mult_prod0__0_n_129,mult_prod0__0_n_130,mult_prod0__0_n_131,mult_prod0__0_n_132,mult_prod0__0_n_133,mult_prod0__0_n_134,mult_prod0__0_n_135,mult_prod0__0_n_136,mult_prod0__0_n_137,mult_prod0__0_n_138,mult_prod0__0_n_139,mult_prod0__0_n_140,mult_prod0__0_n_141,mult_prod0__0_n_142,mult_prod0__0_n_143,mult_prod0__0_n_144,mult_prod0__0_n_145,mult_prod0__0_n_146,mult_prod0__0_n_147,mult_prod0__0_n_148,mult_prod0__0_n_149,mult_prod0__0_n_150,mult_prod0__0_n_151,mult_prod0__0_n_152,mult_prod0__0_n_153}),
        .PCOUT(NLW_mult_prod0__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_prod0__1_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_prod0_carry
       (.CI(1'b0),
        .CO({mult_prod0_carry_n_0,mult_prod0_carry_n_1,mult_prod0_carry_n_2,mult_prod0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({mult_prod0_carry_i_1_n_0,mult_prod0_carry_i_2_n_0,mult_prod0_carry_i_3_n_0,1'b0}),
        .O(mult_prod_reg[19:16]),
        .S({mult_prod0_carry_i_4_n_0,mult_prod0_carry_i_5_n_0,mult_prod0_carry_i_6_n_0,\mult_prod_reg[16]__1_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_prod0_carry__0
       (.CI(mult_prod0_carry_n_0),
        .CO({mult_prod0_carry__0_n_0,mult_prod0_carry__0_n_1,mult_prod0_carry__0_n_2,mult_prod0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({mult_prod0_carry__0_i_1_n_0,mult_prod0_carry__0_i_2_n_0,mult_prod0_carry__0_i_3_n_0,mult_prod0_carry__0_i_4_n_0}),
        .O(mult_prod_reg[23:20]),
        .S({mult_prod0_carry__0_i_5_n_0,mult_prod0_carry__0_i_6_n_0,mult_prod0_carry__0_i_7_n_0,mult_prod0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__0_i_1
       (.I0(mult_prod0__1_n_99),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__0_i_2
       (.I0(mult_prod0__1_n_100),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__0_i_3
       (.I0(mult_prod0__1_n_101),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__0_i_4
       (.I0(mult_prod0__1_n_102),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__0_i_5
       (.I0(mult_prod0__1_n_99),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_99),
        .O(mult_prod0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__0_i_6
       (.I0(mult_prod0__1_n_100),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_100),
        .O(mult_prod0_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__0_i_7
       (.I0(mult_prod0__1_n_101),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_101),
        .O(mult_prod0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__0_i_8
       (.I0(mult_prod0__1_n_102),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_102),
        .O(mult_prod0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_prod0_carry__1
       (.CI(mult_prod0_carry__0_n_0),
        .CO({mult_prod0_carry__1_n_0,mult_prod0_carry__1_n_1,mult_prod0_carry__1_n_2,mult_prod0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({mult_prod0_carry__1_i_1_n_0,mult_prod0_carry__1_i_2_n_0,mult_prod0_carry__1_i_3_n_0,mult_prod0_carry__1_i_4_n_0}),
        .O(mult_prod_reg[27:24]),
        .S({mult_prod0_carry__1_i_5_n_0,mult_prod0_carry__1_i_6_n_0,mult_prod0_carry__1_i_7_n_0,mult_prod0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__1_i_1
       (.I0(mult_prod0__1_n_95),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__1_i_2
       (.I0(mult_prod0__1_n_96),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__1_i_3
       (.I0(mult_prod0__1_n_97),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__1_i_4
       (.I0(mult_prod0__1_n_98),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__1_i_5
       (.I0(mult_prod0__1_n_95),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_95),
        .O(mult_prod0_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__1_i_6
       (.I0(mult_prod0__1_n_96),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_96),
        .O(mult_prod0_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__1_i_7
       (.I0(mult_prod0__1_n_97),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_97),
        .O(mult_prod0_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__1_i_8
       (.I0(mult_prod0__1_n_98),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_98),
        .O(mult_prod0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_prod0_carry__2
       (.CI(mult_prod0_carry__1_n_0),
        .CO({NLW_mult_prod0_carry__2_CO_UNCONNECTED[3],mult_prod0_carry__2_n_1,mult_prod0_carry__2_n_2,mult_prod0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,mult_prod0_carry__2_i_1_n_0,mult_prod0_carry__2_i_2_n_0,mult_prod0_carry__2_i_3_n_0}),
        .O(mult_prod_reg[31:28]),
        .S({mult_prod0_carry__2_i_4_n_0,mult_prod0_carry__2_i_5_n_0,mult_prod0_carry__2_i_6_n_0,mult_prod0_carry__2_i_7_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__2_i_1
       (.I0(mult_prod0__1_n_92),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__2_i_2
       (.I0(mult_prod0__1_n_93),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry__2_i_3
       (.I0(mult_prod0__1_n_94),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__2_i_4
       (.I0(mult_prod0_n_91),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0__1_n_91),
        .O(mult_prod0_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__2_i_5
       (.I0(mult_prod0__1_n_92),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_92),
        .O(mult_prod0_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__2_i_6
       (.I0(mult_prod0__1_n_93),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_93),
        .O(mult_prod0_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry__2_i_7
       (.I0(mult_prod0__1_n_94),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_94),
        .O(mult_prod0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry_i_1
       (.I0(mult_prod0__1_n_103),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry_i_2
       (.I0(mult_prod0__1_n_104),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mult_prod0_carry_i_3
       (.I0(mult_prod0__1_n_105),
        .I1(mult_prod0_carry__2_0),
        .O(mult_prod0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry_i_4
       (.I0(mult_prod0__1_n_103),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_103),
        .O(mult_prod0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry_i_5
       (.I0(mult_prod0__1_n_104),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_104),
        .O(mult_prod0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mult_prod0_carry_i_6
       (.I0(mult_prod0__1_n_105),
        .I1(mult_prod0_carry__2_0),
        .I2(mult_prod0_n_105),
        .O(mult_prod0_carry_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[0]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_105),
        .Q(\mult_prod_reg[0]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[10]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_95),
        .Q(\mult_prod_reg[10]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[11]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_94),
        .Q(\mult_prod_reg[11]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[12]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_93),
        .Q(\mult_prod_reg[12]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[13]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_92),
        .Q(\mult_prod_reg[13]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[14]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_91),
        .Q(\mult_prod_reg[14]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[15]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_90),
        .Q(\mult_prod_reg[15]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[16]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_89),
        .Q(\mult_prod_reg[16]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[1]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_104),
        .Q(\mult_prod_reg[1]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[2]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_103),
        .Q(\mult_prod_reg[2]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[3]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_102),
        .Q(\mult_prod_reg[3]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[4]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_101),
        .Q(\mult_prod_reg[4]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[5]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_100),
        .Q(\mult_prod_reg[5]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[6]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_99),
        .Q(\mult_prod_reg[6]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[7]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_98),
        .Q(\mult_prod_reg[7]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[8]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_97),
        .Q(\mult_prod_reg[8]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_prod_reg[9]__1 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(mult_prod0__0_n_96),
        .Q(\mult_prod_reg[9]__1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \num_vld[31]_i_1 
       (.I0(Q),
        .I1(core_cycle_reg[4]),
        .I2(core_cycle_reg[0]),
        .I3(core_cycle_reg[2]),
        .I4(core_cycle_reg[1]),
        .I5(core_cycle_reg[3]),
        .O(\FSM_onehot_state_running_reg[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_ptr[3]_i_1 
       (.I0(upd_str_data),
        .I1(rd_en_fifo_1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    shift_upd_pre_i_1
       (.I0(data_sel_str_pre_reg[2]),
        .I1(data_sel_str_pre_reg[0]),
        .I2(data_sel_str_pre_reg[1]),
        .I3(data_sel_str_pre_reg[3]),
        .O(shift_upd_pre_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    shift_upd_pre_reg
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(shift_upd_pre_i_1_n_0),
        .Q(upd_str_data));
  LUT5 #(
    .INIT(32'h00000080)) 
    sm_tvalid_OBUF_inst_i_1
       (.I0(core_cycle_reg[3]),
        .I1(core_cycle_reg[1]),
        .I2(core_cycle_reg[2]),
        .I3(core_cycle_reg[0]),
        .I4(core_cycle_reg[4]),
        .O(sm_tvalid_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[0]),
        .Q(\str_shift_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[10]),
        .Q(\str_shift_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[11]),
        .Q(\str_shift_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[12]),
        .Q(\str_shift_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[13]),
        .Q(\str_shift_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[14]),
        .Q(\str_shift_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[15]),
        .Q(\str_shift_reg[0] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[16]),
        .Q(\str_shift_reg[0] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[17]),
        .Q(\str_shift_reg[0] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[18]),
        .Q(\str_shift_reg[0] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[19]),
        .Q(\str_shift_reg[0] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[1]),
        .Q(\str_shift_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[20]),
        .Q(\str_shift_reg[0] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[21]),
        .Q(\str_shift_reg[0] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[22]),
        .Q(\str_shift_reg[0] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[23]),
        .Q(\str_shift_reg[0] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[24]),
        .Q(\str_shift_reg[0] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[25]),
        .Q(\str_shift_reg[0] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[26]),
        .Q(\str_shift_reg[0] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[27]),
        .Q(\str_shift_reg[0] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[28]),
        .Q(\str_shift_reg[0] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[29]),
        .Q(\str_shift_reg[0] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[2]),
        .Q(\str_shift_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[30]),
        .Q(\str_shift_reg[0] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[31]),
        .Q(\str_shift_reg[0] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[3]),
        .Q(\str_shift_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[4]),
        .Q(\str_shift_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[5]),
        .Q(\str_shift_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[6]),
        .Q(\str_shift_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[7]),
        .Q(\str_shift_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[8]),
        .Q(\str_shift_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[0][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(D[9]),
        .Q(\str_shift_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [0]),
        .Q(\str_shift_reg[10] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [10]),
        .Q(\str_shift_reg[10] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [11]),
        .Q(\str_shift_reg[10] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [12]),
        .Q(\str_shift_reg[10] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [13]),
        .Q(\str_shift_reg[10] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [14]),
        .Q(\str_shift_reg[10] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [15]),
        .Q(\str_shift_reg[10] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [16]),
        .Q(\str_shift_reg[10] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [17]),
        .Q(\str_shift_reg[10] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [18]),
        .Q(\str_shift_reg[10] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [19]),
        .Q(\str_shift_reg[10] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [1]),
        .Q(\str_shift_reg[10] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [20]),
        .Q(\str_shift_reg[10] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [21]),
        .Q(\str_shift_reg[10] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [22]),
        .Q(\str_shift_reg[10] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [23]),
        .Q(\str_shift_reg[10] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [24]),
        .Q(\str_shift_reg[10] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [25]),
        .Q(\str_shift_reg[10] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [26]),
        .Q(\str_shift_reg[10] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [27]),
        .Q(\str_shift_reg[10] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [28]),
        .Q(\str_shift_reg[10] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [29]),
        .Q(\str_shift_reg[10] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [2]),
        .Q(\str_shift_reg[10] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [30]),
        .Q(\str_shift_reg[10] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [31]),
        .Q(\str_shift_reg[10] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [3]),
        .Q(\str_shift_reg[10] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [4]),
        .Q(\str_shift_reg[10] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [5]),
        .Q(\str_shift_reg[10] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [6]),
        .Q(\str_shift_reg[10] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [7]),
        .Q(\str_shift_reg[10] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [8]),
        .Q(\str_shift_reg[10] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[10][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[9] [9]),
        .Q(\str_shift_reg[10] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [0]),
        .Q(\str_shift_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [10]),
        .Q(\str_shift_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [11]),
        .Q(\str_shift_reg[1] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [12]),
        .Q(\str_shift_reg[1] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [13]),
        .Q(\str_shift_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [14]),
        .Q(\str_shift_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [15]),
        .Q(\str_shift_reg[1] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [16]),
        .Q(\str_shift_reg[1] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [17]),
        .Q(\str_shift_reg[1] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [18]),
        .Q(\str_shift_reg[1] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [19]),
        .Q(\str_shift_reg[1] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [1]),
        .Q(\str_shift_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [20]),
        .Q(\str_shift_reg[1] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [21]),
        .Q(\str_shift_reg[1] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [22]),
        .Q(\str_shift_reg[1] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [23]),
        .Q(\str_shift_reg[1] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [24]),
        .Q(\str_shift_reg[1] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [25]),
        .Q(\str_shift_reg[1] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [26]),
        .Q(\str_shift_reg[1] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [27]),
        .Q(\str_shift_reg[1] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [28]),
        .Q(\str_shift_reg[1] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [29]),
        .Q(\str_shift_reg[1] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [2]),
        .Q(\str_shift_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [30]),
        .Q(\str_shift_reg[1] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [31]),
        .Q(\str_shift_reg[1] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [3]),
        .Q(\str_shift_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [4]),
        .Q(\str_shift_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [5]),
        .Q(\str_shift_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [6]),
        .Q(\str_shift_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [7]),
        .Q(\str_shift_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [8]),
        .Q(\str_shift_reg[1] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[1][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[0] [9]),
        .Q(\str_shift_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [0]),
        .Q(\str_shift_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [10]),
        .Q(\str_shift_reg[2] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [11]),
        .Q(\str_shift_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [12]),
        .Q(\str_shift_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [13]),
        .Q(\str_shift_reg[2] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [14]),
        .Q(\str_shift_reg[2] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [15]),
        .Q(\str_shift_reg[2] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [16]),
        .Q(\str_shift_reg[2] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [17]),
        .Q(\str_shift_reg[2] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [18]),
        .Q(\str_shift_reg[2] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [19]),
        .Q(\str_shift_reg[2] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [1]),
        .Q(\str_shift_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [20]),
        .Q(\str_shift_reg[2] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [21]),
        .Q(\str_shift_reg[2] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [22]),
        .Q(\str_shift_reg[2] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [23]),
        .Q(\str_shift_reg[2] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [24]),
        .Q(\str_shift_reg[2] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [25]),
        .Q(\str_shift_reg[2] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [26]),
        .Q(\str_shift_reg[2] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [27]),
        .Q(\str_shift_reg[2] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [28]),
        .Q(\str_shift_reg[2] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [29]),
        .Q(\str_shift_reg[2] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [2]),
        .Q(\str_shift_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [30]),
        .Q(\str_shift_reg[2] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [31]),
        .Q(\str_shift_reg[2] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [3]),
        .Q(\str_shift_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [4]),
        .Q(\str_shift_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [5]),
        .Q(\str_shift_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [6]),
        .Q(\str_shift_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [7]),
        .Q(\str_shift_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [8]),
        .Q(\str_shift_reg[2] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[2][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[1] [9]),
        .Q(\str_shift_reg[2] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [0]),
        .Q(\str_shift_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [10]),
        .Q(\str_shift_reg[3] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [11]),
        .Q(\str_shift_reg[3] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [12]),
        .Q(\str_shift_reg[3] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [13]),
        .Q(\str_shift_reg[3] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [14]),
        .Q(\str_shift_reg[3] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [15]),
        .Q(\str_shift_reg[3] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [16]),
        .Q(\str_shift_reg[3] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [17]),
        .Q(\str_shift_reg[3] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [18]),
        .Q(\str_shift_reg[3] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [19]),
        .Q(\str_shift_reg[3] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [1]),
        .Q(\str_shift_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [20]),
        .Q(\str_shift_reg[3] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [21]),
        .Q(\str_shift_reg[3] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [22]),
        .Q(\str_shift_reg[3] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [23]),
        .Q(\str_shift_reg[3] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [24]),
        .Q(\str_shift_reg[3] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [25]),
        .Q(\str_shift_reg[3] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [26]),
        .Q(\str_shift_reg[3] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [27]),
        .Q(\str_shift_reg[3] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [28]),
        .Q(\str_shift_reg[3] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [29]),
        .Q(\str_shift_reg[3] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [2]),
        .Q(\str_shift_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [30]),
        .Q(\str_shift_reg[3] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [31]),
        .Q(\str_shift_reg[3] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [3]),
        .Q(\str_shift_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [4]),
        .Q(\str_shift_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [5]),
        .Q(\str_shift_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [6]),
        .Q(\str_shift_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [7]),
        .Q(\str_shift_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [8]),
        .Q(\str_shift_reg[3] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[3][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[2] [9]),
        .Q(\str_shift_reg[3] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [0]),
        .Q(\str_shift_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [10]),
        .Q(\str_shift_reg[4] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [11]),
        .Q(\str_shift_reg[4] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [12]),
        .Q(\str_shift_reg[4] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [13]),
        .Q(\str_shift_reg[4] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [14]),
        .Q(\str_shift_reg[4] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [15]),
        .Q(\str_shift_reg[4] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [16]),
        .Q(\str_shift_reg[4] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [17]),
        .Q(\str_shift_reg[4] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [18]),
        .Q(\str_shift_reg[4] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [19]),
        .Q(\str_shift_reg[4] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [1]),
        .Q(\str_shift_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [20]),
        .Q(\str_shift_reg[4] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [21]),
        .Q(\str_shift_reg[4] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [22]),
        .Q(\str_shift_reg[4] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [23]),
        .Q(\str_shift_reg[4] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [24]),
        .Q(\str_shift_reg[4] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [25]),
        .Q(\str_shift_reg[4] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [26]),
        .Q(\str_shift_reg[4] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [27]),
        .Q(\str_shift_reg[4] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [28]),
        .Q(\str_shift_reg[4] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [29]),
        .Q(\str_shift_reg[4] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [2]),
        .Q(\str_shift_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [30]),
        .Q(\str_shift_reg[4] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [31]),
        .Q(\str_shift_reg[4] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [3]),
        .Q(\str_shift_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [4]),
        .Q(\str_shift_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [5]),
        .Q(\str_shift_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [6]),
        .Q(\str_shift_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [7]),
        .Q(\str_shift_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [8]),
        .Q(\str_shift_reg[4] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[4][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[3] [9]),
        .Q(\str_shift_reg[4] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [0]),
        .Q(\str_shift_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [10]),
        .Q(\str_shift_reg[5] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [11]),
        .Q(\str_shift_reg[5] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [12]),
        .Q(\str_shift_reg[5] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [13]),
        .Q(\str_shift_reg[5] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [14]),
        .Q(\str_shift_reg[5] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [15]),
        .Q(\str_shift_reg[5] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [16]),
        .Q(\str_shift_reg[5] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [17]),
        .Q(\str_shift_reg[5] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [18]),
        .Q(\str_shift_reg[5] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [19]),
        .Q(\str_shift_reg[5] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [1]),
        .Q(\str_shift_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [20]),
        .Q(\str_shift_reg[5] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [21]),
        .Q(\str_shift_reg[5] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [22]),
        .Q(\str_shift_reg[5] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [23]),
        .Q(\str_shift_reg[5] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [24]),
        .Q(\str_shift_reg[5] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [25]),
        .Q(\str_shift_reg[5] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [26]),
        .Q(\str_shift_reg[5] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [27]),
        .Q(\str_shift_reg[5] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [28]),
        .Q(\str_shift_reg[5] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [29]),
        .Q(\str_shift_reg[5] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [2]),
        .Q(\str_shift_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [30]),
        .Q(\str_shift_reg[5] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [31]),
        .Q(\str_shift_reg[5] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [3]),
        .Q(\str_shift_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [4]),
        .Q(\str_shift_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [5]),
        .Q(\str_shift_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [6]),
        .Q(\str_shift_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [7]),
        .Q(\str_shift_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [8]),
        .Q(\str_shift_reg[5] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[5][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[4] [9]),
        .Q(\str_shift_reg[5] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [0]),
        .Q(\str_shift_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [10]),
        .Q(\str_shift_reg[6] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [11]),
        .Q(\str_shift_reg[6] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [12]),
        .Q(\str_shift_reg[6] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [13]),
        .Q(\str_shift_reg[6] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [14]),
        .Q(\str_shift_reg[6] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [15]),
        .Q(\str_shift_reg[6] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [16]),
        .Q(\str_shift_reg[6] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [17]),
        .Q(\str_shift_reg[6] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [18]),
        .Q(\str_shift_reg[6] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [19]),
        .Q(\str_shift_reg[6] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [1]),
        .Q(\str_shift_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [20]),
        .Q(\str_shift_reg[6] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [21]),
        .Q(\str_shift_reg[6] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [22]),
        .Q(\str_shift_reg[6] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [23]),
        .Q(\str_shift_reg[6] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [24]),
        .Q(\str_shift_reg[6] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [25]),
        .Q(\str_shift_reg[6] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [26]),
        .Q(\str_shift_reg[6] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [27]),
        .Q(\str_shift_reg[6] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [28]),
        .Q(\str_shift_reg[6] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [29]),
        .Q(\str_shift_reg[6] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [2]),
        .Q(\str_shift_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [30]),
        .Q(\str_shift_reg[6] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [31]),
        .Q(\str_shift_reg[6] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [3]),
        .Q(\str_shift_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [4]),
        .Q(\str_shift_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [5]),
        .Q(\str_shift_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [6]),
        .Q(\str_shift_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [7]),
        .Q(\str_shift_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [8]),
        .Q(\str_shift_reg[6] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[6][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[5] [9]),
        .Q(\str_shift_reg[6] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [0]),
        .Q(\str_shift_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [10]),
        .Q(\str_shift_reg[7] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [11]),
        .Q(\str_shift_reg[7] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [12]),
        .Q(\str_shift_reg[7] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [13]),
        .Q(\str_shift_reg[7] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [14]),
        .Q(\str_shift_reg[7] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [15]),
        .Q(\str_shift_reg[7] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [16]),
        .Q(\str_shift_reg[7] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [17]),
        .Q(\str_shift_reg[7] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [18]),
        .Q(\str_shift_reg[7] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [19]),
        .Q(\str_shift_reg[7] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [1]),
        .Q(\str_shift_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [20]),
        .Q(\str_shift_reg[7] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [21]),
        .Q(\str_shift_reg[7] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [22]),
        .Q(\str_shift_reg[7] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [23]),
        .Q(\str_shift_reg[7] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [24]),
        .Q(\str_shift_reg[7] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [25]),
        .Q(\str_shift_reg[7] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [26]),
        .Q(\str_shift_reg[7] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [27]),
        .Q(\str_shift_reg[7] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [28]),
        .Q(\str_shift_reg[7] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [29]),
        .Q(\str_shift_reg[7] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [2]),
        .Q(\str_shift_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [30]),
        .Q(\str_shift_reg[7] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [31]),
        .Q(\str_shift_reg[7] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [3]),
        .Q(\str_shift_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [4]),
        .Q(\str_shift_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [5]),
        .Q(\str_shift_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [6]),
        .Q(\str_shift_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [7]),
        .Q(\str_shift_reg[7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [8]),
        .Q(\str_shift_reg[7] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[7][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[6] [9]),
        .Q(\str_shift_reg[7] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [0]),
        .Q(\str_shift_reg[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [10]),
        .Q(\str_shift_reg[8] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [11]),
        .Q(\str_shift_reg[8] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [12]),
        .Q(\str_shift_reg[8] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [13]),
        .Q(\str_shift_reg[8] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [14]),
        .Q(\str_shift_reg[8] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [15]),
        .Q(\str_shift_reg[8] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [16]),
        .Q(\str_shift_reg[8] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [17]),
        .Q(\str_shift_reg[8] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [18]),
        .Q(\str_shift_reg[8] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [19]),
        .Q(\str_shift_reg[8] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [1]),
        .Q(\str_shift_reg[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [20]),
        .Q(\str_shift_reg[8] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [21]),
        .Q(\str_shift_reg[8] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [22]),
        .Q(\str_shift_reg[8] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [23]),
        .Q(\str_shift_reg[8] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [24]),
        .Q(\str_shift_reg[8] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [25]),
        .Q(\str_shift_reg[8] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [26]),
        .Q(\str_shift_reg[8] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [27]),
        .Q(\str_shift_reg[8] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [28]),
        .Q(\str_shift_reg[8] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [29]),
        .Q(\str_shift_reg[8] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [2]),
        .Q(\str_shift_reg[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [30]),
        .Q(\str_shift_reg[8] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [31]),
        .Q(\str_shift_reg[8] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [3]),
        .Q(\str_shift_reg[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [4]),
        .Q(\str_shift_reg[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [5]),
        .Q(\str_shift_reg[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [6]),
        .Q(\str_shift_reg[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [7]),
        .Q(\str_shift_reg[8] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [8]),
        .Q(\str_shift_reg[8] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[8][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[7] [9]),
        .Q(\str_shift_reg[8] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][0] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [0]),
        .Q(\str_shift_reg[9] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][10] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [10]),
        .Q(\str_shift_reg[9] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][11] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [11]),
        .Q(\str_shift_reg[9] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][12] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [12]),
        .Q(\str_shift_reg[9] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][13] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [13]),
        .Q(\str_shift_reg[9] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][14] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [14]),
        .Q(\str_shift_reg[9] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][15] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [15]),
        .Q(\str_shift_reg[9] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][16] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [16]),
        .Q(\str_shift_reg[9] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][17] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [17]),
        .Q(\str_shift_reg[9] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][18] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [18]),
        .Q(\str_shift_reg[9] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][19] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [19]),
        .Q(\str_shift_reg[9] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][1] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [1]),
        .Q(\str_shift_reg[9] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][20] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [20]),
        .Q(\str_shift_reg[9] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][21] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [21]),
        .Q(\str_shift_reg[9] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][22] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [22]),
        .Q(\str_shift_reg[9] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][23] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [23]),
        .Q(\str_shift_reg[9] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][24] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [24]),
        .Q(\str_shift_reg[9] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][25] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [25]),
        .Q(\str_shift_reg[9] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][26] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [26]),
        .Q(\str_shift_reg[9] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][27] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [27]),
        .Q(\str_shift_reg[9] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][28] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [28]),
        .Q(\str_shift_reg[9] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][29] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [29]),
        .Q(\str_shift_reg[9] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][2] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [2]),
        .Q(\str_shift_reg[9] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][30] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [30]),
        .Q(\str_shift_reg[9] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][31] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [31]),
        .Q(\str_shift_reg[9] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][3] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [3]),
        .Q(\str_shift_reg[9] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][4] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [4]),
        .Q(\str_shift_reg[9] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][5] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [5]),
        .Q(\str_shift_reg[9] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][6] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [6]),
        .Q(\str_shift_reg[9] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][7] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [7]),
        .Q(\str_shift_reg[9] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][8] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [8]),
        .Q(\str_shift_reg[9] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \str_shift_reg[9][9] 
       (.C(clk_core),
        .CE(upd_str_data),
        .CLR(axis_rst_n),
        .D(\str_shift_reg[8] [9]),
        .Q(\str_shift_reg[9] [9]));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[0]_i_2 
       (.I0(\mult_prod_reg[3]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[3]),
        .O(\sum[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[0]_i_3 
       (.I0(\mult_prod_reg[2]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[2]),
        .O(\sum[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[0]_i_4 
       (.I0(\mult_prod_reg[1]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[1]),
        .O(\sum[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[0]_i_5 
       (.I0(\mult_prod_reg[0]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[0]),
        .O(\sum[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[12]_i_2 
       (.I0(\mult_prod_reg[15]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[15]),
        .O(\sum[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[12]_i_3 
       (.I0(\mult_prod_reg[14]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[14]),
        .O(\sum[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[12]_i_4 
       (.I0(\mult_prod_reg[13]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[13]),
        .O(\sum[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[12]_i_5 
       (.I0(\mult_prod_reg[12]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[12]),
        .O(\sum[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[16]_i_2 
       (.I0(mult_prod_reg[19]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[19]),
        .O(\sum[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[16]_i_3 
       (.I0(mult_prod_reg[18]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[18]),
        .O(\sum[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[16]_i_4 
       (.I0(mult_prod_reg[17]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[17]),
        .O(\sum[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[16]_i_5 
       (.I0(mult_prod_reg[16]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[16]),
        .O(\sum[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[20]_i_2 
       (.I0(mult_prod_reg[23]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[23]),
        .O(\sum[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[20]_i_3 
       (.I0(mult_prod_reg[22]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[22]),
        .O(\sum[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[20]_i_4 
       (.I0(mult_prod_reg[21]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[21]),
        .O(\sum[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[20]_i_5 
       (.I0(mult_prod_reg[20]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[20]),
        .O(\sum[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[24]_i_2 
       (.I0(mult_prod_reg[27]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[27]),
        .O(\sum[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[24]_i_3 
       (.I0(mult_prod_reg[26]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[26]),
        .O(\sum[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[24]_i_4 
       (.I0(mult_prod_reg[25]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[25]),
        .O(\sum[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[24]_i_5 
       (.I0(mult_prod_reg[24]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[24]),
        .O(\sum[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[28]_i_2 
       (.I0(mult_prod_reg[31]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[31]),
        .O(\sum[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[28]_i_3 
       (.I0(mult_prod_reg[30]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[30]),
        .O(\sum[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[28]_i_4 
       (.I0(mult_prod_reg[29]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[29]),
        .O(\sum[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[28]_i_5 
       (.I0(mult_prod_reg[28]),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[28]),
        .O(\sum[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[4]_i_2 
       (.I0(\mult_prod_reg[7]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[7]),
        .O(\sum[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[4]_i_3 
       (.I0(\mult_prod_reg[6]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[6]),
        .O(\sum[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[4]_i_4 
       (.I0(\mult_prod_reg[5]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[5]),
        .O(\sum[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[4]_i_5 
       (.I0(\mult_prod_reg[4]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[4]),
        .O(\sum[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[8]_i_2 
       (.I0(\mult_prod_reg[11]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[11]),
        .O(\sum[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[8]_i_3 
       (.I0(\mult_prod_reg[10]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[10]),
        .O(\sum[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[8]_i_4 
       (.I0(\mult_prod_reg[9]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[9]),
        .O(\sum[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[8]_i_5 
       (.I0(\mult_prod_reg[8]__1_n_0 ),
        .I1(sm_tvalid_OBUF),
        .I2(sm_tdata_OBUF[8]),
        .O(\sum[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[0]_i_1_n_7 ),
        .Q(sm_tdata_OBUF[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg[0]_i_1_n_0 ,\sum_reg[0]_i_1_n_1 ,\sum_reg[0]_i_1_n_2 ,\sum_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mult_prod_reg[3]__1_n_0 ,\mult_prod_reg[2]__1_n_0 ,\mult_prod_reg[1]__1_n_0 ,\mult_prod_reg[0]__1_n_0 }),
        .O({\sum_reg[0]_i_1_n_4 ,\sum_reg[0]_i_1_n_5 ,\sum_reg[0]_i_1_n_6 ,\sum_reg[0]_i_1_n_7 }),
        .S({\sum[0]_i_2_n_0 ,\sum[0]_i_3_n_0 ,\sum[0]_i_4_n_0 ,\sum[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[8]_i_1_n_5 ),
        .Q(sm_tdata_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[8]_i_1_n_4 ),
        .Q(sm_tdata_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[12]_i_1_n_7 ),
        .Q(sm_tdata_OBUF[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_reg[12]_i_1 
       (.CI(\sum_reg[8]_i_1_n_0 ),
        .CO({\sum_reg[12]_i_1_n_0 ,\sum_reg[12]_i_1_n_1 ,\sum_reg[12]_i_1_n_2 ,\sum_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mult_prod_reg[15]__1_n_0 ,\mult_prod_reg[14]__1_n_0 ,\mult_prod_reg[13]__1_n_0 ,\mult_prod_reg[12]__1_n_0 }),
        .O({\sum_reg[12]_i_1_n_4 ,\sum_reg[12]_i_1_n_5 ,\sum_reg[12]_i_1_n_6 ,\sum_reg[12]_i_1_n_7 }),
        .S({\sum[12]_i_2_n_0 ,\sum[12]_i_3_n_0 ,\sum[12]_i_4_n_0 ,\sum[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[12]_i_1_n_6 ),
        .Q(sm_tdata_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[12]_i_1_n_5 ),
        .Q(sm_tdata_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[12]_i_1_n_4 ),
        .Q(sm_tdata_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[16]_i_1_n_7 ),
        .Q(sm_tdata_OBUF[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_reg[16]_i_1 
       (.CI(\sum_reg[12]_i_1_n_0 ),
        .CO({\sum_reg[16]_i_1_n_0 ,\sum_reg[16]_i_1_n_1 ,\sum_reg[16]_i_1_n_2 ,\sum_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_prod_reg[19:16]),
        .O({\sum_reg[16]_i_1_n_4 ,\sum_reg[16]_i_1_n_5 ,\sum_reg[16]_i_1_n_6 ,\sum_reg[16]_i_1_n_7 }),
        .S({\sum[16]_i_2_n_0 ,\sum[16]_i_3_n_0 ,\sum[16]_i_4_n_0 ,\sum[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[16]_i_1_n_6 ),
        .Q(sm_tdata_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[16]_i_1_n_5 ),
        .Q(sm_tdata_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[16]_i_1_n_4 ),
        .Q(sm_tdata_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[0]_i_1_n_6 ),
        .Q(sm_tdata_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[20]_i_1_n_7 ),
        .Q(sm_tdata_OBUF[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_reg[20]_i_1 
       (.CI(\sum_reg[16]_i_1_n_0 ),
        .CO({\sum_reg[20]_i_1_n_0 ,\sum_reg[20]_i_1_n_1 ,\sum_reg[20]_i_1_n_2 ,\sum_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_prod_reg[23:20]),
        .O({\sum_reg[20]_i_1_n_4 ,\sum_reg[20]_i_1_n_5 ,\sum_reg[20]_i_1_n_6 ,\sum_reg[20]_i_1_n_7 }),
        .S({\sum[20]_i_2_n_0 ,\sum[20]_i_3_n_0 ,\sum[20]_i_4_n_0 ,\sum[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[20]_i_1_n_6 ),
        .Q(sm_tdata_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[20]_i_1_n_5 ),
        .Q(sm_tdata_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[20]_i_1_n_4 ),
        .Q(sm_tdata_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[24]_i_1_n_7 ),
        .Q(sm_tdata_OBUF[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_reg[24]_i_1 
       (.CI(\sum_reg[20]_i_1_n_0 ),
        .CO({\sum_reg[24]_i_1_n_0 ,\sum_reg[24]_i_1_n_1 ,\sum_reg[24]_i_1_n_2 ,\sum_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_prod_reg[27:24]),
        .O({\sum_reg[24]_i_1_n_4 ,\sum_reg[24]_i_1_n_5 ,\sum_reg[24]_i_1_n_6 ,\sum_reg[24]_i_1_n_7 }),
        .S({\sum[24]_i_2_n_0 ,\sum[24]_i_3_n_0 ,\sum[24]_i_4_n_0 ,\sum[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[24]_i_1_n_6 ),
        .Q(sm_tdata_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[24]_i_1_n_5 ),
        .Q(sm_tdata_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[24]_i_1_n_4 ),
        .Q(sm_tdata_OBUF[27]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[28]_i_1_n_7 ),
        .Q(sm_tdata_OBUF[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_reg[28]_i_1 
       (.CI(\sum_reg[24]_i_1_n_0 ),
        .CO({\NLW_sum_reg[28]_i_1_CO_UNCONNECTED [3],\sum_reg[28]_i_1_n_1 ,\sum_reg[28]_i_1_n_2 ,\sum_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mult_prod_reg[30:28]}),
        .O({\sum_reg[28]_i_1_n_4 ,\sum_reg[28]_i_1_n_5 ,\sum_reg[28]_i_1_n_6 ,\sum_reg[28]_i_1_n_7 }),
        .S({\sum[28]_i_2_n_0 ,\sum[28]_i_3_n_0 ,\sum[28]_i_4_n_0 ,\sum[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[28]_i_1_n_6 ),
        .Q(sm_tdata_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[0]_i_1_n_5 ),
        .Q(sm_tdata_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[28]_i_1_n_5 ),
        .Q(sm_tdata_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[28]_i_1_n_4 ),
        .Q(sm_tdata_OBUF[31]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[0]_i_1_n_4 ),
        .Q(sm_tdata_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[4]_i_1_n_7 ),
        .Q(sm_tdata_OBUF[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_reg[4]_i_1 
       (.CI(\sum_reg[0]_i_1_n_0 ),
        .CO({\sum_reg[4]_i_1_n_0 ,\sum_reg[4]_i_1_n_1 ,\sum_reg[4]_i_1_n_2 ,\sum_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mult_prod_reg[7]__1_n_0 ,\mult_prod_reg[6]__1_n_0 ,\mult_prod_reg[5]__1_n_0 ,\mult_prod_reg[4]__1_n_0 }),
        .O({\sum_reg[4]_i_1_n_4 ,\sum_reg[4]_i_1_n_5 ,\sum_reg[4]_i_1_n_6 ,\sum_reg[4]_i_1_n_7 }),
        .S({\sum[4]_i_2_n_0 ,\sum[4]_i_3_n_0 ,\sum[4]_i_4_n_0 ,\sum[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[4]_i_1_n_6 ),
        .Q(sm_tdata_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[4]_i_1_n_5 ),
        .Q(sm_tdata_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[4]_i_1_n_4 ),
        .Q(sm_tdata_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[8]_i_1_n_7 ),
        .Q(sm_tdata_OBUF[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_reg[8]_i_1 
       (.CI(\sum_reg[4]_i_1_n_0 ),
        .CO({\sum_reg[8]_i_1_n_0 ,\sum_reg[8]_i_1_n_1 ,\sum_reg[8]_i_1_n_2 ,\sum_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mult_prod_reg[11]__1_n_0 ,\mult_prod_reg[10]__1_n_0 ,\mult_prod_reg[9]__1_n_0 ,\mult_prod_reg[8]__1_n_0 }),
        .O({\sum_reg[8]_i_1_n_4 ,\sum_reg[8]_i_1_n_5 ,\sum_reg[8]_i_1_n_6 ,\sum_reg[8]_i_1_n_7 }),
        .S({\sum[8]_i_2_n_0 ,\sum[8]_i_3_n_0 ,\sum[8]_i_4_n_0 ,\sum[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_core),
        .CE(1'b1),
        .CLR(axis_rst_n),
        .D(\sum_reg[8]_i_1_n_6 ),
        .Q(sm_tdata_OBUF[9]));
endmodule

(* Tape_Num = "11" *) (* pADDR_WIDTH = "12" *) (* pDATA_WIDTH = "32" *) 
(* NotValidForBitStream *)
module fir
   (awready,
    wready,
    awvalid,
    awaddr,
    wvalid,
    wdata,
    arready,
    rready,
    arvalid,
    araddr,
    rvalid,
    rdata,
    ss_tvalid,
    ss_tdata,
    ss_tlast,
    ss_tready,
    sm_tready,
    sm_tvalid,
    sm_tdata,
    sm_tlast,
    tap_WE,
    tap_EN,
    tap_Di,
    tap_A,
    tap_Do,
    data_WE,
    data_EN,
    data_Di,
    data_A,
    data_Do,
    axis_clk,
    axis_rst_n);
  output awready;
  output wready;
  input awvalid;
  input [11:0]awaddr;
  input wvalid;
  input [31:0]wdata;
  output arready;
  input rready;
  input arvalid;
  input [11:0]araddr;
  output rvalid;
  output [31:0]rdata;
  input ss_tvalid;
  input [31:0]ss_tdata;
  input ss_tlast;
  output ss_tready;
  input sm_tready;
  output sm_tvalid;
  output [31:0]sm_tdata;
  output sm_tlast;
  output [3:0]tap_WE;
  output tap_EN;
  output [31:0]tap_Di;
  output [11:0]tap_A;
  input [31:0]tap_Do;
  output [3:0]data_WE;
  output data_EN;
  output [31:0]data_Di;
  output [11:0]data_A;
  input [31:0]data_Do;
  input axis_clk;
  input axis_rst_n;

  wire [11:0]araddr;
  wire [11:0]araddr_IBUF;
  wire arready;
  wire arready_OBUF;
  wire arvalid;
  wire arvalid_IBUF;
  wire [11:0]awaddr;
  wire [11:0]awaddr_IBUF;
  wire awready;
  wire awvalid;
  wire awvalid_IBUF;
  wire axi_intf_inst_n_59;
  wire axis_clk;
  wire axis_clk_IBUF;
  wire axis_clk_IBUF_BUFG;
  wire axis_rst_n;
  wire axis_rst_n_IBUF;
  wire clk_core;
  wire [11:0]data_A;
  wire [5:2]data_A_OBUF;
  wire [31:0]data_Di;
  wire [31:0]data_Di_OBUF;
  wire [31:0]data_Do;
  wire [31:0]data_Do_IBUF;
  wire data_EN;
  wire data_EN_OBUF;
  wire [3:0]data_WE;
  wire [0:0]data_WE_OBUF;
  wire fir_core_inst_n_0;
  wire fir_core_inst_n_1;
  wire mult_prod0_carry_i_7_n_0;
  wire num_vld0;
  wire rd_en_fifo0;
  wire rd_en_fifo_1;
  wire rd_en_source_2;
  wire [31:0]rdata;
  wire [31:0]rdata_OBUF;
  wire rvalid;
  wire rvalid_OBUF;
  wire [31:0]sm_tdata;
  wire [31:0]sm_tdata_OBUF;
  wire sm_tlast;
  wire sm_tlast_OBUF;
  wire sm_tready;
  wire sm_tready_IBUF;
  wire sm_tvalid;
  wire sm_tvalid_OBUF;
  wire [31:0]ss_tdata;
  wire ss_tlast;
  wire ss_tlast_IBUF;
  wire ss_tready;
  wire ss_tready_OBUF;
  wire ss_tvalid;
  wire ss_tvalid_IBUF;
  wire [11:0]tap_A;
  wire [11:0]tap_A_OBUF;
  wire [31:0]tap_Di;
  wire [31:0]tap_Di_OBUF;
  wire [31:0]tap_Do;
  wire [31:0]tap_Do_IBUF;
  wire tap_EN;
  wire tap_EN_OBUF;
  wire [3:0]tap_WE;
  wire [0:0]tap_WE_OBUF;
  wire upd_str_data;
  wire [31:0]wdata;
  wire [31:0]wdata_IBUF;
  wire wready;
  wire wready_OBUF;
  wire wvalid;
  wire wvalid_IBUF;

initial begin
 $sdf_annotate("fir_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \araddr_IBUF[0]_inst 
       (.I(araddr[0]),
        .O(araddr_IBUF[0]));
  IBUF \araddr_IBUF[10]_inst 
       (.I(araddr[10]),
        .O(araddr_IBUF[10]));
  IBUF \araddr_IBUF[11]_inst 
       (.I(araddr[11]),
        .O(araddr_IBUF[11]));
  IBUF \araddr_IBUF[1]_inst 
       (.I(araddr[1]),
        .O(araddr_IBUF[1]));
  IBUF \araddr_IBUF[2]_inst 
       (.I(araddr[2]),
        .O(araddr_IBUF[2]));
  IBUF \araddr_IBUF[3]_inst 
       (.I(araddr[3]),
        .O(araddr_IBUF[3]));
  IBUF \araddr_IBUF[4]_inst 
       (.I(araddr[4]),
        .O(araddr_IBUF[4]));
  IBUF \araddr_IBUF[5]_inst 
       (.I(araddr[5]),
        .O(araddr_IBUF[5]));
  IBUF \araddr_IBUF[6]_inst 
       (.I(araddr[6]),
        .O(araddr_IBUF[6]));
  IBUF \araddr_IBUF[7]_inst 
       (.I(araddr[7]),
        .O(araddr_IBUF[7]));
  IBUF \araddr_IBUF[8]_inst 
       (.I(araddr[8]),
        .O(araddr_IBUF[8]));
  IBUF \araddr_IBUF[9]_inst 
       (.I(araddr[9]),
        .O(araddr_IBUF[9]));
  OBUF arready_OBUF_inst
       (.I(arready_OBUF),
        .O(arready));
  IBUF arvalid_IBUF_inst
       (.I(arvalid),
        .O(arvalid_IBUF));
  IBUF \awaddr_IBUF[0]_inst 
       (.I(awaddr[0]),
        .O(awaddr_IBUF[0]));
  IBUF \awaddr_IBUF[10]_inst 
       (.I(awaddr[10]),
        .O(awaddr_IBUF[10]));
  IBUF \awaddr_IBUF[11]_inst 
       (.I(awaddr[11]),
        .O(awaddr_IBUF[11]));
  IBUF \awaddr_IBUF[1]_inst 
       (.I(awaddr[1]),
        .O(awaddr_IBUF[1]));
  IBUF \awaddr_IBUF[2]_inst 
       (.I(awaddr[2]),
        .O(awaddr_IBUF[2]));
  IBUF \awaddr_IBUF[3]_inst 
       (.I(awaddr[3]),
        .O(awaddr_IBUF[3]));
  IBUF \awaddr_IBUF[4]_inst 
       (.I(awaddr[4]),
        .O(awaddr_IBUF[4]));
  IBUF \awaddr_IBUF[5]_inst 
       (.I(awaddr[5]),
        .O(awaddr_IBUF[5]));
  IBUF \awaddr_IBUF[6]_inst 
       (.I(awaddr[6]),
        .O(awaddr_IBUF[6]));
  IBUF \awaddr_IBUF[7]_inst 
       (.I(awaddr[7]),
        .O(awaddr_IBUF[7]));
  IBUF \awaddr_IBUF[8]_inst 
       (.I(awaddr[8]),
        .O(awaddr_IBUF[8]));
  IBUF \awaddr_IBUF[9]_inst 
       (.I(awaddr[9]),
        .O(awaddr_IBUF[9]));
  OBUF awready_OBUF_inst
       (.I(wready_OBUF),
        .O(awready));
  IBUF awvalid_IBUF_inst
       (.I(awvalid),
        .O(awvalid_IBUF));
  AXI_INTERACE axi_intf_inst
       (.CLK(axis_clk_IBUF_BUFG),
        .D(wdata_IBUF),
        .E(rd_en_fifo0),
        .Q(axi_intf_inst_n_59),
        .araddr_IBUF(araddr_IBUF),
        .arready_OBUF(arready_OBUF),
        .arvalid_IBUF(arvalid_IBUF),
        .awaddr_IBUF(awaddr_IBUF),
        .awvalid_IBUF(awvalid_IBUF),
        .axis_clk_IBUF(axis_clk_IBUF),
        .axis_rst_n_IBUF(axis_rst_n_IBUF),
        .data_A_OBUF(data_A_OBUF),
        .data_EN_OBUF(data_EN_OBUF),
        .data_WE_OBUF(data_WE_OBUF),
        .not_sleep_ext_reg(fir_core_inst_n_1),
        .\num_vld_reg[31]_0 (num_vld0),
        .rd_en_fifo_1(rd_en_fifo_1),
        .rd_en_source_2(rd_en_source_2),
        .rdata_OBUF(rdata_OBUF),
        .rvalid_OBUF(rvalid_OBUF),
        .sm_tlast_OBUF(sm_tlast_OBUF),
        .sm_tready_IBUF(sm_tready_IBUF),
        .ss_tlast_IBUF(ss_tlast_IBUF),
        .ss_tready_OBUF(ss_tready_OBUF),
        .ss_tvalid_IBUF(ss_tvalid_IBUF),
        .tap_A_OBUF(tap_A_OBUF),
        .tap_Di_OBUF(tap_Di_OBUF),
        .tap_Do_IBUF(tap_Do_IBUF),
        .tap_EN_OBUF(tap_EN_OBUF),
        .tap_WE_OBUF(tap_WE_OBUF),
        .upd_str_data(upd_str_data),
        .wready_OBUF(wready_OBUF),
        .wvalid_IBUF(wvalid_IBUF));
  BUFG axis_clk_IBUF_BUFG_inst
       (.I(axis_clk_IBUF),
        .O(axis_clk_IBUF_BUFG));
  IBUF axis_clk_IBUF_inst
       (.I(axis_clk),
        .O(axis_clk_IBUF));
  IBUF axis_rst_n_IBUF_inst
       (.I(axis_rst_n),
        .O(axis_rst_n_IBUF));
  OBUF \data_A_OBUF[0]_inst 
       (.I(1'b0),
        .O(data_A[0]));
  OBUF \data_A_OBUF[10]_inst 
       (.I(1'b0),
        .O(data_A[10]));
  OBUF \data_A_OBUF[11]_inst 
       (.I(1'b0),
        .O(data_A[11]));
  OBUF \data_A_OBUF[1]_inst 
       (.I(1'b0),
        .O(data_A[1]));
  OBUF \data_A_OBUF[2]_inst 
       (.I(data_A_OBUF[2]),
        .O(data_A[2]));
  OBUF \data_A_OBUF[3]_inst 
       (.I(data_A_OBUF[3]),
        .O(data_A[3]));
  OBUF \data_A_OBUF[4]_inst 
       (.I(data_A_OBUF[4]),
        .O(data_A[4]));
  OBUF \data_A_OBUF[5]_inst 
       (.I(data_A_OBUF[5]),
        .O(data_A[5]));
  OBUF \data_A_OBUF[6]_inst 
       (.I(1'b0),
        .O(data_A[6]));
  OBUF \data_A_OBUF[7]_inst 
       (.I(1'b0),
        .O(data_A[7]));
  OBUF \data_A_OBUF[8]_inst 
       (.I(1'b0),
        .O(data_A[8]));
  OBUF \data_A_OBUF[9]_inst 
       (.I(1'b0),
        .O(data_A[9]));
  OBUF \data_Di_OBUF[0]_inst 
       (.I(data_Di_OBUF[0]),
        .O(data_Di[0]));
  OBUF \data_Di_OBUF[10]_inst 
       (.I(data_Di_OBUF[10]),
        .O(data_Di[10]));
  OBUF \data_Di_OBUF[11]_inst 
       (.I(data_Di_OBUF[11]),
        .O(data_Di[11]));
  OBUF \data_Di_OBUF[12]_inst 
       (.I(data_Di_OBUF[12]),
        .O(data_Di[12]));
  OBUF \data_Di_OBUF[13]_inst 
       (.I(data_Di_OBUF[13]),
        .O(data_Di[13]));
  OBUF \data_Di_OBUF[14]_inst 
       (.I(data_Di_OBUF[14]),
        .O(data_Di[14]));
  OBUF \data_Di_OBUF[15]_inst 
       (.I(data_Di_OBUF[15]),
        .O(data_Di[15]));
  OBUF \data_Di_OBUF[16]_inst 
       (.I(data_Di_OBUF[16]),
        .O(data_Di[16]));
  OBUF \data_Di_OBUF[17]_inst 
       (.I(data_Di_OBUF[17]),
        .O(data_Di[17]));
  OBUF \data_Di_OBUF[18]_inst 
       (.I(data_Di_OBUF[18]),
        .O(data_Di[18]));
  OBUF \data_Di_OBUF[19]_inst 
       (.I(data_Di_OBUF[19]),
        .O(data_Di[19]));
  OBUF \data_Di_OBUF[1]_inst 
       (.I(data_Di_OBUF[1]),
        .O(data_Di[1]));
  OBUF \data_Di_OBUF[20]_inst 
       (.I(data_Di_OBUF[20]),
        .O(data_Di[20]));
  OBUF \data_Di_OBUF[21]_inst 
       (.I(data_Di_OBUF[21]),
        .O(data_Di[21]));
  OBUF \data_Di_OBUF[22]_inst 
       (.I(data_Di_OBUF[22]),
        .O(data_Di[22]));
  OBUF \data_Di_OBUF[23]_inst 
       (.I(data_Di_OBUF[23]),
        .O(data_Di[23]));
  OBUF \data_Di_OBUF[24]_inst 
       (.I(data_Di_OBUF[24]),
        .O(data_Di[24]));
  OBUF \data_Di_OBUF[25]_inst 
       (.I(data_Di_OBUF[25]),
        .O(data_Di[25]));
  OBUF \data_Di_OBUF[26]_inst 
       (.I(data_Di_OBUF[26]),
        .O(data_Di[26]));
  OBUF \data_Di_OBUF[27]_inst 
       (.I(data_Di_OBUF[27]),
        .O(data_Di[27]));
  OBUF \data_Di_OBUF[28]_inst 
       (.I(data_Di_OBUF[28]),
        .O(data_Di[28]));
  OBUF \data_Di_OBUF[29]_inst 
       (.I(data_Di_OBUF[29]),
        .O(data_Di[29]));
  OBUF \data_Di_OBUF[2]_inst 
       (.I(data_Di_OBUF[2]),
        .O(data_Di[2]));
  OBUF \data_Di_OBUF[30]_inst 
       (.I(data_Di_OBUF[30]),
        .O(data_Di[30]));
  OBUF \data_Di_OBUF[31]_inst 
       (.I(data_Di_OBUF[31]),
        .O(data_Di[31]));
  OBUF \data_Di_OBUF[3]_inst 
       (.I(data_Di_OBUF[3]),
        .O(data_Di[3]));
  OBUF \data_Di_OBUF[4]_inst 
       (.I(data_Di_OBUF[4]),
        .O(data_Di[4]));
  OBUF \data_Di_OBUF[5]_inst 
       (.I(data_Di_OBUF[5]),
        .O(data_Di[5]));
  OBUF \data_Di_OBUF[6]_inst 
       (.I(data_Di_OBUF[6]),
        .O(data_Di[6]));
  OBUF \data_Di_OBUF[7]_inst 
       (.I(data_Di_OBUF[7]),
        .O(data_Di[7]));
  OBUF \data_Di_OBUF[8]_inst 
       (.I(data_Di_OBUF[8]),
        .O(data_Di[8]));
  OBUF \data_Di_OBUF[9]_inst 
       (.I(data_Di_OBUF[9]),
        .O(data_Di[9]));
  IBUF \data_Do_IBUF[0]_inst 
       (.I(data_Do[0]),
        .O(data_Do_IBUF[0]));
  IBUF \data_Do_IBUF[10]_inst 
       (.I(data_Do[10]),
        .O(data_Do_IBUF[10]));
  IBUF \data_Do_IBUF[11]_inst 
       (.I(data_Do[11]),
        .O(data_Do_IBUF[11]));
  IBUF \data_Do_IBUF[12]_inst 
       (.I(data_Do[12]),
        .O(data_Do_IBUF[12]));
  IBUF \data_Do_IBUF[13]_inst 
       (.I(data_Do[13]),
        .O(data_Do_IBUF[13]));
  IBUF \data_Do_IBUF[14]_inst 
       (.I(data_Do[14]),
        .O(data_Do_IBUF[14]));
  IBUF \data_Do_IBUF[15]_inst 
       (.I(data_Do[15]),
        .O(data_Do_IBUF[15]));
  IBUF \data_Do_IBUF[16]_inst 
       (.I(data_Do[16]),
        .O(data_Do_IBUF[16]));
  IBUF \data_Do_IBUF[17]_inst 
       (.I(data_Do[17]),
        .O(data_Do_IBUF[17]));
  IBUF \data_Do_IBUF[18]_inst 
       (.I(data_Do[18]),
        .O(data_Do_IBUF[18]));
  IBUF \data_Do_IBUF[19]_inst 
       (.I(data_Do[19]),
        .O(data_Do_IBUF[19]));
  IBUF \data_Do_IBUF[1]_inst 
       (.I(data_Do[1]),
        .O(data_Do_IBUF[1]));
  IBUF \data_Do_IBUF[20]_inst 
       (.I(data_Do[20]),
        .O(data_Do_IBUF[20]));
  IBUF \data_Do_IBUF[21]_inst 
       (.I(data_Do[21]),
        .O(data_Do_IBUF[21]));
  IBUF \data_Do_IBUF[22]_inst 
       (.I(data_Do[22]),
        .O(data_Do_IBUF[22]));
  IBUF \data_Do_IBUF[23]_inst 
       (.I(data_Do[23]),
        .O(data_Do_IBUF[23]));
  IBUF \data_Do_IBUF[24]_inst 
       (.I(data_Do[24]),
        .O(data_Do_IBUF[24]));
  IBUF \data_Do_IBUF[25]_inst 
       (.I(data_Do[25]),
        .O(data_Do_IBUF[25]));
  IBUF \data_Do_IBUF[26]_inst 
       (.I(data_Do[26]),
        .O(data_Do_IBUF[26]));
  IBUF \data_Do_IBUF[27]_inst 
       (.I(data_Do[27]),
        .O(data_Do_IBUF[27]));
  IBUF \data_Do_IBUF[28]_inst 
       (.I(data_Do[28]),
        .O(data_Do_IBUF[28]));
  IBUF \data_Do_IBUF[29]_inst 
       (.I(data_Do[29]),
        .O(data_Do_IBUF[29]));
  IBUF \data_Do_IBUF[2]_inst 
       (.I(data_Do[2]),
        .O(data_Do_IBUF[2]));
  IBUF \data_Do_IBUF[30]_inst 
       (.I(data_Do[30]),
        .O(data_Do_IBUF[30]));
  IBUF \data_Do_IBUF[31]_inst 
       (.I(data_Do[31]),
        .O(data_Do_IBUF[31]));
  IBUF \data_Do_IBUF[3]_inst 
       (.I(data_Do[3]),
        .O(data_Do_IBUF[3]));
  IBUF \data_Do_IBUF[4]_inst 
       (.I(data_Do[4]),
        .O(data_Do_IBUF[4]));
  IBUF \data_Do_IBUF[5]_inst 
       (.I(data_Do[5]),
        .O(data_Do_IBUF[5]));
  IBUF \data_Do_IBUF[6]_inst 
       (.I(data_Do[6]),
        .O(data_Do_IBUF[6]));
  IBUF \data_Do_IBUF[7]_inst 
       (.I(data_Do[7]),
        .O(data_Do_IBUF[7]));
  IBUF \data_Do_IBUF[8]_inst 
       (.I(data_Do[8]),
        .O(data_Do_IBUF[8]));
  IBUF \data_Do_IBUF[9]_inst 
       (.I(data_Do[9]),
        .O(data_Do_IBUF[9]));
  OBUF data_EN_OBUF_inst
       (.I(data_EN_OBUF),
        .O(data_EN));
  OBUF \data_WE_OBUF[0]_inst 
       (.I(data_WE_OBUF),
        .O(data_WE[0]));
  OBUF \data_WE_OBUF[1]_inst 
       (.I(data_WE_OBUF),
        .O(data_WE[1]));
  OBUF \data_WE_OBUF[2]_inst 
       (.I(data_WE_OBUF),
        .O(data_WE[2]));
  OBUF \data_WE_OBUF[3]_inst 
       (.I(data_WE_OBUF),
        .O(data_WE[3]));
  FIR_CORE fir_core_inst
       (.CLK(axis_clk_IBUF_BUFG),
        .D(data_Do_IBUF),
        .E(rd_en_fifo0),
        .\FSM_onehot_state_running_reg[1] (num_vld0),
        .Q(axi_intf_inst_n_59),
        .axis_rst_n(fir_core_inst_n_1),
        .axis_rst_n_IBUF(axis_rst_n_IBUF),
        .clk_core(clk_core),
        .mult_prod0_carry__2_0(mult_prod0_carry_i_7_n_0),
        .rd_en_fifo_1(rd_en_fifo_1),
        .rd_en_source_2(rd_en_source_2),
        .rd_en_source_2_reg(fir_core_inst_n_0),
        .sm_tdata_OBUF(sm_tdata_OBUF),
        .sm_tvalid_OBUF(sm_tvalid_OBUF),
        .tap_Do_IBUF(tap_Do_IBUF),
        .upd_str_data(upd_str_data));
  FDCE #(
    .INIT(1'b0)) 
    mult_prod0_carry_i_7
       (.C(clk_core),
        .CE(1'b1),
        .CLR(fir_core_inst_n_1),
        .D(1'b1),
        .Q(mult_prod0_carry_i_7_n_0));
  OBUF \rdata_OBUF[0]_inst 
       (.I(rdata_OBUF[0]),
        .O(rdata[0]));
  OBUF \rdata_OBUF[10]_inst 
       (.I(rdata_OBUF[10]),
        .O(rdata[10]));
  OBUF \rdata_OBUF[11]_inst 
       (.I(rdata_OBUF[11]),
        .O(rdata[11]));
  OBUF \rdata_OBUF[12]_inst 
       (.I(rdata_OBUF[12]),
        .O(rdata[12]));
  OBUF \rdata_OBUF[13]_inst 
       (.I(rdata_OBUF[13]),
        .O(rdata[13]));
  OBUF \rdata_OBUF[14]_inst 
       (.I(rdata_OBUF[14]),
        .O(rdata[14]));
  OBUF \rdata_OBUF[15]_inst 
       (.I(rdata_OBUF[15]),
        .O(rdata[15]));
  OBUF \rdata_OBUF[16]_inst 
       (.I(rdata_OBUF[16]),
        .O(rdata[16]));
  OBUF \rdata_OBUF[17]_inst 
       (.I(rdata_OBUF[17]),
        .O(rdata[17]));
  OBUF \rdata_OBUF[18]_inst 
       (.I(rdata_OBUF[18]),
        .O(rdata[18]));
  OBUF \rdata_OBUF[19]_inst 
       (.I(rdata_OBUF[19]),
        .O(rdata[19]));
  OBUF \rdata_OBUF[1]_inst 
       (.I(rdata_OBUF[1]),
        .O(rdata[1]));
  OBUF \rdata_OBUF[20]_inst 
       (.I(rdata_OBUF[20]),
        .O(rdata[20]));
  OBUF \rdata_OBUF[21]_inst 
       (.I(rdata_OBUF[21]),
        .O(rdata[21]));
  OBUF \rdata_OBUF[22]_inst 
       (.I(rdata_OBUF[22]),
        .O(rdata[22]));
  OBUF \rdata_OBUF[23]_inst 
       (.I(rdata_OBUF[23]),
        .O(rdata[23]));
  OBUF \rdata_OBUF[24]_inst 
       (.I(rdata_OBUF[24]),
        .O(rdata[24]));
  OBUF \rdata_OBUF[25]_inst 
       (.I(rdata_OBUF[25]),
        .O(rdata[25]));
  OBUF \rdata_OBUF[26]_inst 
       (.I(rdata_OBUF[26]),
        .O(rdata[26]));
  OBUF \rdata_OBUF[27]_inst 
       (.I(rdata_OBUF[27]),
        .O(rdata[27]));
  OBUF \rdata_OBUF[28]_inst 
       (.I(rdata_OBUF[28]),
        .O(rdata[28]));
  OBUF \rdata_OBUF[29]_inst 
       (.I(rdata_OBUF[29]),
        .O(rdata[29]));
  OBUF \rdata_OBUF[2]_inst 
       (.I(rdata_OBUF[2]),
        .O(rdata[2]));
  OBUF \rdata_OBUF[30]_inst 
       (.I(rdata_OBUF[30]),
        .O(rdata[30]));
  OBUF \rdata_OBUF[31]_inst 
       (.I(rdata_OBUF[31]),
        .O(rdata[31]));
  OBUF \rdata_OBUF[3]_inst 
       (.I(rdata_OBUF[3]),
        .O(rdata[3]));
  OBUF \rdata_OBUF[4]_inst 
       (.I(rdata_OBUF[4]),
        .O(rdata[4]));
  OBUF \rdata_OBUF[5]_inst 
       (.I(rdata_OBUF[5]),
        .O(rdata[5]));
  OBUF \rdata_OBUF[6]_inst 
       (.I(rdata_OBUF[6]),
        .O(rdata[6]));
  OBUF \rdata_OBUF[7]_inst 
       (.I(rdata_OBUF[7]),
        .O(rdata[7]));
  OBUF \rdata_OBUF[8]_inst 
       (.I(rdata_OBUF[8]),
        .O(rdata[8]));
  OBUF \rdata_OBUF[9]_inst 
       (.I(rdata_OBUF[9]),
        .O(rdata[9]));
  OBUF rvalid_OBUF_inst
       (.I(rvalid_OBUF),
        .O(rvalid));
  BUFG shift_upd_pre_reg_i_2
       (.I(fir_core_inst_n_0),
        .O(clk_core));
  OBUF \sm_tdata_OBUF[0]_inst 
       (.I(sm_tdata_OBUF[0]),
        .O(sm_tdata[0]));
  OBUF \sm_tdata_OBUF[10]_inst 
       (.I(sm_tdata_OBUF[10]),
        .O(sm_tdata[10]));
  OBUF \sm_tdata_OBUF[11]_inst 
       (.I(sm_tdata_OBUF[11]),
        .O(sm_tdata[11]));
  OBUF \sm_tdata_OBUF[12]_inst 
       (.I(sm_tdata_OBUF[12]),
        .O(sm_tdata[12]));
  OBUF \sm_tdata_OBUF[13]_inst 
       (.I(sm_tdata_OBUF[13]),
        .O(sm_tdata[13]));
  OBUF \sm_tdata_OBUF[14]_inst 
       (.I(sm_tdata_OBUF[14]),
        .O(sm_tdata[14]));
  OBUF \sm_tdata_OBUF[15]_inst 
       (.I(sm_tdata_OBUF[15]),
        .O(sm_tdata[15]));
  OBUF \sm_tdata_OBUF[16]_inst 
       (.I(sm_tdata_OBUF[16]),
        .O(sm_tdata[16]));
  OBUF \sm_tdata_OBUF[17]_inst 
       (.I(sm_tdata_OBUF[17]),
        .O(sm_tdata[17]));
  OBUF \sm_tdata_OBUF[18]_inst 
       (.I(sm_tdata_OBUF[18]),
        .O(sm_tdata[18]));
  OBUF \sm_tdata_OBUF[19]_inst 
       (.I(sm_tdata_OBUF[19]),
        .O(sm_tdata[19]));
  OBUF \sm_tdata_OBUF[1]_inst 
       (.I(sm_tdata_OBUF[1]),
        .O(sm_tdata[1]));
  OBUF \sm_tdata_OBUF[20]_inst 
       (.I(sm_tdata_OBUF[20]),
        .O(sm_tdata[20]));
  OBUF \sm_tdata_OBUF[21]_inst 
       (.I(sm_tdata_OBUF[21]),
        .O(sm_tdata[21]));
  OBUF \sm_tdata_OBUF[22]_inst 
       (.I(sm_tdata_OBUF[22]),
        .O(sm_tdata[22]));
  OBUF \sm_tdata_OBUF[23]_inst 
       (.I(sm_tdata_OBUF[23]),
        .O(sm_tdata[23]));
  OBUF \sm_tdata_OBUF[24]_inst 
       (.I(sm_tdata_OBUF[24]),
        .O(sm_tdata[24]));
  OBUF \sm_tdata_OBUF[25]_inst 
       (.I(sm_tdata_OBUF[25]),
        .O(sm_tdata[25]));
  OBUF \sm_tdata_OBUF[26]_inst 
       (.I(sm_tdata_OBUF[26]),
        .O(sm_tdata[26]));
  OBUF \sm_tdata_OBUF[27]_inst 
       (.I(sm_tdata_OBUF[27]),
        .O(sm_tdata[27]));
  OBUF \sm_tdata_OBUF[28]_inst 
       (.I(sm_tdata_OBUF[28]),
        .O(sm_tdata[28]));
  OBUF \sm_tdata_OBUF[29]_inst 
       (.I(sm_tdata_OBUF[29]),
        .O(sm_tdata[29]));
  OBUF \sm_tdata_OBUF[2]_inst 
       (.I(sm_tdata_OBUF[2]),
        .O(sm_tdata[2]));
  OBUF \sm_tdata_OBUF[30]_inst 
       (.I(sm_tdata_OBUF[30]),
        .O(sm_tdata[30]));
  OBUF \sm_tdata_OBUF[31]_inst 
       (.I(sm_tdata_OBUF[31]),
        .O(sm_tdata[31]));
  OBUF \sm_tdata_OBUF[3]_inst 
       (.I(sm_tdata_OBUF[3]),
        .O(sm_tdata[3]));
  OBUF \sm_tdata_OBUF[4]_inst 
       (.I(sm_tdata_OBUF[4]),
        .O(sm_tdata[4]));
  OBUF \sm_tdata_OBUF[5]_inst 
       (.I(sm_tdata_OBUF[5]),
        .O(sm_tdata[5]));
  OBUF \sm_tdata_OBUF[6]_inst 
       (.I(sm_tdata_OBUF[6]),
        .O(sm_tdata[6]));
  OBUF \sm_tdata_OBUF[7]_inst 
       (.I(sm_tdata_OBUF[7]),
        .O(sm_tdata[7]));
  OBUF \sm_tdata_OBUF[8]_inst 
       (.I(sm_tdata_OBUF[8]),
        .O(sm_tdata[8]));
  OBUF \sm_tdata_OBUF[9]_inst 
       (.I(sm_tdata_OBUF[9]),
        .O(sm_tdata[9]));
  OBUF sm_tlast_OBUF_inst
       (.I(sm_tlast_OBUF),
        .O(sm_tlast));
  IBUF sm_tready_IBUF_inst
       (.I(sm_tready),
        .O(sm_tready_IBUF));
  OBUF sm_tvalid_OBUF_inst
       (.I(sm_tvalid_OBUF),
        .O(sm_tvalid));
  IBUF \ss_tdata_IBUF[0]_inst 
       (.I(ss_tdata[0]),
        .O(data_Di_OBUF[0]));
  IBUF \ss_tdata_IBUF[10]_inst 
       (.I(ss_tdata[10]),
        .O(data_Di_OBUF[10]));
  IBUF \ss_tdata_IBUF[11]_inst 
       (.I(ss_tdata[11]),
        .O(data_Di_OBUF[11]));
  IBUF \ss_tdata_IBUF[12]_inst 
       (.I(ss_tdata[12]),
        .O(data_Di_OBUF[12]));
  IBUF \ss_tdata_IBUF[13]_inst 
       (.I(ss_tdata[13]),
        .O(data_Di_OBUF[13]));
  IBUF \ss_tdata_IBUF[14]_inst 
       (.I(ss_tdata[14]),
        .O(data_Di_OBUF[14]));
  IBUF \ss_tdata_IBUF[15]_inst 
       (.I(ss_tdata[15]),
        .O(data_Di_OBUF[15]));
  IBUF \ss_tdata_IBUF[16]_inst 
       (.I(ss_tdata[16]),
        .O(data_Di_OBUF[16]));
  IBUF \ss_tdata_IBUF[17]_inst 
       (.I(ss_tdata[17]),
        .O(data_Di_OBUF[17]));
  IBUF \ss_tdata_IBUF[18]_inst 
       (.I(ss_tdata[18]),
        .O(data_Di_OBUF[18]));
  IBUF \ss_tdata_IBUF[19]_inst 
       (.I(ss_tdata[19]),
        .O(data_Di_OBUF[19]));
  IBUF \ss_tdata_IBUF[1]_inst 
       (.I(ss_tdata[1]),
        .O(data_Di_OBUF[1]));
  IBUF \ss_tdata_IBUF[20]_inst 
       (.I(ss_tdata[20]),
        .O(data_Di_OBUF[20]));
  IBUF \ss_tdata_IBUF[21]_inst 
       (.I(ss_tdata[21]),
        .O(data_Di_OBUF[21]));
  IBUF \ss_tdata_IBUF[22]_inst 
       (.I(ss_tdata[22]),
        .O(data_Di_OBUF[22]));
  IBUF \ss_tdata_IBUF[23]_inst 
       (.I(ss_tdata[23]),
        .O(data_Di_OBUF[23]));
  IBUF \ss_tdata_IBUF[24]_inst 
       (.I(ss_tdata[24]),
        .O(data_Di_OBUF[24]));
  IBUF \ss_tdata_IBUF[25]_inst 
       (.I(ss_tdata[25]),
        .O(data_Di_OBUF[25]));
  IBUF \ss_tdata_IBUF[26]_inst 
       (.I(ss_tdata[26]),
        .O(data_Di_OBUF[26]));
  IBUF \ss_tdata_IBUF[27]_inst 
       (.I(ss_tdata[27]),
        .O(data_Di_OBUF[27]));
  IBUF \ss_tdata_IBUF[28]_inst 
       (.I(ss_tdata[28]),
        .O(data_Di_OBUF[28]));
  IBUF \ss_tdata_IBUF[29]_inst 
       (.I(ss_tdata[29]),
        .O(data_Di_OBUF[29]));
  IBUF \ss_tdata_IBUF[2]_inst 
       (.I(ss_tdata[2]),
        .O(data_Di_OBUF[2]));
  IBUF \ss_tdata_IBUF[30]_inst 
       (.I(ss_tdata[30]),
        .O(data_Di_OBUF[30]));
  IBUF \ss_tdata_IBUF[31]_inst 
       (.I(ss_tdata[31]),
        .O(data_Di_OBUF[31]));
  IBUF \ss_tdata_IBUF[3]_inst 
       (.I(ss_tdata[3]),
        .O(data_Di_OBUF[3]));
  IBUF \ss_tdata_IBUF[4]_inst 
       (.I(ss_tdata[4]),
        .O(data_Di_OBUF[4]));
  IBUF \ss_tdata_IBUF[5]_inst 
       (.I(ss_tdata[5]),
        .O(data_Di_OBUF[5]));
  IBUF \ss_tdata_IBUF[6]_inst 
       (.I(ss_tdata[6]),
        .O(data_Di_OBUF[6]));
  IBUF \ss_tdata_IBUF[7]_inst 
       (.I(ss_tdata[7]),
        .O(data_Di_OBUF[7]));
  IBUF \ss_tdata_IBUF[8]_inst 
       (.I(ss_tdata[8]),
        .O(data_Di_OBUF[8]));
  IBUF \ss_tdata_IBUF[9]_inst 
       (.I(ss_tdata[9]),
        .O(data_Di_OBUF[9]));
  IBUF ss_tlast_IBUF_inst
       (.I(ss_tlast),
        .O(ss_tlast_IBUF));
  OBUF ss_tready_OBUF_inst
       (.I(ss_tready_OBUF),
        .O(ss_tready));
  IBUF ss_tvalid_IBUF_inst
       (.I(ss_tvalid),
        .O(ss_tvalid_IBUF));
  OBUF \tap_A_OBUF[0]_inst 
       (.I(tap_A_OBUF[0]),
        .O(tap_A[0]));
  OBUF \tap_A_OBUF[10]_inst 
       (.I(tap_A_OBUF[10]),
        .O(tap_A[10]));
  OBUF \tap_A_OBUF[11]_inst 
       (.I(tap_A_OBUF[11]),
        .O(tap_A[11]));
  OBUF \tap_A_OBUF[1]_inst 
       (.I(tap_A_OBUF[1]),
        .O(tap_A[1]));
  OBUF \tap_A_OBUF[2]_inst 
       (.I(tap_A_OBUF[2]),
        .O(tap_A[2]));
  OBUF \tap_A_OBUF[3]_inst 
       (.I(tap_A_OBUF[3]),
        .O(tap_A[3]));
  OBUF \tap_A_OBUF[4]_inst 
       (.I(tap_A_OBUF[4]),
        .O(tap_A[4]));
  OBUF \tap_A_OBUF[5]_inst 
       (.I(tap_A_OBUF[5]),
        .O(tap_A[5]));
  OBUF \tap_A_OBUF[6]_inst 
       (.I(tap_A_OBUF[6]),
        .O(tap_A[6]));
  OBUF \tap_A_OBUF[7]_inst 
       (.I(tap_A_OBUF[7]),
        .O(tap_A[7]));
  OBUF \tap_A_OBUF[8]_inst 
       (.I(tap_A_OBUF[8]),
        .O(tap_A[8]));
  OBUF \tap_A_OBUF[9]_inst 
       (.I(tap_A_OBUF[9]),
        .O(tap_A[9]));
  OBUF \tap_Di_OBUF[0]_inst 
       (.I(tap_Di_OBUF[0]),
        .O(tap_Di[0]));
  OBUF \tap_Di_OBUF[10]_inst 
       (.I(tap_Di_OBUF[10]),
        .O(tap_Di[10]));
  OBUF \tap_Di_OBUF[11]_inst 
       (.I(tap_Di_OBUF[11]),
        .O(tap_Di[11]));
  OBUF \tap_Di_OBUF[12]_inst 
       (.I(tap_Di_OBUF[12]),
        .O(tap_Di[12]));
  OBUF \tap_Di_OBUF[13]_inst 
       (.I(tap_Di_OBUF[13]),
        .O(tap_Di[13]));
  OBUF \tap_Di_OBUF[14]_inst 
       (.I(tap_Di_OBUF[14]),
        .O(tap_Di[14]));
  OBUF \tap_Di_OBUF[15]_inst 
       (.I(tap_Di_OBUF[15]),
        .O(tap_Di[15]));
  OBUF \tap_Di_OBUF[16]_inst 
       (.I(tap_Di_OBUF[16]),
        .O(tap_Di[16]));
  OBUF \tap_Di_OBUF[17]_inst 
       (.I(tap_Di_OBUF[17]),
        .O(tap_Di[17]));
  OBUF \tap_Di_OBUF[18]_inst 
       (.I(tap_Di_OBUF[18]),
        .O(tap_Di[18]));
  OBUF \tap_Di_OBUF[19]_inst 
       (.I(tap_Di_OBUF[19]),
        .O(tap_Di[19]));
  OBUF \tap_Di_OBUF[1]_inst 
       (.I(tap_Di_OBUF[1]),
        .O(tap_Di[1]));
  OBUF \tap_Di_OBUF[20]_inst 
       (.I(tap_Di_OBUF[20]),
        .O(tap_Di[20]));
  OBUF \tap_Di_OBUF[21]_inst 
       (.I(tap_Di_OBUF[21]),
        .O(tap_Di[21]));
  OBUF \tap_Di_OBUF[22]_inst 
       (.I(tap_Di_OBUF[22]),
        .O(tap_Di[22]));
  OBUF \tap_Di_OBUF[23]_inst 
       (.I(tap_Di_OBUF[23]),
        .O(tap_Di[23]));
  OBUF \tap_Di_OBUF[24]_inst 
       (.I(tap_Di_OBUF[24]),
        .O(tap_Di[24]));
  OBUF \tap_Di_OBUF[25]_inst 
       (.I(tap_Di_OBUF[25]),
        .O(tap_Di[25]));
  OBUF \tap_Di_OBUF[26]_inst 
       (.I(tap_Di_OBUF[26]),
        .O(tap_Di[26]));
  OBUF \tap_Di_OBUF[27]_inst 
       (.I(tap_Di_OBUF[27]),
        .O(tap_Di[27]));
  OBUF \tap_Di_OBUF[28]_inst 
       (.I(tap_Di_OBUF[28]),
        .O(tap_Di[28]));
  OBUF \tap_Di_OBUF[29]_inst 
       (.I(tap_Di_OBUF[29]),
        .O(tap_Di[29]));
  OBUF \tap_Di_OBUF[2]_inst 
       (.I(tap_Di_OBUF[2]),
        .O(tap_Di[2]));
  OBUF \tap_Di_OBUF[30]_inst 
       (.I(tap_Di_OBUF[30]),
        .O(tap_Di[30]));
  OBUF \tap_Di_OBUF[31]_inst 
       (.I(tap_Di_OBUF[31]),
        .O(tap_Di[31]));
  OBUF \tap_Di_OBUF[3]_inst 
       (.I(tap_Di_OBUF[3]),
        .O(tap_Di[3]));
  OBUF \tap_Di_OBUF[4]_inst 
       (.I(tap_Di_OBUF[4]),
        .O(tap_Di[4]));
  OBUF \tap_Di_OBUF[5]_inst 
       (.I(tap_Di_OBUF[5]),
        .O(tap_Di[5]));
  OBUF \tap_Di_OBUF[6]_inst 
       (.I(tap_Di_OBUF[6]),
        .O(tap_Di[6]));
  OBUF \tap_Di_OBUF[7]_inst 
       (.I(tap_Di_OBUF[7]),
        .O(tap_Di[7]));
  OBUF \tap_Di_OBUF[8]_inst 
       (.I(tap_Di_OBUF[8]),
        .O(tap_Di[8]));
  OBUF \tap_Di_OBUF[9]_inst 
       (.I(tap_Di_OBUF[9]),
        .O(tap_Di[9]));
  IBUF \tap_Do_IBUF[0]_inst 
       (.I(tap_Do[0]),
        .O(tap_Do_IBUF[0]));
  IBUF \tap_Do_IBUF[10]_inst 
       (.I(tap_Do[10]),
        .O(tap_Do_IBUF[10]));
  IBUF \tap_Do_IBUF[11]_inst 
       (.I(tap_Do[11]),
        .O(tap_Do_IBUF[11]));
  IBUF \tap_Do_IBUF[12]_inst 
       (.I(tap_Do[12]),
        .O(tap_Do_IBUF[12]));
  IBUF \tap_Do_IBUF[13]_inst 
       (.I(tap_Do[13]),
        .O(tap_Do_IBUF[13]));
  IBUF \tap_Do_IBUF[14]_inst 
       (.I(tap_Do[14]),
        .O(tap_Do_IBUF[14]));
  IBUF \tap_Do_IBUF[15]_inst 
       (.I(tap_Do[15]),
        .O(tap_Do_IBUF[15]));
  IBUF \tap_Do_IBUF[16]_inst 
       (.I(tap_Do[16]),
        .O(tap_Do_IBUF[16]));
  IBUF \tap_Do_IBUF[17]_inst 
       (.I(tap_Do[17]),
        .O(tap_Do_IBUF[17]));
  IBUF \tap_Do_IBUF[18]_inst 
       (.I(tap_Do[18]),
        .O(tap_Do_IBUF[18]));
  IBUF \tap_Do_IBUF[19]_inst 
       (.I(tap_Do[19]),
        .O(tap_Do_IBUF[19]));
  IBUF \tap_Do_IBUF[1]_inst 
       (.I(tap_Do[1]),
        .O(tap_Do_IBUF[1]));
  IBUF \tap_Do_IBUF[20]_inst 
       (.I(tap_Do[20]),
        .O(tap_Do_IBUF[20]));
  IBUF \tap_Do_IBUF[21]_inst 
       (.I(tap_Do[21]),
        .O(tap_Do_IBUF[21]));
  IBUF \tap_Do_IBUF[22]_inst 
       (.I(tap_Do[22]),
        .O(tap_Do_IBUF[22]));
  IBUF \tap_Do_IBUF[23]_inst 
       (.I(tap_Do[23]),
        .O(tap_Do_IBUF[23]));
  IBUF \tap_Do_IBUF[24]_inst 
       (.I(tap_Do[24]),
        .O(tap_Do_IBUF[24]));
  IBUF \tap_Do_IBUF[25]_inst 
       (.I(tap_Do[25]),
        .O(tap_Do_IBUF[25]));
  IBUF \tap_Do_IBUF[26]_inst 
       (.I(tap_Do[26]),
        .O(tap_Do_IBUF[26]));
  IBUF \tap_Do_IBUF[27]_inst 
       (.I(tap_Do[27]),
        .O(tap_Do_IBUF[27]));
  IBUF \tap_Do_IBUF[28]_inst 
       (.I(tap_Do[28]),
        .O(tap_Do_IBUF[28]));
  IBUF \tap_Do_IBUF[29]_inst 
       (.I(tap_Do[29]),
        .O(tap_Do_IBUF[29]));
  IBUF \tap_Do_IBUF[2]_inst 
       (.I(tap_Do[2]),
        .O(tap_Do_IBUF[2]));
  IBUF \tap_Do_IBUF[30]_inst 
       (.I(tap_Do[30]),
        .O(tap_Do_IBUF[30]));
  IBUF \tap_Do_IBUF[31]_inst 
       (.I(tap_Do[31]),
        .O(tap_Do_IBUF[31]));
  IBUF \tap_Do_IBUF[3]_inst 
       (.I(tap_Do[3]),
        .O(tap_Do_IBUF[3]));
  IBUF \tap_Do_IBUF[4]_inst 
       (.I(tap_Do[4]),
        .O(tap_Do_IBUF[4]));
  IBUF \tap_Do_IBUF[5]_inst 
       (.I(tap_Do[5]),
        .O(tap_Do_IBUF[5]));
  IBUF \tap_Do_IBUF[6]_inst 
       (.I(tap_Do[6]),
        .O(tap_Do_IBUF[6]));
  IBUF \tap_Do_IBUF[7]_inst 
       (.I(tap_Do[7]),
        .O(tap_Do_IBUF[7]));
  IBUF \tap_Do_IBUF[8]_inst 
       (.I(tap_Do[8]),
        .O(tap_Do_IBUF[8]));
  IBUF \tap_Do_IBUF[9]_inst 
       (.I(tap_Do[9]),
        .O(tap_Do_IBUF[9]));
  OBUF tap_EN_OBUF_inst
       (.I(tap_EN_OBUF),
        .O(tap_EN));
  OBUF \tap_WE_OBUF[0]_inst 
       (.I(tap_WE_OBUF),
        .O(tap_WE[0]));
  OBUF \tap_WE_OBUF[1]_inst 
       (.I(tap_WE_OBUF),
        .O(tap_WE[1]));
  OBUF \tap_WE_OBUF[2]_inst 
       (.I(tap_WE_OBUF),
        .O(tap_WE[2]));
  OBUF \tap_WE_OBUF[3]_inst 
       (.I(tap_WE_OBUF),
        .O(tap_WE[3]));
  IBUF \wdata_IBUF[0]_inst 
       (.I(wdata[0]),
        .O(wdata_IBUF[0]));
  IBUF \wdata_IBUF[10]_inst 
       (.I(wdata[10]),
        .O(wdata_IBUF[10]));
  IBUF \wdata_IBUF[11]_inst 
       (.I(wdata[11]),
        .O(wdata_IBUF[11]));
  IBUF \wdata_IBUF[12]_inst 
       (.I(wdata[12]),
        .O(wdata_IBUF[12]));
  IBUF \wdata_IBUF[13]_inst 
       (.I(wdata[13]),
        .O(wdata_IBUF[13]));
  IBUF \wdata_IBUF[14]_inst 
       (.I(wdata[14]),
        .O(wdata_IBUF[14]));
  IBUF \wdata_IBUF[15]_inst 
       (.I(wdata[15]),
        .O(wdata_IBUF[15]));
  IBUF \wdata_IBUF[16]_inst 
       (.I(wdata[16]),
        .O(wdata_IBUF[16]));
  IBUF \wdata_IBUF[17]_inst 
       (.I(wdata[17]),
        .O(wdata_IBUF[17]));
  IBUF \wdata_IBUF[18]_inst 
       (.I(wdata[18]),
        .O(wdata_IBUF[18]));
  IBUF \wdata_IBUF[19]_inst 
       (.I(wdata[19]),
        .O(wdata_IBUF[19]));
  IBUF \wdata_IBUF[1]_inst 
       (.I(wdata[1]),
        .O(wdata_IBUF[1]));
  IBUF \wdata_IBUF[20]_inst 
       (.I(wdata[20]),
        .O(wdata_IBUF[20]));
  IBUF \wdata_IBUF[21]_inst 
       (.I(wdata[21]),
        .O(wdata_IBUF[21]));
  IBUF \wdata_IBUF[22]_inst 
       (.I(wdata[22]),
        .O(wdata_IBUF[22]));
  IBUF \wdata_IBUF[23]_inst 
       (.I(wdata[23]),
        .O(wdata_IBUF[23]));
  IBUF \wdata_IBUF[24]_inst 
       (.I(wdata[24]),
        .O(wdata_IBUF[24]));
  IBUF \wdata_IBUF[25]_inst 
       (.I(wdata[25]),
        .O(wdata_IBUF[25]));
  IBUF \wdata_IBUF[26]_inst 
       (.I(wdata[26]),
        .O(wdata_IBUF[26]));
  IBUF \wdata_IBUF[27]_inst 
       (.I(wdata[27]),
        .O(wdata_IBUF[27]));
  IBUF \wdata_IBUF[28]_inst 
       (.I(wdata[28]),
        .O(wdata_IBUF[28]));
  IBUF \wdata_IBUF[29]_inst 
       (.I(wdata[29]),
        .O(wdata_IBUF[29]));
  IBUF \wdata_IBUF[2]_inst 
       (.I(wdata[2]),
        .O(wdata_IBUF[2]));
  IBUF \wdata_IBUF[30]_inst 
       (.I(wdata[30]),
        .O(wdata_IBUF[30]));
  IBUF \wdata_IBUF[31]_inst 
       (.I(wdata[31]),
        .O(wdata_IBUF[31]));
  IBUF \wdata_IBUF[3]_inst 
       (.I(wdata[3]),
        .O(wdata_IBUF[3]));
  IBUF \wdata_IBUF[4]_inst 
       (.I(wdata[4]),
        .O(wdata_IBUF[4]));
  IBUF \wdata_IBUF[5]_inst 
       (.I(wdata[5]),
        .O(wdata_IBUF[5]));
  IBUF \wdata_IBUF[6]_inst 
       (.I(wdata[6]),
        .O(wdata_IBUF[6]));
  IBUF \wdata_IBUF[7]_inst 
       (.I(wdata[7]),
        .O(wdata_IBUF[7]));
  IBUF \wdata_IBUF[8]_inst 
       (.I(wdata[8]),
        .O(wdata_IBUF[8]));
  IBUF \wdata_IBUF[9]_inst 
       (.I(wdata[9]),
        .O(wdata_IBUF[9]));
  OBUF wready_OBUF_inst
       (.I(wready_OBUF),
        .O(wready));
  IBUF wvalid_IBUF_inst
       (.I(wvalid),
        .O(wvalid_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
