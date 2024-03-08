library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comp_tb is
end comp_tb;

architecture sim of comp_tb is
    component ALU_Comp is
    PORT (
        A_31 : in STD_LOGIC;
        B_31 : in STD_LOGIC;
        S_31 : in STD_LOGIC;
        CO : in STD_LOGIC;
        ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
    end component;
    signal A_31, B_31, S_31, CO : STD_LOGIC;
    signal ALUOp : STD_LOGIC_VECTOR(1 downto 0);
    signal R : STD_LOGIC_VECTOR(31 downto 0);
begin
    DUT : ALU_Comp
    port map (
        A_31 => A_31, B_31 => B_31, S_31 => S_31, CO => CO, ALUOp => ALUOp, R => R
    );
    process
    begin
        -- case 1
        ALUOp <= "00";
        A_31 <= '0';
        B_31 <= '0';
        S_31 <= '0';
        CO <= '0';
        wait for 10 ns;
        assert (R = X"00000000") report "Case 1 Wrong";  
        -- case 2
        ALUOp <= "00";
        A_31 <= '1';
        B_31 <= '0';
        S_31 <= '1';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000000") report "Case 2 Wrong";
        -- case 3
        ALUOp <= "01";
        A_31 <= '0';
        B_31 <= '0';
        S_31 <= '0';
        CO <= '0';
        wait for 10 ns;
        assert (R = X"00000000") report "Case 3 Wrong";  
        -- case 4
        ALUOp <= "01";
        A_31 <= '1';
        B_31 <= '0';
        S_31 <= '1';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000000") report "Case 4 Wrong";
        -- case 5
        ALUOp <= "10";
        A_31 <= '0';
        B_31 <= '0';
        S_31 <= '0';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000000") report "Case 5 Wrong";
        -- case 6
        ALUOp <= "10";
        A_31 <= '0';
        B_31 <= '0';
        S_31 <= '1';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000001") report "Case 6 Wrong";
        -- case 7
        ALUOp <= "10";
        A_31 <= '1';
        B_31 <= '1';
        S_31 <= '0';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000000") report "Case 7 Wrong";
        -- case 8
        ALUOp <= "10";
        A_31 <= '1';
        B_31 <= '1';
        S_31 <= '1';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000001") report "Case 8 Wrong";
        -- case 9
        ALUOp <= "10";
        A_31 <= '1';
        B_31 <= '0';
        S_31 <= '0';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000001") report "Case 9 Wrong";
        -- case 10
        ALUOp <= "10";
        A_31 <= '0';
        B_31 <= '1';
        S_31 <= '0';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000000") report "Case 10 Wrong";
        -- case 11
        ALUOp <= "11";
        A_31 <= '0';
        B_31 <= '0';
        S_31 <= '0';
        CO <= '1';
        wait for 10 ns;
        assert (R = X"00000000") report "Case 11 Wrong";
        -- case 12
        ALUOp <= "11";
        A_31 <= '0';
        B_31 <= '0';
        S_31 <= '0';
        CO <= '0';
        wait for 10 ns;
        assert (R = X"00000001") report "Case 5 Wrong";
    wait;
    end process;
end sim;
