library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity InstructionRegister is
    port (
        clk, rst, IRWrite : in std_logic;
        InstrIn : in std_logic_vector(31 downto 0);
        I_31to26 : out std_logic_vector(5 downto 0);
        I_25to21 : out std_logic_vector(4 downto 0);
        I_20to16: out std_logic_vector(4 downto 0);
        I_15to0: out std_logic_vector(15 downto 0)
    );
end InstructionRegister;

architecture Behavioral of InstructionRegister is
    signal instr : std_logic_vector(31 downto 0);
begin
    process (clk, rst)
    begin
        if (rst = '1') then
            instr <= (others => '0');
        elsif (rising_edge(clk)) then
            if (IRWrite = '1') then
                instr <= InstrIn;
            end if;
        end if;
    end process;
    I_31to26 <= instr(31 downto 26);
    I_25to21 <= instr(25 downto 21);
    I_20to16 <= instr(20 downto 16);
    I_15to0 <= instr(15 downto 0);
end Behavioral;
