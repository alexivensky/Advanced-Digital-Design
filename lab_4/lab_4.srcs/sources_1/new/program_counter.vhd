library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity program_counter is
    port (
        PC_en, clk, rst : in std_logic;
        PC_in : in std_logic_Vector(31 downto 0);
        PC_out : out std_logic_vector(31 downto 0)
    );
end program_counter;

architecture Behavioral of program_counter is

begin
    process (clk, rst)
    begin
        if (rst = '1') then
            PC_out <= (others => '0');
        elsif (rising_edge(clk)) then
            if (PC_en = '1') then
                PC_out <= PC_in;
            end if;
        end if;
    end process;
end Behavioral;
