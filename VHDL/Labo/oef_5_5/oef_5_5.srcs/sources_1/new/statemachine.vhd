----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.03.2023 12:32:00
-- Design Name: 
-- Module Name: statemachine - Behavioral
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

entity statemachine is
Port (  X1,X2,CLK   : in std_logic;
        Z1,Z2       : out std_logic );
end statemachine;

architecture Behavioral of statemachine is

Type state_type is (A,B,C);
Signal PS,NS : state_type;

begin

Sync_p: process (CLK,NS) -- state gelijk stellen aan de nieuwe state
    begin
        if (rising_edge(CLK)) then
            PS <= NS;
        end if;
    end process;
    
Comb_P: process(Clk,X1,X2)
    begin
        case PS  is
            when A =>
                Z1 <= '0';
                if ( X1 = '1') then
                    NS <= B;
                    Z2 <= '1';
                else
                    NS <= C;
                    Z2 <= '1';
                end if;
                
            when B =>
            Z1 <= '1';
            if (X2 = '1') then 
                NS <= A;
                Z2 <= '0';
            else
                NS <= C;
                Z2 <= '1';
            end if;
            
            when C =>
                Z1 <= '1';
                if ( X1 = '1') then
                    NS <= B;
                    Z2 <= '1';
                else
                    NS <= A;
                    Z2 <= '1';
                end if;
            when others =>
                NS <= A;
                Z1 <= '0';
                Z2 <= '0';
        end case; 
   end process;
end Behavioral;
