library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity multiplier is
    port (
        A : in std_logic_vector(31 downto 0);
        B : in std_logic_vector(31 downto 0);
        clk : in std_logic;
        rst : in std_logic;
        R : out std_logic_vector(63 downto 0);
        done : out std_logic
    );
end multiplier;

architecture Behavioral of multiplier is
    component control is
        port (
            MPLR_out    : in std_logic_vector(31 downto 0);
            clk         : in std_logic;
            rst         : in std_logic;
            ProdEn      : out std_logic;
            adderK      : out std_logic;
            MCND_S      : out std_logic;
            MPLR_S      : out std_logic;
            MCND_load   : out std_logic;
            MPLR_load   : out std_logic;
            done        : out std_logic
        );
    end component;
    component mult_dflow is
        port (
            A : in std_logic_vector(31 downto 0);
            B : in std_logic_vector(31 downto 0);
            clk : in std_logic;
            rst : in std_logic;
            ProdEn : in std_logic;
            adderK : in std_logic;
            MCND_S : in std_logic;
            MCND_load : in std_logic;
            MPLR_load : in std_logic;
            MPLR_S : in std_logic;
            R : out std_logic_vector(63 downto 0);
            MPLR_out : out std_logic_vector(31 downto 0)
        );
    end component;
    signal MPLR_out : std_logic_vector(31 downto 0);
    signal ProdEn, adderK, MCND_S, MPLR_S, MCND_load, MPLR_load : std_logic;
begin
    CONT: control port map (
        MPLR_out => MPLR_out,
        clk => clk,
        rst => rst,
        ProdEn => ProdEn,
        adderK => adderK,
        MCND_S => MCND_S,
        MPLR_S => MPLR_S,
        MCND_load => MCND_load,
        MPLR_load => MPLR_load,
        done => done
    );
    MULT: mult_dflow port map (
        A => A,
        B => B,
        clk => clk,
        rst => rst,
        ProdEn => ProdEn,
        adderK => adderK,
        MCND_S => MCND_S,
        MPLR_S => MPLR_S,
        MCND_load => MCND_load,
        MPLR_load => MPLR_load,
        R => R,
        MPLR_out => MPLR_out
    );
end Behavioral;
