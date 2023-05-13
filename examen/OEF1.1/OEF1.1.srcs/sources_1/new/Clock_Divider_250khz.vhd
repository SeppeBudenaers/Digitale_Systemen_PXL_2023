----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.03.2023 21:00:26
-- Design Name: 
-- Module Name: Clock_Divider_250khz - Behavioral
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

entity Clock_Divider_250khz is
Port (  
        CLK_in : in std_logic;
        Y18: out std_logic ;
        Data_out: out std_logic_vector (6 downto 0));
end Clock_Divider_250khz;

architecture Behavioral of Clock_Divider_250khz is
signal CLK_temp : std_logic;
begin
    process(CLK_in)
        variable counter: unsigned(31 downto 0) := (others=>'0');
    begin
        if(rising_edge(CLK_in)) then
            counter := counter + 1;
        end if;
        if(counter = (125000/2)) then -- 1K
            CLK_temp <= not CLK_temp;
            counter := (others=>'0');
        end if; 
    end process;
     Y18 <= CLK_Temp;
  with CLK_Temp select
  Data_OUT <=   "0010010" when '0',
                "0100100" when '1',
                "0000000" when others;
end Behavioral;
