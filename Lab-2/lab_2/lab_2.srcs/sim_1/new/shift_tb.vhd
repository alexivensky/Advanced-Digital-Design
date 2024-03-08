library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity shift_tb is
end shift_tb;
 -- ALUOp(1)
    -- 0 -> shift left
    -- 1 -> shift right
 -- ALUOp(0)
    -- 0 -> logical shift
    -- 1 -> arithmetic shift
architecture sim of shift_tb is
    component ALU_Shift is
    PORT (
        A : in STD_LOGIC_VECTOR(31 downto 0);
        SHAMT : in STD_LOGIC_VECTOR(4 downto 0);
        ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
    end component;
    signal A, R : STD_LOGIC_VECTOR(31 downto 0);
    signal SHAMT : STD_LOGIC_VECTOR(4 downto 0);
    signal ALUOp : STD_LOGIC_VECTOR(1 downto 0);
begin
    DUT : ALU_Shift
    port map (
     A => A, R => R, SHAMT => SHAMT, ALUOp => ALUOp
    );
    process
    begin
        -- case 1
        A <= X"FEDCBA98";
        SHAMT <= "00000";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"FEDCBA98") report "SLL 1 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"FEDCBA98") report "SRL 1 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"FEDCBA98") report "SRA 1 wrong";
        -- case 2
        A <= X"FEDCBA98";
        SHAMT <= "00001";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"FDB97530") report "SLL 2 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"7F6E5D4C") report "SRL 2 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"FF6E5D4C") report "SRA 2 wrong";
        -- case 3
        A <= X"FEDCBA98";
        SHAMT <= "00010";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"fb72ea60") report "SLL 3 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"3fb72ea6") report "SRL 3 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"ffb72ea6") report "SRA 3 wrong";
        -- case 4
        A <= X"FEDCBA98";
        SHAMT <= "00011";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"f6e5d4c0") report "SLL 4 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"1fdb9753") report "SRL 4 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"ffdb9753") report "SRA 4 wrong";
        -- case 5
        A <= X"FEDCBA98";
        SHAMT <= "00110";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"b72ea600") report "SLL 5 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"03fb72ea") report "SRL 5 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"fffb72ea") report "SRA 5 wrong";
        -- case 6
        A <= X"FEDCBA98";
        SHAMT <= "01001";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"b9753000") report "SLL 6 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"007f6e5d") report "SRL 6 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"ffff6e5d") report "SRA 6 wrong";
        -- case 7
        A <= X"FEDCBA98";
        SHAMT <= "01011";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"e5d4c000") report "SLL 7 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"001fdb97") report "SRL 7 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"ffffdb97") report "SRA 7 wrong";
        -- case 8
        A <= X"FEDCBA98";
        SHAMT <= "01110";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"2ea60000") report "SLL 8 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"0003fb72") report "SRL 8 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"fffffb72") report "SRA 8 wrong";
        -- case 9
        A <= X"FEDCBA98";
        SHAMT <= "10100";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"a9800000") report "SLL 9 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"00000fed") report "SRL 9 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"ffffffed") report "SRA 9 wrong";
        -- case 10
        A <= X"FEDCBA98";
        SHAMT <= "11111";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"00000000") report "SLL 10 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"00000001") report "SRL 10 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"ffffffff") report "SRA 10 wrong";
        -- case 11
        A <= X"0fe537cd";
        SHAMT <= "10110";
        ALUOp <= "00";
        wait for 10 ns;
        assert (R = X"f3400000") report "SLL 11 wrong";
        ALUOp <= "10";
        wait for 10 ns;
        assert (R = X"0000003f") report "SRL 11 wrong";
        ALUOp <= "11";
        wait for 10 ns;
        assert (R = X"0000003f") report "SRA 11 wrong";
        wait;
    end process;

end sim;
