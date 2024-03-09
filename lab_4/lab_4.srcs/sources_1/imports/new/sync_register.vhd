library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.all;

entity sync_register is
    generic (
        n : positive := 64
    );
    port (
        CLK     : IN     std_logic;
        D       : IN     std_logic_vector(n-1 downto 0);
        EN      : IN     std_logic;
        RST     : IN     std_logic;
        Q       : OUT    std_logic_vector(n-1 downto 0)
    );
end sync_register;

architecture Behavioral of sync_register is

begin

    process (CLK, RST)
    begin
        if (RST = '1') then
            Q <= (others => '0');
        elsif (rising_edge(CLK)) then
            if (EN = '1') then
                Q <= D;
            end if;
        end if;
    end process;

end Behavioral;