// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Feb 17 16:59:52 2024
// Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexivensky/ADDLabs/lab_3/lab_3.srcs/sources_1/bd/design_1/ip/design_1_multiplier_0_0/design_1_multiplier_0_0_sim_netlist.v
// Design      : design_1_multiplier_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_multiplier_0_0,multiplier,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "multiplier,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_multiplier_0_0
   (A,
    B,
    clk,
    rst,
    R,
    done);
  input [31:0]A;
  input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [63:0]R;
  output done;

  wire [31:0]A;
  wire [31:0]B;
  wire [63:0]R;
  wire clk;
  wire done;
  wire rst;

  design_1_multiplier_0_0_multiplier U0
       (.A(A),
        .B(B),
        .R(R),
        .clk(clk),
        .done(done),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "control" *) 
module design_1_multiplier_0_0_control
   (E,
    D,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[4]_0 ,
    \FSM_onehot_state_reg[5]_0 ,
    Q,
    A,
    B,
    \Q_reg[30] ,
    clk,
    rst);
  output [0:0]E;
  output [63:0]D;
  output [0:0]\FSM_onehot_state_reg[0]_0 ;
  output [31:0]\FSM_onehot_state_reg[4]_0 ;
  output [1:0]\FSM_onehot_state_reg[5]_0 ;
  input [62:0]Q;
  input [31:0]A;
  input [31:0]B;
  input [31:0]\Q_reg[30] ;
  input clk;
  input rst;

  wire [31:0]A;
  wire [31:0]B;
  wire [63:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire [31:0]\FSM_onehot_state_reg[4]_0 ;
  wire [1:0]\FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire MCND_S;
  wire MPLR_S;
  wire MPLR_load;
  wire [62:0]Q;
  wire [31:0]\Q_reg[30] ;
  wire clk;
  wire [5:0]i_reg__0;
  wire [5:5]p_0_in;
  wire [4:0]p_0_in__0;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(MPLR_load),
        .I1(p_0_in),
        .I2(MPLR_S),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\Q_reg[30] [0]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_0 [0]),
        .I1(\Q_reg[30] [0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_0 [1]),
        .I1(p_0_in),
        .I2(MPLR_S),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(MPLR_load));
  (* FSM_ENCODED_STATES = "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[5]_0 [0]));
  (* FSM_ENCODED_STATES = "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(MCND_S));
  (* FSM_ENCODED_STATES = "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(MCND_S),
        .Q(MPLR_S));
  (* FSM_ENCODED_STATES = "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[5]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q[0]_i_1 
       (.I0(MCND_S),
        .I1(MPLR_load),
        .I2(A[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[0]_i_1__0 
       (.I0(B[0]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [1]),
        .O(\FSM_onehot_state_reg[4]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[10]_i_1 
       (.I0(A[10]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[9]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[10]_i_1__0 
       (.I0(B[10]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [11]),
        .O(\FSM_onehot_state_reg[4]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[11]_i_1 
       (.I0(A[11]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[10]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[11]_i_1__0 
       (.I0(B[11]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [12]),
        .O(\FSM_onehot_state_reg[4]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[12]_i_1 
       (.I0(A[12]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[11]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[12]_i_1__0 
       (.I0(B[12]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [13]),
        .O(\FSM_onehot_state_reg[4]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[13]_i_1 
       (.I0(A[13]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[12]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[13]_i_1__0 
       (.I0(B[13]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [14]),
        .O(\FSM_onehot_state_reg[4]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[14]_i_1 
       (.I0(A[14]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[13]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[14]_i_1__0 
       (.I0(B[14]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [15]),
        .O(\FSM_onehot_state_reg[4]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[15]_i_1 
       (.I0(A[15]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[14]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[15]_i_1__0 
       (.I0(B[15]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [16]),
        .O(\FSM_onehot_state_reg[4]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[16]_i_1 
       (.I0(A[16]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[15]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[16]_i_1__0 
       (.I0(B[16]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [17]),
        .O(\FSM_onehot_state_reg[4]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[17]_i_1 
       (.I0(A[17]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[16]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[17]_i_1__0 
       (.I0(B[17]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [18]),
        .O(\FSM_onehot_state_reg[4]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[18]_i_1 
       (.I0(A[18]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[17]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[18]_i_1__0 
       (.I0(B[18]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [19]),
        .O(\FSM_onehot_state_reg[4]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[19]_i_1 
       (.I0(A[19]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[18]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[19]_i_1__0 
       (.I0(B[19]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [20]),
        .O(\FSM_onehot_state_reg[4]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[1]_i_1 
       (.I0(A[1]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[1]_i_1__0 
       (.I0(B[1]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [2]),
        .O(\FSM_onehot_state_reg[4]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[20]_i_1 
       (.I0(A[20]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[19]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[20]_i_1__0 
       (.I0(B[20]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [21]),
        .O(\FSM_onehot_state_reg[4]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[21]_i_1 
       (.I0(A[21]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[20]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[21]_i_1__0 
       (.I0(B[21]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [22]),
        .O(\FSM_onehot_state_reg[4]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[22]_i_1 
       (.I0(A[22]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[21]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[22]_i_1__0 
       (.I0(B[22]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [23]),
        .O(\FSM_onehot_state_reg[4]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[23]_i_1 
       (.I0(A[23]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[22]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[23]_i_1__0 
       (.I0(B[23]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [24]),
        .O(\FSM_onehot_state_reg[4]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[24]_i_1 
       (.I0(A[24]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[23]),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[24]_i_1__0 
       (.I0(B[24]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [25]),
        .O(\FSM_onehot_state_reg[4]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[25]_i_1 
       (.I0(A[25]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[24]),
        .O(D[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[25]_i_1__0 
       (.I0(B[25]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [26]),
        .O(\FSM_onehot_state_reg[4]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[26]_i_1 
       (.I0(A[26]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[25]),
        .O(D[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[26]_i_1__0 
       (.I0(B[26]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [27]),
        .O(\FSM_onehot_state_reg[4]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[27]_i_1 
       (.I0(A[27]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[26]),
        .O(D[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[27]_i_1__0 
       (.I0(B[27]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [28]),
        .O(\FSM_onehot_state_reg[4]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[28]_i_1 
       (.I0(A[28]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[27]),
        .O(D[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[28]_i_1__0 
       (.I0(B[28]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [29]),
        .O(\FSM_onehot_state_reg[4]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[29]_i_1 
       (.I0(A[29]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[28]),
        .O(D[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[29]_i_1__0 
       (.I0(B[29]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [30]),
        .O(\FSM_onehot_state_reg[4]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[2]_i_1 
       (.I0(A[2]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[2]_i_1__0 
       (.I0(B[2]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [3]),
        .O(\FSM_onehot_state_reg[4]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[30]_i_1 
       (.I0(A[30]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[29]),
        .O(D[30]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[30]_i_1__0 
       (.I0(B[30]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [31]),
        .O(\FSM_onehot_state_reg[4]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[31]_i_1 
       (.I0(A[31]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[30]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Q[31]_i_1__0 
       (.I0(MPLR_load),
        .I1(MPLR_S),
        .O(\FSM_onehot_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q[31]_i_2 
       (.I0(MPLR_S),
        .I1(MPLR_load),
        .I2(B[31]),
        .O(\FSM_onehot_state_reg[4]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[32]_i_1 
       (.I0(Q[31]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[33]_i_1 
       (.I0(Q[32]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[33]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[34]_i_1 
       (.I0(Q[33]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[35]_i_1 
       (.I0(Q[34]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[36]_i_1 
       (.I0(Q[35]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[36]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[37]_i_1 
       (.I0(Q[36]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[38]_i_1 
       (.I0(Q[37]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[38]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[39]_i_1 
       (.I0(Q[38]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[3]_i_1 
       (.I0(A[3]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[3]_i_1__0 
       (.I0(B[3]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [4]),
        .O(\FSM_onehot_state_reg[4]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[40]_i_1 
       (.I0(Q[39]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[40]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[41]_i_1 
       (.I0(Q[40]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[41]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[42]_i_1 
       (.I0(Q[41]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[42]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[43]_i_1 
       (.I0(Q[42]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[43]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[44]_i_1 
       (.I0(Q[43]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[44]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[45]_i_1 
       (.I0(Q[44]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[45]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[46]_i_1 
       (.I0(Q[45]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[46]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[47]_i_1 
       (.I0(Q[46]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[47]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[48]_i_1 
       (.I0(Q[47]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[48]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[49]_i_1 
       (.I0(Q[48]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[49]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[4]_i_1 
       (.I0(A[4]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[3]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[4]_i_1__0 
       (.I0(B[4]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [5]),
        .O(\FSM_onehot_state_reg[4]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[50]_i_1 
       (.I0(Q[49]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[51]_i_1 
       (.I0(Q[50]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[51]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[52]_i_1 
       (.I0(Q[51]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[52]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[53]_i_1 
       (.I0(Q[52]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[53]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[54]_i_1 
       (.I0(Q[53]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[54]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[55]_i_1 
       (.I0(Q[54]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[55]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[56]_i_1 
       (.I0(Q[55]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[56]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[57]_i_1 
       (.I0(Q[56]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[57]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[58]_i_1 
       (.I0(Q[57]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[58]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[59]_i_1 
       (.I0(Q[58]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[59]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[5]_i_1 
       (.I0(A[5]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[4]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[5]_i_1__0 
       (.I0(B[5]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [6]),
        .O(\FSM_onehot_state_reg[4]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[60]_i_1 
       (.I0(Q[59]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[60]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[61]_i_1 
       (.I0(Q[60]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[61]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[62]_i_1 
       (.I0(Q[61]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[62]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Q[63]_i_1 
       (.I0(MPLR_load),
        .I1(MCND_S),
        .O(E));
  LUT3 #(
    .INIT(8'h8A)) 
    \Q[63]_i_2 
       (.I0(Q[62]),
        .I1(MCND_S),
        .I2(MPLR_load),
        .O(D[63]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[6]_i_1 
       (.I0(A[6]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[5]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[6]_i_1__0 
       (.I0(B[6]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [7]),
        .O(\FSM_onehot_state_reg[4]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[7]_i_1 
       (.I0(A[7]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[6]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[7]_i_1__0 
       (.I0(B[7]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [8]),
        .O(\FSM_onehot_state_reg[4]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[8]_i_1 
       (.I0(A[8]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[7]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[8]_i_1__0 
       (.I0(B[8]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [9]),
        .O(\FSM_onehot_state_reg[4]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[9]_i_1 
       (.I0(A[9]),
        .I1(MPLR_load),
        .I2(MCND_S),
        .I3(Q[8]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Q[9]_i_1__0 
       (.I0(B[9]),
        .I1(MPLR_load),
        .I2(MPLR_S),
        .I3(\Q_reg[30] [10]),
        .O(\FSM_onehot_state_reg[4]_0 [9]));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[1]_i_1 
       (.I0(i_reg__0[0]),
        .I1(i_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i[2]_i_1 
       (.I0(i_reg__0[0]),
        .I1(i_reg__0[1]),
        .I2(i_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i[3]_i_1 
       (.I0(i_reg__0[1]),
        .I1(i_reg__0[0]),
        .I2(i_reg__0[2]),
        .I3(i_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i[4]_i_1 
       (.I0(i_reg__0[2]),
        .I1(i_reg__0[0]),
        .I2(i_reg__0[1]),
        .I3(i_reg__0[3]),
        .I4(i_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i[5]_i_1 
       (.I0(i_reg__0[3]),
        .I1(i_reg__0[1]),
        .I2(i_reg__0[0]),
        .I3(i_reg__0[2]),
        .I4(i_reg__0[4]),
        .I5(i_reg__0[5]),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(MPLR_S),
        .CLR(rst),
        .D(p_0_in__0[0]),
        .Q(i_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(MPLR_S),
        .CLR(rst),
        .D(p_0_in__0[1]),
        .Q(i_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(MPLR_S),
        .CLR(rst),
        .D(p_0_in__0[2]),
        .Q(i_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(MPLR_S),
        .CLR(rst),
        .D(p_0_in__0[3]),
        .Q(i_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(MPLR_S),
        .CLR(rst),
        .D(p_0_in__0[4]),
        .Q(i_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(MPLR_S),
        .CLR(rst),
        .D(p_0_in),
        .Q(i_reg__0[5]));
endmodule

(* ORIG_REF_NAME = "left_shift_reg" *) 
module design_1_multiplier_0_0_left_shift_reg
   (D,
    Q,
    x3__53,
    x3__48,
    x3__43,
    x3__38,
    x3__33,
    x3__28,
    x3__23,
    x3__18,
    x3__13,
    x3__8,
    x3__3,
    \Q[63]_i_6_0 ,
    C_53,
    C_48,
    C_43,
    C_38,
    C_33,
    C_28,
    C_23,
    C_18,
    C_13,
    C_8,
    C_3,
    E,
    \Q_reg[63]_0 ,
    clk,
    rst);
  output [1:0]D;
  output [63:0]Q;
  output x3__53;
  output x3__48;
  output x3__43;
  output x3__38;
  output x3__33;
  output x3__28;
  output x3__23;
  output x3__18;
  output x3__13;
  output x3__8;
  output x3__3;
  input [34:0]\Q[63]_i_6_0 ;
  input C_53;
  input C_48;
  input C_43;
  input C_38;
  input C_33;
  input C_28;
  input C_23;
  input C_18;
  input C_13;
  input C_8;
  input C_3;
  input [0:0]E;
  input [63:0]\Q_reg[63]_0 ;
  input clk;
  input rst;

  wire C_13;
  wire C_18;
  wire C_23;
  wire C_28;
  wire C_3;
  wire C_33;
  wire C_38;
  wire C_43;
  wire C_48;
  wire C_53;
  wire C_8;
  wire [1:0]D;
  wire [0:0]E;
  wire [63:0]Q;
  wire [34:0]\Q[63]_i_6_0 ;
  wire [63:0]\Q_reg[63]_0 ;
  wire \adder/F[10].adders/x1__0 ;
  wire \adder/F[15].adders/x1__0 ;
  wire \adder/F[20].adders/x1__0 ;
  wire \adder/F[25].adders/x1__0 ;
  wire \adder/F[30].adders/x1__0 ;
  wire \adder/F[35].adders/x1__0 ;
  wire \adder/F[40].adders/x1__0 ;
  wire \adder/F[45].adders/x1__0 ;
  wire \adder/F[50].adders/x1__0 ;
  wire \adder/F[55].adders/x1__0 ;
  wire \adder/F[5].adders/x1__0 ;
  wire clk;
  wire rst;
  wire x3__13;
  wire x3__18;
  wire x3__23;
  wire x3__28;
  wire x3__3;
  wire x3__33;
  wire x3__38;
  wire x3__43;
  wire x3__48;
  wire x3__53;
  wire x3__8;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_1__1 
       (.I0(Q[0]),
        .I1(\Q[63]_i_6_0 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[13]_i_6 
       (.I0(\adder/F[5].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [3]),
        .I2(Q[4]),
        .I3(\Q[63]_i_6_0 [2]),
        .I4(Q[3]),
        .I5(C_3),
        .O(x3__3));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[13]_i_7 
       (.I0(Q[5]),
        .I1(\Q[63]_i_6_0 [4]),
        .O(\adder/F[5].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[18]_i_6 
       (.I0(\adder/F[10].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [6]),
        .I2(Q[9]),
        .I3(\Q[63]_i_6_0 [5]),
        .I4(Q[8]),
        .I5(C_8),
        .O(x3__8));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[18]_i_7 
       (.I0(Q[10]),
        .I1(\Q[63]_i_6_0 [7]),
        .O(\adder/F[10].adders/x1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Q[1]_i_1__1 
       (.I0(Q[0]),
        .I1(\Q[63]_i_6_0 [0]),
        .I2(\Q[63]_i_6_0 [1]),
        .I3(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[23]_i_6 
       (.I0(\adder/F[15].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [9]),
        .I2(Q[14]),
        .I3(\Q[63]_i_6_0 [8]),
        .I4(Q[13]),
        .I5(C_13),
        .O(x3__13));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[23]_i_7 
       (.I0(Q[15]),
        .I1(\Q[63]_i_6_0 [10]),
        .O(\adder/F[15].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[28]_i_6 
       (.I0(\adder/F[20].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [12]),
        .I2(Q[19]),
        .I3(\Q[63]_i_6_0 [11]),
        .I4(Q[18]),
        .I5(C_18),
        .O(x3__18));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[28]_i_7 
       (.I0(Q[20]),
        .I1(\Q[63]_i_6_0 [13]),
        .O(\adder/F[20].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[33]_i_6 
       (.I0(\adder/F[25].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [15]),
        .I2(Q[24]),
        .I3(\Q[63]_i_6_0 [14]),
        .I4(Q[23]),
        .I5(C_23),
        .O(x3__23));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[33]_i_7 
       (.I0(Q[25]),
        .I1(\Q[63]_i_6_0 [16]),
        .O(\adder/F[25].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[38]_i_6 
       (.I0(\adder/F[30].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [18]),
        .I2(Q[29]),
        .I3(\Q[63]_i_6_0 [17]),
        .I4(Q[28]),
        .I5(C_28),
        .O(x3__28));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[38]_i_7 
       (.I0(Q[30]),
        .I1(\Q[63]_i_6_0 [19]),
        .O(\adder/F[30].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[43]_i_6 
       (.I0(\adder/F[35].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [21]),
        .I2(Q[34]),
        .I3(\Q[63]_i_6_0 [20]),
        .I4(Q[33]),
        .I5(C_33),
        .O(x3__33));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[43]_i_7 
       (.I0(Q[35]),
        .I1(\Q[63]_i_6_0 [22]),
        .O(\adder/F[35].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[48]_i_6 
       (.I0(\adder/F[40].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [24]),
        .I2(Q[39]),
        .I3(\Q[63]_i_6_0 [23]),
        .I4(Q[38]),
        .I5(C_38),
        .O(x3__38));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[48]_i_7 
       (.I0(Q[40]),
        .I1(\Q[63]_i_6_0 [25]),
        .O(\adder/F[40].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[53]_i_6 
       (.I0(\adder/F[45].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [27]),
        .I2(Q[44]),
        .I3(\Q[63]_i_6_0 [26]),
        .I4(Q[43]),
        .I5(C_43),
        .O(x3__43));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[53]_i_7 
       (.I0(Q[45]),
        .I1(\Q[63]_i_6_0 [28]),
        .O(\adder/F[45].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[58]_i_6 
       (.I0(\adder/F[50].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [30]),
        .I2(Q[49]),
        .I3(\Q[63]_i_6_0 [29]),
        .I4(Q[48]),
        .I5(C_48),
        .O(x3__48));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[58]_i_7 
       (.I0(Q[50]),
        .I1(\Q[63]_i_6_0 [31]),
        .O(\adder/F[50].adders/x1__0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[63]_i_6 
       (.I0(\adder/F[55].adders/x1__0 ),
        .I1(\Q[63]_i_6_0 [33]),
        .I2(Q[54]),
        .I3(\Q[63]_i_6_0 [32]),
        .I4(Q[53]),
        .I5(C_53),
        .O(x3__53));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[63]_i_7 
       (.I0(Q[55]),
        .I1(\Q[63]_i_6_0 [34]),
        .O(\adder/F[55].adders/x1__0 ));
  FDCE \Q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [0]),
        .Q(Q[0]));
  FDCE \Q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [10]),
        .Q(Q[10]));
  FDCE \Q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [11]),
        .Q(Q[11]));
  FDCE \Q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [12]),
        .Q(Q[12]));
  FDCE \Q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [13]),
        .Q(Q[13]));
  FDCE \Q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [14]),
        .Q(Q[14]));
  FDCE \Q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [15]),
        .Q(Q[15]));
  FDCE \Q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [16]),
        .Q(Q[16]));
  FDCE \Q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [17]),
        .Q(Q[17]));
  FDCE \Q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [18]),
        .Q(Q[18]));
  FDCE \Q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [19]),
        .Q(Q[19]));
  FDCE \Q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [1]),
        .Q(Q[1]));
  FDCE \Q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [20]),
        .Q(Q[20]));
  FDCE \Q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [21]),
        .Q(Q[21]));
  FDCE \Q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [22]),
        .Q(Q[22]));
  FDCE \Q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [23]),
        .Q(Q[23]));
  FDCE \Q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [24]),
        .Q(Q[24]));
  FDCE \Q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [25]),
        .Q(Q[25]));
  FDCE \Q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [26]),
        .Q(Q[26]));
  FDCE \Q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [27]),
        .Q(Q[27]));
  FDCE \Q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [28]),
        .Q(Q[28]));
  FDCE \Q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [29]),
        .Q(Q[29]));
  FDCE \Q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [2]),
        .Q(Q[2]));
  FDCE \Q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [30]),
        .Q(Q[30]));
  FDCE \Q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [31]),
        .Q(Q[31]));
  FDCE \Q_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [32]),
        .Q(Q[32]));
  FDCE \Q_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [33]),
        .Q(Q[33]));
  FDCE \Q_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [34]),
        .Q(Q[34]));
  FDCE \Q_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [35]),
        .Q(Q[35]));
  FDCE \Q_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [36]),
        .Q(Q[36]));
  FDCE \Q_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [37]),
        .Q(Q[37]));
  FDCE \Q_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [38]),
        .Q(Q[38]));
  FDCE \Q_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [39]),
        .Q(Q[39]));
  FDCE \Q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [3]),
        .Q(Q[3]));
  FDCE \Q_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [40]),
        .Q(Q[40]));
  FDCE \Q_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [41]),
        .Q(Q[41]));
  FDCE \Q_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [42]),
        .Q(Q[42]));
  FDCE \Q_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [43]),
        .Q(Q[43]));
  FDCE \Q_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [44]),
        .Q(Q[44]));
  FDCE \Q_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [45]),
        .Q(Q[45]));
  FDCE \Q_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [46]),
        .Q(Q[46]));
  FDCE \Q_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [47]),
        .Q(Q[47]));
  FDCE \Q_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [48]),
        .Q(Q[48]));
  FDCE \Q_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [49]),
        .Q(Q[49]));
  FDCE \Q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [4]),
        .Q(Q[4]));
  FDCE \Q_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [50]),
        .Q(Q[50]));
  FDCE \Q_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [51]),
        .Q(Q[51]));
  FDCE \Q_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [52]),
        .Q(Q[52]));
  FDCE \Q_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [53]),
        .Q(Q[53]));
  FDCE \Q_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [54]),
        .Q(Q[54]));
  FDCE \Q_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [55]),
        .Q(Q[55]));
  FDCE \Q_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [56]),
        .Q(Q[56]));
  FDCE \Q_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [57]),
        .Q(Q[57]));
  FDCE \Q_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [58]),
        .Q(Q[58]));
  FDCE \Q_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [59]),
        .Q(Q[59]));
  FDCE \Q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [5]),
        .Q(Q[5]));
  FDCE \Q_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [60]),
        .Q(Q[60]));
  FDCE \Q_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [61]),
        .Q(Q[61]));
  FDCE \Q_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [62]),
        .Q(Q[62]));
  FDCE \Q_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [63]),
        .Q(Q[63]));
  FDCE \Q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [6]),
        .Q(Q[6]));
  FDCE \Q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [7]),
        .Q(Q[7]));
  FDCE \Q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [8]),
        .Q(Q[8]));
  FDCE \Q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\Q_reg[63]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "mult_dflow" *) 
module design_1_multiplier_0_0_mult_dflow
   (R,
    Q,
    \Q_reg[31] ,
    E,
    D,
    clk,
    rst,
    \Q_reg[0] ,
    \Q_reg[0]_0 ,
    \Q_reg[31]_0 );
  output [63:0]R;
  output [62:0]Q;
  output [31:0]\Q_reg[31] ;
  input [0:0]E;
  input [63:0]D;
  input clk;
  input rst;
  input [0:0]\Q_reg[0] ;
  input [0:0]\Q_reg[0]_0 ;
  input [31:0]\Q_reg[31]_0 ;

  wire [1:1]ADDER_out;
  wire [63:0]D;
  wire [0:0]E;
  wire [63:63]MCND_out;
  wire [62:0]Q;
  wire [0:0]\Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire [31:0]\Q_reg[31] ;
  wire [31:0]\Q_reg[31]_0 ;
  wire [63:0]R;
  wire \adder/C_13 ;
  wire \adder/C_18 ;
  wire \adder/C_23 ;
  wire \adder/C_28 ;
  wire \adder/C_3 ;
  wire \adder/C_33 ;
  wire \adder/C_38 ;
  wire \adder/C_43 ;
  wire \adder/C_48 ;
  wire \adder/C_53 ;
  wire \adder/C_8 ;
  wire \adder/F[0].adders/x1 ;
  wire clk;
  wire rst;
  wire x3__13;
  wire x3__18;
  wire x3__23;
  wire x3__28;
  wire x3__3;
  wire x3__33;
  wire x3__38;
  wire x3__43;
  wire x3__48;
  wire x3__53;
  wire x3__8;

  design_1_multiplier_0_0_left_shift_reg MCND
       (.C_13(\adder/C_13 ),
        .C_18(\adder/C_18 ),
        .C_23(\adder/C_23 ),
        .C_28(\adder/C_28 ),
        .C_3(\adder/C_3 ),
        .C_33(\adder/C_33 ),
        .C_38(\adder/C_38 ),
        .C_43(\adder/C_43 ),
        .C_48(\adder/C_48 ),
        .C_53(\adder/C_53 ),
        .C_8(\adder/C_8 ),
        .D({ADDER_out,\adder/F[0].adders/x1 }),
        .E(E),
        .Q({MCND_out,Q}),
        .\Q[63]_i_6_0 ({R[55:53],R[50:48],R[45:43],R[40:38],R[35:33],R[30:28],R[25:23],R[20:18],R[15:13],R[10:8],R[5:3],R[1:0]}),
        .\Q_reg[63]_0 (D),
        .clk(clk),
        .rst(rst),
        .x3__13(x3__13),
        .x3__18(x3__18),
        .x3__23(x3__23),
        .x3__28(x3__28),
        .x3__3(x3__3),
        .x3__33(x3__33),
        .x3__38(x3__38),
        .x3__43(x3__43),
        .x3__48(x3__48),
        .x3__53(x3__53),
        .x3__8(x3__8));
  design_1_multiplier_0_0_right_reg MULT
       (.\Q_reg[0]_0 (\Q_reg[0]_0 ),
        .\Q_reg[31]_0 (\Q_reg[31] ),
        .\Q_reg[31]_1 (\Q_reg[31]_0 ),
        .clk(clk),
        .rst(rst));
  design_1_multiplier_0_0_sync_register PROD
       (.C_13(\adder/C_13 ),
        .C_18(\adder/C_18 ),
        .C_23(\adder/C_23 ),
        .C_28(\adder/C_28 ),
        .C_3(\adder/C_3 ),
        .C_33(\adder/C_33 ),
        .C_38(\adder/C_38 ),
        .C_43(\adder/C_43 ),
        .C_48(\adder/C_48 ),
        .C_53(\adder/C_53 ),
        .C_8(\adder/C_8 ),
        .D({ADDER_out,\adder/F[0].adders/x1 }),
        .Q({MCND_out,Q}),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .R(R),
        .clk(clk),
        .rst(rst),
        .x3__13(x3__13),
        .x3__18(x3__18),
        .x3__23(x3__23),
        .x3__28(x3__28),
        .x3__3(x3__3),
        .x3__33(x3__33),
        .x3__38(x3__38),
        .x3__43(x3__43),
        .x3__48(x3__48),
        .x3__53(x3__53),
        .x3__8(x3__8));
endmodule

(* ORIG_REF_NAME = "multiplier" *) 
module design_1_multiplier_0_0_multiplier
   (done,
    R,
    clk,
    rst,
    A,
    B);
  output done;
  output [63:0]R;
  input clk;
  input rst;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire CONT_n_0;
  wire CONT_n_65;
  wire CONT_n_66;
  wire CONT_n_67;
  wire CONT_n_68;
  wire CONT_n_69;
  wire CONT_n_70;
  wire CONT_n_71;
  wire CONT_n_72;
  wire CONT_n_73;
  wire CONT_n_74;
  wire CONT_n_75;
  wire CONT_n_76;
  wire CONT_n_77;
  wire CONT_n_78;
  wire CONT_n_79;
  wire CONT_n_80;
  wire CONT_n_81;
  wire CONT_n_82;
  wire CONT_n_83;
  wire CONT_n_84;
  wire CONT_n_85;
  wire CONT_n_86;
  wire CONT_n_87;
  wire CONT_n_88;
  wire CONT_n_89;
  wire CONT_n_90;
  wire CONT_n_91;
  wire CONT_n_92;
  wire CONT_n_93;
  wire CONT_n_94;
  wire CONT_n_95;
  wire CONT_n_96;
  wire CONT_n_97;
  wire [62:0]MCND_out;
  wire [0:0]MPLR_out;
  wire MULT_n_127;
  wire MULT_n_128;
  wire MULT_n_129;
  wire MULT_n_130;
  wire MULT_n_131;
  wire MULT_n_132;
  wire MULT_n_133;
  wire MULT_n_134;
  wire MULT_n_135;
  wire MULT_n_136;
  wire MULT_n_137;
  wire MULT_n_138;
  wire MULT_n_139;
  wire MULT_n_140;
  wire MULT_n_141;
  wire MULT_n_142;
  wire MULT_n_143;
  wire MULT_n_144;
  wire MULT_n_145;
  wire MULT_n_146;
  wire MULT_n_147;
  wire MULT_n_148;
  wire MULT_n_149;
  wire MULT_n_150;
  wire MULT_n_151;
  wire MULT_n_152;
  wire MULT_n_153;
  wire MULT_n_154;
  wire MULT_n_155;
  wire MULT_n_156;
  wire MULT_n_157;
  wire ProdEn;
  wire [63:0]R;
  wire clk;
  wire done;
  wire [63:0]p_1_in;
  wire rst;

  design_1_multiplier_0_0_control CONT
       (.A(A),
        .B(B),
        .D(p_1_in),
        .E(CONT_n_0),
        .\FSM_onehot_state_reg[0]_0 (CONT_n_65),
        .\FSM_onehot_state_reg[4]_0 ({CONT_n_66,CONT_n_67,CONT_n_68,CONT_n_69,CONT_n_70,CONT_n_71,CONT_n_72,CONT_n_73,CONT_n_74,CONT_n_75,CONT_n_76,CONT_n_77,CONT_n_78,CONT_n_79,CONT_n_80,CONT_n_81,CONT_n_82,CONT_n_83,CONT_n_84,CONT_n_85,CONT_n_86,CONT_n_87,CONT_n_88,CONT_n_89,CONT_n_90,CONT_n_91,CONT_n_92,CONT_n_93,CONT_n_94,CONT_n_95,CONT_n_96,CONT_n_97}),
        .\FSM_onehot_state_reg[5]_0 ({done,ProdEn}),
        .Q(MCND_out),
        .\Q_reg[30] ({MULT_n_127,MULT_n_128,MULT_n_129,MULT_n_130,MULT_n_131,MULT_n_132,MULT_n_133,MULT_n_134,MULT_n_135,MULT_n_136,MULT_n_137,MULT_n_138,MULT_n_139,MULT_n_140,MULT_n_141,MULT_n_142,MULT_n_143,MULT_n_144,MULT_n_145,MULT_n_146,MULT_n_147,MULT_n_148,MULT_n_149,MULT_n_150,MULT_n_151,MULT_n_152,MULT_n_153,MULT_n_154,MULT_n_155,MULT_n_156,MULT_n_157,MPLR_out}),
        .clk(clk),
        .rst(rst));
  design_1_multiplier_0_0_mult_dflow MULT
       (.D(p_1_in),
        .E(CONT_n_0),
        .Q(MCND_out),
        .\Q_reg[0] (ProdEn),
        .\Q_reg[0]_0 (CONT_n_65),
        .\Q_reg[31] ({MULT_n_127,MULT_n_128,MULT_n_129,MULT_n_130,MULT_n_131,MULT_n_132,MULT_n_133,MULT_n_134,MULT_n_135,MULT_n_136,MULT_n_137,MULT_n_138,MULT_n_139,MULT_n_140,MULT_n_141,MULT_n_142,MULT_n_143,MULT_n_144,MULT_n_145,MULT_n_146,MULT_n_147,MULT_n_148,MULT_n_149,MULT_n_150,MULT_n_151,MULT_n_152,MULT_n_153,MULT_n_154,MULT_n_155,MULT_n_156,MULT_n_157,MPLR_out}),
        .\Q_reg[31]_0 ({CONT_n_66,CONT_n_67,CONT_n_68,CONT_n_69,CONT_n_70,CONT_n_71,CONT_n_72,CONT_n_73,CONT_n_74,CONT_n_75,CONT_n_76,CONT_n_77,CONT_n_78,CONT_n_79,CONT_n_80,CONT_n_81,CONT_n_82,CONT_n_83,CONT_n_84,CONT_n_85,CONT_n_86,CONT_n_87,CONT_n_88,CONT_n_89,CONT_n_90,CONT_n_91,CONT_n_92,CONT_n_93,CONT_n_94,CONT_n_95,CONT_n_96,CONT_n_97}),
        .R(R),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "right_reg" *) 
module design_1_multiplier_0_0_right_reg
   (\Q_reg[31]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[31]_1 ,
    clk,
    rst);
  output [31:0]\Q_reg[31]_0 ;
  input [0:0]\Q_reg[0]_0 ;
  input [31:0]\Q_reg[31]_1 ;
  input clk;
  input rst;

  wire [0:0]\Q_reg[0]_0 ;
  wire [31:0]\Q_reg[31]_0 ;
  wire [31:0]\Q_reg[31]_1 ;
  wire clk;
  wire rst;

  FDCE \Q_reg[0] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [0]),
        .Q(\Q_reg[31]_0 [0]));
  FDCE \Q_reg[10] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [10]),
        .Q(\Q_reg[31]_0 [10]));
  FDCE \Q_reg[11] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [11]),
        .Q(\Q_reg[31]_0 [11]));
  FDCE \Q_reg[12] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [12]),
        .Q(\Q_reg[31]_0 [12]));
  FDCE \Q_reg[13] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [13]),
        .Q(\Q_reg[31]_0 [13]));
  FDCE \Q_reg[14] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [14]),
        .Q(\Q_reg[31]_0 [14]));
  FDCE \Q_reg[15] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [15]),
        .Q(\Q_reg[31]_0 [15]));
  FDCE \Q_reg[16] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [16]),
        .Q(\Q_reg[31]_0 [16]));
  FDCE \Q_reg[17] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [17]),
        .Q(\Q_reg[31]_0 [17]));
  FDCE \Q_reg[18] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [18]),
        .Q(\Q_reg[31]_0 [18]));
  FDCE \Q_reg[19] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [19]),
        .Q(\Q_reg[31]_0 [19]));
  FDCE \Q_reg[1] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [1]),
        .Q(\Q_reg[31]_0 [1]));
  FDCE \Q_reg[20] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [20]),
        .Q(\Q_reg[31]_0 [20]));
  FDCE \Q_reg[21] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [21]),
        .Q(\Q_reg[31]_0 [21]));
  FDCE \Q_reg[22] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [22]),
        .Q(\Q_reg[31]_0 [22]));
  FDCE \Q_reg[23] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [23]),
        .Q(\Q_reg[31]_0 [23]));
  FDCE \Q_reg[24] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [24]),
        .Q(\Q_reg[31]_0 [24]));
  FDCE \Q_reg[25] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [25]),
        .Q(\Q_reg[31]_0 [25]));
  FDCE \Q_reg[26] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [26]),
        .Q(\Q_reg[31]_0 [26]));
  FDCE \Q_reg[27] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [27]),
        .Q(\Q_reg[31]_0 [27]));
  FDCE \Q_reg[28] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [28]),
        .Q(\Q_reg[31]_0 [28]));
  FDCE \Q_reg[29] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [29]),
        .Q(\Q_reg[31]_0 [29]));
  FDCE \Q_reg[2] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [2]),
        .Q(\Q_reg[31]_0 [2]));
  FDCE \Q_reg[30] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [30]),
        .Q(\Q_reg[31]_0 [30]));
  FDCE \Q_reg[31] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [31]),
        .Q(\Q_reg[31]_0 [31]));
  FDCE \Q_reg[3] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [3]),
        .Q(\Q_reg[31]_0 [3]));
  FDCE \Q_reg[4] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [4]),
        .Q(\Q_reg[31]_0 [4]));
  FDCE \Q_reg[5] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [5]),
        .Q(\Q_reg[31]_0 [5]));
  FDCE \Q_reg[6] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [6]),
        .Q(\Q_reg[31]_0 [6]));
  FDCE \Q_reg[7] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [7]),
        .Q(\Q_reg[31]_0 [7]));
  FDCE \Q_reg[8] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [8]),
        .Q(\Q_reg[31]_0 [8]));
  FDCE \Q_reg[9] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(\Q_reg[31]_1 [9]),
        .Q(\Q_reg[31]_0 [9]));
endmodule

(* ORIG_REF_NAME = "sync_register" *) 
module design_1_multiplier_0_0_sync_register
   (R,
    C_53,
    C_48,
    C_43,
    C_38,
    C_33,
    C_28,
    C_23,
    C_18,
    C_13,
    C_8,
    C_3,
    D,
    Q,
    x3__53,
    x3__48,
    x3__43,
    x3__38,
    x3__33,
    x3__28,
    x3__23,
    x3__18,
    x3__13,
    x3__8,
    x3__3,
    \Q_reg[0]_0 ,
    clk,
    rst);
  output [63:0]R;
  output C_53;
  output C_48;
  output C_43;
  output C_38;
  output C_33;
  output C_28;
  output C_23;
  output C_18;
  output C_13;
  output C_8;
  output C_3;
  input [1:0]D;
  input [63:0]Q;
  input x3__53;
  input x3__48;
  input x3__43;
  input x3__38;
  input x3__33;
  input x3__28;
  input x3__23;
  input x3__18;
  input x3__13;
  input x3__8;
  input x3__3;
  input [0:0]\Q_reg[0]_0 ;
  input clk;
  input rst;

  wire [63:2]ADDER_out;
  wire C_13;
  wire C_18;
  wire C_23;
  wire C_28;
  wire C_3;
  wire C_33;
  wire C_38;
  wire C_43;
  wire C_48;
  wire C_53;
  wire C_8;
  wire [1:0]D;
  wire [63:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire [63:0]R;
  wire \adder/C_10 ;
  wire \adder/C_11 ;
  wire \adder/C_12 ;
  wire \adder/C_14 ;
  wire \adder/C_15 ;
  wire \adder/C_16 ;
  wire \adder/C_17 ;
  wire \adder/C_19 ;
  wire \adder/C_20 ;
  wire \adder/C_21 ;
  wire \adder/C_22 ;
  wire \adder/C_24 ;
  wire \adder/C_25 ;
  wire \adder/C_26 ;
  wire \adder/C_27 ;
  wire \adder/C_29 ;
  wire \adder/C_30 ;
  wire \adder/C_31 ;
  wire \adder/C_32 ;
  wire \adder/C_34 ;
  wire \adder/C_35 ;
  wire \adder/C_36 ;
  wire \adder/C_37 ;
  wire \adder/C_39 ;
  wire \adder/C_40 ;
  wire \adder/C_41 ;
  wire \adder/C_42 ;
  wire \adder/C_44 ;
  wire \adder/C_45 ;
  wire \adder/C_46 ;
  wire \adder/C_47 ;
  wire \adder/C_49 ;
  wire \adder/C_5 ;
  wire \adder/C_50 ;
  wire \adder/C_51 ;
  wire \adder/C_52 ;
  wire \adder/C_54 ;
  wire \adder/C_55 ;
  wire \adder/C_56 ;
  wire \adder/C_57 ;
  wire \adder/C_58 ;
  wire \adder/C_59 ;
  wire \adder/C_60 ;
  wire \adder/C_61 ;
  wire \adder/C_62 ;
  wire \adder/C_7 ;
  wire \adder/C_9 ;
  wire clk;
  wire rst;
  wire x2__13;
  wire x2__18;
  wire x2__23;
  wire x2__28;
  wire x2__3;
  wire x2__33;
  wire x2__38;
  wire x2__43;
  wire x2__48;
  wire x2__53;
  wire x2__8;
  wire x3__13;
  wire x3__18;
  wire x3__23;
  wire x3__28;
  wire x3__3;
  wire x3__33;
  wire x3__38;
  wire x3__43;
  wire x3__48;
  wire x3__53;
  wire x3__8;

  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[10]_i_1__1 
       (.I0(R[9]),
        .I1(Q[9]),
        .I2(\adder/C_9 ),
        .I3(R[10]),
        .I4(Q[10]),
        .O(ADDER_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[10]_i_2 
       (.I0(\adder/C_7 ),
        .I1(Q[7]),
        .I2(R[7]),
        .I3(Q[8]),
        .I4(R[8]),
        .O(\adder/C_9 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[11]_i_1__1 
       (.I0(\adder/C_11 ),
        .I1(R[11]),
        .I2(Q[11]),
        .O(ADDER_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[12]_i_1__1 
       (.I0(R[11]),
        .I1(Q[11]),
        .I2(\adder/C_11 ),
        .I3(R[12]),
        .I4(Q[12]),
        .O(ADDER_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[12]_i_2 
       (.I0(\adder/C_9 ),
        .I1(Q[9]),
        .I2(R[9]),
        .I3(Q[10]),
        .I4(R[10]),
        .O(\adder/C_11 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[13]_i_1__1 
       (.I0(R[12]),
        .I1(Q[12]),
        .I2(\adder/C_12 ),
        .I3(R[13]),
        .I4(Q[13]),
        .O(ADDER_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[13]_i_2 
       (.I0(\adder/C_10 ),
        .I1(Q[10]),
        .I2(R[10]),
        .I3(Q[11]),
        .I4(R[11]),
        .O(\adder/C_12 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[13]_i_3 
       (.I0(C_8),
        .I1(Q[8]),
        .I2(R[8]),
        .I3(Q[9]),
        .I4(R[9]),
        .O(\adder/C_10 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[13]_i_4 
       (.I0(x2__3),
        .I1(x3__3),
        .I2(Q[6]),
        .I3(R[6]),
        .I4(Q[7]),
        .I5(R[7]),
        .O(C_8));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[13]_i_5 
       (.I0(R[5]),
        .I1(Q[5]),
        .O(x2__3));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[14]_i_1__1 
       (.I0(\adder/C_14 ),
        .I1(R[14]),
        .I2(Q[14]),
        .O(ADDER_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[15]_i_1__1 
       (.I0(R[14]),
        .I1(Q[14]),
        .I2(\adder/C_14 ),
        .I3(R[15]),
        .I4(Q[15]),
        .O(ADDER_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[15]_i_2 
       (.I0(\adder/C_12 ),
        .I1(Q[12]),
        .I2(R[12]),
        .I3(Q[13]),
        .I4(R[13]),
        .O(\adder/C_14 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[16]_i_1__1 
       (.I0(\adder/C_16 ),
        .I1(R[16]),
        .I2(Q[16]),
        .O(ADDER_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[17]_i_1__1 
       (.I0(R[16]),
        .I1(Q[16]),
        .I2(\adder/C_16 ),
        .I3(R[17]),
        .I4(Q[17]),
        .O(ADDER_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[17]_i_2 
       (.I0(\adder/C_14 ),
        .I1(Q[14]),
        .I2(R[14]),
        .I3(Q[15]),
        .I4(R[15]),
        .O(\adder/C_16 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[18]_i_1__1 
       (.I0(R[17]),
        .I1(Q[17]),
        .I2(\adder/C_17 ),
        .I3(R[18]),
        .I4(Q[18]),
        .O(ADDER_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[18]_i_2 
       (.I0(\adder/C_15 ),
        .I1(Q[15]),
        .I2(R[15]),
        .I3(Q[16]),
        .I4(R[16]),
        .O(\adder/C_17 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[18]_i_3 
       (.I0(C_13),
        .I1(Q[13]),
        .I2(R[13]),
        .I3(Q[14]),
        .I4(R[14]),
        .O(\adder/C_15 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[18]_i_4 
       (.I0(x2__8),
        .I1(x3__8),
        .I2(Q[11]),
        .I3(R[11]),
        .I4(Q[12]),
        .I5(R[12]),
        .O(C_13));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[18]_i_5 
       (.I0(R[10]),
        .I1(Q[10]),
        .O(x2__8));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[19]_i_1__1 
       (.I0(\adder/C_19 ),
        .I1(R[19]),
        .I2(Q[19]),
        .O(ADDER_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[20]_i_1__1 
       (.I0(R[19]),
        .I1(Q[19]),
        .I2(\adder/C_19 ),
        .I3(R[20]),
        .I4(Q[20]),
        .O(ADDER_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[20]_i_2 
       (.I0(\adder/C_17 ),
        .I1(Q[17]),
        .I2(R[17]),
        .I3(Q[18]),
        .I4(R[18]),
        .O(\adder/C_19 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[21]_i_1__1 
       (.I0(\adder/C_21 ),
        .I1(R[21]),
        .I2(Q[21]),
        .O(ADDER_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[22]_i_1__1 
       (.I0(R[21]),
        .I1(Q[21]),
        .I2(\adder/C_21 ),
        .I3(R[22]),
        .I4(Q[22]),
        .O(ADDER_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[22]_i_2 
       (.I0(\adder/C_19 ),
        .I1(Q[19]),
        .I2(R[19]),
        .I3(Q[20]),
        .I4(R[20]),
        .O(\adder/C_21 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[23]_i_1__1 
       (.I0(R[22]),
        .I1(Q[22]),
        .I2(\adder/C_22 ),
        .I3(R[23]),
        .I4(Q[23]),
        .O(ADDER_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[23]_i_2 
       (.I0(\adder/C_20 ),
        .I1(Q[20]),
        .I2(R[20]),
        .I3(Q[21]),
        .I4(R[21]),
        .O(\adder/C_22 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[23]_i_3 
       (.I0(C_18),
        .I1(Q[18]),
        .I2(R[18]),
        .I3(Q[19]),
        .I4(R[19]),
        .O(\adder/C_20 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[23]_i_4 
       (.I0(x2__13),
        .I1(x3__13),
        .I2(Q[16]),
        .I3(R[16]),
        .I4(Q[17]),
        .I5(R[17]),
        .O(C_18));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[23]_i_5 
       (.I0(R[15]),
        .I1(Q[15]),
        .O(x2__13));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[24]_i_1__1 
       (.I0(\adder/C_24 ),
        .I1(R[24]),
        .I2(Q[24]),
        .O(ADDER_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[25]_i_1__1 
       (.I0(R[24]),
        .I1(Q[24]),
        .I2(\adder/C_24 ),
        .I3(R[25]),
        .I4(Q[25]),
        .O(ADDER_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[25]_i_2 
       (.I0(\adder/C_22 ),
        .I1(Q[22]),
        .I2(R[22]),
        .I3(Q[23]),
        .I4(R[23]),
        .O(\adder/C_24 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[26]_i_1__1 
       (.I0(\adder/C_26 ),
        .I1(R[26]),
        .I2(Q[26]),
        .O(ADDER_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[27]_i_1__1 
       (.I0(R[26]),
        .I1(Q[26]),
        .I2(\adder/C_26 ),
        .I3(R[27]),
        .I4(Q[27]),
        .O(ADDER_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[27]_i_2 
       (.I0(\adder/C_24 ),
        .I1(Q[24]),
        .I2(R[24]),
        .I3(Q[25]),
        .I4(R[25]),
        .O(\adder/C_26 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[28]_i_1__1 
       (.I0(R[27]),
        .I1(Q[27]),
        .I2(\adder/C_27 ),
        .I3(R[28]),
        .I4(Q[28]),
        .O(ADDER_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[28]_i_2 
       (.I0(\adder/C_25 ),
        .I1(Q[25]),
        .I2(R[25]),
        .I3(Q[26]),
        .I4(R[26]),
        .O(\adder/C_27 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[28]_i_3 
       (.I0(C_23),
        .I1(Q[23]),
        .I2(R[23]),
        .I3(Q[24]),
        .I4(R[24]),
        .O(\adder/C_25 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[28]_i_4 
       (.I0(x2__18),
        .I1(x3__18),
        .I2(Q[21]),
        .I3(R[21]),
        .I4(Q[22]),
        .I5(R[22]),
        .O(C_23));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[28]_i_5 
       (.I0(R[20]),
        .I1(Q[20]),
        .O(x2__18));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[29]_i_1__1 
       (.I0(\adder/C_29 ),
        .I1(R[29]),
        .I2(Q[29]),
        .O(ADDER_out[29]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \Q[2]_i_1__1 
       (.I0(R[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(R[0]),
        .I4(R[2]),
        .I5(Q[2]),
        .O(ADDER_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[30]_i_1__1 
       (.I0(R[29]),
        .I1(Q[29]),
        .I2(\adder/C_29 ),
        .I3(R[30]),
        .I4(Q[30]),
        .O(ADDER_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[30]_i_2 
       (.I0(\adder/C_27 ),
        .I1(Q[27]),
        .I2(R[27]),
        .I3(Q[28]),
        .I4(R[28]),
        .O(\adder/C_29 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[31]_i_1__1 
       (.I0(\adder/C_31 ),
        .I1(R[31]),
        .I2(Q[31]),
        .O(ADDER_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[32]_i_1__0 
       (.I0(R[31]),
        .I1(Q[31]),
        .I2(\adder/C_31 ),
        .I3(R[32]),
        .I4(Q[32]),
        .O(ADDER_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[32]_i_2 
       (.I0(\adder/C_29 ),
        .I1(Q[29]),
        .I2(R[29]),
        .I3(Q[30]),
        .I4(R[30]),
        .O(\adder/C_31 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[33]_i_1__0 
       (.I0(R[32]),
        .I1(Q[32]),
        .I2(\adder/C_32 ),
        .I3(R[33]),
        .I4(Q[33]),
        .O(ADDER_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[33]_i_2 
       (.I0(\adder/C_30 ),
        .I1(Q[30]),
        .I2(R[30]),
        .I3(Q[31]),
        .I4(R[31]),
        .O(\adder/C_32 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[33]_i_3 
       (.I0(C_28),
        .I1(Q[28]),
        .I2(R[28]),
        .I3(Q[29]),
        .I4(R[29]),
        .O(\adder/C_30 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[33]_i_4 
       (.I0(x2__23),
        .I1(x3__23),
        .I2(Q[26]),
        .I3(R[26]),
        .I4(Q[27]),
        .I5(R[27]),
        .O(C_28));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[33]_i_5 
       (.I0(R[25]),
        .I1(Q[25]),
        .O(x2__23));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[34]_i_1__0 
       (.I0(\adder/C_34 ),
        .I1(R[34]),
        .I2(Q[34]),
        .O(ADDER_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[35]_i_1__0 
       (.I0(R[34]),
        .I1(Q[34]),
        .I2(\adder/C_34 ),
        .I3(R[35]),
        .I4(Q[35]),
        .O(ADDER_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[35]_i_2 
       (.I0(\adder/C_32 ),
        .I1(Q[32]),
        .I2(R[32]),
        .I3(Q[33]),
        .I4(R[33]),
        .O(\adder/C_34 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[36]_i_1__0 
       (.I0(\adder/C_36 ),
        .I1(R[36]),
        .I2(Q[36]),
        .O(ADDER_out[36]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[37]_i_1__0 
       (.I0(R[36]),
        .I1(Q[36]),
        .I2(\adder/C_36 ),
        .I3(R[37]),
        .I4(Q[37]),
        .O(ADDER_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[37]_i_2 
       (.I0(\adder/C_34 ),
        .I1(Q[34]),
        .I2(R[34]),
        .I3(Q[35]),
        .I4(R[35]),
        .O(\adder/C_36 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[38]_i_1__0 
       (.I0(R[37]),
        .I1(Q[37]),
        .I2(\adder/C_37 ),
        .I3(R[38]),
        .I4(Q[38]),
        .O(ADDER_out[38]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[38]_i_2 
       (.I0(\adder/C_35 ),
        .I1(Q[35]),
        .I2(R[35]),
        .I3(Q[36]),
        .I4(R[36]),
        .O(\adder/C_37 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[38]_i_3 
       (.I0(C_33),
        .I1(Q[33]),
        .I2(R[33]),
        .I3(Q[34]),
        .I4(R[34]),
        .O(\adder/C_35 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[38]_i_4 
       (.I0(x2__28),
        .I1(x3__28),
        .I2(Q[31]),
        .I3(R[31]),
        .I4(Q[32]),
        .I5(R[32]),
        .O(C_33));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[38]_i_5 
       (.I0(R[30]),
        .I1(Q[30]),
        .O(x2__28));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[39]_i_1__0 
       (.I0(\adder/C_39 ),
        .I1(R[39]),
        .I2(Q[39]),
        .O(ADDER_out[39]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[3]_i_1__1 
       (.I0(C_3),
        .I1(R[3]),
        .I2(Q[3]),
        .O(ADDER_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[40]_i_1__0 
       (.I0(R[39]),
        .I1(Q[39]),
        .I2(\adder/C_39 ),
        .I3(R[40]),
        .I4(Q[40]),
        .O(ADDER_out[40]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[40]_i_2 
       (.I0(\adder/C_37 ),
        .I1(Q[37]),
        .I2(R[37]),
        .I3(Q[38]),
        .I4(R[38]),
        .O(\adder/C_39 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[41]_i_1__0 
       (.I0(\adder/C_41 ),
        .I1(R[41]),
        .I2(Q[41]),
        .O(ADDER_out[41]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[42]_i_1__0 
       (.I0(R[41]),
        .I1(Q[41]),
        .I2(\adder/C_41 ),
        .I3(R[42]),
        .I4(Q[42]),
        .O(ADDER_out[42]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[42]_i_2 
       (.I0(\adder/C_39 ),
        .I1(Q[39]),
        .I2(R[39]),
        .I3(Q[40]),
        .I4(R[40]),
        .O(\adder/C_41 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[43]_i_1__0 
       (.I0(R[42]),
        .I1(Q[42]),
        .I2(\adder/C_42 ),
        .I3(R[43]),
        .I4(Q[43]),
        .O(ADDER_out[43]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[43]_i_2 
       (.I0(\adder/C_40 ),
        .I1(Q[40]),
        .I2(R[40]),
        .I3(Q[41]),
        .I4(R[41]),
        .O(\adder/C_42 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[43]_i_3 
       (.I0(C_38),
        .I1(Q[38]),
        .I2(R[38]),
        .I3(Q[39]),
        .I4(R[39]),
        .O(\adder/C_40 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[43]_i_4 
       (.I0(x2__33),
        .I1(x3__33),
        .I2(Q[36]),
        .I3(R[36]),
        .I4(Q[37]),
        .I5(R[37]),
        .O(C_38));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[43]_i_5 
       (.I0(R[35]),
        .I1(Q[35]),
        .O(x2__33));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[44]_i_1__0 
       (.I0(\adder/C_44 ),
        .I1(R[44]),
        .I2(Q[44]),
        .O(ADDER_out[44]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[45]_i_1__0 
       (.I0(R[44]),
        .I1(Q[44]),
        .I2(\adder/C_44 ),
        .I3(R[45]),
        .I4(Q[45]),
        .O(ADDER_out[45]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[45]_i_2 
       (.I0(\adder/C_42 ),
        .I1(Q[42]),
        .I2(R[42]),
        .I3(Q[43]),
        .I4(R[43]),
        .O(\adder/C_44 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[46]_i_1__0 
       (.I0(\adder/C_46 ),
        .I1(R[46]),
        .I2(Q[46]),
        .O(ADDER_out[46]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[47]_i_1__0 
       (.I0(R[46]),
        .I1(Q[46]),
        .I2(\adder/C_46 ),
        .I3(R[47]),
        .I4(Q[47]),
        .O(ADDER_out[47]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[47]_i_2 
       (.I0(\adder/C_44 ),
        .I1(Q[44]),
        .I2(R[44]),
        .I3(Q[45]),
        .I4(R[45]),
        .O(\adder/C_46 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[48]_i_1__0 
       (.I0(R[47]),
        .I1(Q[47]),
        .I2(\adder/C_47 ),
        .I3(R[48]),
        .I4(Q[48]),
        .O(ADDER_out[48]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[48]_i_2 
       (.I0(\adder/C_45 ),
        .I1(Q[45]),
        .I2(R[45]),
        .I3(Q[46]),
        .I4(R[46]),
        .O(\adder/C_47 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[48]_i_3 
       (.I0(C_43),
        .I1(Q[43]),
        .I2(R[43]),
        .I3(Q[44]),
        .I4(R[44]),
        .O(\adder/C_45 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[48]_i_4 
       (.I0(x2__38),
        .I1(x3__38),
        .I2(Q[41]),
        .I3(R[41]),
        .I4(Q[42]),
        .I5(R[42]),
        .O(C_43));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[48]_i_5 
       (.I0(R[40]),
        .I1(Q[40]),
        .O(x2__38));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[49]_i_1__0 
       (.I0(\adder/C_49 ),
        .I1(R[49]),
        .I2(Q[49]),
        .O(ADDER_out[49]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[4]_i_1__1 
       (.I0(R[3]),
        .I1(Q[3]),
        .I2(C_3),
        .I3(R[4]),
        .I4(Q[4]),
        .O(ADDER_out[4]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \Q[4]_i_2 
       (.I0(R[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(R[1]),
        .I4(Q[2]),
        .I5(R[2]),
        .O(C_3));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[50]_i_1__0 
       (.I0(R[49]),
        .I1(Q[49]),
        .I2(\adder/C_49 ),
        .I3(R[50]),
        .I4(Q[50]),
        .O(ADDER_out[50]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[50]_i_2 
       (.I0(\adder/C_47 ),
        .I1(Q[47]),
        .I2(R[47]),
        .I3(Q[48]),
        .I4(R[48]),
        .O(\adder/C_49 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[51]_i_1__0 
       (.I0(\adder/C_51 ),
        .I1(R[51]),
        .I2(Q[51]),
        .O(ADDER_out[51]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[52]_i_1__0 
       (.I0(R[51]),
        .I1(Q[51]),
        .I2(\adder/C_51 ),
        .I3(R[52]),
        .I4(Q[52]),
        .O(ADDER_out[52]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[52]_i_2 
       (.I0(\adder/C_49 ),
        .I1(Q[49]),
        .I2(R[49]),
        .I3(Q[50]),
        .I4(R[50]),
        .O(\adder/C_51 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[53]_i_1__0 
       (.I0(R[52]),
        .I1(Q[52]),
        .I2(\adder/C_52 ),
        .I3(R[53]),
        .I4(Q[53]),
        .O(ADDER_out[53]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[53]_i_2 
       (.I0(\adder/C_50 ),
        .I1(Q[50]),
        .I2(R[50]),
        .I3(Q[51]),
        .I4(R[51]),
        .O(\adder/C_52 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[53]_i_3 
       (.I0(C_48),
        .I1(Q[48]),
        .I2(R[48]),
        .I3(Q[49]),
        .I4(R[49]),
        .O(\adder/C_50 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[53]_i_4 
       (.I0(x2__43),
        .I1(x3__43),
        .I2(Q[46]),
        .I3(R[46]),
        .I4(Q[47]),
        .I5(R[47]),
        .O(C_48));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[53]_i_5 
       (.I0(R[45]),
        .I1(Q[45]),
        .O(x2__43));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[54]_i_1__0 
       (.I0(\adder/C_54 ),
        .I1(R[54]),
        .I2(Q[54]),
        .O(ADDER_out[54]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[55]_i_1__0 
       (.I0(R[54]),
        .I1(Q[54]),
        .I2(\adder/C_54 ),
        .I3(R[55]),
        .I4(Q[55]),
        .O(ADDER_out[55]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[55]_i_2 
       (.I0(\adder/C_52 ),
        .I1(Q[52]),
        .I2(R[52]),
        .I3(Q[53]),
        .I4(R[53]),
        .O(\adder/C_54 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[56]_i_1__0 
       (.I0(\adder/C_56 ),
        .I1(R[56]),
        .I2(Q[56]),
        .O(ADDER_out[56]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[57]_i_1__0 
       (.I0(R[56]),
        .I1(Q[56]),
        .I2(\adder/C_56 ),
        .I3(R[57]),
        .I4(Q[57]),
        .O(ADDER_out[57]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[57]_i_2 
       (.I0(\adder/C_54 ),
        .I1(Q[54]),
        .I2(R[54]),
        .I3(Q[55]),
        .I4(R[55]),
        .O(\adder/C_56 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[58]_i_1__0 
       (.I0(R[57]),
        .I1(Q[57]),
        .I2(\adder/C_57 ),
        .I3(R[58]),
        .I4(Q[58]),
        .O(ADDER_out[58]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[58]_i_2 
       (.I0(\adder/C_55 ),
        .I1(Q[55]),
        .I2(R[55]),
        .I3(Q[56]),
        .I4(R[56]),
        .O(\adder/C_57 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[58]_i_3 
       (.I0(C_53),
        .I1(Q[53]),
        .I2(R[53]),
        .I3(Q[54]),
        .I4(R[54]),
        .O(\adder/C_55 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[58]_i_4 
       (.I0(x2__48),
        .I1(x3__48),
        .I2(Q[51]),
        .I3(R[51]),
        .I4(Q[52]),
        .I5(R[52]),
        .O(C_53));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[58]_i_5 
       (.I0(R[50]),
        .I1(Q[50]),
        .O(x2__48));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[59]_i_1__0 
       (.I0(\adder/C_59 ),
        .I1(R[59]),
        .I2(Q[59]),
        .O(ADDER_out[59]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[5]_i_1__1 
       (.I0(\adder/C_5 ),
        .I1(R[5]),
        .I2(Q[5]),
        .O(ADDER_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[60]_i_1__0 
       (.I0(R[59]),
        .I1(Q[59]),
        .I2(\adder/C_59 ),
        .I3(R[60]),
        .I4(Q[60]),
        .O(ADDER_out[60]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[60]_i_2 
       (.I0(\adder/C_57 ),
        .I1(Q[57]),
        .I2(R[57]),
        .I3(Q[58]),
        .I4(R[58]),
        .O(\adder/C_59 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[61]_i_1__0 
       (.I0(\adder/C_61 ),
        .I1(R[61]),
        .I2(Q[61]),
        .O(ADDER_out[61]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[62]_i_1__0 
       (.I0(R[61]),
        .I1(Q[61]),
        .I2(\adder/C_61 ),
        .I3(R[62]),
        .I4(Q[62]),
        .O(ADDER_out[62]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[62]_i_2 
       (.I0(\adder/C_59 ),
        .I1(Q[59]),
        .I2(R[59]),
        .I3(Q[60]),
        .I4(R[60]),
        .O(\adder/C_61 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[63]_i_1__0 
       (.I0(R[62]),
        .I1(Q[62]),
        .I2(\adder/C_62 ),
        .I3(R[63]),
        .I4(Q[63]),
        .O(ADDER_out[63]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[63]_i_2__0 
       (.I0(\adder/C_60 ),
        .I1(Q[60]),
        .I2(R[60]),
        .I3(Q[61]),
        .I4(R[61]),
        .O(\adder/C_62 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[63]_i_3 
       (.I0(\adder/C_58 ),
        .I1(Q[58]),
        .I2(R[58]),
        .I3(Q[59]),
        .I4(R[59]),
        .O(\adder/C_60 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[63]_i_4 
       (.I0(x2__53),
        .I1(x3__53),
        .I2(Q[56]),
        .I3(R[56]),
        .I4(Q[57]),
        .I5(R[57]),
        .O(\adder/C_58 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[63]_i_5 
       (.I0(R[55]),
        .I1(Q[55]),
        .O(x2__53));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[6]_i_1__1 
       (.I0(R[5]),
        .I1(Q[5]),
        .I2(\adder/C_5 ),
        .I3(R[6]),
        .I4(Q[6]),
        .O(ADDER_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[6]_i_2 
       (.I0(C_3),
        .I1(Q[3]),
        .I2(R[3]),
        .I3(Q[4]),
        .I4(R[4]),
        .O(\adder/C_5 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[7]_i_1__1 
       (.I0(\adder/C_7 ),
        .I1(R[7]),
        .I2(Q[7]),
        .O(ADDER_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[8]_i_1__1 
       (.I0(R[7]),
        .I1(Q[7]),
        .I2(\adder/C_7 ),
        .I3(R[8]),
        .I4(Q[8]),
        .O(ADDER_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[8]_i_2 
       (.I0(\adder/C_5 ),
        .I1(Q[5]),
        .I2(R[5]),
        .I3(Q[6]),
        .I4(R[6]),
        .O(\adder/C_7 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[9]_i_1__1 
       (.I0(\adder/C_9 ),
        .I1(R[9]),
        .I2(Q[9]),
        .O(ADDER_out[9]));
  FDCE \Q_reg[0] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(D[0]),
        .Q(R[0]));
  FDCE \Q_reg[10] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[10]),
        .Q(R[10]));
  FDCE \Q_reg[11] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[11]),
        .Q(R[11]));
  FDCE \Q_reg[12] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[12]),
        .Q(R[12]));
  FDCE \Q_reg[13] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[13]),
        .Q(R[13]));
  FDCE \Q_reg[14] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[14]),
        .Q(R[14]));
  FDCE \Q_reg[15] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[15]),
        .Q(R[15]));
  FDCE \Q_reg[16] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[16]),
        .Q(R[16]));
  FDCE \Q_reg[17] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[17]),
        .Q(R[17]));
  FDCE \Q_reg[18] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[18]),
        .Q(R[18]));
  FDCE \Q_reg[19] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[19]),
        .Q(R[19]));
  FDCE \Q_reg[1] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(D[1]),
        .Q(R[1]));
  FDCE \Q_reg[20] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[20]),
        .Q(R[20]));
  FDCE \Q_reg[21] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[21]),
        .Q(R[21]));
  FDCE \Q_reg[22] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[22]),
        .Q(R[22]));
  FDCE \Q_reg[23] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[23]),
        .Q(R[23]));
  FDCE \Q_reg[24] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[24]),
        .Q(R[24]));
  FDCE \Q_reg[25] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[25]),
        .Q(R[25]));
  FDCE \Q_reg[26] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[26]),
        .Q(R[26]));
  FDCE \Q_reg[27] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[27]),
        .Q(R[27]));
  FDCE \Q_reg[28] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[28]),
        .Q(R[28]));
  FDCE \Q_reg[29] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[29]),
        .Q(R[29]));
  FDCE \Q_reg[2] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[2]),
        .Q(R[2]));
  FDCE \Q_reg[30] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[30]),
        .Q(R[30]));
  FDCE \Q_reg[31] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[31]),
        .Q(R[31]));
  FDCE \Q_reg[32] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[32]),
        .Q(R[32]));
  FDCE \Q_reg[33] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[33]),
        .Q(R[33]));
  FDCE \Q_reg[34] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[34]),
        .Q(R[34]));
  FDCE \Q_reg[35] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[35]),
        .Q(R[35]));
  FDCE \Q_reg[36] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[36]),
        .Q(R[36]));
  FDCE \Q_reg[37] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[37]),
        .Q(R[37]));
  FDCE \Q_reg[38] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[38]),
        .Q(R[38]));
  FDCE \Q_reg[39] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[39]),
        .Q(R[39]));
  FDCE \Q_reg[3] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[3]),
        .Q(R[3]));
  FDCE \Q_reg[40] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[40]),
        .Q(R[40]));
  FDCE \Q_reg[41] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[41]),
        .Q(R[41]));
  FDCE \Q_reg[42] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[42]),
        .Q(R[42]));
  FDCE \Q_reg[43] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[43]),
        .Q(R[43]));
  FDCE \Q_reg[44] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[44]),
        .Q(R[44]));
  FDCE \Q_reg[45] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[45]),
        .Q(R[45]));
  FDCE \Q_reg[46] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[46]),
        .Q(R[46]));
  FDCE \Q_reg[47] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[47]),
        .Q(R[47]));
  FDCE \Q_reg[48] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[48]),
        .Q(R[48]));
  FDCE \Q_reg[49] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[49]),
        .Q(R[49]));
  FDCE \Q_reg[4] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[4]),
        .Q(R[4]));
  FDCE \Q_reg[50] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[50]),
        .Q(R[50]));
  FDCE \Q_reg[51] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[51]),
        .Q(R[51]));
  FDCE \Q_reg[52] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[52]),
        .Q(R[52]));
  FDCE \Q_reg[53] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[53]),
        .Q(R[53]));
  FDCE \Q_reg[54] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[54]),
        .Q(R[54]));
  FDCE \Q_reg[55] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[55]),
        .Q(R[55]));
  FDCE \Q_reg[56] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[56]),
        .Q(R[56]));
  FDCE \Q_reg[57] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[57]),
        .Q(R[57]));
  FDCE \Q_reg[58] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[58]),
        .Q(R[58]));
  FDCE \Q_reg[59] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[59]),
        .Q(R[59]));
  FDCE \Q_reg[5] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[5]),
        .Q(R[5]));
  FDCE \Q_reg[60] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[60]),
        .Q(R[60]));
  FDCE \Q_reg[61] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[61]),
        .Q(R[61]));
  FDCE \Q_reg[62] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[62]),
        .Q(R[62]));
  FDCE \Q_reg[63] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[63]),
        .Q(R[63]));
  FDCE \Q_reg[6] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[6]),
        .Q(R[6]));
  FDCE \Q_reg[7] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[7]),
        .Q(R[7]));
  FDCE \Q_reg[8] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[8]),
        .Q(R[8]));
  FDCE \Q_reg[9] 
       (.C(clk),
        .CE(\Q_reg[0]_0 ),
        .CLR(rst),
        .D(ADDER_out[9]),
        .Q(R[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
