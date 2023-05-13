-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Feb 16 10:55:09 2023
-- Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/02_PXL/01_Digitale_Systemen/Labo/Labo_week_1_Oef_1/Labo_week_1_Oef_1.gen/sources_1/bd/design_1/ip/design_1_boolean_sevensegment_0_0/design_1_boolean_sevensegment_0_0_sim_netlist.vhdl
-- Design      : design_1_boolean_sevensegment_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_boolean_sevensegment_0_0_boolean_sevensegment is
  port (
    uitgang : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ingang : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_boolean_sevensegment_0_0_boolean_sevensegment : entity is "boolean_sevensegment";
end design_1_boolean_sevensegment_0_0_boolean_sevensegment;

architecture STRUCTURE of design_1_boolean_sevensegment_0_0_boolean_sevensegment is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \uitgang[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \uitgang[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \uitgang[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \uitgang[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \uitgang[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \uitgang[5]_INST_0\ : label is "soft_lutpair2";
begin
\uitgang[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => ingang(3),
      I1 => ingang(0),
      I2 => ingang(2),
      I3 => ingang(1),
      O => uitgang(0)
    );
\uitgang[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => ingang(3),
      I1 => ingang(2),
      I2 => ingang(0),
      I3 => ingang(1),
      O => uitgang(1)
    );
\uitgang[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => ingang(3),
      I1 => ingang(1),
      I2 => ingang(2),
      I3 => ingang(0),
      O => uitgang(2)
    );
\uitgang[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => ingang(3),
      I1 => ingang(2),
      I2 => ingang(0),
      I3 => ingang(1),
      O => uitgang(3)
    );
\uitgang[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => ingang(3),
      I1 => ingang(0),
      I2 => ingang(1),
      I3 => ingang(2),
      O => uitgang(4)
    );
\uitgang[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => ingang(3),
      I1 => ingang(2),
      I2 => ingang(0),
      I3 => ingang(1),
      O => uitgang(5)
    );
\uitgang[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => ingang(3),
      I1 => ingang(2),
      I2 => ingang(0),
      I3 => ingang(1),
      O => uitgang(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_boolean_sevensegment_0_0 is
  port (
    ingang : in STD_LOGIC_VECTOR ( 3 downto 0 );
    uitgang : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_boolean_sevensegment_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_boolean_sevensegment_0_0 : entity is "design_1_boolean_sevensegment_0_0,boolean_sevensegment,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_boolean_sevensegment_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_boolean_sevensegment_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_boolean_sevensegment_0_0 : entity is "boolean_sevensegment,Vivado 2022.1";
end design_1_boolean_sevensegment_0_0;

architecture STRUCTURE of design_1_boolean_sevensegment_0_0 is
begin
U0: entity work.design_1_boolean_sevensegment_0_0_boolean_sevensegment
     port map (
      ingang(3 downto 0) => ingang(3 downto 0),
      uitgang(6 downto 0) => uitgang(6 downto 0)
    );
end STRUCTURE;
