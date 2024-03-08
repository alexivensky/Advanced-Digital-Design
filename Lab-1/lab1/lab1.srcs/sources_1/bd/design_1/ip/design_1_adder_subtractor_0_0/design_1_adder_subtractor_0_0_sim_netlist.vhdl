-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Jan 23 17:57:01 2024
-- Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/alexivensky/ADDLabs/Lab-1/lab1/lab1.srcs/sources_1/bd/design_1/ip/design_1_adder_subtractor_0_0/design_1_adder_subtractor_0_0_sim_netlist.vhdl
-- Design      : design_1_adder_subtractor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adder_subtractor_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    K : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_adder_subtractor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adder_subtractor_0_0 : entity is "design_1_adder_subtractor_0_0,adder_subtractor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_adder_subtractor_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_adder_subtractor_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_adder_subtractor_0_0 : entity is "adder_subtractor,Vivado 2018.3";
end design_1_adder_subtractor_0_0;

architecture STRUCTURE of design_1_adder_subtractor_0_0 is
  signal \U0/C_10\ : STD_LOGIC;
  signal \U0/C_11\ : STD_LOGIC;
  signal \U0/C_12\ : STD_LOGIC;
  signal \U0/C_13\ : STD_LOGIC;
  signal \U0/C_14\ : STD_LOGIC;
  signal \U0/C_15\ : STD_LOGIC;
  signal \U0/C_16\ : STD_LOGIC;
  signal \U0/C_17\ : STD_LOGIC;
  signal \U0/C_18\ : STD_LOGIC;
  signal \U0/C_19\ : STD_LOGIC;
  signal \U0/C_2\ : STD_LOGIC;
  signal \U0/C_20\ : STD_LOGIC;
  signal \U0/C_21\ : STD_LOGIC;
  signal \U0/C_22\ : STD_LOGIC;
  signal \U0/C_23\ : STD_LOGIC;
  signal \U0/C_24\ : STD_LOGIC;
  signal \U0/C_25\ : STD_LOGIC;
  signal \U0/C_26\ : STD_LOGIC;
  signal \U0/C_27\ : STD_LOGIC;
  signal \U0/C_28\ : STD_LOGIC;
  signal \U0/C_29\ : STD_LOGIC;
  signal \U0/C_4\ : STD_LOGIC;
  signal \U0/C_6\ : STD_LOGIC;
  signal \U0/C_7\ : STD_LOGIC;
  signal \U0/C_8\ : STD_LOGIC;
  signal \U0/C_9\ : STD_LOGIC;
  signal \U0/F[14].adders/x1__0\ : STD_LOGIC;
  signal \U0/F[19].adders/x1__0\ : STD_LOGIC;
  signal \U0/F[24].adders/x1__0\ : STD_LOGIC;
  signal \U0/F[29].adders/x1__0\ : STD_LOGIC;
  signal \U0/F[30].adders/x1__0\ : STD_LOGIC;
  signal \U0/F[4].adders/x1__0\ : STD_LOGIC;
  signal \U0/F[9].adders/x1__0\ : STD_LOGIC;
  signal \U0/a_n/x1__0\ : STD_LOGIC;
  signal \U0/b10_out\ : STD_LOGIC;
  signal \U0/b12_out\ : STD_LOGIC;
  signal \U0/b14_out\ : STD_LOGIC;
  signal \U0/b18_out\ : STD_LOGIC;
  signal \U0/b20_out\ : STD_LOGIC;
  signal \U0/b22_out\ : STD_LOGIC;
  signal \U0/b24_out\ : STD_LOGIC;
  signal \U0/b28_out\ : STD_LOGIC;
  signal \U0/b2_out\ : STD_LOGIC;
  signal \U0/b30_out\ : STD_LOGIC;
  signal \U0/b32_out\ : STD_LOGIC;
  signal \U0/b34_out\ : STD_LOGIC;
  signal \U0/b38_out\ : STD_LOGIC;
  signal \U0/b40_out\ : STD_LOGIC;
  signal \U0/b42_out\ : STD_LOGIC;
  signal \U0/b44_out\ : STD_LOGIC;
  signal \U0/b48_out\ : STD_LOGIC;
  signal \U0/b4_out\ : STD_LOGIC;
  signal \U0/b50_out\ : STD_LOGIC;
  signal \U0/b52_out\ : STD_LOGIC;
  signal \U0/b54_out\ : STD_LOGIC;
  signal \U0/b56_out\ : STD_LOGIC;
  signal \U0/b58_out\ : STD_LOGIC;
  signal \U0/b60_out\ : STD_LOGIC;
  signal \U0/b8_out\ : STD_LOGIC;
  signal \x2__14\ : STD_LOGIC;
  signal \x2__19\ : STD_LOGIC;
  signal \x2__24\ : STD_LOGIC;
  signal \x2__29\ : STD_LOGIC;
  signal \x2__4\ : STD_LOGIC;
  signal \x2__9\ : STD_LOGIC;
  signal \x3__14\ : STD_LOGIC;
  signal \x3__19\ : STD_LOGIC;
  signal \x3__24\ : STD_LOGIC;
  signal \x3__29\ : STD_LOGIC;
  signal \x3__4\ : STD_LOGIC;
  signal \x3__9\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S[17]_INST_0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S[30]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \S[30]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_12\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S[31]_INST_0_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of c_out_INST_0_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of c_out_INST_0_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of c_out_INST_0_i_4 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of c_out_INST_0_i_5 : label is "soft_lutpair18";
