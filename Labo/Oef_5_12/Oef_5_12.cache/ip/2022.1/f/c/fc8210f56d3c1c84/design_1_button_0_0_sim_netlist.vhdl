-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Mar 16 09:50:15 2023
-- Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_button_0_0_sim_netlist.vhdl
-- Design      : design_1_button_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button is
  port (
    Data_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    R : in STD_LOGIC;
    G : in STD_LOGIC;
    B : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Data_out[16]_INST_0\ : label is "soft_lutpair0";
begin
\Data_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => R,
      I1 => G,
      O => Data_out(0)
    );
\Data_out[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => R,
      I1 => B,
      I2 => G,
      O => Data_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    R : in STD_LOGIC;
    G : in STD_LOGIC;
    B : in STD_LOGIC;
    Data_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_button_0_0,button,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "button,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 23 downto 7 );
begin
  Data_out(23) <= \^data_out\(23);
  Data_out(22) <= \^data_out\(23);
  Data_out(21) <= \^data_out\(23);
  Data_out(20) <= \^data_out\(23);
  Data_out(19) <= \^data_out\(23);
  Data_out(18) <= \^data_out\(23);
  Data_out(17) <= \^data_out\(23);
  Data_out(16) <= \^data_out\(23);
  Data_out(15) <= \<const0>\;
  Data_out(14) <= \<const0>\;
  Data_out(13) <= \<const0>\;
  Data_out(12) <= \<const0>\;
  Data_out(11) <= \<const0>\;
  Data_out(10) <= \<const0>\;
  Data_out(9) <= \<const0>\;
  Data_out(8) <= \<const0>\;
  Data_out(7) <= \^data_out\(7);
  Data_out(6) <= \^data_out\(7);
  Data_out(5) <= \^data_out\(7);
  Data_out(4) <= \^data_out\(7);
  Data_out(3) <= \^data_out\(7);
  Data_out(2) <= \^data_out\(7);
  Data_out(1) <= \^data_out\(7);
  Data_out(0) <= \^data_out\(7);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button
     port map (
      B => B,
      Data_out(1) => \^data_out\(23),
      Data_out(0) => \^data_out\(7),
      G => G,
      R => R
    );
end STRUCTURE;
