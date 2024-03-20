// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Mar 20 10:31:22 2024
// Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/alexivensky/ADDLabs/lab_4/lab_4.srcs/sources_1/bd/design_1/ip/design_1_CPU_no_mem_0_0/design_1_CPU_no_mem_0_0_stub.v
// Design      : design_1_CPU_no_mem_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CPU_no_mem,Vivado 2018.3" *)
module design_1_CPU_no_mem_0_0(reset, clock, MemoryAddress, MemoryDataOut, 
  MemWrite, MemRead, MemoryDataIn)
/* synthesis syn_black_box black_box_pad_pin="reset,clock,MemoryAddress[31:0],MemoryDataOut[31:0],MemWrite,MemRead,MemoryDataIn[31:0]" */;
  input reset;
  input clock;
  output [31:0]MemoryAddress;
  output [31:0]MemoryDataOut;
  output MemWrite;
  output MemRead;
  input [31:0]MemoryDataIn;
endmodule
