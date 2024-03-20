-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Mar 20 10:31:22 2024
-- Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/alexivensky/ADDLabs/lab_4/lab_4.srcs/sources_1/bd/design_1/ip/design_1_CPU_no_mem_0_0/design_1_CPU_no_mem_0_0_stub.vhdl
-- Design      : design_1_CPU_no_mem_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_CPU_no_mem_0_0 is
  Port ( 
    reset : in STD_LOGIC;
    clock : in STD_LOGIC;
    MemoryAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemoryDataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : out STD_LOGIC;
    MemRead : out STD_LOGIC;
    MemoryDataIn : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_CPU_no_mem_0_0;

architecture stub of design_1_CPU_no_mem_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,clock,MemoryAddress[31:0],MemoryDataOut[31:0],MemWrite,MemRead,MemoryDataIn[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CPU_no_mem,Vivado 2018.3";
begin
end;
