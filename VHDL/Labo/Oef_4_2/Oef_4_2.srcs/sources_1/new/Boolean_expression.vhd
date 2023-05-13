----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2023 10:43:30
-- Design Name: 
-- Module Name: Boolean_expression - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Boolean_expression is
Port ( 
    SW0,SW1,SW2:    in std_logic;
    LED0:           out std_logic );
end Boolean_expression;

architecture Behavioral of Boolean_expression is

begin

LED0 <= (SW0 and SW1) or (SW1 and SW2);

end Behavioral;
