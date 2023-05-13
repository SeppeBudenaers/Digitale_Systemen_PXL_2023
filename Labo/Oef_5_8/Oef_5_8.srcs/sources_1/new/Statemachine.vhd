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
        Z_out: out std_logic_vector (1 downto 0);
        State_out: out std_logic_vector (2 downto 0) );
end Statemachine;

architecture Behavioral of Statemachine is
signal PS,NS: std_logic_vector (2 downto 0);
begin

    Sync_p : process (CLK,NS) begin
        if (rising_edge (CLK)) then
            PS <= NS;
        end if;
    end process;
    
    Comb_P : process (PS,X) begin
        case PS is 
            when "000" =>
                Z_out <= "00";
                if (x = '0') then
                     NS <= "000";
                else
                    NS <= "001";
                end if;
            when "001" =>
                Z_out <= "00";
                if (x = '0') then
                     NS <= "001";
                else
                    NS <= "010";
                end if;
            when "010" =>
                Z_out <= "00";
                if (x = '0') then
                     NS <= "010";
                else
                    NS <= "011";
                end if;
            when "011" =>
                Z_out <= "10";
                if (x = '0') then
                     NS <= "011";
                else
                    NS <= "100";
                end if;
            when "100" =>
                Z_out <= "01";
                if (x = '0') then
                     NS <= "000";
                else
                    NS <= "101";
                end if;
            when "101" =>
                Z_out <= "11";
                if (x = '0') then
                     NS <= "101";
                else
                    NS <= "110";
                end if;
            when "110" =>
                Z_out <= "11";
                if (x = '0') then
                     NS <= "110";
                else
                    NS <= "111";
                end if;
           when "111" =>
                Z_out <= "11";
                if (x = '0') then
                     NS <= "111";
                else
                    NS <= "000";
                end if;
           when others =>
                Z_out <= "000";
                NS <= "000";
        end case;
    end process;
    State_out <= PS;
end Behavioral;