begin
\S[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => S(0)
    );
\S[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_10\,
      I1 => A(10),
      I2 => K,
      I3 => B(10),
      O => S(10)
    );
\S[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => \U0/C_10\,
      I3 => A(11),
      I4 => K,
      I5 => B(11),
      O => S(11)
    );
\S[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_8\,
      I1 => B(8),
      I2 => K,
      I3 => A(8),
      I4 => B(9),
      I5 => A(9),
      O => \U0/C_10\
    );
\S[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      I2 => \U0/C_11\,
      I3 => A(12),
      I4 => K,
      I5 => B(12),
      O => S(12)
    );
\S[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_9\,
      I1 => B(9),
      I2 => K,
      I3 => A(9),
      I4 => B(10),
      I5 => A(10),
      O => \U0/C_11\
    );
\S[12]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(2),
      O => \U0/b2_out\
    );
\S[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_7\,
      I1 => B(7),
      I2 => K,
      I3 => A(7),
      I4 => B(8),
      I5 => A(8),
      O => \U0/C_9\
    );
\S[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__4\,
      I1 => \x3__4\,
      I2 => \U0/b8_out\,
      I3 => A(5),
      I4 => \U0/b10_out\,
      I5 => A(6),
      O => \U0/C_7\
    );
\S[12]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => K,
      O => \x2__4\
    );
\S[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F[4].adders/x1__0\,
      I1 => A(3),
      I2 => \U0/b4_out\,
      I3 => A(2),
      I4 => \U0/b2_out\,
      I5 => \U0/C_2\,
      O => \x3__4\
    );
\S[12]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(5),
      O => \U0/b8_out\
    );
\S[12]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(6),
      O => \U0/b10_out\
    );
\S[12]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(4),
      I1 => K,
      I2 => A(4),
      O => \U0/F[4].adders/x1__0\
    );
\S[12]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(3),
      O => \U0/b4_out\
    );
\S[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_13\,
      I1 => A(13),
      I2 => K,
      I3 => B(13),
      O => S(13)
    );
\S[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      I2 => \U0/C_13\,
      I3 => A(14),
      I4 => K,
      I5 => B(14),
      O => S(14)
    );
\S[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_11\,
      I1 => B(11),
      I2 => K,
      I3 => A(11),
      I4 => B(12),
      I5 => A(12),
      O => \U0/C_13\
    );
