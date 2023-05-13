----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2023 10:10:59
-- Design Name: 
-- Module Name: Sevensegment_tb - Behavioral
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

entity Sevensegment_tb is
--  Port ( );
end Sevensegment_tb;

architecture Behavioral of Sevensegment_tb is

component Sevensegment is
Port (
INPUT_0:  in     std_logic_vector (3 downto 0) ;
OUTPUT_0: out    std_logic_vector (6 downto 0) );
end component;

constant TIME_DELTA : time := 10ns;

signal D_IN_tb : std_logic_vector (3 downto 0);
signal D_out_tb : std_logic_vector (6 downto 0);

begin
dut : Sevensegment
        Port map (
        INPUT_0 => D_IN_tb,
        OUTPUT_0 => D_out_tb);
        
process begin
D_IN_tb <= "0000";
wait for Time_delta;
D_IN_tb <= "0001";
wait for Time_delta;
D_IN_tb <= "0010";
wait for Time_delta;
D_IN_tb <= "0011";
wait for Time_delta;
D_IN_tb <= "0100";
wait for Time_delta;
D_IN_tb <= "0101";
wait for Time_delta;
D_IN_tb <= "0110";
wait for Time_delta;
D_IN_tb <= "0111";
wait for Time_delta;
D_IN_tb <= "1000";
wait for Time_delta;
D_IN_tb <= "1001";
wait for Time_delta;
D_IN_tb <= "1010";
wait for Time_delta;
D_IN_tb <= "1011";
wait for Time_delta;
D_IN_tb <= "1100";
wait for Time_delta;
D_IN_tb <= "1101";
wait for Time_delta;
D_IN_tb <= "1110";
wait for Time_delta;
D_IN_tb <= "1111";
wait;
end process;
end Behavioral;
