----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.03.2023 12:53:51
-- Design Name: 
-- Module Name: Statemachine - Behavioral
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

entity Statemachine is
Port (  X,CLK: in std_logic;
        Z1,Z2: out std_logic;
        State_out: out std_logic_vector (1 downto 0) );
end Statemachine;

architecture Behavioral of Statemachine is
signal PS,NS: std_logic_vector (1 downto 0);
begin

    Sync_p : process (CLK,NS) begin
        if (rising_edge (CLK)) then
            PS <= NS;
        end if;
    end process;
    
    Comb_P : process (PS,X) begin
        case PS is 
            when "00" =>
                Z1 <= '1';
                if (x = '1') then
                    NS <= "00";
                    Z2 <= '0';
                else
                    NS <= "10";
                    Z2 <= '0';
                end if;
            when "01" =>
                Z1 <= '0';
                if (x = '1') then
                    NS <= "01";
                    Z2 <= '0';
                else
                    NS <= "11";
                    Z2 <= '0';
                end if;
            when "10" =>
                Z1 <= '1';
                if (x = '1') then
                    NS <= "00";
                    Z2 <= '0';
                else
                    NS <= "01";
                    Z2 <= '0';
                end if;
            when "11" =>
                Z1 <= '0';
                if (x = '1') then
                    NS <= "01";
                    Z2 <= '0';
                else
                    NS <= "00";
                    Z2 <= '1';
                end if;
            when others =>
                Z1 <= '1';
                NS <= "00";
        end case;
    end process;
    State_out <= PS;
end Behavioral;
