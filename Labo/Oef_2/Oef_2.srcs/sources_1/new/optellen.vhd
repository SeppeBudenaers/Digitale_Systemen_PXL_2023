----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.02.2023 08:58:14
-- Design Name: 
-- Module Name: optellen - Behavioral
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

entity optellen is
Port (
    Getal_1,Getal_2 :   in  std_logic_vector(3 downto 0);
    Resultaat :         out std_logic_vector(3 downto 0));
end optellen;

architecture Behavioral of optellen is

begin
    Resultaat <= std_logic_vector(unsigned(Getal_1) + unsigned(Getal_2));

end Behavioral;
