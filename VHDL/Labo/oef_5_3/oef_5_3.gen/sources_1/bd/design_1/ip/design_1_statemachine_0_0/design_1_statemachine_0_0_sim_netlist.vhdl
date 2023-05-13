-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Tue Mar 14 12:12:50 2023
-- Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/02_PXL/01_Digitale_Systemen/Labo/Labo_3_oef_1/Labo_3_oef_1.gen/sources_1/bd/design_1/ip/design_1_statemachine_0_0/design_1_statemachine_0_0_sim_netlist.vhdl
-- Design      : design_1_statemachine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_statemachine_0_0_statemachine is
  port (
    Z : out STD_LOGIC;
    case_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    X2 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    X1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_statemachine_0_0_statemachine : entity is "statemachine";
end design_1_statemachine_0_0_statemachine;

architecture STRUCTURE of design_1_statemachine_0_0_statemachine is
  signal \FSM_onehot_NS_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NS_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NS_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NS_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_NS_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_NS_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_PS_reg_n_0_[2]\ : STD_LOGIC;
  signal NS : STD_LOGIC;
  signal Z_reg_i_1_n_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NS_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_NS_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_NS_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NS_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_NS_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NS_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_NS_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_NS_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[0]\ : label is "c:010,a:001,b:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[1]\ : label is "c:010,a:001,b:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PS_reg[2]\ : label is "c:010,a:001,b:100";
  attribute XILINX_LEGACY_PRIM of Z_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of Z_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of Z_reg_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Z_reg_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \case_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \case_out[1]_INST_0\ : label is "soft_lutpair1";
begin
\FSM_onehot_NS_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NS_reg[0]_i_1_n_0\,
      G => NS,
      GE => '1',
      Q => \FSM_onehot_NS_reg_n_0_[0]\
    );
\FSM_onehot_NS_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0CFFAE"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[1]\,
      I1 => \FSM_onehot_PS_reg_n_0_[0]\,
      I2 => X1,
      I3 => \FSM_onehot_PS_reg_n_0_[2]\,
      I4 => X2,
      O => \FSM_onehot_NS_reg[0]_i_1_n_0\
    );
\FSM_onehot_NS_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NS_reg[1]_i_1_n_0\,
      G => NS,
      GE => '1',
      Q => \FSM_onehot_NS_reg_n_0_[1]\
    );
\FSM_onehot_NS_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[0]\,
      I1 => X1,
      O => \FSM_onehot_NS_reg[1]_i_1_n_0\
    );
\FSM_onehot_NS_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NS_reg[2]_i_1_n_0\,
      G => NS,
      GE => '1',
      Q => \FSM_onehot_NS_reg_n_0_[2]\
    );
\FSM_onehot_NS_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[1]\,
      I1 => X2,
      I2 => \FSM_onehot_PS_reg_n_0_[2]\,
      O => \FSM_onehot_NS_reg[2]_i_1_n_0\
    );
\FSM_onehot_PS_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_NS_reg_n_0_[0]\,
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
      D => \FSM_onehot_NS_reg_n_0_[1]\,
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
      D => \FSM_onehot_NS_reg_n_0_[2]\,
      Q => \FSM_onehot_PS_reg_n_0_[2]\,
      R => '0'
    );
Z_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Z_reg_i_1_n_0,
      G => NS,
      GE => '1',
      Q => Z
    );
Z_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[2]\,
      I1 => \FSM_onehot_PS_reg_n_0_[1]\,
      I2 => X2,
      O => Z_reg_i_1_n_0
    );
Z_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[1]\,
      I1 => \FSM_onehot_PS_reg_n_0_[0]\,
      I2 => \FSM_onehot_PS_reg_n_0_[2]\,
      O => NS
    );
\case_out[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => X1,
      I1 => \FSM_onehot_PS_reg_n_0_[0]\,
      I2 => \FSM_onehot_PS_reg_n_0_[1]\,
      I3 => \FSM_onehot_PS_reg_n_0_[2]\,
      I4 => X2,
      O => case_out(0)
    );
\case_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \FSM_onehot_PS_reg_n_0_[2]\,
      I1 => \FSM_onehot_PS_reg_n_0_[0]\,
      I2 => X1,
      I3 => \FSM_onehot_PS_reg_n_0_[1]\,
      O => case_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_statemachine_0_0 is
  port (
    X1 : in STD_LOGIC;
    X2 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Z : out STD_LOGIC;
    case_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_statemachine_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_statemachine_0_0 : entity is "design_1_statemachine_0_0,statemachine,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_statemachine_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_statemachine_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_statemachine_0_0 : entity is "statemachine,Vivado 2022.1";
end design_1_statemachine_0_0;

architecture STRUCTURE of design_1_statemachine_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK_0, INSERT_VIP 0";
begin
U0: entity work.design_1_statemachine_0_0_statemachine
     port map (
      CLK => CLK,
      X1 => X1,
      X2 => X2,
      Z => Z,
      case_out(1 downto 0) => case_out(1 downto 0)
    );
end STRUCTURE;
