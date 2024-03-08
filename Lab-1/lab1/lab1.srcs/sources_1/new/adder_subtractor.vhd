library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtractor is
    GENERIC (
        n : integer := 32
    );
    PORT (
        A : in STD_LOGIC_VECTOR (n-1 downto 0);
        B : in STD_LOGIC_VECTOR (n-1 downto 0);
        K : in STD_LOGIC;
        S : out STD_LOGIC_VECTOR (n-1 downto 0);
        c_out : out STD_LOGIC
    );
end adder_subtractor;

architecture dataflow of adder_subtractor is
    COMPONENT fulladder is
    PORT (
        a : in STD_LOGIC;
        b : in STD_LOGIC;
        c_in : in STD_LOGIC;
        sum : out STD_LOGIC;
        c_out : out STD_LOGIC
    );
    end COMPONENT;
    signal C : STD_LOGIC_VECTOR (n-1 downto 0);
    signal x : STD_LOGIC_VECTOR (n-1 downto 0);
begin
    C(0) <= K;
    x(n-1) <= B(n-1) xor K;
    F: FOR i IN 0 TO n-2 GENERATE
        x(i) <= B(i) xor K;
        adders : fulladder PORT MAP (
            a => A(i),
            b => x(i),
            c_in => C(i),
            sum => S(i),
            c_out => C(i+1)
        );
    END GENERATE;
    a_n : fulladder PORT MAP ( --a(3)
        a => A(n-1),
        b => x(n-1),
        c_in => C(n-1),
        sum => S(n-1),
        c_out => c_out
    );
end dataflow;
