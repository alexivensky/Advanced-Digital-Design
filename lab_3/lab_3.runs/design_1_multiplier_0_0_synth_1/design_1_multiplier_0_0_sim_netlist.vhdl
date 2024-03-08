-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Feb 17 16:59:51 2024
-- Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_multiplier_0_0_sim_netlist.vhdl
-- Design      : design_1_multiplier_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_onehot_state_reg[5]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 62 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \Q_reg[30]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[5]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal MCND_S : STD_LOGIC;
  signal MPLR_S : STD_LOGIC;
  signal MPLR_load : STD_LOGIC;
  signal \i_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair36";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "sload:000001,s3:010000,s2:001000,s1:000100,s4:100000,s0:000010";
  attribute SOFT_HLUTNM of \Q[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Q[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Q[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q[14]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Q[15]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Q[17]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Q[18]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Q[19]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Q[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Q[1]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q[20]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Q[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Q[22]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Q[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Q[24]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Q[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q[27]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[28]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q[29]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Q[2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Q[30]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q[31]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q[31]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q[31]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q[32]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[33]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q[34]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q[35]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q[36]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q[37]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q[38]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q[39]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Q[40]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q[41]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Q[42]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q[43]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Q[44]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Q[45]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Q[46]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Q[47]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Q[48]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Q[49]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Q[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Q[50]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Q[51]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Q[52]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Q[53]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Q[54]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Q[55]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Q[56]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Q[57]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Q[58]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Q[59]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Q[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Q[60]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Q[61]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Q[62]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Q[63]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Q[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Q[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Q[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i[4]_i_1\ : label is "soft_lutpair0";
begin
  \FSM_onehot_state_reg[5]_0\(1 downto 0) <= \^fsm_onehot_state_reg[5]_0\(1 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => MPLR_load,
      I1 => p_0_in(5),
      I2 => MPLR_S,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \Q_reg[30]\(0),
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[5]_0\(0),
      I1 => \Q_reg[30]\(0),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[5]_0\(1),
      I1 => p_0_in(5),
      I2 => MPLR_S,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => MPLR_load
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg[5]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => MCND_S
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => MCND_S,
      Q => MPLR_S
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg[5]_0\(1)
    );
\Q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => MCND_S,
      I1 => MPLR_load,
      I2 => A(0),
      O => D(0)
    );
\Q[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(0),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(1),
      O => \FSM_onehot_state_reg[4]_0\(0)
    );
\Q[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(10),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(9),
      O => D(10)
    );
\Q[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(10),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(11),
      O => \FSM_onehot_state_reg[4]_0\(10)
    );
\Q[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(11),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(10),
      O => D(11)
    );
\Q[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(11),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(12),
      O => \FSM_onehot_state_reg[4]_0\(11)
    );
\Q[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(12),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(11),
      O => D(12)
    );
\Q[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(12),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(13),
      O => \FSM_onehot_state_reg[4]_0\(12)
    );
\Q[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(13),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(12),
      O => D(13)
    );
\Q[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(13),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(14),
      O => \FSM_onehot_state_reg[4]_0\(13)
    );
\Q[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(14),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(13),
      O => D(14)
    );
\Q[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(14),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(15),
      O => \FSM_onehot_state_reg[4]_0\(14)
    );
\Q[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(15),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(14),
      O => D(15)
    );
\Q[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(15),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(16),
      O => \FSM_onehot_state_reg[4]_0\(15)
    );
\Q[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(16),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(15),
      O => D(16)
    );
\Q[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(16),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(17),
      O => \FSM_onehot_state_reg[4]_0\(16)
    );
\Q[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(17),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(16),
      O => D(17)
    );
\Q[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(17),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(18),
      O => \FSM_onehot_state_reg[4]_0\(17)
    );
\Q[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(18),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(17),
      O => D(18)
    );
\Q[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(18),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(19),
      O => \FSM_onehot_state_reg[4]_0\(18)
    );
\Q[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(19),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(18),
      O => D(19)
    );
\Q[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(19),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(20),
      O => \FSM_onehot_state_reg[4]_0\(19)
    );
\Q[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(1),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(0),
      O => D(1)
    );
\Q[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(1),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(2),
      O => \FSM_onehot_state_reg[4]_0\(1)
    );
\Q[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(20),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(19),
      O => D(20)
    );
\Q[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(20),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(21),
      O => \FSM_onehot_state_reg[4]_0\(20)
    );
\Q[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(21),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(20),
      O => D(21)
    );
\Q[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(21),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(22),
      O => \FSM_onehot_state_reg[4]_0\(21)
    );
\Q[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(22),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(21),
      O => D(22)
    );
\Q[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(22),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(23),
      O => \FSM_onehot_state_reg[4]_0\(22)
    );
\Q[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(23),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(22),
      O => D(23)
    );
\Q[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(23),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(24),
      O => \FSM_onehot_state_reg[4]_0\(23)
    );
\Q[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(24),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(23),
      O => D(24)
    );
\Q[24]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(24),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(25),
      O => \FSM_onehot_state_reg[4]_0\(24)
    );
\Q[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(25),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(24),
      O => D(25)
    );
\Q[25]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(25),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(26),
      O => \FSM_onehot_state_reg[4]_0\(25)
    );
\Q[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(26),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(25),
      O => D(26)
    );
\Q[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(26),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(27),
      O => \FSM_onehot_state_reg[4]_0\(26)
    );
\Q[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(27),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(26),
      O => D(27)
    );
\Q[27]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(27),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(28),
      O => \FSM_onehot_state_reg[4]_0\(27)
    );
\Q[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(28),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(27),
      O => D(28)
    );
\Q[28]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(28),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(29),
      O => \FSM_onehot_state_reg[4]_0\(28)
    );
\Q[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(29),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(28),
      O => D(29)
    );
\Q[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(29),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(30),
      O => \FSM_onehot_state_reg[4]_0\(29)
    );
\Q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(2),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(1),
      O => D(2)
    );
\Q[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(2),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(3),
      O => \FSM_onehot_state_reg[4]_0\(2)
    );
\Q[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(30),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(29),
      O => D(30)
    );
\Q[30]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(30),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(31),
      O => \FSM_onehot_state_reg[4]_0\(30)
    );
\Q[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(31),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(30),
      O => D(31)
    );
\Q[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => MPLR_load,
      I1 => MPLR_S,
      O => \FSM_onehot_state_reg[0]_0\(0)
    );
\Q[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => MPLR_S,
      I1 => MPLR_load,
      I2 => B(31),
      O => \FSM_onehot_state_reg[4]_0\(31)
    );
\Q[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(31),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(32)
    );
\Q[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(32),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(33)
    );
\Q[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(33),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(34)
    );
\Q[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(34),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(35)
    );
\Q[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(35),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(36)
    );
\Q[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(36),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(37)
    );
\Q[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(37),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(38)
    );
\Q[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(38),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(39)
    );
\Q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(3),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(2),
      O => D(3)
    );
\Q[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(3),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(4),
      O => \FSM_onehot_state_reg[4]_0\(3)
    );
\Q[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(39),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(40)
    );
\Q[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(40),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(41)
    );
\Q[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(41),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(42)
    );
\Q[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(42),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(43)
    );
\Q[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(43),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(44)
    );
\Q[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(44),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(45)
    );
\Q[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(45),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(46)
    );
\Q[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(46),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(47)
    );
\Q[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(47),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(48)
    );
\Q[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(48),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(49)
    );
\Q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(4),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(3),
      O => D(4)
    );
\Q[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(4),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(5),
      O => \FSM_onehot_state_reg[4]_0\(4)
    );
\Q[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(49),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(50)
    );
\Q[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(50),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(51)
    );
\Q[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(51),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(52)
    );
\Q[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(52),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(53)
    );
\Q[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(53),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(54)
    );
\Q[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(54),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(55)
    );
\Q[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(55),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(56)
    );
\Q[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(56),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(57)
    );
\Q[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(57),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(58)
    );
\Q[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(58),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(59)
    );
\Q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(5),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(4),
      O => D(5)
    );
\Q[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(5),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(6),
      O => \FSM_onehot_state_reg[4]_0\(5)
    );
\Q[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(59),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(60)
    );
\Q[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(60),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(61)
    );
\Q[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(61),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(62)
    );
\Q[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => MPLR_load,
      I1 => MCND_S,
      O => E(0)
    );
\Q[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(62),
      I1 => MCND_S,
      I2 => MPLR_load,
      O => D(63)
    );
\Q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(6),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(5),
      O => D(6)
    );
\Q[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(6),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(7),
      O => \FSM_onehot_state_reg[4]_0\(6)
    );
\Q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(7),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(6),
      O => D(7)
    );
\Q[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(7),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(8),
      O => \FSM_onehot_state_reg[4]_0\(7)
    );
\Q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(8),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(7),
      O => D(8)
    );
\Q[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(8),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(9),
      O => \FSM_onehot_state_reg[4]_0\(8)
    );
\Q[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => A(9),
      I1 => MPLR_load,
      I2 => MCND_S,
      I3 => Q(8),
      O => D(9)
    );
\Q[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => B(9),
      I1 => MPLR_load,
      I2 => MPLR_S,
      I3 => \Q_reg[30]\(10),
      O => \FSM_onehot_state_reg[4]_0\(9)
    );