\S[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_15\,
      I1 => A(15),
      I2 => K,
      I3 => B(15),
      O => S(15)
    );
\S[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      I2 => \U0/C_15\,
      I3 => A(16),
      I4 => K,
      I5 => B(16),
      O => S(16)
    );
\S[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_13\,
      I1 => B(13),
      I2 => K,
      I3 => A(13),
      I4 => B(14),
      I5 => A(14),
      O => \U0/C_15\
    );
\S[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      I2 => \U0/C_16\,
      I3 => A(17),
      I4 => K,
      I5 => B(17),
      O => S(17)
    );
\S[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_14\,
      I1 => B(14),
      I2 => K,
      I3 => A(14),
      I4 => B(15),
      I5 => A(15),
      O => \U0/C_16\
    );
\S[17]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(7),
      O => \U0/b12_out\
    );
\S[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_12\,
      I1 => B(12),
      I2 => K,
      I3 => A(12),
      I4 => B(13),
      I5 => A(13),
      O => \U0/C_14\
    );
\S[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__9\,
      I1 => \x3__9\,
      I2 => \U0/b18_out\,
      I3 => A(10),
      I4 => \U0/b20_out\,
      I5 => A(11),
      O => \U0/C_12\
    );
\S[17]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => K,
      O => \x2__9\
    );
\S[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F[9].adders/x1__0\,
      I1 => A(8),
      I2 => \U0/b14_out\,
      I3 => A(7),
      I4 => \U0/b12_out\,
      I5 => \U0/C_7\,
      O => \x3__9\
    );
\S[17]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(10),
      O => \U0/b18_out\
    );
\S[17]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(11),
      O => \U0/b20_out\
    );
\S[17]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(9),
      I1 => K,
      I2 => A(9),
      O => \U0/F[9].adders/x1__0\
    );
\S[17]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(8),
      O => \U0/b14_out\
    );
\S[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_18\,
      I1 => A(18),
      I2 => K,
      I3 => B(18),
      O => S(18)
    );
\S[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      I2 => \U0/C_18\,
      I3 => A(19),
      I4 => K,
      I5 => B(19),
      O => S(19)
    );
\S[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_16\,
      I1 => B(16),
      I2 => K,
      I3 => A(16),
      I4 => B(17),
      I5 => A(17),
      O => \U0/C_18\
    );
\S[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B87B478"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => A(1),
      I3 => K,
      I4 => B(1),
      O => S(1)
    );
\S[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_20\,
      I1 => A(20),
      I2 => K,
      I3 => B(20),
      O => S(20)
    );
\S[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      I2 => \U0/C_20\,
      I3 => A(21),
      I4 => K,
      I5 => B(21),
      O => S(21)
    );
\S[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_18\,
      I1 => B(18),
      I2 => K,
      I3 => A(18),
      I4 => B(19),
      I5 => A(19),
      O => \U0/C_20\
    );
\S[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      I2 => \U0/C_21\,
      I3 => A(22),
      I4 => K,
      I5 => B(22),
      O => S(22)
    );
\S[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_19\,
      I1 => B(19),
      I2 => K,
      I3 => A(19),
      I4 => B(20),
      I5 => A(20),
      O => \U0/C_21\
    );
\S[22]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(12),
      O => \U0/b22_out\
    );
\S[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_17\,
      I1 => B(17),
      I2 => K,
      I3 => A(17),
      I4 => B(18),
      I5 => A(18),
      O => \U0/C_19\
    );
\S[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__14\,
      I1 => \x3__14\,
      I2 => \U0/b28_out\,
      I3 => A(15),
      I4 => \U0/b30_out\,
      I5 => A(16),
      O => \U0/C_17\
    );
\S[22]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => K,
      O => \x2__14\
    );
\S[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F[14].adders/x1__0\,
      I1 => A(13),
      I2 => \U0/b24_out\,
      I3 => A(12),
      I4 => \U0/b22_out\,
      I5 => \U0/C_12\,
      O => \x3__14\
    );
