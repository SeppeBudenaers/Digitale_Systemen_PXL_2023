--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Tue Mar 14 13:52:37 2023
--Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    clk_in1_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_vio_0_0;
  component design_1_Statemachine_0_0 is
  port (
    X : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Z_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    State_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1_Statemachine_0_0;
  signal Statemachine_0_State_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Statemachine_0_Z_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk_in1_0_1 : STD_LOGIC;
  signal vio_0_probe_out0 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in1_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in1_0 : signal is "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  clk_in1_0_1 <= clk_in1_0;
Statemachine_0: component design_1_Statemachine_0_0
     port map (
      CLK => clk_in1_0_1,
      State_out(2 downto 0) => Statemachine_0_State_out(2 downto 0),
      X => vio_0_probe_out0(0),
      Z_out(1 downto 0) => Statemachine_0_Z_out(1 downto 0)
    );
vio_0: component design_1_vio_0_0
     port map (
      clk => clk_in1_0_1,
      probe_in0(1 downto 0) => Statemachine_0_Z_out(1 downto 0),
      probe_in1(2 downto 0) => Statemachine_0_State_out(2 downto 0),
      probe_out0(0) => vio_0_probe_out0(0)
    );
end STRUCTURE;
