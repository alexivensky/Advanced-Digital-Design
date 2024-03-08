library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity slicer is
    port (
        R : in std_logic_vector(63 downto 0);
        R_high, R_low : out std_logic_vector(31 downto 0)
    );
end slicer;

architecture Behavioral of slicer is

begin
    R_high <= R(63 downto 32);
    R_low <= R(31 downto 0);
end Behavioral;
