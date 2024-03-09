library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity CLO is
    port (
        A : in std_logic_vector(31 downto 0);
        ones : out std_logic_vector(31 downto 0)
    );
end CLO;

architecture Behavioral of CLO is

begin
    process (A)
    variable c : integer range 0 to 32 := 0;
    begin
        c := 0;
        for i in 31 downto 0 loop
            if A(i) = '1' then
                c := c + 1;
            else
                exit; 
            end if;
        end loop;
        ones <= std_logic_vector(to_unsigned(c, 32));
    end process;
    
end Behavioral;
