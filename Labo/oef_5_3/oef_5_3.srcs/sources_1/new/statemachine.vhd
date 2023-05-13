----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2023 10:45:20
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

use IEEE.NUMERIC_STD.ALL;

entity statemachine is
    Port (  X1,X2,CLK: in std_Logic;
            Z: out std_logic;
            case_out: out std_Logic_vector(1 downto 0));
end statemachine;

architecture Behavioral of statemachine is
    Type state_type is (A,B,C);
    signal NS,PS : state_type;
    
begin
    process (CLK)
    begin
        if (rising_edge(clk)) then
            PS <= NS;
        end if;
    end process;
    process (PS,X1,X2) begin
    case_out <= "00";
    case ps is
        when A =>
        case_out <="10";
        if (x1='0') then  
        NS <= A; 
        Z <= '0'; 
        case_out <="10";
        else 
        NS <= C;
        case_out <= "01"; 
        z <= '0';
        end if;
        when B =>
        case_out <="11";
        if (x2 = '1') then 
        case_out <="11";
        NS <= B;
        Z <= '0';
        else 
        case_out <="10";
        NS <= A;
        Z <= '1';
        end if;
        when C =>
         case_out <="01";
        if (x2 = '1') then 
        case_out <="11";
        NS <= B;
        Z <= '0';
        else 
        case_out <="10";
        NS <= A;
        Z <= '1';
        end if;
        When others => 
        end case;
    end process;


end Behavioral;