\S[22]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(15),
      O => \U0/b28_out\
    );
\S[22]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(16),
      O => \U0/b30_out\
    );
\S[22]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(14),
      I1 => K,
      I2 => A(14),
      O => \U0/F[14].adders/x1__0\
    );
\S[22]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(13),
      O => \U0/b24_out\
    );
\S[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_23\,
      I1 => A(23),
      I2 => K,
      I3 => B(23),
      O => S(23)
    );
\S[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      I2 => \U0/C_23\,
      I3 => A(24),
      I4 => K,
      I5 => B(24),
      O => S(24)
    );
\S[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_21\,
      I1 => B(21),
      I2 => K,
      I3 => A(21),
      I4 => B(22),
      I5 => A(22),
      O => \U0/C_23\
    );
\S[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_25\,
      I1 => A(25),
      I2 => K,
      I3 => B(25),
      O => S(25)
    );
\S[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      I2 => \U0/C_25\,
      I3 => A(26),
      I4 => K,
      I5 => B(26),
      O => S(26)
    );
\S[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_23\,
      I1 => B(23),
      I2 => K,
      I3 => A(23),
      I4 => B(24),
      I5 => A(24),
      O => \U0/C_25\
    );
\S[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      I2 => \U0/C_26\,
      I3 => A(27),
      I4 => K,
      I5 => B(27),
      O => S(27)
    );
\S[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_24\,
      I1 => B(24),
      I2 => K,
      I3 => A(24),
      I4 => B(25),
      I5 => A(25),
      O => \U0/C_26\
    );
\S[27]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(17),
      O => \U0/b32_out\
    );
\S[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_22\,
      I1 => B(22),
      I2 => K,
      I3 => A(22),
      I4 => B(23),
      I5 => A(23),
      O => \U0/C_24\
    );
\S[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__19\,
      I1 => \x3__19\,
      I2 => \U0/b38_out\,
      I3 => A(20),
      I4 => \U0/b40_out\,
      I5 => A(21),
      O => \U0/C_22\
    );
\S[27]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      I2 => K,
      O => \x2__19\
    );
\S[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F[19].adders/x1__0\,
      I1 => A(18),
      I2 => \U0/b34_out\,
      I3 => A(17),
      I4 => \U0/b32_out\,
      I5 => \U0/C_17\,
      O => \x3__19\
    );
\S[27]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(20),
      O => \U0/b38_out\
    );
\S[27]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(21),
      O => \U0/b40_out\
    );
\S[27]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(19),
      I1 => K,
      I2 => A(19),
      O => \U0/F[19].adders/x1__0\
    );
\S[27]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(18),
      O => \U0/b34_out\
    );
\S[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_28\,
      I1 => A(28),
      I2 => K,
      I3 => B(28),
      O => S(28)
    );
\S[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      I2 => \U0/C_28\,
      I3 => A(29),
      I4 => K,
      I5 => B(29),
      O => S(29)
    );
\S[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_2\,
      I1 => A(2),
      I2 => K,
      I3 => B(2),
      O => S(2)
    );
\S[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11171777EEE8E888"
    )
        port map (
      I0 => A(29),
      I1 => \U0/b56_out\,
      I2 => A(28),
      I3 => \U0/b54_out\,
      I4 => \U0/C_28\,
      I5 => \U0/F[30].adders/x1__0\,
      O => S(30)
    );
\S[30]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(28),
      O => \U0/b54_out\
    );
\S[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_26\,
      I1 => B(26),
      I2 => K,
      I3 => A(26),
      I4 => B(27),
      I5 => A(27),
      O => \U0/C_28\
    );
\S[30]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(30),
      I1 => K,
      I2 => A(30),
      O => \U0/F[30].adders/x1__0\
    );
\S[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11171777EEE8E888"
    )
        port map (
      I0 => A(30),
      I1 => \U0/b58_out\,
      I2 => A(29),
      I3 => \U0/b56_out\,
      I4 => \U0/C_29\,
      I5 => \U0/a_n/x1__0\,
      O => S(31)
    );
