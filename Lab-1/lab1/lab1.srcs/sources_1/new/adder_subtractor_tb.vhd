library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity adder_subtractor_tb is
end entity;

architecture sim of adder_subtractor_tb is
    component adder_subtractor is
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
    end component;
    constant n : positive := 32;
    SIGNAL A : STD_LOGIC_VECTOR (n-1 downto 0);
    SIGNAL B : STD_LOGIC_VECTOR (n-1 downto 0);
    SIGNAL K : STD_LOGIC;
    SIGNAL S : STD_LOGIC_VECTOR (n-1 downto 0);
    SIGNAL c_out : STD_LOGIC;
begin
    DUT: adder_subtractor
    generic map (
        n => n
    )
    port map (
        A => A,
        B => B,
        K => K,
        S => S,
        c_out => c_out
    );
    
    process
    begin
        -- 1 + 1 = 2
        A <= std_logic_vector(to_unsigned(1, n));
        B <= std_logic_vector(to_unsigned(1, n));
        K <= '0';
        wait for 10 ns;
        assert(S = std_logic_vector(to_unsigned(2, n))) report "S wrong for addition 1";
        assert(c_out = '0') report "C_out wrong for addition 1";
        -- 30 + 67 = 97
        A <= std_logic_vector(to_unsigned(30, n));
        B <= std_logic_vector(to_unsigned(67, n));
        K <= '0';
        wait for 10 ns;
        assert(S = std_logic_vector(to_unsigned(97, n))) report "S wrong for addition 2";
        assert(c_out = '0') report "C_out wrong for addition 2";
        -- (2^32 - 1) + (2^32 - 1) = 2^32 - 2 + c_out
        A <= x"FFFFFFFF";
        B <= x"FFFFFFFF";
        K <= '0';
        wait for 10 ns;
        assert(S = x"FFFFFFFE") report "S wrong for addition 3";
        assert(c_out = '1') report "C_out wrong for addition 3";
        -- 30 - 15 = 15
        A <= std_logic_vector(to_unsigned(30, n));
        B <= std_logic_vector(to_unsigned(15, n));
        K <= '1';
        wait for 10 ns;
        assert(S = std_logic_vector(to_unsigned(15, n))) report "S wrong for subtraction 1";
        assert(c_out = '1') report "C_out wrong for subtraction 1";
        -- 500,000 - 500,000 = 0
        A <= std_logic_vector(to_unsigned(500000, n));
        B <= std_logic_vector(to_unsigned(500000, n));
        K <= '1';
        wait for 10 ns;
        assert(S = std_logic_vector(to_unsigned(0, n))) report "S wrong for subtraction 2";
        assert(c_out = '1') report "C_out wrong for subtraction 2";
        -- 0 - 500,000 = -500,000
        A <= std_logic_vector(to_unsigned(0, n));
        B <= std_logic_vector(to_unsigned(500000, n));
        K <= '1';
        wait for 10 ns;
        assert(S = x"FFF85EE0") report "S wrong for subtraction 3";
        assert(c_out = '0') report "C_out wrong for subtraction 3";
        report "SIM FINISHED";
        wait;
    end process;
end sim;
