// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb  1 22:53:25 2024
// Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/alexivensky/ADDLabs/Lab-2/lab_2/lab_2.srcs/sources_1/bd/lab_2/ip/lab_2_alu_0_0/lab_2_alu_0_0_stub.v
// Design      : lab_2_alu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "alu,Vivado 2018.3" *)
module lab_2_alu_0_0(A, B, SHAMT, ALUOp, Zero, Overflow, R)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],SHAMT[4:0],ALUOp[3:0],Zero,Overflow,R[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  input [4:0]SHAMT;
  input [3:0]ALUOp;
  output Zero;
  output Overflow;
  output [31:0]R;
endmodule
