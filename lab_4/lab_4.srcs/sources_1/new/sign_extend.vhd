library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity sign_extend is
    port (
        se_in : in std_logic_vector(15 downto 0);
        se_out : out std_logic_vector(31 downto 0)
    );
end sign_extend;

architecture Behavioral of sign_extend is

begin
    process(se_in)
    begin
        case se_in(15) is 
            when '0' =>
                se_out <= "0000000000000000" & se_in;
            when '1' =>
                se_out <= "1111111111111111" & se_in;
            when others =>
                se_out <= (others => '0');
        end case;
    end process;

end Behavioral;
