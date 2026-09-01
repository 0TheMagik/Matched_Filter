----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2026 10:43:43 PM
-- Design Name: 
-- Module Name: matchedfilter_tb - Behavioral
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
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

entity matchedfilter_tb is
end matchedfilter_tb;

architecture Behavioral of matchedfilter_tb is

    -- DUT Parameters
    constant DATA_SIZE      : integer := 16;
    constant REF_LENGTH     : integer := 501;
    constant RET_LENGTH     : integer := 501;
--    constant FILTER_LATENCY : integer := 5;

    -- Testbench Timing Parameters
    constant CLK_PERIOD     : time := 10 ns;        -- 100 MHz
    constant TB_RUNTIME     : time := 100_000 ns;   -- 100 us

    -- DUT Signals
    signal clk        : std_logic := '0';
    signal rst        : std_logic := '1';
    signal ref_signal : std_logic_vector(DATA_SIZE-1 downto 0) := (others => '0');
    signal ret_signal : std_logic_vector(DATA_SIZE-1 downto 0) := (others => '0');
    signal out_signal : std_logic_vector(63 downto 0);

    -- Simulation Control
    signal sim_done   : boolean := false;

begin

    -- Instantiate the VHDL DUT
    dut: entity work.matchedfilter
        generic map (
            DATA_SIZE  => DATA_SIZE,
            REF_LENGTH => REF_LENGTH,
            RET_LENGTH => RET_LENGTH
        )
        port map (
            clk        => clk,
            rst        => rst,
            ref_signal => ref_signal,
            ret_signal => ret_signal,
            out_signal => out_signal
        );

    -- Clock Generation Process
    clk_gen: process
    begin
        while not sim_done loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Stimulus Feed Process (reads ref & ret hex files)
    stim_proc: process
        file f_ref : text open read_mode is "Signal_ref.hex";
        file f_ret : text open read_mode is "Signal_ret_noisy.hex";
        variable l_ref, l_ret : line;
        variable v_ref_val    : std_logic_vector(DATA_SIZE-1 downto 0);
        variable v_ret_val    : std_logic_vector(DATA_SIZE-1 downto 0);
        variable read_ok      : boolean;
    begin
        -- Initial Reset
        rst <= '1';
        ref_signal <= (others => '0');
        ret_signal <= (others => '0');

        -- Match negedge reset deassertion
        wait until falling_edge(clk);
        rst <= '0';

        -- Read cycle-by-cycle
        while not (endfile(f_ref) and endfile(f_ret)) loop
            wait until rising_edge (clk);

            -- Stream Reference Signal
            if not endfile(f_ref) then
                readline(f_ref, l_ref);
                hread(l_ref, v_ref_val, read_ok);
                if read_ok then
                    ref_signal <= v_ref_val;
                else
                    ref_signal <= (others => '0');
                end if;
            else
                ref_signal <= (others => '0');
            end if;

            -- Stream Return Signal
            if not endfile(f_ret) then
                readline(f_ret, l_ret);
                hread(l_ret, v_ret_val, read_ok);
                if read_ok then
                    ret_signal <= v_ret_val;
                else
                    ret_signal <= (others => '0');
                end if;
            else
                ret_signal <= (others => '0');
            end if;
        end loop;

        -- Keep lines at 0 once both files finish
        while not sim_done loop
            wait until rising_edge(clk);
            ref_signal <= (others => '0');
            ret_signal <= (others => '0');
        end loop;

        wait;
    end process;

    -- Global Timeout Watchdog
    timeout_proc: process
    begin
        wait for TB_RUNTIME;
        report "Simulation complete after " & time'image(now) severity note;
        sim_done <= true;
        wait;
    end process;

end Behavioral;
