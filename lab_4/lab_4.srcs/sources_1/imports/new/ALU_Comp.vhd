library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Comp is
    PORT (
        A_31 : in STD_LOGIC;
        B_31 : in STD_LOGIC;
        S_31 : in STD_LOGIC;
        CO : in STD_LOGIC;
        ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
end ALU_Comp;

architecture dataflow of ALU_Comp is
    SIGNAL x1, x2, x3, x4 : STD_LOGIC;
begin
    R(31 downto 1) <= "0000000000000000000000000000000"; -- 31 bits ideally
    x1 <= ALUOp(1) and ALUOp(0) and not (CO);
    x2 <= ALUOp(1) and not(ALUOp(0)) and not(B_31) and S_31;
    x3 <= ALUOp(1) and not(ALUOp(0)) and A_31 and not(B_31);
    x4 <= ALUOp(1) and not(ALUOp(0)) and A_31 and S_31;
    R(0) <= x1 or x2 or x3 or x4;

end dataflow;