\i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i_reg__0\(0),
      I1 => \i_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i_reg__0\(0),
      I1 => \i_reg__0\(1),
      I2 => \i_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \i_reg__0\(1),
      I1 => \i_reg__0\(0),
      I2 => \i_reg__0\(2),
      I3 => \i_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \i_reg__0\(2),
      I1 => \i_reg__0\(0),
      I2 => \i_reg__0\(1),
      I3 => \i_reg__0\(3),
      I4 => \i_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \i_reg__0\(3),
      I1 => \i_reg__0\(1),
      I2 => \i_reg__0\(0),
      I3 => \i_reg__0\(2),
      I4 => \i_reg__0\(4),
      I5 => \i_reg__0\(5),
      O => p_0_in(5)
    );
\i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MPLR_S,
      CLR => rst,
      D => \p_0_in__0\(0),
      Q => \i_reg__0\(0)
    );
\i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MPLR_S,
      CLR => rst,
      D => \p_0_in__0\(1),
      Q => \i_reg__0\(1)
    );
\i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MPLR_S,
      CLR => rst,
      D => \p_0_in__0\(2),
      Q => \i_reg__0\(2)
    );
\i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MPLR_S,
      CLR => rst,
      D => \p_0_in__0\(3),
      Q => \i_reg__0\(3)
    );
\i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MPLR_S,
      CLR => rst,
      D => \p_0_in__0\(4),
      Q => \i_reg__0\(4)
    );
\i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MPLR_S,
      CLR => rst,
      D => p_0_in(5),
      Q => \i_reg__0\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_left_shift_reg is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \x3__53\ : out STD_LOGIC;
    \x3__48\ : out STD_LOGIC;
    \x3__43\ : out STD_LOGIC;
    \x3__38\ : out STD_LOGIC;
    \x3__33\ : out STD_LOGIC;
    \x3__28\ : out STD_LOGIC;
    \x3__23\ : out STD_LOGIC;
    \x3__18\ : out STD_LOGIC;
    \x3__13\ : out STD_LOGIC;
    \x3__8\ : out STD_LOGIC;
    \x3__3\ : out STD_LOGIC;
    \Q[63]_i_6_0\ : in STD_LOGIC_VECTOR ( 34 downto 0 );
    C_53 : in STD_LOGIC;
    C_48 : in STD_LOGIC;
    C_43 : in STD_LOGIC;
    C_38 : in STD_LOGIC;
    C_33 : in STD_LOGIC;
    C_28 : in STD_LOGIC;
    C_23 : in STD_LOGIC;
    C_18 : in STD_LOGIC;
    C_13 : in STD_LOGIC;
    C_8 : in STD_LOGIC;
    C_3 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_left_shift_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_left_shift_reg is
  signal \^q\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \adder/F[10].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[15].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[20].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[25].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[30].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[35].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[40].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[45].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[50].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[55].adders/x1__0\ : STD_LOGIC;
  signal \adder/F[5].adders/x1__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[0]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Q[1]_i_1__1\ : label is "soft_lutpair38";
begin
  Q(63 downto 0) <= \^q\(63 downto 0);
\Q[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \Q[63]_i_6_0\(0),
      O => D(0)
    );
\Q[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[5].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(3),
      I2 => \^q\(4),
      I3 => \Q[63]_i_6_0\(2),
      I4 => \^q\(3),
      I5 => C_3,
      O => \x3__3\
    );
\Q[13]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => \Q[63]_i_6_0\(4),
      O => \adder/F[5].adders/x1__0\
    );
\Q[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[10].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(6),
      I2 => \^q\(9),
      I3 => \Q[63]_i_6_0\(5),
      I4 => \^q\(8),
      I5 => C_8,
      O => \x3__8\
    );
\Q[18]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(10),
      I1 => \Q[63]_i_6_0\(7),
      O => \adder/F[10].adders/x1__0\
    );
\Q[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \^q\(0),
      I1 => \Q[63]_i_6_0\(0),
      I2 => \Q[63]_i_6_0\(1),
      I3 => \^q\(1),
      O => D(1)
    );
\Q[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[15].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(9),
      I2 => \^q\(14),
      I3 => \Q[63]_i_6_0\(8),
      I4 => \^q\(13),
      I5 => C_13,
      O => \x3__13\
    );
\Q[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(15),
      I1 => \Q[63]_i_6_0\(10),
      O => \adder/F[15].adders/x1__0\
    );
\Q[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[20].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(12),
      I2 => \^q\(19),
      I3 => \Q[63]_i_6_0\(11),
      I4 => \^q\(18),
      I5 => C_18,
      O => \x3__18\
    );
\Q[28]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(20),
      I1 => \Q[63]_i_6_0\(13),
      O => \adder/F[20].adders/x1__0\
    );
\Q[33]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[25].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(15),
      I2 => \^q\(24),
      I3 => \Q[63]_i_6_0\(14),
      I4 => \^q\(23),
      I5 => C_23,
      O => \x3__23\
    );
\Q[33]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(25),
      I1 => \Q[63]_i_6_0\(16),
      O => \adder/F[25].adders/x1__0\
    );
\Q[38]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[30].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(18),
      I2 => \^q\(29),
      I3 => \Q[63]_i_6_0\(17),
      I4 => \^q\(28),
      I5 => C_28,
      O => \x3__28\
    );
\Q[38]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(30),
      I1 => \Q[63]_i_6_0\(19),
      O => \adder/F[30].adders/x1__0\
    );
\Q[43]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[35].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(21),
      I2 => \^q\(34),
      I3 => \Q[63]_i_6_0\(20),
      I4 => \^q\(33),
      I5 => C_33,
      O => \x3__33\
    );
\Q[43]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(35),
      I1 => \Q[63]_i_6_0\(22),
      O => \adder/F[35].adders/x1__0\
    );
\Q[48]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[40].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(24),
      I2 => \^q\(39),
      I3 => \Q[63]_i_6_0\(23),
      I4 => \^q\(38),
      I5 => C_38,
      O => \x3__38\
    );
\Q[48]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(40),
      I1 => \Q[63]_i_6_0\(25),
      O => \adder/F[40].adders/x1__0\
    );
\Q[53]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[45].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(27),
      I2 => \^q\(44),
      I3 => \Q[63]_i_6_0\(26),
      I4 => \^q\(43),
      I5 => C_43,
      O => \x3__43\
    );
\Q[53]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(45),
      I1 => \Q[63]_i_6_0\(28),
      O => \adder/F[45].adders/x1__0\
    );
\Q[58]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[50].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(30),
      I2 => \^q\(49),
      I3 => \Q[63]_i_6_0\(29),
      I4 => \^q\(48),
      I5 => C_48,
      O => \x3__48\
    );
\Q[58]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(50),
      I1 => \Q[63]_i_6_0\(31),
      O => \adder/F[50].adders/x1__0\
    );
\Q[63]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \adder/F[55].adders/x1__0\,
      I1 => \Q[63]_i_6_0\(33),
      I2 => \^q\(54),
      I3 => \Q[63]_i_6_0\(32),
      I4 => \^q\(53),
      I5 => C_53,
      O => \x3__53\
    );
\Q[63]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(55),
      I1 => \Q[63]_i_6_0\(34),
      O => \adder/F[55].adders/x1__0\
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(0),
      Q => \^q\(0)
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(10),
      Q => \^q\(10)
    );
\Q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(11),
      Q => \^q\(11)
    );
\Q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(12),
      Q => \^q\(12)
    );
\Q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(13),
      Q => \^q\(13)
    );
\Q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(14),
      Q => \^q\(14)
    );
\Q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(15),
      Q => \^q\(15)
    );
\Q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(16),
      Q => \^q\(16)
    );
\Q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(17),
      Q => \^q\(17)
    );
\Q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(18),
      Q => \^q\(18)
    );
\Q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(19),
      Q => \^q\(19)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(1),
      Q => \^q\(1)
    );
\Q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(20),
      Q => \^q\(20)
    );
\Q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(21),
      Q => \^q\(21)
    );
\Q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(22),
      Q => \^q\(22)
    );
\Q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(23),
      Q => \^q\(23)
    );
\Q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(24),
      Q => \^q\(24)
    );
\Q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(25),
      Q => \^q\(25)
    );
\Q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(26),
      Q => \^q\(26)
    );
\Q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(27),
      Q => \^q\(27)
    );
\Q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(28),
      Q => \^q\(28)
    );
\Q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(29),
      Q => \^q\(29)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(2),
      Q => \^q\(2)
    );
\Q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(30),
      Q => \^q\(30)
    );
\Q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(31),
      Q => \^q\(31)
    );
\Q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(32),
      Q => \^q\(32)
    );
\Q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(33),
      Q => \^q\(33)
    );
\Q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(34),
      Q => \^q\(34)
    );
\Q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(35),
      Q => \^q\(35)
    );
\Q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(36),
      Q => \^q\(36)
    );
\Q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(37),
      Q => \^q\(37)
    );
\Q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(38),
      Q => \^q\(38)
    );
\Q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(39),
      Q => \^q\(39)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(3),
      Q => \^q\(3)
    );
\Q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(40),
      Q => \^q\(40)
    );
\Q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(41),
      Q => \^q\(41)
    );
\Q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(42),
      Q => \^q\(42)
    );
