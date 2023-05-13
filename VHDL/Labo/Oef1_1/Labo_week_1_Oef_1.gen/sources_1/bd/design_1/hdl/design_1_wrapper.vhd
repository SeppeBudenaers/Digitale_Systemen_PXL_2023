--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Feb 16 10:54:18 2023
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
    clk_0 : in STD_LOGIC;
    uitgang_0 : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    uitgang_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clk_0 => clk_0,
      uitgang_0(6 downto 0) => uitgang_0(6 downto 0)
    );
end STRUCTURE;
