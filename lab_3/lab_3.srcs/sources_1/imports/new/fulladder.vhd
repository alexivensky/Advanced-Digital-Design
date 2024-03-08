library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder is
    PORT (
        a : in STD_LOGIC;
        b : in STD_LOGIC;
        c_in : in STD_LOGIC;
        sum : out STD_LOGIC;
        c_out : out STD_LOGIC
    );
end fulladder;

architecture Behavioral of fulladder is
    signal x1, x2, x3 : STD_LOGIC;
begin
    x1 <= a xor b;
    x2 <= a and b;
    x3 <= x1 and c_in;
    sum <= x1 xor c_in;
    c_out <= x2 or x3;
end Behavioral;