\Q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(43),
      Q => \^q\(43)
    );
\Q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(44),
      Q => \^q\(44)
    );
\Q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(45),
      Q => \^q\(45)
    );
\Q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(46),
      Q => \^q\(46)
    );
\Q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(47),
      Q => \^q\(47)
    );
\Q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(48),
      Q => \^q\(48)
    );
\Q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(49),
      Q => \^q\(49)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(4),
      Q => \^q\(4)
    );
\Q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(50),
      Q => \^q\(50)
    );
\Q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(51),
      Q => \^q\(51)
    );
\Q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(52),
      Q => \^q\(52)
    );
\Q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(53),
      Q => \^q\(53)
    );
\Q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(54),
      Q => \^q\(54)
    );
\Q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(55),
      Q => \^q\(55)
    );
\Q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(56),
      Q => \^q\(56)
    );
\Q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(57),
      Q => \^q\(57)
    );
\Q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(58),
      Q => \^q\(58)
    );
\Q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(59),
      Q => \^q\(59)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(5),
      Q => \^q\(5)
    );
\Q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(60),
      Q => \^q\(60)
    );
\Q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(61),
      Q => \^q\(61)
    );
\Q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(62),
      Q => \^q\(62)
    );
\Q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(63),
      Q => \^q\(63)
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(6),
      Q => \^q\(6)
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(7),
      Q => \^q\(7)
    );
\Q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(8),
      Q => \^q\(8)
    );
\Q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \Q_reg[63]_0\(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_right_reg is
  port (
    \Q_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \Q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_right_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_right_reg is
begin
\Q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(0),
      Q => \Q_reg[31]_0\(0)
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(10),
      Q => \Q_reg[31]_0\(10)
    );
\Q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(11),
      Q => \Q_reg[31]_0\(11)
    );
\Q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(12),
      Q => \Q_reg[31]_0\(12)
    );
\Q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(13),
      Q => \Q_reg[31]_0\(13)
    );
\Q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(14),
      Q => \Q_reg[31]_0\(14)
    );
\Q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(15),
      Q => \Q_reg[31]_0\(15)
    );
\Q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(16),
      Q => \Q_reg[31]_0\(16)
    );
\Q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(17),
      Q => \Q_reg[31]_0\(17)
    );
\Q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(18),
      Q => \Q_reg[31]_0\(18)
    );
\Q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(19),
      Q => \Q_reg[31]_0\(19)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(1),
      Q => \Q_reg[31]_0\(1)
    );
\Q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(20),
      Q => \Q_reg[31]_0\(20)
    );
\Q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(21),
      Q => \Q_reg[31]_0\(21)
    );
\Q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(22),
      Q => \Q_reg[31]_0\(22)
    );
\Q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(23),
      Q => \Q_reg[31]_0\(23)
    );
\Q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(24),
      Q => \Q_reg[31]_0\(24)
    );
\Q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(25),
      Q => \Q_reg[31]_0\(25)
    );
\Q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(26),
      Q => \Q_reg[31]_0\(26)
    );
\Q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(27),
      Q => \Q_reg[31]_0\(27)
    );
\Q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(28),
      Q => \Q_reg[31]_0\(28)
    );
\Q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(29),
      Q => \Q_reg[31]_0\(29)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(2),
      Q => \Q_reg[31]_0\(2)
    );
\Q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(30),
      Q => \Q_reg[31]_0\(30)
    );
\Q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(31),
      Q => \Q_reg[31]_0\(31)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(3),
      Q => \Q_reg[31]_0\(3)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(4),
      Q => \Q_reg[31]_0\(4)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(5),
      Q => \Q_reg[31]_0\(5)
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(6),
      Q => \Q_reg[31]_0\(6)
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(7),
      Q => \Q_reg[31]_0\(7)
    );
\Q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(8),
      Q => \Q_reg[31]_0\(8)
    );
\Q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => \Q_reg[31]_1\(9),
      Q => \Q_reg[31]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_register is
  port (
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    C_53 : out STD_LOGIC;
    C_48 : out STD_LOGIC;
    C_43 : out STD_LOGIC;
    C_38 : out STD_LOGIC;
    C_33 : out STD_LOGIC;
    C_28 : out STD_LOGIC;
    C_23 : out STD_LOGIC;
    C_18 : out STD_LOGIC;
    C_13 : out STD_LOGIC;
    C_8 : out STD_LOGIC;
    C_3 : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \x3__53\ : in STD_LOGIC;
    \x3__48\ : in STD_LOGIC;
    \x3__43\ : in STD_LOGIC;
    \x3__38\ : in STD_LOGIC;
    \x3__33\ : in STD_LOGIC;
    \x3__28\ : in STD_LOGIC;
    \x3__23\ : in STD_LOGIC;
    \x3__18\ : in STD_LOGIC;
    \x3__13\ : in STD_LOGIC;
    \x3__8\ : in STD_LOGIC;
    \x3__3\ : in STD_LOGIC;
    \Q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_register is
  signal ADDER_out : STD_LOGIC_VECTOR ( 63 downto 2 );
  signal \^c_13\ : STD_LOGIC;
  signal \^c_18\ : STD_LOGIC;
  signal \^c_23\ : STD_LOGIC;
  signal \^c_28\ : STD_LOGIC;
  signal \^c_3\ : STD_LOGIC;
  signal \^c_33\ : STD_LOGIC;
  signal \^c_38\ : STD_LOGIC;
  signal \^c_43\ : STD_LOGIC;
  signal \^c_48\ : STD_LOGIC;
  signal \^c_53\ : STD_LOGIC;
  signal \^c_8\ : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \adder/C_10\ : STD_LOGIC;
  signal \adder/C_11\ : STD_LOGIC;
  signal \adder/C_12\ : STD_LOGIC;
  signal \adder/C_14\ : STD_LOGIC;
  signal \adder/C_15\ : STD_LOGIC;
  signal \adder/C_16\ : STD_LOGIC;
  signal \adder/C_17\ : STD_LOGIC;
  signal \adder/C_19\ : STD_LOGIC;
  signal \adder/C_20\ : STD_LOGIC;
  signal \adder/C_21\ : STD_LOGIC;
  signal \adder/C_22\ : STD_LOGIC;
  signal \adder/C_24\ : STD_LOGIC;
  signal \adder/C_25\ : STD_LOGIC;
  signal \adder/C_26\ : STD_LOGIC;
  signal \adder/C_27\ : STD_LOGIC;
  signal \adder/C_29\ : STD_LOGIC;
  signal \adder/C_30\ : STD_LOGIC;
  signal \adder/C_31\ : STD_LOGIC;
  signal \adder/C_32\ : STD_LOGIC;
  signal \adder/C_34\ : STD_LOGIC;
  signal \adder/C_35\ : STD_LOGIC;
  signal \adder/C_36\ : STD_LOGIC;
  signal \adder/C_37\ : STD_LOGIC;
  signal \adder/C_39\ : STD_LOGIC;
  signal \adder/C_40\ : STD_LOGIC;
  signal \adder/C_41\ : STD_LOGIC;
  signal \adder/C_42\ : STD_LOGIC;
  signal \adder/C_44\ : STD_LOGIC;
  signal \adder/C_45\ : STD_LOGIC;
  signal \adder/C_46\ : STD_LOGIC;
  signal \adder/C_47\ : STD_LOGIC;
  signal \adder/C_49\ : STD_LOGIC;
  signal \adder/C_5\ : STD_LOGIC;
  signal \adder/C_50\ : STD_LOGIC;
  signal \adder/C_51\ : STD_LOGIC;
  signal \adder/C_52\ : STD_LOGIC;
  signal \adder/C_54\ : STD_LOGIC;
  signal \adder/C_55\ : STD_LOGIC;
  signal \adder/C_56\ : STD_LOGIC;
  signal \adder/C_57\ : STD_LOGIC;
  signal \adder/C_58\ : STD_LOGIC;
  signal \adder/C_59\ : STD_LOGIC;
  signal \adder/C_60\ : STD_LOGIC;
  signal \adder/C_61\ : STD_LOGIC;
  signal \adder/C_62\ : STD_LOGIC;
  signal \adder/C_7\ : STD_LOGIC;
  signal \adder/C_9\ : STD_LOGIC;
  signal \x2__13\ : STD_LOGIC;
  signal \x2__18\ : STD_LOGIC;
  signal \x2__23\ : STD_LOGIC;
  signal \x2__28\ : STD_LOGIC;
  signal \x2__3\ : STD_LOGIC;
  signal \x2__33\ : STD_LOGIC;
  signal \x2__38\ : STD_LOGIC;
  signal \x2__43\ : STD_LOGIC;
  signal \x2__48\ : STD_LOGIC;
  signal \x2__53\ : STD_LOGIC;
  signal \x2__8\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[10]_i_1__1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \Q[10]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \Q[11]_i_1__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \Q[12]_i_1__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \Q[12]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \Q[13]_i_1__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \Q[13]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \Q[13]_i_5\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \Q[15]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \Q[15]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \Q[16]_i_1__1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \Q[17]_i_1__1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \Q[17]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \Q[18]_i_1__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \Q[18]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \Q[18]_i_5\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \Q[20]_i_1__1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \Q[20]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \Q[21]_i_1__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \Q[22]_i_1__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \Q[22]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \Q[23]_i_1__1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \Q[23]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \Q[23]_i_5\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \Q[25]_i_1__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \Q[25]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \Q[26]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \Q[27]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \Q[27]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \Q[28]_i_1__1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \Q[28]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \Q[28]_i_5\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \Q[30]_i_1__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \Q[30]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \Q[31]_i_1__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \Q[32]_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \Q[32]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \Q[33]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \Q[33]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \Q[33]_i_5\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \Q[35]_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \Q[35]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \Q[36]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \Q[37]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \Q[37]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \Q[38]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \Q[38]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \Q[38]_i_5\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \Q[40]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \Q[40]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \Q[41]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \Q[42]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \Q[42]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \Q[43]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \Q[43]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \Q[43]_i_5\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \Q[45]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \Q[45]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \Q[46]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Q[47]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Q[47]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \Q[48]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \Q[48]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \Q[48]_i_5\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \Q[4]_i_1__1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \Q[50]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Q[50]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \Q[51]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \Q[52]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \Q[52]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Q[53]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \Q[53]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \Q[53]_i_5\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \Q[55]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Q[55]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \Q[56]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Q[57]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Q[57]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Q[58]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \Q[58]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Q[58]_i_5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \Q[5]_i_1__1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \Q[60]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \Q[60]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \Q[61]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \Q[62]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \Q[62]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \Q[63]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Q[6]_i_1__1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \Q[6]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \Q[8]_i_1__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \Q[8]_i_2\ : label is "soft_lutpair70";
begin
  C_13 <= \^c_13\;
  C_18 <= \^c_18\;
  C_23 <= \^c_23\;
  C_28 <= \^c_28\;
  C_3 <= \^c_3\;
  C_33 <= \^c_33\;
  C_38 <= \^c_38\;
  C_43 <= \^c_43\;
  C_48 <= \^c_48\;
  C_53 <= \^c_53\;
  C_8 <= \^c_8\;
  R(63 downto 0) <= \^r\(63 downto 0);
\Q[10]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(9),
      I1 => Q(9),
      I2 => \adder/C_9\,
      I3 => \^r\(10),
      I4 => Q(10),
      O => ADDER_out(10)
    );
