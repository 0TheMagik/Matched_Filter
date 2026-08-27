----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/24/2026 08:06:23 PM
-- Design Name: 
-- Module Name: mult_unit - Behavioral
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

entity mult_unit is
    generic(
        DATA_SIZE : integer := 32
    );
    Port ( 
        clk      : in  std_logic;
        rst      : in  std_logic;
        start    : in  std_logic;
        in_1     : in  std_logic_vector(DATA_SIZE - 1 downto 0);
        in_2     : in  std_logic_vector(DATA_SIZE - 1 downto 0);
        out_done : out std_logic;
        out_res  : out std_logic_vector(DATA_SIZE * 2 - 1 downto 0)
    );
end mult_unit;

architecture Behavioral of mult_unit is
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                out_res  <= (others => '0');
                out_done <= '0';
            else
                out_done <= start; -- 1-cycle latency pipeline register
                if start = '1' then
                    out_res <= std_logic_vector(signed(in_1) * signed(in_2));
                else
                    out_res <= (others => '0');
                end if;
            end if;
        end if;
    end process;

end Behavioral;