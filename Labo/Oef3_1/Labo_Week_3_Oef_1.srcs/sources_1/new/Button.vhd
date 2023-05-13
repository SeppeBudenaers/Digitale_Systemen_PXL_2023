----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.03.2023 09:04:36
-- Design Name: 
-- Module Name: Button - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity Button is

Port (  Clk,Button  :   in  std_logic;
        Output_0    :   out std_logic);
        
end Button;

architecture Behavioral of Button is

begin
process (Clk,Button) 
variable teller: unsigned (31 downto 0) :=(others=>'0');
variable begin_teller: unsigned (1 downto 0) :=(others=>'0');
begin
    if(Button = '1') then 
        Output_0 <= '0';
        begin_teller := "01"; 
    end if;
    if (rising_edge(clk)and begin_teller = "01") then 
        teller := teller + 1;
        if (teller = 62.500 and Button = '1') then 
            Output_0 <= '1';
            teller := (others=>'0');
        else 
            Output_0 <= '0';
            teller := (others=>'0');
        end if;
    end if;
        
        

end Behavioral;