\Q[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_7\,
      I1 => Q(7),
      I2 => \^r\(7),
      I3 => Q(8),
      I4 => \^r\(8),
      O => \adder/C_9\
    );
\Q[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_11\,
      I1 => \^r\(11),
      I2 => Q(11),
      O => ADDER_out(11)
    );
\Q[12]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(11),
      I1 => Q(11),
      I2 => \adder/C_11\,
      I3 => \^r\(12),
      I4 => Q(12),
      O => ADDER_out(12)
    );
\Q[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_9\,
      I1 => Q(9),
      I2 => \^r\(9),
      I3 => Q(10),
      I4 => \^r\(10),
      O => \adder/C_11\
    );
\Q[13]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(12),
      I1 => Q(12),
      I2 => \adder/C_12\,
      I3 => \^r\(13),
      I4 => Q(13),
      O => ADDER_out(13)
    );
\Q[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_10\,
      I1 => Q(10),
      I2 => \^r\(10),
      I3 => Q(11),
      I4 => \^r\(11),
      O => \adder/C_12\
    );
\Q[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_8\,
      I1 => Q(8),
      I2 => \^r\(8),
      I3 => Q(9),
      I4 => \^r\(9),
      O => \adder/C_10\
    );
\Q[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__3\,
      I1 => \x3__3\,
      I2 => Q(6),
      I3 => \^r\(6),
      I4 => Q(7),
      I5 => \^r\(7),
      O => \^c_8\
    );
\Q[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(5),
      I1 => Q(5),
      O => \x2__3\
    );
\Q[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_14\,
      I1 => \^r\(14),
      I2 => Q(14),
      O => ADDER_out(14)
    );
\Q[15]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(14),
      I1 => Q(14),
      I2 => \adder/C_14\,
      I3 => \^r\(15),
      I4 => Q(15),
      O => ADDER_out(15)
    );
\Q[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_12\,
      I1 => Q(12),
      I2 => \^r\(12),
      I3 => Q(13),
      I4 => \^r\(13),
      O => \adder/C_14\
    );
\Q[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_16\,
      I1 => \^r\(16),
      I2 => Q(16),
      O => ADDER_out(16)
    );
\Q[17]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(16),
      I1 => Q(16),
      I2 => \adder/C_16\,
      I3 => \^r\(17),
      I4 => Q(17),
      O => ADDER_out(17)
    );
\Q[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_14\,
      I1 => Q(14),
      I2 => \^r\(14),
      I3 => Q(15),
      I4 => \^r\(15),
      O => \adder/C_16\
    );
\Q[18]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(17),
      I1 => Q(17),
      I2 => \adder/C_17\,
      I3 => \^r\(18),
      I4 => Q(18),
      O => ADDER_out(18)
    );
\Q[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_15\,
      I1 => Q(15),
      I2 => \^r\(15),
      I3 => Q(16),
      I4 => \^r\(16),
      O => \adder/C_17\
    );
\Q[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_13\,
      I1 => Q(13),
      I2 => \^r\(13),
      I3 => Q(14),
      I4 => \^r\(14),
      O => \adder/C_15\
    );
\Q[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__8\,
      I1 => \x3__8\,
      I2 => Q(11),
      I3 => \^r\(11),
      I4 => Q(12),
      I5 => \^r\(12),
      O => \^c_13\
    );
\Q[18]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(10),
      I1 => Q(10),
      O => \x2__8\
    );
\Q[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_19\,
      I1 => \^r\(19),
      I2 => Q(19),
      O => ADDER_out(19)
    );
\Q[20]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(19),
      I1 => Q(19),
      I2 => \adder/C_19\,
      I3 => \^r\(20),
      I4 => Q(20),
      O => ADDER_out(20)
    );
\Q[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_17\,
      I1 => Q(17),
      I2 => \^r\(17),
      I3 => Q(18),
      I4 => \^r\(18),
      O => \adder/C_19\
    );
\Q[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_21\,
      I1 => \^r\(21),
      I2 => Q(21),
      O => ADDER_out(21)
    );
\Q[22]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(21),
      I1 => Q(21),
      I2 => \adder/C_21\,
      I3 => \^r\(22),
      I4 => Q(22),
      O => ADDER_out(22)
    );
\Q[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_19\,
      I1 => Q(19),
      I2 => \^r\(19),
      I3 => Q(20),
      I4 => \^r\(20),
      O => \adder/C_21\
    );
\Q[23]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(22),
      I1 => Q(22),
      I2 => \adder/C_22\,
      I3 => \^r\(23),
      I4 => Q(23),
      O => ADDER_out(23)
    );
\Q[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_20\,
      I1 => Q(20),
      I2 => \^r\(20),
      I3 => Q(21),
      I4 => \^r\(21),
      O => \adder/C_22\
    );
\Q[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_18\,
      I1 => Q(18),
      I2 => \^r\(18),
      I3 => Q(19),
      I4 => \^r\(19),
      O => \adder/C_20\
    );
\Q[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__13\,
      I1 => \x3__13\,
      I2 => Q(16),
      I3 => \^r\(16),
      I4 => Q(17),
      I5 => \^r\(17),
      O => \^c_18\
    );
\Q[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(15),
      I1 => Q(15),
      O => \x2__13\
    );
\Q[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_24\,
      I1 => \^r\(24),
      I2 => Q(24),
      O => ADDER_out(24)
    );
\Q[25]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(24),
      I1 => Q(24),
      I2 => \adder/C_24\,
      I3 => \^r\(25),
      I4 => Q(25),
      O => ADDER_out(25)
    );
\Q[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_22\,
      I1 => Q(22),
      I2 => \^r\(22),
      I3 => Q(23),
      I4 => \^r\(23),
      O => \adder/C_24\
    );
\Q[26]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_26\,
      I1 => \^r\(26),
      I2 => Q(26),
      O => ADDER_out(26)
    );
\Q[27]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(26),
      I1 => Q(26),
      I2 => \adder/C_26\,
      I3 => \^r\(27),
      I4 => Q(27),
      O => ADDER_out(27)
    );
\Q[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_24\,
      I1 => Q(24),
      I2 => \^r\(24),
      I3 => Q(25),
      I4 => \^r\(25),
      O => \adder/C_26\
    );
\Q[28]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(27),
      I1 => Q(27),
      I2 => \adder/C_27\,
      I3 => \^r\(28),
      I4 => Q(28),
      O => ADDER_out(28)
    );
\Q[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_25\,
      I1 => Q(25),
      I2 => \^r\(25),
      I3 => Q(26),
      I4 => \^r\(26),
      O => \adder/C_27\
    );
\Q[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_23\,
      I1 => Q(23),
      I2 => \^r\(23),
      I3 => Q(24),
      I4 => \^r\(24),
      O => \adder/C_25\
    );
\Q[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__18\,
      I1 => \x3__18\,
      I2 => Q(21),
      I3 => \^r\(21),
      I4 => Q(22),
      I5 => \^r\(22),
      O => \^c_23\
    );
\Q[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(20),
      I1 => Q(20),
      O => \x2__18\
    );
\Q[29]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_29\,
      I1 => \^r\(29),
      I2 => Q(29),
      O => ADDER_out(29)
    );
