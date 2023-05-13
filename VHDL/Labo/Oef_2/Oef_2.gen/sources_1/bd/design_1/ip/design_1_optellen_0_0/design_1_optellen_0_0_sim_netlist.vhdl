-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Feb 16 10:20:54 2023
-- Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/02_PXL/01_Digitale_Systemen/Labo/Oef_2/Oef_2.gen/sources_1/bd/design_1/ip/design_1_optellen_0_0/design_1_optellen_0_0_sim_netlist.vhdl
-- Design      : design_1_optellen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_optellen_0_0_optellen is
  port (
    Resultaat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Getal_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Getal_2 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_optellen_0_0_optellen : entity is "optellen";
end design_1_optellen_0_0_optellen;

architecture STRUCTURE of design_1_optellen_0_0_optellen is
  signal \Resultaat[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Resultaat[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Resultaat[3]_INST_0_i_1\ : label is "soft_lutpair0";
begin
\Resultaat[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Getal_1(0),
      I1 => Getal_2(0),
      O => Resultaat(0)
    );
\Resultaat[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => Getal_1(0),
      I1 => Getal_2(0),
      I2 => Getal_2(1),
      I3 => Getal_1(1),
      O => Resultaat(1)
    );
\Resultaat[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => Getal_2(0),
      I1 => Getal_1(0),
      I2 => Getal_1(1),
      I3 => Getal_2(1),
      I4 => Getal_2(2),
      I5 => Getal_1(2),
      O => Resultaat(2)
    );
\Resultaat[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \Resultaat[3]_INST_0_i_1_n_0\,
      I1 => Getal_1(2),
      I2 => Getal_2(2),
      I3 => Getal_2(3),
      I4 => Getal_1(3),
      O => Resultaat(3)
    );
\Resultaat[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => Getal_2(1),
      I1 => Getal_1(1),
      I2 => Getal_1(0),
      I3 => Getal_2(0),
      O => \Resultaat[3]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_optellen_0_0 is
  port (
    Getal_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Getal_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Resultaat : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_optellen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_optellen_0_0 : entity is "design_1_optellen_0_0,optellen,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_optellen_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_optellen_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_optellen_0_0 : entity is "optellen,Vivado 2022.1";
end design_1_optellen_0_0;

architecture STRUCTURE of design_1_optellen_0_0 is
begin
U0: entity work.design_1_optellen_0_0_optellen
     port map (
      Getal_1(3 downto 0) => Getal_1(3 downto 0),
      Getal_2(3 downto 0) => Getal_2(3 downto 0),
      Resultaat(3 downto 0) => Resultaat(3 downto 0)
    );
end STRUCTURE;
