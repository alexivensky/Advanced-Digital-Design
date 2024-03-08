library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_tb is
end alu_tb;

architecture sim of alu_tb is
    component alu is
    PORT (
        A : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        B : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        SHAMT : in STD_LOGIC_VECTOR(4 DOWNTO 0);
        ALUOp : in STD_LOGIC_VECTOR(3 DOWNTO 0);
        Zero : out STD_LOGIC;
        Overflow : out STD_LOGIC;
        R : out STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    signal A, B, R : STD_LOGIC_VECTOR(31 downto 0);
    signal SHAMT : STD_LOGIC_VECTOR(4 downto 0);
    signal ALUOp : STD_LOGIC_VECTOR(3 downto 0);
    signal Zero, Overflow : STD_LOGIC;
begin
    DUT : alu
    port map (
        A => A, B => B, SHAMT => SHAMT, ALUOp => ALUOp, Zero => Zero, Overflow => Overflow, R => R
    );
    process
    begin
        -- add signed
        ALUOp <= "0100";
        A <= X"000001BA"; -- 442
        B <= X"FFFFEE4B"; -- -4533
        SHAMT <= "00000";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 1 zero wrong");
        assert (Overflow = '0') report  ("case 1 overflow wrong");
        assert (R = X"FFFFF005") report ("case 1 result wrong");
        -- add unsigned
        ALUOp <= "0101";
        A <= X"F0000000"; 
        B <= X"0000000F"; 
        SHAMT <= "00000";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 2 zero wrong");
        assert (Overflow = '0') report  ("case 2 overflow wrong");
        assert (R = X"F000000F") report ("case 2 result wrong");
        -- bitwise and
        ALUOp <= "0000";
        A <= X"FFFF0000"; 
        B <= X"00FFFF00"; 
        SHAMT <= "00000";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 3 zero wrong");
        assert (Overflow = '0') report  ("case 3 overflow wrong");
        assert (R = X"00FF0000") report ("case 3 result wrong");
        -- bitwise nor
        ALUOp <= "0011";
        A <= X"FFFF0000"; 
        B <= X"00FFFF00"; 
        SHAMT <= "00000";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 4 zero wrong");
        assert (Overflow = '0') report  ("case 4 overflow wrong");
        assert (R = X"000000FF") report ("case 4 result wrong");
        -- bitwise or
        ALUOp <= "0001";
        A <= X"FFFF0000"; 
        B <= X"00FFFF00"; 
        SHAMT <= "00000";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 5 zero wrong");
        assert (Overflow = '0') report  ("case 5 overflow wrong");
        assert (R = X"FFFFFF00") report ("case 5 result wrong");
        -- set on less than
        ALUOp <= "1010";
        A <= X"005CF000"; 
        B <= X"00FFFF00"; 
        SHAMT <= "00000";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 6 zero wrong");
        assert (Overflow = '0') report  ("case 6 overflow wrong");
        assert (R = X"00000001") report ("case 6 result wrong");
        -- set on less than unsigned
        ALUOp <= "1011";
        A <= X"FFFF0000"; 
        B <= X"00FFFF00"; 
        SHAMT <= "00000";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 7 zero wrong");
        assert (Overflow = '0') report  ("case 7 overflow wrong");
        assert (R = X"00000000") report ("case 7 result wrong");
        -- shift left logical
        ALUOp <= "1100";
        A <= X"0000FFFF"; 
        B <= X"00FFFF00"; 
        SHAMT <= "00010";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 8 zero wrong");
        assert (Overflow = '0') report  ("case 8 overflow wrong");
        assert (R = X"0003FFFC") report ("case 8 result wrong");
        -- shift right arithmetic
        ALUOp <= "1111";
        A <= X"FEDCBA98"; 
        B <= X"00FFFF00"; 
        SHAMT <= "00010";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 9 zero wrong");
        assert (Overflow = '0') report  ("case 9 overflow wrong");
        assert (R = X"ffb72ea6") report ("case 9 result wrong");
        -- shift right logical
        ALUOp <= "1110";
        A <= X"FEDCBA98"; 
        B <= X"00FFFF00"; 
        SHAMT <= "00010";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 10 zero wrong");
        assert (Overflow = '0') report  ("case 10 overflow wrong");
        assert (R = X"3fb72ea6") report ("case 10 result wrong");
        -- subtract signed
        ALUOp <= "0110";
        A <= X"FFF348DE"; 
        B <= X"00045583"; 
        SHAMT <= "00010";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 11 zero wrong");
        assert (Overflow = '0') report  ("case 11 overflow wrong");
        assert (R = X"FFEEF35B") report ("case 11 result wrong");
        -- subtract unsigned
        ALUOp <= "0111";
        A <= X"000FFFFF"; 
        B <= X"000FFFFF"; 
        SHAMT <= "00010";
        wait for 10 ns;
        assert (Zero = '1') report      ("case 12 zero wrong");
        assert (Overflow = '0') report  ("case 12 overflow wrong");
        assert (R = X"00000000") report ("case 12 result wrong");
        -- bitwise XOR
        ALUOp <= "0010";
        A <= X"F0F0F0F0"; 
        B <= X"0F0F0F0F"; 
        SHAMT <= "00010";
        wait for 10 ns;
        assert (Zero = '0') report      ("case 13 zero wrong");
        assert (Overflow = '0') report  ("case 13 overflow wrong");
        assert (R = X"FFFFFFFF") report ("case 13 result wrong");
    wait;
    end process;
end sim;
