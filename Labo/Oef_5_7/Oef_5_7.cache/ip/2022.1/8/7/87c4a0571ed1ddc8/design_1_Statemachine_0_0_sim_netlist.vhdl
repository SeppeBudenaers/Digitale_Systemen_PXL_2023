-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Tue Mar 14 13:23:10 2023
-- Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Statemachine_0_0_sim_netlist.vhdl
-- Design      : design_1_Statemachine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Statemachine is
  port (
    Z_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    X : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Statemachine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Statemachine is
  signal \FSM_onehot_PS[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PS[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PS[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PS[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PS[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PS[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PS[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PS[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_PS[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_PS[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_PS[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_PS[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_PS[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_PS[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_PS[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_PS[7]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[0]\ : label is "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[1]\ : label is "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[2]\ : label is "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[3]\ : label is "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[4]\ : label is "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[5]\ : label is "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[6]\ : label is "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[7]\ : label is "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000";
  attribute SOFT_HLUTNM of \Z_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Z_out[1]_INST_0\ : label is "soft_lutpair0";
begin
\FSM_onehot_PS[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[4]\,
      I1 => \FSM_onehot_PS_reg_n_0_[0]\,
      I2 => X,
      I3 => \FSM_onehot_PS_reg_n_0_[7]\,
      O => \FSM_onehot_PS[0]_i_1_n_0\
    );
\FSM_onehot_PS[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[0]\,
      I1 => X,
      I2 => \FSM_onehot_PS_reg_n_0_[1]\,
      O => \FSM_onehot_PS[1]_i_1_n_0\
    );
\FSM_onehot_PS[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[1]\,
      I1 => X,
      I2 => \FSM_onehot_PS_reg_n_0_[2]\,
      O => \FSM_onehot_PS[2]_i_1_n_0\
    );
\FSM_onehot_PS[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[2]\,
      I1 => X,
      I2 => \FSM_onehot_PS_reg_n_0_[3]\,
      O => \FSM_onehot_PS[3]_i_1_n_0\
    );
\FSM_onehot_PS[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[3]\,
      I1 => X,
      O => \FSM_onehot_PS[4]_i_1_n_0\
    );
\FSM_onehot_PS[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[4]\,
      I1 => X,
      I2 => \FSM_onehot_PS_reg_n_0_[5]\,
      O => \FSM_onehot_PS[5]_i_1_n_0\
    );
\FSM_onehot_PS[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[5]\,
      I1 => X,
      I2 => \FSM_onehot_PS_reg_n_0_[6]\,
      O => \FSM_onehot_PS[6]_i_1_n_0\
    );
\FSM_onehot_PS[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[6]\,
      I1 => X,
      I2 => \FSM_onehot_PS_reg_n_0_[7]\,
      O => \FSM_onehot_PS[7]_i_1_n_0\
    );
\FSM_onehot_PS_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PS[0]_i_1_n_0\,
      Q => \FSM_onehot_PS_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_PS_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PS[1]_i_1_n_0\,
      Q => \FSM_onehot_PS_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_PS_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PS[2]_i_1_n_0\,
      Q => \FSM_onehot_PS_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_PS_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PS[3]_i_1_n_0\,
      Q => \FSM_onehot_PS_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_PS_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PS[4]_i_1_n_0\,
      Q => \FSM_onehot_PS_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_PS_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PS[5]_i_1_n_0\,
      Q => \FSM_onehot_PS_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_PS_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PS[6]_i_1_n_0\,
      Q => \FSM_onehot_PS_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_PS_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PS[7]_i_1_n_0\,
      Q => \FSM_onehot_PS_reg_n_0_[7]\,
      R => '0'
    );
\Z_out[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[7]\,
      I1 => \FSM_onehot_PS_reg_n_0_[6]\,
      I2 => \FSM_onehot_PS_reg_n_0_[4]\,
      I3 => \FSM_onehot_PS_reg_n_0_[5]\,
      O => Z_out(0)
    );
\Z_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[7]\,
      I1 => \FSM_onehot_PS_reg_n_0_[6]\,
      I2 => \FSM_onehot_PS_reg_n_0_[3]\,
      I3 => \FSM_onehot_PS_reg_n_0_[5]\,
      O => Z_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    X : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Z_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    State_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Statemachine_0_0,Statemachine,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Statemachine,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  State_out(2) <= \<const0>\;
  State_out(1) <= \<const0>\;
  State_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Statemachine
     port map (
      CLK => CLK,
      X => X,
      Z_out(1 downto 0) => Z_out(1 downto 0)
    );
end STRUCTURE;
