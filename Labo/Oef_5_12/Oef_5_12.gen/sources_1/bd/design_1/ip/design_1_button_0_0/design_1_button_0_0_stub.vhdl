-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Mar 16 10:26:37 2023
-- Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/02_PXL/01_Digitale_Systemen/Labo/Oef_5_12/Oef_5_12.gen/sources_1/bd/design_1/ip/design_1_button_0_0/design_1_button_0_0_stub.vhdl
-- Design      : design_1_button_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_button_0_0 is
  Port ( 
    R : in STD_LOGIC;
    G : in STD_LOGIC;
    B : in STD_LOGIC;
    Data_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end design_1_button_0_0;

architecture stub of design_1_button_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "R,G,B,Data_out[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "button,Vivado 2022.1";
begin
end;
