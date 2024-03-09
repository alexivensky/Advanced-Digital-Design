library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity left_shift_reg is
    generic (
        n : positive := 64
    );
    port (
        D       : in std_logic_vector(n-1 downto 0);
        LOAD    : in std_logic;
        RST     : in std_logic;
        CLK     : in std_logic;
        S       : in std_logic;
        Q_out   : out std_logic_vector(n-1 downto 0)
    );
end left_shift_reg;

architecture Behavioral of left_shift_reg is
    SIGNAL Q : std_logic_vector(n-1 downto 0);
begin
    process (CLK, RST)
    begin
        if (RST = '1') then
            Q <= (others => '0');
        elsif (rising_edge(CLK)) then
            if (LOAD = '1' and S = '0') then
                Q <= D;
            elsif (S = '1') then
                Q <= Q(n-2 downto 0) & '0';
            end if;
        end if;
    end process;
    Q_out <= Q;
end Behavioral;
