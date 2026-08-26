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
        ADDR_SIZE : integer := 11;
        DATA_SIZE : integer := 32;
        SIGNAL_LENGTH: integer := 2001
    );
    port(
        clk             : in std_logic;
        rst             : in std_logic;
        
        addr_signal_1   : out std_logic_vector(ADDR_SIZE-1 downto 0);
        in_signal_1     : in std_logic_vector(DATA_SIZE-1 downto 0);
        
        addr_signal_2   : out std_logic_vector(ADDR_SIZE-1 downto 0);
        in_signal_2     : in std_logic_vector(DATA_SIZE-1 downto 0);
        
        out_signal      : out std_logic_vector(DATA_SIZE*2-1 downto 0)
    );
end matchedfilter;

architecture Behavioral of matchedfilter is

    type signal_array is array (0 to SIGNAL_LENGTH-1) of std_logic_vector(DATA_SIZE-1 downto 0);
    
    signal ref_signal_reg   : signal_array := (others => (others => '0'));
    signal ret_signal_reg   : signal_array := (others => (others => '0'));
    
--    signal mult_res     : mult_array := (others => (others => '0'));
    signal mult_res     : signed(DATA_SIZE*2-1 downto 0) := (others => '0');
    signal temp_res     : signed(DATA_SIZE*2-1 downto 0) := (others => '0');
    signal length       : integer range 0 to SIGNAL_LENGTH-1 := 0;
    signal in_counter   : integer := 0;
    
begin
    
    addr_signal_1 <= std_logic_vector(to_unsigned(in_counter,ADDR_SIZE));
    addr_signal_2 <= std_logic_vector(to_unsigned(in_counter,ADDR_SIZE));
    
    process(clk)
    begin
        
    end process;
    process(clk)
        variable temp_sum   : signed(out_signal'range);
    begin
        if rising_edge(clk) then
            if rst = '1' then
                temp_res <= (others => '0');
            else
                in_counter <= in_counter +1;
                -- Multiplication
                mult_res <= (signed(in_signal_1)*signed(in_signal_2));
                -- Accumulate
--                temp_res <= temp_res + resize(mult_res,temp_res'length);
            end if;
        end if;
    end process;
    out_signal <= std_logic_vector(temp_res);

end Behavioral;