\S[31]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(30),
      O => \U0/b58_out\
    );
\S[31]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(24),
      I1 => K,
      I2 => A(24),
      O => \U0/F[24].adders/x1__0\
    );
\S[31]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(23),
      O => \U0/b44_out\
    );
\S[31]_INST_0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(22),
      O => \U0/b42_out\
    );
\S[31]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(29),
      O => \U0/b56_out\
    );
\S[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_27\,
      I1 => B(27),
      I2 => K,
      I3 => A(27),
      I4 => B(28),
      I5 => A(28),
      O => \U0/C_29\
    );
\S[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(31),
      I1 => K,
      I2 => A(31),
      O => \U0/a_n/x1__0\
    );
\S[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__24\,
      I1 => \x3__24\,
      I2 => \U0/b48_out\,
      I3 => A(25),
      I4 => \U0/b50_out\,
      I5 => A(26),
      O => \U0/C_27\
    );
\S[31]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      I2 => K,
      O => \x2__24\
    );
\S[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F[24].adders/x1__0\,
      I1 => A(23),
      I2 => \U0/b44_out\,
      I3 => A(22),
      I4 => \U0/b42_out\,
      I5 => \U0/C_22\,
      O => \x3__24\
    );
\S[31]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(25),
      O => \U0/b48_out\
    );
\S[31]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(26),
      O => \U0/b50_out\
    );
\S[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => \U0/C_2\,
      I3 => A(3),
      I4 => K,
      I5 => B(3),
      O => S(3)
    );
\S[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7EA40A2"
    )
        port map (
      I0 => K,
      I1 => B(0),
      I2 => A(0),
      I3 => B(1),
      I4 => A(1),
      O => \U0/C_2\
    );
\S[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_4\,
      I1 => A(4),
      I2 => K,
      I3 => B(4),
      O => S(4)
    );
\S[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => \U0/C_4\,
      I3 => A(5),
      I4 => K,
      I5 => B(5),
      O => S(5)
    );
\S[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_2\,
      I1 => B(2),
      I2 => K,
      I3 => A(2),
      I4 => B(3),
      I5 => A(3),
      O => \U0/C_4\
    );
\S[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_6\,
      I1 => A(6),
      I2 => K,
      I3 => B(6),
      O => S(6)
    );
\S[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      I2 => \U0/C_6\,
      I3 => A(7),
      I4 => K,
      I5 => B(7),
      O => S(7)
    );
\S[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_4\,
      I1 => B(4),
      I2 => K,
      I3 => A(4),
      I4 => B(5),
      I5 => A(5),
      O => \U0/C_6\
    );
\S[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/C_8\,
      I1 => A(8),
      I2 => K,
      I3 => B(8),
      O => S(8)
    );
\S[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => \U0/C_8\,
      I3 => A(9),
      I4 => K,
      I5 => B(9),
      O => S(9)
    );
\S[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/C_6\,
      I1 => B(6),
      I2 => K,
      I3 => A(6),
      I4 => B(7),
      I5 => A(7),
      O => \U0/C_8\
    );
c_out_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__29\,
      I1 => \x3__29\,
      I2 => \U0/b58_out\,
      I3 => A(30),
      I4 => \U0/b60_out\,
      I5 => A(31),
      O => c_out
    );
c_out_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => K,
      O => \x2__29\
    );
c_out_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F[29].adders/x1__0\,
      I1 => A(28),
      I2 => \U0/b54_out\,
      I3 => A(27),
      I4 => \U0/b52_out\,
      I5 => \U0/C_27\,
      O => \x3__29\
    );
c_out_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(31),
      O => \U0/b60_out\
    );
c_out_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(29),
      I1 => K,
      I2 => A(29),
      O => \U0/F[29].adders/x1__0\
    );
c_out_INST_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K,
      I1 => B(27),
      O => \U0/b52_out\
    );
end STRUCTURE;
