--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Tue Mar 14 12:12:05 2023
--Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CLK_0 : in STD_LOGIC;
    Z_0 : out STD_LOGIC;
    case_out_0 : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CLK_0 : in STD_LOGIC;
    case_out_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Z_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CLK_0 => CLK_0,
      Z_0 => Z_0,
      case_out_0(1 downto 0) => case_out_0(1 downto 0)
    );
end STRUCTURE;
