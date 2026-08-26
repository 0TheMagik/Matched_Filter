----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/24/2026 08:06:23 PM
-- Design Name: 
-- Module Name: sum_unit - Behavioral
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

entity sum_unit is
    generic(
        DATA_SIZE : integer := 32
    );
    Port ( 
        clk     : in  std_logic;
        rst     : in  std_logic;                         -- Synchronous reset for new correlation window
        start   : in  std_logic;                         -- Enable accumulation (e.g. out_done from mult_unit)
        in_data : in  std_logic_vector(DATA_SIZE * 2 - 1 downto 0);
        out_res : out std_logic_vector(DATA_SIZE * 2 - 1 downto 0)
    );
end sum_unit;

architecture Behavioral of sum_unit is
    signal acc_reg : signed(DATA_SIZE * 2 - 1 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                acc_reg <= (others => '0');
            elsif start = '1' then
                acc_reg <= acc_reg + signed(in_data);
            end if;
        end if;
    end process;

    out_res <= std_logic_vector(acc_reg);

end Behavioral;
