library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity cpu_tb is
    port (
        reset : in std_logic;
        clock : in std_logic
    );
end cpu_tb;

architecture Behavioral of cpu_tb is
    component CPU_no_mem is
        port (
            reset : in std_logic;
            clock : in std_logic;
            MemoryAddress, MemoryDataOut : out std_logic_vector(31 downto 0);
            MemWrite : out std_logic;
            MemRead : out std_logic;
            MemoryDataIn : in std_logic_vector(31 downto 0)
        );
    end component;
    component CPU_memory IS
       PORT( 
          Clk      : IN     std_logic;
          MemWrite : IN     std_logic;
          addr     : IN     std_logic_vector (31 DOWNTO 0);
          dataIn   : IN     std_logic_vector (31 DOWNTO 0);
          dataOut  : OUT    std_logic_vector (31 DOWNTO 0)
       );
    END component ;
    signal MemWrite, MemRead : std_logic;
    signal MemoryAddress, MemoryDataOut, memdata : std_logic_vector(31 downto 0);
begin
    cpu : CPU_no_mem port map (
        reset => reset, clock => clock,
        MemoryAddress => MemoryAddress,
        MemoryDataOut => MemoryDataOut,
        MemWrite => MemWrite,
        MemRead => MemRead,
        MemoryDataIn => memdata
    );
    U_1 : CPU_memory port map (
        clk => clock,
        MemWrite => MemWrite,
        addr => MemoryAddress,
        dataIn => MemoryDataOut,
        dataOut => memdata
    );

end Behavioral;
