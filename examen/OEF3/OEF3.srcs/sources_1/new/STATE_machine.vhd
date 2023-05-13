----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2023 10:28:18
-- Design Name: 
-- Module Name: STATE_machine - Behavioral
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

entity STATE_machine is
Port (
        CLK: in std_logic;
        INPUT_0:  in std_logic_vector (1 downto 0);
        OUTPUT_0: out std_logic);
end STATE_machine;

architecture Behavioral of STATE_machine is
Type State_type is (X,Y,Z);
signal PS,NS : state_type := x;
begin
Sync_p: process (CLK) begin
            if(rising_edge(CLK)) then
            PS<= NS;
            end if;
        end process;
 COMB: process (PS,INPUT_0) begin 
        Case PS is  
            when x =>
                if(INPUT_0 = "00") then
                    NS <= x;
                    OUTPUT_0 <= '0';
                elsif(INPUT_0 ="01") then
                    NS <= z;
                    OUTPUT_0 <= '1'; 
                elsif(INPUT_0 ="10") then 
                    NS <= y;
                    OUTPUT_0 <= '0';
                else
                     NS <= x;
                    OUTPUT_0 <= '0';
                end if;
                
            when Y =>
                if(INPUT_0 = "00") then
                    NS <= x;
                    OUTPUT_0 <= '1';
                elsif(INPUT_0 ="01") then
                    NS <= z;
                    OUTPUT_0 <= '0'; 
                elsif(INPUT_0 ="10") then 
                    NS <= z;
                    OUTPUT_0 <= '0';
                else
                     NS <= x;
                    OUTPUT_0 <= '0';
                end if;
                
            when Z =>
                if(INPUT_0 = "00") then
                    NS <= x;
                    OUTPUT_0 <= '0';
                elsif(INPUT_0 ="01") then
                    NS <= y;
                    OUTPUT_0 <= '0'; 
                elsif(INPUT_0 ="10") then 
                    NS <= y;
                    OUTPUT_0 <= '0';
                else
                     NS <= x;
                    OUTPUT_0 <= '1';
                end if;
                
            when others =>
            NS <= x;
            
            end case;
            end process;
                
end Behavioral;
