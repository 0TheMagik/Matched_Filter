----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/24/2026 08:35:24 PM
-- Design Name: 
-- Module Name: controller - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controller is
    generic(
        ADDR_SIZE     : integer := 11;
        DATA_SIZE     : integer := 32;
        SIGNAL_LENGTH : integer := 2001; -- Total received signal length
        FILTER_LENGTH : integer := 32     -- Length of reference template
    );
    Port ( 
        clk           : in  std_logic;
        rst           : in  std_logic;
        start         : out std_logic;
        addr_signal_1 : out std_logic_vector (ADDR_SIZE - 1 downto 0);
        addr_signal_2 : out std_logic_vector (ADDR_SIZE - 1 downto 0)
    );
end controller;

architecture Behavioral of controller is
    type state_type is (IDLE, RUN_FILTER, NEXT_SHIFT, DONE);
    signal state : state_type := IDLE;

    signal n_shift : integer range 0 to SIGNAL_LENGTH := 0;
    signal k_tap   : integer range 0 to FILTER_LENGTH := 0;
    signal start_d : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state         <= IDLE;
                n_shift       <= 0;
                k_tap         <= 0;
                start         <= '0';
                addr_signal_1 <= (others => '0');
                addr_signal_2 <= (others => '0');
            else
                case state is
                    when IDLE =>
                        n_shift <= 0;
                        k_tap   <= 0;
                        start   <= '0';
                        state   <= RUN_FILTER;

                    when RUN_FILTER =>
                        -- Template address: k
                        addr_signal_1 <= std_logic_vector(to_unsigned(k_tap, ADDR_SIZE));
                        -- Input signal address: n + k
                        addr_signal_2 <= std_logic_vector(to_unsigned(n_shift + k_tap, ADDR_SIZE));
                        
                        -- Pulse start to align with pipeline read latency
                        start <= '1';

                        if k_tap = FILTER_LENGTH - 1 then
                            k_tap <= 0;
                            if n_shift = (SIGNAL_LENGTH - FILTER_LENGTH) then
                                state <= DONE;
                            else
                                n_shift <= n_shift + 1;
                            end if;
                        else
                            k_tap <= k_tap + 1;
                        end if;

                    when DONE =>
                        start <= '0';
                        -- Hold or loop back
                        state <= DONE;

                    when others =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;

end Behavioral;
