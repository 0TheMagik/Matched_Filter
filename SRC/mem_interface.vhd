library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mem_interface is
    generic(
        ADDR_SIZE : integer := 11;
        DATA_SIZE : integer := 32
    );
    Port (
        clk  : in  std_logic;
        addr : out std_logic_vector(ADDR_SIZE-1 downto 0) -- 5 bits covers 31 locations (0 to 30)
--        dout : in  std_logic_vector(DATA_SIZE-1 downto 0)  -- 8-bit data output from BRAM
    );
end mem_interface;

architecture Behavioral of mem_interface is
    signal read_addr : unsigned(ADDR_SIZE-1 downto 0) := (others => '0');
begin
    addr <= std_logic_vector(read_addr);

    process(clk)
    begin
        if rising_edge(clk) then
            if read_addr < 2000 then
                read_addr <= read_addr + 1;
            else
                read_addr <= (others => '0'); -- Loop back
            end if;
        end if;
    end process;
end Behavioral;