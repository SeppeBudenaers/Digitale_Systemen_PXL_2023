----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2023 16:24:56
-- Design Name: 
-- Module Name: Clock_Divider - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clock_Divider is
Port (
    Clock   :   in  std_logic;
    Leds,pmod    :   out std_logic_vector (3 downto 0)
      );
end Clock_Divider;

architecture Behavioral of Clock_Divider is
    signal Clk_inter: std_logic_vector (3 downto 0):= "0000";
begin
    
    process(Clock)
        variable Teller3: unsigned(31 downto 0) := (others=>'0');
        variable Teller2: unsigned(31 downto 0) := (others=>'0');
        variable Teller1: unsigned(31 downto 0) := (others=>'0');
        variable Teller0: unsigned(31 downto 0) := (others=>'0');
        
        begin
            if(rising_edge(Clock))then
                teller3 := teller3+1;
                teller2 := teller2+1;
                teller1 := teller1+1;
                teller0 := teller0+1;
                
                if(teller3 = (125000000/2))then --1hz
                    Clk_inter(3) <= not Clk_inter(3);
                    Teller3 := (others=>'0');
                end if;
                
                if(teller2 = (62500000/2))then --2hz
                    Clk_inter(2) <= not Clk_inter(2);
                    Teller2 := (others=>'0');
                end if;
                
                if(teller1 = (25000000/2))then --5hz
                    Clk_inter(1) <= not Clk_inter(1); 
                    Teller1 := (others=>'0');
                end if;
                
                if(teller0 = (12500000/2))then --10hz
                    Clk_inter(0) <= not Clk_inter(0);
                    Teller0 := (others=>'0');
                end if;
            end if;
        end process;
        
        Leds(3) <= clk_inter(3);
        Pmod(3) <= clk_inter(3);
        
        Leds(2) <= clk_inter(2);
        Pmod(2) <= clk_inter(2);
        
        Leds(1) <= clk_inter(1);
        Pmod(1) <= clk_inter(1);
        
        Leds(0) <= clk_inter(0);
        Pmod(0) <= clk_inter(0);
end Behavioral;
