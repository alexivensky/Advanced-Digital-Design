library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mult_dflow is
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
end mult_dflow;

architecture dataflow of mult_dflow is
    component sync_register is
        generic (
            n : positive := 64
        );
        port (
            CLK     : IN     std_logic;
            D       : IN     std_logic_vector(n-1 downto 0);
            EN      : IN     std_logic;
            RST     : IN     std_logic;
            Q       : OUT    std_logic_vector(n-1 downto 0)
        );
    end component;
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
    component left_shift_reg is
        generic (
            n : positive := 64
        );
        port (
            D       : in std_logic_vector(n-1 downto 0);
            LOAD    : in std_logic;
            RST     : in std_logic;
            CLK     : in std_logic;
            S       : in std_logic;
            Q_out   : out std_logic_vector(n-1 downto 0)
        );
    end component;
    component right_reg is
        generic (
            n : positive := 32
        );
        port (
            D       : in std_logic_vector(n-1 downto 0);
            LOAD    : in std_logic;
            RST     : in std_logic;
            CLK     : in std_logic;
            S       : in std_logic;
            Q_out   : out std_logic_vector(n-1 downto 0)
        );
    end component;
    SIGNAL MCND_out, ADDER_out, PROD_out : std_logic_vector(63 downto 0);
    SIGNAL A_concat : std_logic_vector(63 downto 0);

begin
    A_concat <= (31 downto 0 => '0') & A;
    MCND: left_shift_reg generic map (n => 64)
    port map (
        D => A_concat,
        LOAD => MCND_load,
        RST => rst,
        CLK => clk,
        S => MCND_S,
        Q_out => MCND_out
    );
    
    adder : adder_subtractor generic map (n => 64)
    port map (
        A => PROD_out,
        B => MCND_out,
        K => adderK,
        S => ADDER_out
    );
    
    PROD: sync_register generic map (n => 64)
    port map (
        CLK => clk,
        D => ADDER_out,
        EN => ProdEn,
        RST => rst,
        Q => PROD_out        
    );
    
    MULT: right_reg generic map (n => 32)
    port map (
        D => B,
        LOAD => MPLR_load,
        RST => rst,
        CLK => clk,
        S => MPLR_S,
        Q_out => MPLR_out
    );
    
    R <= PROD_out;

end dataflow;
