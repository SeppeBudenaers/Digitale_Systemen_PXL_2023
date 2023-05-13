----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2023 09:47:38
-- Design Name: 
-- Module Name: Seppe_tb - Behavioral
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

entity Seppe_tb is
--  Port ( );
end Seppe_tb;

architecture Behavioral of Seppe_tb is
component Seppe is
 Port ( 
        invoer  :    in  std_logic_vector(15 downto 0);
        start   :    in std_logic;
        clk_in  :    in std_logic;   
        resultaat:   out std_logic_vector (31 downto 0)
  );
end component;

constant TIME_DELTA : time := 10ns;

Signal Invoer_TB : std_logic_vector(15 downto 0);
Signal Start_tb,CLK_in_tb: std_logic;
signal resultaat_tb: std_logic_vector (31 downto 0);
begin
dut : seppe
    port map( 
        invoer => invoer_tb,
        start => start_tb,
        clk_in => clk_in_tb,
        resultaat => resultaat_tb);

simulation: process begin
Start_tb <= '0';
CLK_in_tb <= '0';
invoer_tb <= "0000000000010000";
wait for TIME_delta;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for time_delta;
Start_tb <= '1';
CLK_in_tb <= '1';
invoer_tb <= "0000000000010000";
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for time_delta;
Start_tb <= '0';
CLK_in_tb <= '0';
invoer_tb <= "0000000000010000";
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for time_delta;
Start_tb <= '1';
CLK_in_tb <= '1';
invoer_tb <= "0000000000000100";
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';
wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';wait for TIME_DELTA;
CLK_in_tb <= '0';
wait for TIME_DELTA;
CLK_in_tb <= '1';


wait;
end process;
end Behavioral;
