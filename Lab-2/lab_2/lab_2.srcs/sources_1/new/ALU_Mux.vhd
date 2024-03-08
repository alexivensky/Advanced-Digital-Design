library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Mux is
    PORT (
        LogicalR, ArithR, CompR, ShiftR : in STD_LOGIC_VECTOR(31 downto 0);
        ALU_Sel : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
end ALU_Mux;

architecture dataflow of ALU_Mux is

begin
    WITH ALU_SEL select
        R <=    LogicalR when "00",
                ArithR when "01",
                CompR when "10",
                ShiftR when "11",
                (others => '0') WHEN others;

end dataflow;