\Q[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => \^r\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^r\(0),
      I4 => \^r\(2),
      I5 => Q(2),
      O => ADDER_out(2)
    );
\Q[30]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(29),
      I1 => Q(29),
      I2 => \adder/C_29\,
      I3 => \^r\(30),
      I4 => Q(30),
      O => ADDER_out(30)
    );
\Q[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_27\,
      I1 => Q(27),
      I2 => \^r\(27),
      I3 => Q(28),
      I4 => \^r\(28),
      O => \adder/C_29\
    );
\Q[31]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_31\,
      I1 => \^r\(31),
      I2 => Q(31),
      O => ADDER_out(31)
    );
\Q[32]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(31),
      I1 => Q(31),
      I2 => \adder/C_31\,
      I3 => \^r\(32),
      I4 => Q(32),
      O => ADDER_out(32)
    );
\Q[32]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_29\,
      I1 => Q(29),
      I2 => \^r\(29),
      I3 => Q(30),
      I4 => \^r\(30),
      O => \adder/C_31\
    );
\Q[33]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(32),
      I1 => Q(32),
      I2 => \adder/C_32\,
      I3 => \^r\(33),
      I4 => Q(33),
      O => ADDER_out(33)
    );
\Q[33]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_30\,
      I1 => Q(30),
      I2 => \^r\(30),
      I3 => Q(31),
      I4 => \^r\(31),
      O => \adder/C_32\
    );
\Q[33]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_28\,
      I1 => Q(28),
      I2 => \^r\(28),
      I3 => Q(29),
      I4 => \^r\(29),
      O => \adder/C_30\
    );
\Q[33]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__23\,
      I1 => \x3__23\,
      I2 => Q(26),
      I3 => \^r\(26),
      I4 => Q(27),
      I5 => \^r\(27),
      O => \^c_28\
    );
\Q[33]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(25),
      I1 => Q(25),
      O => \x2__23\
    );
\Q[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_34\,
      I1 => \^r\(34),
      I2 => Q(34),
      O => ADDER_out(34)
    );
\Q[35]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(34),
      I1 => Q(34),
      I2 => \adder/C_34\,
      I3 => \^r\(35),
      I4 => Q(35),
      O => ADDER_out(35)
    );
\Q[35]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_32\,
      I1 => Q(32),
      I2 => \^r\(32),
      I3 => Q(33),
      I4 => \^r\(33),
      O => \adder/C_34\
    );
\Q[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_36\,
      I1 => \^r\(36),
      I2 => Q(36),
      O => ADDER_out(36)
    );
\Q[37]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(36),
      I1 => Q(36),
      I2 => \adder/C_36\,
      I3 => \^r\(37),
      I4 => Q(37),
      O => ADDER_out(37)
    );
\Q[37]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_34\,
      I1 => Q(34),
      I2 => \^r\(34),
      I3 => Q(35),
      I4 => \^r\(35),
      O => \adder/C_36\
    );
\Q[38]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(37),
      I1 => Q(37),
      I2 => \adder/C_37\,
      I3 => \^r\(38),
      I4 => Q(38),
      O => ADDER_out(38)
    );
\Q[38]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_35\,
      I1 => Q(35),
      I2 => \^r\(35),
      I3 => Q(36),
      I4 => \^r\(36),
      O => \adder/C_37\
    );
\Q[38]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_33\,
      I1 => Q(33),
      I2 => \^r\(33),
      I3 => Q(34),
      I4 => \^r\(34),
      O => \adder/C_35\
    );
\Q[38]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__28\,
      I1 => \x3__28\,
      I2 => Q(31),
      I3 => \^r\(31),
      I4 => Q(32),
      I5 => \^r\(32),
      O => \^c_33\
    );
\Q[38]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(30),
      I1 => Q(30),
      O => \x2__28\
    );
\Q[39]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_39\,
      I1 => \^r\(39),
      I2 => Q(39),
      O => ADDER_out(39)
    );
\Q[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^c_3\,
      I1 => \^r\(3),
      I2 => Q(3),
      O => ADDER_out(3)
    );
\Q[40]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(39),
      I1 => Q(39),
      I2 => \adder/C_39\,
      I3 => \^r\(40),
      I4 => Q(40),
      O => ADDER_out(40)
    );
\Q[40]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_37\,
      I1 => Q(37),
      I2 => \^r\(37),
      I3 => Q(38),
      I4 => \^r\(38),
      O => \adder/C_39\
    );
\Q[41]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_41\,
      I1 => \^r\(41),
      I2 => Q(41),
      O => ADDER_out(41)
    );
\Q[42]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(41),
      I1 => Q(41),
      I2 => \adder/C_41\,
      I3 => \^r\(42),
      I4 => Q(42),
      O => ADDER_out(42)
    );
\Q[42]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_39\,
      I1 => Q(39),
      I2 => \^r\(39),
      I3 => Q(40),
      I4 => \^r\(40),
      O => \adder/C_41\
    );
\Q[43]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(42),
      I1 => Q(42),
      I2 => \adder/C_42\,
      I3 => \^r\(43),
      I4 => Q(43),
      O => ADDER_out(43)
    );
\Q[43]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_40\,
      I1 => Q(40),
      I2 => \^r\(40),
      I3 => Q(41),
      I4 => \^r\(41),
      O => \adder/C_42\
    );
\Q[43]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_38\,
      I1 => Q(38),
      I2 => \^r\(38),
      I3 => Q(39),
      I4 => \^r\(39),
      O => \adder/C_40\
    );
\Q[43]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__33\,
      I1 => \x3__33\,
      I2 => Q(36),
      I3 => \^r\(36),
      I4 => Q(37),
      I5 => \^r\(37),
      O => \^c_38\
    );
\Q[43]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(35),
      I1 => Q(35),
      O => \x2__33\
    );
\Q[44]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_44\,
      I1 => \^r\(44),
      I2 => Q(44),
      O => ADDER_out(44)
    );
\Q[45]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(44),
      I1 => Q(44),
      I2 => \adder/C_44\,
      I3 => \^r\(45),
      I4 => Q(45),
      O => ADDER_out(45)
    );
\Q[45]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_42\,
      I1 => Q(42),
      I2 => \^r\(42),
      I3 => Q(43),
      I4 => \^r\(43),
      O => \adder/C_44\
    );
\Q[46]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_46\,
      I1 => \^r\(46),
      I2 => Q(46),
      O => ADDER_out(46)
    );
\Q[47]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(46),
      I1 => Q(46),
      I2 => \adder/C_46\,
      I3 => \^r\(47),
      I4 => Q(47),
      O => ADDER_out(47)
    );
\Q[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_44\,
      I1 => Q(44),
      I2 => \^r\(44),
      I3 => Q(45),
      I4 => \^r\(45),
      O => \adder/C_46\
    );
\Q[48]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(47),
      I1 => Q(47),
      I2 => \adder/C_47\,
      I3 => \^r\(48),
      I4 => Q(48),
      O => ADDER_out(48)
    );
\Q[48]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_45\,
      I1 => Q(45),
      I2 => \^r\(45),
      I3 => Q(46),
      I4 => \^r\(46),
      O => \adder/C_47\
    );
\Q[48]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_43\,
      I1 => Q(43),
      I2 => \^r\(43),
      I3 => Q(44),
      I4 => \^r\(44),
      O => \adder/C_45\
    );
\Q[48]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__38\,
      I1 => \x3__38\,
      I2 => Q(41),
      I3 => \^r\(41),
      I4 => Q(42),
      I5 => \^r\(42),
      O => \^c_43\
    );
\Q[48]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(40),
      I1 => Q(40),
      O => \x2__38\
    );
\Q[49]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_49\,
      I1 => \^r\(49),
      I2 => Q(49),
      O => ADDER_out(49)
    );
\Q[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(3),
      I1 => Q(3),
      I2 => \^c_3\,
      I3 => \^r\(4),
      I4 => Q(4),
      O => ADDER_out(4)
    );
\Q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => \^r\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^r\(1),
      I4 => Q(2),
      I5 => \^r\(2),
      O => \^c_3\
    );
\Q[50]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(49),
      I1 => Q(49),
      I2 => \adder/C_49\,
      I3 => \^r\(50),
      I4 => Q(50),
      O => ADDER_out(50)
    );
\Q[50]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_47\,
      I1 => Q(47),
      I2 => \^r\(47),
      I3 => Q(48),
      I4 => \^r\(48),
      O => \adder/C_49\
    );
\Q[51]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_51\,
      I1 => \^r\(51),
      I2 => Q(51),
      O => ADDER_out(51)
    );
\Q[52]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(51),
      I1 => Q(51),
      I2 => \adder/C_51\,
      I3 => \^r\(52),
      I4 => Q(52),
      O => ADDER_out(52)
    );
\Q[52]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_49\,
      I1 => Q(49),
      I2 => \^r\(49),
      I3 => Q(50),
      I4 => \^r\(50),
      O => \adder/C_51\
    );
\Q[53]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(52),
      I1 => Q(52),
      I2 => \adder/C_52\,
      I3 => \^r\(53),
      I4 => Q(53),
      O => ADDER_out(53)
    );
\Q[53]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_50\,
      I1 => Q(50),
      I2 => \^r\(50),
      I3 => Q(51),
      I4 => \^r\(51),
      O => \adder/C_52\
    );
