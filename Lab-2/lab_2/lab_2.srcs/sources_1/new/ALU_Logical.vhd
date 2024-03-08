library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Logical is
    PORT (
        A : in STD_LOGIC_VECTOR(31 downto 0);
        B : in STD_LOGIC_VECTOR(31 downto 0);
        Op : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
end ALU_Logical;

architecture dataflow of ALU_Logical is
    SIGNAL and_calc, or_calc, xor_calc, nor_calc : STD_LOGIC_VECTOR(31 downto 0);
begin
    and_calc <= A and B;
    or_calc <= A or B;
    xor_calc <= A xor B;
    nor_calc <= A nor B;
    WITH Op select
        R <=    and_calc when "00",
                or_calc when "01",
                xor_calc when "10",
                nor_calc when "11",
                (others => '0') WHEN others;
end dataflow;
