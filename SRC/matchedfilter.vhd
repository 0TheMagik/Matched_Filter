----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/07/2026 11:17:46 PM
-- Design Name: 
-- Module Name: matchedfilter - Behavioral
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

entity matchedfilter is
    generic(
        DATA_SIZE : integer := 32;
        SIGNAL_LENGTH: integer := 2001
    );
    port(
        clk             : in std_logic;
        rst             : in std_logic;
        in_signal_1     : in std_logic_vector(DATA_SIZE-1 downto 0);
        in_signal_2     : in std_logic_vector(DATA_SIZE-1 downto 0);
        out_signal      : out std_logic_vector(DATA_SIZE*2-1 downto 0)
    );
end matchedfilter;

architecture Behavioral of matchedfilter is
    signal temp_res     : std_logic_vector(DATA_SIZE*2-1 downto 0) := (others => '0');
    signal length       : integer range 0 to SIGNAL_LENGTH-1 := 0;
    signal in_counter   : integer := 0;
    
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                temp_res <= (others => '0');
            else
                in_counter <= in_counter +1;
                temp_res <= std_logic_vector(signed(temp_res)+signed(in_signal_1)*signed(in_signal_2));
                if length = SIGNAL_LENGTH-1 then
                    out_signal <= temp_res;
                else
                    length <= length +1;
                end if;
            end if;
        end if;
    end process;
--    out_signal <= temp_res;

end Behavioral;