\Q[53]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_48\,
      I1 => Q(48),
      I2 => \^r\(48),
      I3 => Q(49),
      I4 => \^r\(49),
      O => \adder/C_50\
    );
\Q[53]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__43\,
      I1 => \x3__43\,
      I2 => Q(46),
      I3 => \^r\(46),
      I4 => Q(47),
      I5 => \^r\(47),
      O => \^c_48\
    );
\Q[53]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(45),
      I1 => Q(45),
      O => \x2__43\
    );
\Q[54]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_54\,
      I1 => \^r\(54),
      I2 => Q(54),
      O => ADDER_out(54)
    );
\Q[55]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(54),
      I1 => Q(54),
      I2 => \adder/C_54\,
      I3 => \^r\(55),
      I4 => Q(55),
      O => ADDER_out(55)
    );
\Q[55]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_52\,
      I1 => Q(52),
      I2 => \^r\(52),
      I3 => Q(53),
      I4 => \^r\(53),
      O => \adder/C_54\
    );
\Q[56]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_56\,
      I1 => \^r\(56),
      I2 => Q(56),
      O => ADDER_out(56)
    );
\Q[57]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(56),
      I1 => Q(56),
      I2 => \adder/C_56\,
      I3 => \^r\(57),
      I4 => Q(57),
      O => ADDER_out(57)
    );
\Q[57]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_54\,
      I1 => Q(54),
      I2 => \^r\(54),
      I3 => Q(55),
      I4 => \^r\(55),
      O => \adder/C_56\
    );
\Q[58]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(57),
      I1 => Q(57),
      I2 => \adder/C_57\,
      I3 => \^r\(58),
      I4 => Q(58),
      O => ADDER_out(58)
    );
\Q[58]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_55\,
      I1 => Q(55),
      I2 => \^r\(55),
      I3 => Q(56),
      I4 => \^r\(56),
      O => \adder/C_57\
    );
\Q[58]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_53\,
      I1 => Q(53),
      I2 => \^r\(53),
      I3 => Q(54),
      I4 => \^r\(54),
      O => \adder/C_55\
    );
\Q[58]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__48\,
      I1 => \x3__48\,
      I2 => Q(51),
      I3 => \^r\(51),
      I4 => Q(52),
      I5 => \^r\(52),
      O => \^c_53\
    );
\Q[58]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(50),
      I1 => Q(50),
      O => \x2__48\
    );
\Q[59]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_59\,
      I1 => \^r\(59),
      I2 => Q(59),
      O => ADDER_out(59)
    );
\Q[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_5\,
      I1 => \^r\(5),
      I2 => Q(5),
      O => ADDER_out(5)
    );
\Q[60]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(59),
      I1 => Q(59),
      I2 => \adder/C_59\,
      I3 => \^r\(60),
      I4 => Q(60),
      O => ADDER_out(60)
    );
\Q[60]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_57\,
      I1 => Q(57),
      I2 => \^r\(57),
      I3 => Q(58),
      I4 => \^r\(58),
      O => \adder/C_59\
    );
\Q[61]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_61\,
      I1 => \^r\(61),
      I2 => Q(61),
      O => ADDER_out(61)
    );
\Q[62]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(61),
      I1 => Q(61),
      I2 => \adder/C_61\,
      I3 => \^r\(62),
      I4 => Q(62),
      O => ADDER_out(62)
    );
\Q[62]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_59\,
      I1 => Q(59),
      I2 => \^r\(59),
      I3 => Q(60),
      I4 => \^r\(60),
      O => \adder/C_61\
    );
\Q[63]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(62),
      I1 => Q(62),
      I2 => \adder/C_62\,
      I3 => \^r\(63),
      I4 => Q(63),
      O => ADDER_out(63)
    );
\Q[63]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_60\,
      I1 => Q(60),
      I2 => \^r\(60),
      I3 => Q(61),
      I4 => \^r\(61),
      O => \adder/C_62\
    );
\Q[63]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_58\,
      I1 => Q(58),
      I2 => \^r\(58),
      I3 => Q(59),
      I4 => \^r\(59),
      O => \adder/C_60\
    );
\Q[63]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \x2__53\,
      I1 => \x3__53\,
      I2 => Q(56),
      I3 => \^r\(56),
      I4 => Q(57),
      I5 => \^r\(57),
      O => \adder/C_58\
    );
\Q[63]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r\(55),
      I1 => Q(55),
      O => \x2__53\
    );
\Q[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(5),
      I1 => Q(5),
      I2 => \adder/C_5\,
      I3 => \^r\(6),
      I4 => Q(6),
      O => ADDER_out(6)
    );
\Q[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^c_3\,
      I1 => Q(3),
      I2 => \^r\(3),
      I3 => Q(4),
      I4 => \^r\(4),
      O => \adder/C_5\
    );
\Q[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_7\,
      I1 => \^r\(7),
      I2 => Q(7),
      O => ADDER_out(7)
    );
\Q[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \^r\(7),
      I1 => Q(7),
      I2 => \adder/C_7\,
      I3 => \^r\(8),
      I4 => Q(8),
      O => ADDER_out(8)
    );
\Q[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \adder/C_5\,
      I1 => Q(5),
      I2 => \^r\(5),
      I3 => Q(6),
      I4 => \^r\(6),
      O => \adder/C_7\
    );
\Q[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \adder/C_9\,
      I1 => \^r\(9),
      I2 => Q(9),
      O => ADDER_out(9)
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => D(0),
      Q => \^r\(0)
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(10),
      Q => \^r\(10)
    );
\Q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(11),
      Q => \^r\(11)
    );
\Q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(12),
      Q => \^r\(12)
    );
\Q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(13),
      Q => \^r\(13)
    );
\Q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(14),
      Q => \^r\(14)
    );
\Q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(15),
      Q => \^r\(15)
    );
\Q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(16),
      Q => \^r\(16)
    );
\Q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(17),
      Q => \^r\(17)
    );
\Q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(18),
      Q => \^r\(18)
    );
\Q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(19),
      Q => \^r\(19)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => D(1),
      Q => \^r\(1)
    );
\Q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(20),
      Q => \^r\(20)
    );
\Q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(21),
      Q => \^r\(21)
    );
\Q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(22),
      Q => \^r\(22)
    );
\Q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(23),
      Q => \^r\(23)
    );
\Q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(24),
      Q => \^r\(24)
    );
\Q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(25),
      Q => \^r\(25)
    );
\Q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(26),
      Q => \^r\(26)
    );
\Q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(27),
      Q => \^r\(27)
    );
\Q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(28),
      Q => \^r\(28)
    );
\Q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(29),
      Q => \^r\(29)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(2),
      Q => \^r\(2)
    );
\Q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(30),
      Q => \^r\(30)
    );
\Q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(31),
      Q => \^r\(31)
    );
\Q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(32),
      Q => \^r\(32)
    );
\Q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(33),
      Q => \^r\(33)
    );
\Q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(34),
      Q => \^r\(34)
    );
\Q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(35),
      Q => \^r\(35)
    );
\Q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(36),
      Q => \^r\(36)
    );
\Q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(37),
      Q => \^r\(37)
    );
\Q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(38),
      Q => \^r\(38)
    );
\Q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(39),
      Q => \^r\(39)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(3),
      Q => \^r\(3)
    );
\Q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(40),
      Q => \^r\(40)
    );
\Q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(41),
      Q => \^r\(41)
    );
\Q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(42),
      Q => \^r\(42)
    );
\Q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(43),
      Q => \^r\(43)
    );
\Q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(44),
      Q => \^r\(44)
    );
\Q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(45),
      Q => \^r\(45)
    );
\Q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(46),
      Q => \^r\(46)
    );
\Q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(47),
      Q => \^r\(47)
    );
\Q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(48),
      Q => \^r\(48)
    );
\Q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(49),
      Q => \^r\(49)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(4),
      Q => \^r\(4)
    );
\Q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(50),
      Q => \^r\(50)
    );
\Q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(51),
      Q => \^r\(51)
    );
\Q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(52),
      Q => \^r\(52)
    );
\Q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(53),
      Q => \^r\(53)
    );
\Q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(54),
      Q => \^r\(54)
    );
\Q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(55),
      Q => \^r\(55)
    );
\Q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(56),
      Q => \^r\(56)
    );
\Q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(57),
      Q => \^r\(57)
    );
\Q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(58),
      Q => \^r\(58)
    );
\Q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(59),
      Q => \^r\(59)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(5),
      Q => \^r\(5)
    );
\Q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(60),
      Q => \^r\(60)
    );
\Q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(61),
      Q => \^r\(61)
    );
\Q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(62),
      Q => \^r\(62)
    );
\Q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(63),
      Q => \^r\(63)
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(6),
      Q => \^r\(6)
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(7),
      Q => \^r\(7)
    );
\Q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(8),
      Q => \^r\(8)
    );
