----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2023 10:49:38
-- Design Name: 
-- Module Name: Boolean_expression_tb - Behavioral
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

entity Boolean_expression_tb is
--  Port ( );
end Boolean_expression_tb;

architecture Behavioral of Boolean_expression_tb is

component Boolean_expression is
Port ( 
    SW0,SW1,SW2:    in std_logic;
    LED0:           out std_logic );
end component;

constant TIME_DELTA : time := 10ns;

Signal SW0_tb,SW1_tb,SW2_tb: std_logic;
Signal LED0_tb : std_logic;
begin
dut: Boolean_expression
    Port map(
    SW0     => SW0_tb,
    SW1     => SW1_tb,
    SW2     => SW2_tb,
    LED0    => LED0_tb
    );
    
simulation: process begin
    SW0_tb <= '0';
    SW1_tb <= '0';
    Sw2_tb <= '0';
    wait for time_delta;
    SW0_tb <= '1';
    SW1_tb <= '0';
    Sw2_tb <= '0';
    wait for time_delta;
    SW0_tb <= '0';
    SW1_tb <= '1';
    Sw2_tb <= '0';
    wait for time_delta;
    SW0_tb <= '1';
    SW1_tb <= '1';
    Sw2_tb <= '0';
    wait for time_delta;
    SW0_tb <= '0';
    SW1_tb <= '0';
    Sw2_tb <= '1';
    wait for time_delta;
    SW0_tb <= '1';
    SW1_tb <= '0';
    Sw2_tb <= '1';
    wait for time_delta;
    SW0_tb <= '0';
    SW1_tb <= '1';
    Sw2_tb <= '1';
    wait for time_delta;
    SW0_tb <= '1';
    SW1_tb <= '1';
    Sw2_tb <= '1';
    wait;
end process;
end Behavioral;
