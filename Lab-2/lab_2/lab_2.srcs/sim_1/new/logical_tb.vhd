library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity logical_tb is
end logical_tb;

architecture sim of logical_tb is
    component ALU_Logical is
        PORT (
        A : in STD_LOGIC_VECTOR(31 downto 0);
        B : in STD_LOGIC_VECTOR(31 downto 0);
        Op : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    constant n : positive := 32;
    signal A, B, R : STD_LOGIC_VECTOR(31 downto 0);
    signal Op : STD_LOGIC_VECTOR(1 downto 0);
begin
    DUT: ALU_Logical
    port map (
        A => A, B => B, Op => Op, R => R
    );
    process
    begin
        -- case 1
        A <= X"00000000";
        B <= X"00000000";
        Op <= "00"; -- and
        wait for 10 ns;
        assert (R = (A and B)) report ("And #1 failed");
        Op <= "01"; -- or
        wait for 10 ns;
        assert (R = (A or B)) report ("Or #1 failed");
        Op <= "10"; -- xor
        wait for 10 ns;
        assert (R = (A xor B)) report ("Xor #1 failed");
        Op <= "11"; -- nor
        wait for 10 ns;
        assert (R = (not(A or B))) report ("Nor #1 failed");
        -- case 2
        A <= X"FFFFFFFF";
        B <= X"FFFFFFFF";
        Op <= "00"; -- and
        wait for 10 ns;
        assert (R = (A and B)) report ("And #2 failed");
        Op <= "01"; -- or
        wait for 10 ns;
        assert (R = (A or B)) report ("Or #2 failed");
        Op <= "10"; -- xor
        wait for 10 ns;
        assert (R = (A xor B)) report ("Xor #2 failed");
        Op <= "11"; -- nor
        wait for 10 ns;
        assert (R = (not(A or B))) report ("Nor #2 failed");
        -- case 3
        A <= X"F57CBDEF";
        B <= X"54783409";
        Op <= "00"; -- and
        wait for 10 ns;
        assert (R = (A and B)) report ("And #3 failed");
        Op <= "01"; -- or
        wait for 10 ns;
        assert (R = (A or B)) report ("Or #3 failed");
        Op <= "10"; -- xor
        wait for 10 ns;
        assert (R = (A xor B)) report ("Xor #3 failed");
        Op <= "11"; -- nor
        wait for 10 ns;
        assert (R = (not(A or B))) report ("Nor #3 failed");
        -- case 4
        A <= X"04830FDD";
        B <= X"D34FABCD";
        Op <= "00"; -- and
        wait for 10 ns;
        assert (R = (A and B)) report ("And #3 failed");
        Op <= "01"; -- or
        wait for 10 ns;
        assert (R = (A or B)) report ("Or #3 failed");
        Op <= "10"; -- xor
        wait for 10 ns;
        assert (R = (A xor B)) report ("Xor #3 failed");
        Op <= "11"; -- nor
        wait for 10 ns;
        assert (R = (not(A or B))) report ("Nor #3 failed");
        wait;
    end process;
end sim;