\Q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_reg[0]_0\(0),
      CLR => rst,
      D => ADDER_out(9),
      Q => \^r\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_dflow is
  port (
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 62 downto 0 );
    \Q_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    \Q_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_dflow;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_dflow is
  signal ADDER_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal MCND_out : STD_LOGIC_VECTOR ( 63 to 63 );
  signal \^q\ : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal \^r\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \adder/C_13\ : STD_LOGIC;
  signal \adder/C_18\ : STD_LOGIC;
  signal \adder/C_23\ : STD_LOGIC;
  signal \adder/C_28\ : STD_LOGIC;
  signal \adder/C_3\ : STD_LOGIC;
  signal \adder/C_33\ : STD_LOGIC;
  signal \adder/C_38\ : STD_LOGIC;
  signal \adder/C_43\ : STD_LOGIC;
  signal \adder/C_48\ : STD_LOGIC;
  signal \adder/C_53\ : STD_LOGIC;
  signal \adder/C_8\ : STD_LOGIC;
  signal \adder/F[0].adders/x1\ : STD_LOGIC;
  signal \x3__13\ : STD_LOGIC;
  signal \x3__18\ : STD_LOGIC;
  signal \x3__23\ : STD_LOGIC;
  signal \x3__28\ : STD_LOGIC;
  signal \x3__3\ : STD_LOGIC;
  signal \x3__33\ : STD_LOGIC;
  signal \x3__38\ : STD_LOGIC;
  signal \x3__43\ : STD_LOGIC;
  signal \x3__48\ : STD_LOGIC;
  signal \x3__53\ : STD_LOGIC;
  signal \x3__8\ : STD_LOGIC;
begin
  Q(62 downto 0) <= \^q\(62 downto 0);
  R(63 downto 0) <= \^r\(63 downto 0);
MCND: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_left_shift_reg
     port map (
      C_13 => \adder/C_13\,
      C_18 => \adder/C_18\,
      C_23 => \adder/C_23\,
      C_28 => \adder/C_28\,
      C_3 => \adder/C_3\,
      C_33 => \adder/C_33\,
      C_38 => \adder/C_38\,
      C_43 => \adder/C_43\,
      C_48 => \adder/C_48\,
      C_53 => \adder/C_53\,
      C_8 => \adder/C_8\,
      D(1) => ADDER_out(1),
      D(0) => \adder/F[0].adders/x1\,
      E(0) => E(0),
      Q(63) => MCND_out(63),
      Q(62 downto 0) => \^q\(62 downto 0),
      \Q[63]_i_6_0\(34 downto 32) => \^r\(55 downto 53),
      \Q[63]_i_6_0\(31 downto 29) => \^r\(50 downto 48),
      \Q[63]_i_6_0\(28 downto 26) => \^r\(45 downto 43),
      \Q[63]_i_6_0\(25 downto 23) => \^r\(40 downto 38),
      \Q[63]_i_6_0\(22 downto 20) => \^r\(35 downto 33),
      \Q[63]_i_6_0\(19 downto 17) => \^r\(30 downto 28),
      \Q[63]_i_6_0\(16 downto 14) => \^r\(25 downto 23),
      \Q[63]_i_6_0\(13 downto 11) => \^r\(20 downto 18),
      \Q[63]_i_6_0\(10 downto 8) => \^r\(15 downto 13),
      \Q[63]_i_6_0\(7 downto 5) => \^r\(10 downto 8),
      \Q[63]_i_6_0\(4 downto 2) => \^r\(5 downto 3),
      \Q[63]_i_6_0\(1 downto 0) => \^r\(1 downto 0),
      \Q_reg[63]_0\(63 downto 0) => D(63 downto 0),
      clk => clk,
      rst => rst,
      \x3__13\ => \x3__13\,
      \x3__18\ => \x3__18\,
      \x3__23\ => \x3__23\,
      \x3__28\ => \x3__28\,
      \x3__3\ => \x3__3\,
      \x3__33\ => \x3__33\,
      \x3__38\ => \x3__38\,
      \x3__43\ => \x3__43\,
      \x3__48\ => \x3__48\,
      \x3__53\ => \x3__53\,
      \x3__8\ => \x3__8\
    );
MULT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_right_reg
     port map (
      \Q_reg[0]_0\(0) => \Q_reg[0]_0\(0),
      \Q_reg[31]_0\(31 downto 0) => \Q_reg[31]\(31 downto 0),
      \Q_reg[31]_1\(31 downto 0) => \Q_reg[31]_0\(31 downto 0),
      clk => clk,
      rst => rst
    );
