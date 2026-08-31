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
        DATA_SIZE       : integer := 32;
        REF_LENGTH      : integer := 501;
        RET_LENGTH      : integer := 2001
    );
    port(
        clk           : in std_logic;
        rst           : in std_logic;
        
        ref_signal    : in std_logic_vector(DATA_SIZE-1 downto 0); -- Reference template signal (loaded once)
        ret_signal    : in std_logic_vector(DATA_SIZE-1 downto 0); -- Incoming real-time signal stream
        
        out_signal    : out std_logic_vector(63 downto 0)
    );
end matchedfilter;

architecture Behavioral of matchedfilter is

    type signal_array is array (0 to RET_LENGTH-1) of std_logic_vector(DATA_SIZE-1 downto 0);
    
    signal ref_signal_reg : signal_array := (others => (others => '0'));
    signal ret_signal_reg : signal_array := (others => (others => '0'));
    
    signal mult_res       : signed(DATA_SIZE*2-1 downto 0) := (others => '0');
    signal temp_res       : signed(63 downto 0) := (others => '0');
    signal in_counter     : integer := 0;
    signal ref_loaded     : std_logic := '0';
    
begin
    
    process(clk)
        -- Full 75-bit accumulator to prevent overflow during 2001-point accumulation
        variable v_mult_res : signed(DATA_SIZE*2-1 downto 0);
        variable v_temp_res : signed(63 downto 0); 
    begin
        if rising_edge(clk) then
            if rst = '1' then
                mult_res       <= (others => '0');
                temp_res       <= (others => '0');
                ref_signal_reg <= (others => (others => '0'));
                ret_signal_reg <= (others => (others => '0'));
                in_counter     <= 0;
                ref_loaded     <= '0';
            else
                -- 1. Pre-load the reference template into stationary registers
                if ref_loaded = '0' then
                    ref_signal_reg(in_counter) <= ref_signal;
                    if in_counter < REF_LENGTH-1 then
                        in_counter <= in_counter + 1;
                    else
                        in_counter <= 0;
                        ref_loaded <= '1'; -- Reference is now fully stored and locked
                    end if;
                end if;

                -- 2. Shift ONLY the incoming received signal down the delay line
                ret_signal_reg(0) <= ret_signal;
                for i in 1 to RET_LENGTH-1 loop
                    ret_signal_reg(i) <= ret_signal_reg(i-1);
                end loop;

                -- 3. Compute Cross-Correlation (Moving incoming vs. Stationary reference)
                v_temp_res := (others => '0');
                for j in 0 to REF_LENGTH-1 loop
                    v_mult_res := signed(ref_signal_reg(j)) * signed(ret_signal_reg(j));
                    v_temp_res := v_temp_res + resize(v_mult_res, v_temp_res'length);
                end loop;

                -- 4. Store product and assign top 64 bits of accumulator to prevent overflow
                mult_res <= v_mult_res;
                temp_res <= v_temp_res;
                
            end if;            
        end if;
    end process;

    out_signal <= std_logic_vector(temp_res);

end Behavioral;
