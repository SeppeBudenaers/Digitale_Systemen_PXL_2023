----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2023 10:45:38
-- Design Name: 
-- Module Name: STATE_machine_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity STATE_machine_tb is
--  Port ( );
end STATE_machine_tb;

architecture Behavioral of STATE_machine_tb is
component STATE_machine is
Port (
        CLK: in std_logic;
        INPUT_0:  in std_logic_vector (1 downto 0);
        OUTPUT_0: out std_logic);
end component;

constant TIME_DELTA : time := 10ns;

signal INPUT_0_TB : std_logic_vector(1 downto 0);
Signal CLK_tb,OUTPUT_0_TB: std_logic;

begin
dut: STATE_machine
    port map ( 
        CLK => CLK_TB,
        INPUT_0 => INPUT_0_TB,
        OUTPUT_0 =>OUTPUT_0_TB);
  simulation: process begin 
  CLK_tb <= '0';
  INPUT_0_TB <= "00";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
  INPUT_0_TB <= "00";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "00";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "11";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "11";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "10";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "10";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
     INPUT_0_TB <= "01";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "01";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
     INPUT_0_TB <= "11";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "11";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
     INPUT_0_TB <= "10";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "10";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
     INPUT_0_TB <= "10";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "10";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
     INPUT_0_TB <= "00";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "00";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
     INPUT_0_TB <= "01";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "01";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
     INPUT_0_TB <= "01";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "01";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "00";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "00";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "01";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "01";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "10";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "10";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "11";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
   INPUT_0_TB <= "11";
  wait for Time_delta;
  CLK_tb <= not CLK_tb;
  wait;
  end process;
end Behavioral;
