----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2023 09:45:57
-- Design Name: 
-- Module Name: Seppe - Behavioral
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

entity Seppe is
 Port ( 
        invoer  :    in  std_logic_vector(15 downto 0);
        start   :    in std_logic;
        clk_in  :    in std_logic;   
        resultaat:   out std_logic_vector (31 downto 0)
  );
end Seppe;

architecture Behavioral of Seppe is
    signal tmp : std_logic_vector(31 downto 0):=(others=>'0');
begin
sqr_process: process(clk_in,invoer)
begin

if(rising_edge(clk_in) and start='1')then
        tmp <= std_logic_vector(unsigned(invoer) * unsigned(invoer));
        resultaat <= tmp;
    elsif (start = '0') then
        resultaat <=(others=>'0');
        tmp <=(others=>'0');
    end if;
end process;
end Behavioral;
