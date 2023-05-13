----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.03.2023 14:29:16
-- Design Name: 
-- Module Name: sequence_detector - Behavioral
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

entity sequence_detector is
Port (  CLK,RST,Data : in std_logic;
        seq_detected : out std_logic );
end sequence_detector;

architecture Behavioral of sequence_detector is
Type state_type is (S0,S1,S2,S3,S4,S5,S6,S7);
Signal PS,NS : state_type;
begin
    Sync_P: process (CLK,RST)begin
                if (RST = '1') then 
                    PS <= S0;
                    seq_detected <= '0';
                elsif (rising_edge (CLK)) then
                    PS <= NS;
                end if ;
            end process;
    Sequence : process(PS,Data)begin
        case PS is 
        
            When S0 => 
                if (data = '0') then
                    NS <= S1;
                else
                    NS <= S0;
                end if;
                
            When S1 => 
                if (data = '1') then
                    NS <= S2;
                else
                    NS <= S0;
                end if;
                
            When S2 => 
                if (data = '0') then
                    NS <= S3;
                else
                    NS <= S0;
                end if;
                
            When S3 => 
                if (data = '1') then
                    NS <= S4;
                else
                    NS <= S0;
                end if;
                
            When S4 => 
                if (data = '0') then
                    NS <= S5;
                else
                    NS <= S0;
                end if;
                
            When S5 => 
                if (data = '0') then
                    NS <= S6;
                else
                    NS <= S0;
                end if;
                
            When S6 => 
                if (data = '1') then
                    NS <= S7;
                else
                    NS <= S0;
                end if;
           
            When S7 => 
                if (data = '1') then
                    NS <= S0;
                    seq_detected <= '1';
                else
                    NS <= S0;
                end if;
            when others =>
                NS <= S0;
        end case;
    end process;
end Behavioral;