PROD: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_register
     port map (
      C_13 => \adder/C_13\,
      C_18 => \adder/C_18\,
      C_23 => \adder/C_23\,
      C_28 => \adder/C_28\,
      C_3 => \adder/C_3\,
      C_33 => \adder/C_33\,
      C_38 => \adder/C_38\,
      C_43 => \adder/C_43\,
      C_48 => \adder/C_48\,
      C_53 => \adder/C_53\,
      C_8 => \adder/C_8\,
      D(1) => ADDER_out(1),
      D(0) => \adder/F[0].adders/x1\,
      Q(63) => MCND_out(63),
      Q(62 downto 0) => \^q\(62 downto 0),
      \Q_reg[0]_0\(0) => \Q_reg[0]\(0),
      R(63 downto 0) => \^r\(63 downto 0),
      clk => clk,
      rst => rst,
      \x3__13\ => \x3__13\,
      \x3__18\ => \x3__18\,
      \x3__23\ => \x3__23\,
      \x3__28\ => \x3__28\,
      \x3__3\ => \x3__3\,
      \x3__33\ => \x3__33\,
      \x3__38\ => \x3__38\,
      \x3__43\ => \x3__43\,
      \x3__48\ => \x3__48\,
      \x3__53\ => \x3__53\,
      \x3__8\ => \x3__8\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplier is
  port (
    done : out STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplier;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplier is
  signal CONT_n_0 : STD_LOGIC;
  signal CONT_n_65 : STD_LOGIC;
  signal CONT_n_66 : STD_LOGIC;
  signal CONT_n_67 : STD_LOGIC;
  signal CONT_n_68 : STD_LOGIC;
  signal CONT_n_69 : STD_LOGIC;
  signal CONT_n_70 : STD_LOGIC;
  signal CONT_n_71 : STD_LOGIC;
  signal CONT_n_72 : STD_LOGIC;
  signal CONT_n_73 : STD_LOGIC;
  signal CONT_n_74 : STD_LOGIC;
  signal CONT_n_75 : STD_LOGIC;
  signal CONT_n_76 : STD_LOGIC;
  signal CONT_n_77 : STD_LOGIC;
  signal CONT_n_78 : STD_LOGIC;
  signal CONT_n_79 : STD_LOGIC;
  signal CONT_n_80 : STD_LOGIC;
  signal CONT_n_81 : STD_LOGIC;
  signal CONT_n_82 : STD_LOGIC;
  signal CONT_n_83 : STD_LOGIC;
  signal CONT_n_84 : STD_LOGIC;
  signal CONT_n_85 : STD_LOGIC;
  signal CONT_n_86 : STD_LOGIC;
  signal CONT_n_87 : STD_LOGIC;
  signal CONT_n_88 : STD_LOGIC;
  signal CONT_n_89 : STD_LOGIC;
  signal CONT_n_90 : STD_LOGIC;
  signal CONT_n_91 : STD_LOGIC;
  signal CONT_n_92 : STD_LOGIC;
  signal CONT_n_93 : STD_LOGIC;
  signal CONT_n_94 : STD_LOGIC;
  signal CONT_n_95 : STD_LOGIC;
  signal CONT_n_96 : STD_LOGIC;
  signal CONT_n_97 : STD_LOGIC;
  signal MCND_out : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal MPLR_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MULT_n_127 : STD_LOGIC;
  signal MULT_n_128 : STD_LOGIC;
  signal MULT_n_129 : STD_LOGIC;
  signal MULT_n_130 : STD_LOGIC;
  signal MULT_n_131 : STD_LOGIC;
  signal MULT_n_132 : STD_LOGIC;
  signal MULT_n_133 : STD_LOGIC;
  signal MULT_n_134 : STD_LOGIC;
  signal MULT_n_135 : STD_LOGIC;
  signal MULT_n_136 : STD_LOGIC;
  signal MULT_n_137 : STD_LOGIC;
  signal MULT_n_138 : STD_LOGIC;
  signal MULT_n_139 : STD_LOGIC;
  signal MULT_n_140 : STD_LOGIC;
  signal MULT_n_141 : STD_LOGIC;
  signal MULT_n_142 : STD_LOGIC;
  signal MULT_n_143 : STD_LOGIC;
  signal MULT_n_144 : STD_LOGIC;
  signal MULT_n_145 : STD_LOGIC;
  signal MULT_n_146 : STD_LOGIC;
  signal MULT_n_147 : STD_LOGIC;
  signal MULT_n_148 : STD_LOGIC;
  signal MULT_n_149 : STD_LOGIC;
  signal MULT_n_150 : STD_LOGIC;
  signal MULT_n_151 : STD_LOGIC;
  signal MULT_n_152 : STD_LOGIC;
  signal MULT_n_153 : STD_LOGIC;
  signal MULT_n_154 : STD_LOGIC;
  signal MULT_n_155 : STD_LOGIC;
  signal MULT_n_156 : STD_LOGIC;
  signal MULT_n_157 : STD_LOGIC;
  signal ProdEn : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
CONT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      D(63 downto 0) => p_1_in(63 downto 0),
      E(0) => CONT_n_0,
      \FSM_onehot_state_reg[0]_0\(0) => CONT_n_65,
      \FSM_onehot_state_reg[4]_0\(31) => CONT_n_66,
      \FSM_onehot_state_reg[4]_0\(30) => CONT_n_67,
      \FSM_onehot_state_reg[4]_0\(29) => CONT_n_68,
      \FSM_onehot_state_reg[4]_0\(28) => CONT_n_69,
      \FSM_onehot_state_reg[4]_0\(27) => CONT_n_70,
      \FSM_onehot_state_reg[4]_0\(26) => CONT_n_71,
      \FSM_onehot_state_reg[4]_0\(25) => CONT_n_72,
      \FSM_onehot_state_reg[4]_0\(24) => CONT_n_73,
      \FSM_onehot_state_reg[4]_0\(23) => CONT_n_74,
      \FSM_onehot_state_reg[4]_0\(22) => CONT_n_75,
      \FSM_onehot_state_reg[4]_0\(21) => CONT_n_76,
      \FSM_onehot_state_reg[4]_0\(20) => CONT_n_77,
      \FSM_onehot_state_reg[4]_0\(19) => CONT_n_78,
      \FSM_onehot_state_reg[4]_0\(18) => CONT_n_79,
      \FSM_onehot_state_reg[4]_0\(17) => CONT_n_80,
      \FSM_onehot_state_reg[4]_0\(16) => CONT_n_81,
      \FSM_onehot_state_reg[4]_0\(15) => CONT_n_82,
      \FSM_onehot_state_reg[4]_0\(14) => CONT_n_83,
      \FSM_onehot_state_reg[4]_0\(13) => CONT_n_84,
      \FSM_onehot_state_reg[4]_0\(12) => CONT_n_85,
      \FSM_onehot_state_reg[4]_0\(11) => CONT_n_86,
      \FSM_onehot_state_reg[4]_0\(10) => CONT_n_87,
      \FSM_onehot_state_reg[4]_0\(9) => CONT_n_88,
      \FSM_onehot_state_reg[4]_0\(8) => CONT_n_89,
      \FSM_onehot_state_reg[4]_0\(7) => CONT_n_90,
      \FSM_onehot_state_reg[4]_0\(6) => CONT_n_91,
      \FSM_onehot_state_reg[4]_0\(5) => CONT_n_92,
      \FSM_onehot_state_reg[4]_0\(4) => CONT_n_93,
      \FSM_onehot_state_reg[4]_0\(3) => CONT_n_94,
      \FSM_onehot_state_reg[4]_0\(2) => CONT_n_95,
      \FSM_onehot_state_reg[4]_0\(1) => CONT_n_96,
      \FSM_onehot_state_reg[4]_0\(0) => CONT_n_97,
      \FSM_onehot_state_reg[5]_0\(1) => done,
      \FSM_onehot_state_reg[5]_0\(0) => ProdEn,
      Q(62 downto 0) => MCND_out(62 downto 0),
      \Q_reg[30]\(31) => MULT_n_127,
      \Q_reg[30]\(30) => MULT_n_128,
      \Q_reg[30]\(29) => MULT_n_129,
      \Q_reg[30]\(28) => MULT_n_130,
      \Q_reg[30]\(27) => MULT_n_131,
      \Q_reg[30]\(26) => MULT_n_132,
      \Q_reg[30]\(25) => MULT_n_133,
      \Q_reg[30]\(24) => MULT_n_134,
      \Q_reg[30]\(23) => MULT_n_135,
      \Q_reg[30]\(22) => MULT_n_136,
      \Q_reg[30]\(21) => MULT_n_137,
      \Q_reg[30]\(20) => MULT_n_138,
      \Q_reg[30]\(19) => MULT_n_139,
      \Q_reg[30]\(18) => MULT_n_140,
      \Q_reg[30]\(17) => MULT_n_141,
      \Q_reg[30]\(16) => MULT_n_142,
      \Q_reg[30]\(15) => MULT_n_143,
      \Q_reg[30]\(14) => MULT_n_144,
      \Q_reg[30]\(13) => MULT_n_145,
      \Q_reg[30]\(12) => MULT_n_146,
      \Q_reg[30]\(11) => MULT_n_147,
      \Q_reg[30]\(10) => MULT_n_148,
      \Q_reg[30]\(9) => MULT_n_149,
      \Q_reg[30]\(8) => MULT_n_150,
      \Q_reg[30]\(7) => MULT_n_151,
      \Q_reg[30]\(6) => MULT_n_152,
      \Q_reg[30]\(5) => MULT_n_153,
      \Q_reg[30]\(4) => MULT_n_154,
      \Q_reg[30]\(3) => MULT_n_155,
      \Q_reg[30]\(2) => MULT_n_156,
      \Q_reg[30]\(1) => MULT_n_157,
      \Q_reg[30]\(0) => MPLR_out(0),
      clk => clk,
      rst => rst
    );
MULT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_dflow
     port map (
      D(63 downto 0) => p_1_in(63 downto 0),
      E(0) => CONT_n_0,
      Q(62 downto 0) => MCND_out(62 downto 0),
      \Q_reg[0]\(0) => ProdEn,
      \Q_reg[0]_0\(0) => CONT_n_65,
      \Q_reg[31]\(31) => MULT_n_127,
      \Q_reg[31]\(30) => MULT_n_128,
      \Q_reg[31]\(29) => MULT_n_129,
      \Q_reg[31]\(28) => MULT_n_130,
      \Q_reg[31]\(27) => MULT_n_131,
      \Q_reg[31]\(26) => MULT_n_132,
      \Q_reg[31]\(25) => MULT_n_133,
      \Q_reg[31]\(24) => MULT_n_134,
      \Q_reg[31]\(23) => MULT_n_135,
      \Q_reg[31]\(22) => MULT_n_136,
      \Q_reg[31]\(21) => MULT_n_137,
      \Q_reg[31]\(20) => MULT_n_138,
      \Q_reg[31]\(19) => MULT_n_139,
      \Q_reg[31]\(18) => MULT_n_140,
      \Q_reg[31]\(17) => MULT_n_141,
      \Q_reg[31]\(16) => MULT_n_142,
      \Q_reg[31]\(15) => MULT_n_143,
      \Q_reg[31]\(14) => MULT_n_144,
      \Q_reg[31]\(13) => MULT_n_145,
      \Q_reg[31]\(12) => MULT_n_146,
      \Q_reg[31]\(11) => MULT_n_147,
      \Q_reg[31]\(10) => MULT_n_148,
      \Q_reg[31]\(9) => MULT_n_149,
      \Q_reg[31]\(8) => MULT_n_150,
      \Q_reg[31]\(7) => MULT_n_151,
      \Q_reg[31]\(6) => MULT_n_152,
      \Q_reg[31]\(5) => MULT_n_153,
      \Q_reg[31]\(4) => MULT_n_154,
      \Q_reg[31]\(3) => MULT_n_155,
      \Q_reg[31]\(2) => MULT_n_156,
      \Q_reg[31]\(1) => MULT_n_157,
      \Q_reg[31]\(0) => MPLR_out(0),
      \Q_reg[31]_0\(31) => CONT_n_66,
      \Q_reg[31]_0\(30) => CONT_n_67,
      \Q_reg[31]_0\(29) => CONT_n_68,
      \Q_reg[31]_0\(28) => CONT_n_69,
      \Q_reg[31]_0\(27) => CONT_n_70,
      \Q_reg[31]_0\(26) => CONT_n_71,
      \Q_reg[31]_0\(25) => CONT_n_72,
      \Q_reg[31]_0\(24) => CONT_n_73,
      \Q_reg[31]_0\(23) => CONT_n_74,
      \Q_reg[31]_0\(22) => CONT_n_75,
      \Q_reg[31]_0\(21) => CONT_n_76,
      \Q_reg[31]_0\(20) => CONT_n_77,
      \Q_reg[31]_0\(19) => CONT_n_78,
      \Q_reg[31]_0\(18) => CONT_n_79,
      \Q_reg[31]_0\(17) => CONT_n_80,
      \Q_reg[31]_0\(16) => CONT_n_81,
      \Q_reg[31]_0\(15) => CONT_n_82,
      \Q_reg[31]_0\(14) => CONT_n_83,
      \Q_reg[31]_0\(13) => CONT_n_84,
      \Q_reg[31]_0\(12) => CONT_n_85,
      \Q_reg[31]_0\(11) => CONT_n_86,
      \Q_reg[31]_0\(10) => CONT_n_87,
      \Q_reg[31]_0\(9) => CONT_n_88,
      \Q_reg[31]_0\(8) => CONT_n_89,
      \Q_reg[31]_0\(7) => CONT_n_90,
      \Q_reg[31]_0\(6) => CONT_n_91,
      \Q_reg[31]_0\(5) => CONT_n_92,
      \Q_reg[31]_0\(4) => CONT_n_93,
      \Q_reg[31]_0\(3) => CONT_n_94,
      \Q_reg[31]_0\(2) => CONT_n_95,
      \Q_reg[31]_0\(1) => CONT_n_96,
      \Q_reg[31]_0\(0) => CONT_n_97,
      R(63 downto 0) => R(63 downto 0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_multiplier_0_0,multiplier,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "multiplier,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplier
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      R(63 downto 0) => R(63 downto 0),
      clk => clk,
      done => done,
      rst => rst
    );
end STRUCTURE;
