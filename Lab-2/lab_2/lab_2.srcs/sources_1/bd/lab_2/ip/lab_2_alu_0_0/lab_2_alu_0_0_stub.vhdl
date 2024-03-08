-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb  1 22:53:25 2024
-- Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/alexivensky/ADDLabs/Lab-2/lab_2/lab_2.srcs/sources_1/bd/lab_2/ip/lab_2_alu_0_0/lab_2_alu_0_0_stub.vhdl
-- Design      : lab_2_alu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab_2_alu_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SHAMT : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ALUOp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Zero : out STD_LOGIC;
    Overflow : out STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end lab_2_alu_0_0;

architecture stub of lab_2_alu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],SHAMT[4:0],ALUOp[3:0],Zero,Overflow,R[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "alu,Vivado 2018.3";
begin
end;
