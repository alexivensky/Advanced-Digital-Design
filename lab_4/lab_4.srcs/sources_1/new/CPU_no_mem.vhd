library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity CPU_no_mem is
    port (
        reset : in std_logic;
        clock : in std_logic;
        MemoryAddress, MemoryDataOut : out std_logic_vector(31 downto 0);
        MemWrite : out std_logic;
        MemRead : out std_logic;
        MemoryDataIn : in std_logic_vector(31 downto 0)
    );
end CPU_no_mem;

architecture Behavioral of CPU_no_mem is
    component control_unit is
        port (
            clk : in std_logic;
            rst : in std_logic;
            Opcode : in std_logic_vector(5 downto 0);
            I_5to0 : in std_logic_vector(5 downto 0);
            I_10to6 : in std_logic_vector(4 downto 0);
            MultDone : in std_logic;
            PCWriteCond : out std_logic;
            PCWrite : out std_logic;
            IorD : out std_logic;
            MemRead : out std_logic;
            MemWrite : out std_logic;
            MemtoReg : out std_logic_vector(2 downto 0);
            IRWrite : out std_logic;
            PCSource : out std_logic_vector(1 downto 0);
            ALUOp : out std_logic_vector(3 downto 0);
            ALUSrcA : out std_logic;
            ALUSrcB : out std_logic_vector(2 downto 0);
            RegAEn : out std_logic;
            RegBEn : out std_logic;
            HIEn : out std_logic;
            LOEn : out std_logic;
            MemDataRegEn : out std_logic;
            ALUOutEn : out std_logic;
            RegWrite : out std_logic;
            RegDst : out std_logic;
            SHAMT_Sel : out std_logic;
            Mult_Reset : out std_logic
        );
    end component;
    component cpu_dataflow is
        port (
            clk : in std_logic;
            rst : in std_logic;
            PCWriteCond : in std_logic;
            PCWrite : in std_logic;
            IorD : in std_logic;
            MemtoReg : in std_logic_vector(2 downto 0);
            IRWrite : in std_logic;
            MemDataRegEn : in std_logic;
            PCSource : in std_logic_vector(1 downto 0);
            ALUOp : in std_logic_vector(3 downto 0);
            ALUSrcA : in std_logic;
            ALUSrcB : in std_logic_vector(2 downto 0);
            RegAEn : in std_logic;
            RegBEn : in std_logic;
            HIEn : in std_logic;
            LOEn : in std_logic;
            ALUOutEn : in std_logic;
            RegWrite : in std_logic;
            RegDst : in std_logic;
            MemDataIn : in std_logic_vector(31 downto 0);
            SHAMT_Sel : in std_logic;
            Mult_Reset : in std_logic;
            MemAddrOut : out std_logic_vector(31 downto 0);
            MemDataOut : out std_logic_vector(31 downto 0);
            Opcode : out std_logic_vector(5 downto 0);
            I_5to0 : out std_logic_vector(5 downto 0);
            I_10to6 : out std_logic_vector(4 downto 0);
            MultDone : out std_logic
        );
    end component;
    signal PCWriteCond, PCWrite, IorD, IRWrite, ALUSrcA, RegAEn, RegBEn, MemDataRegEn, 
           ALUOutEn, RegWrite, RegDst, MemWriteSig, SHAMT_Sel, HIEn, LOEn, MultDone, Mult_Reset : std_logic;
    signal PCSource : std_logic_vector(1 downto 0);
    signal MemtoReg, ALUSrcB : std_logic_vector(2 downto 0);
    signal ALUOp : std_logic_vector(3 downto 0);
    signal I_10to6 : std_logic_vector(4 downto 0);
    signal Opcode, I_5to0 : std_logic_vector(5 downto 0);
    signal MemDataIn, MemAddrOut, MemDataOut : std_logic_vector(31 downto 0);
begin
    --MemoryAddress <= MemAddrOut;
    --MemoryDataOut <= MemDataOut; -- QUESTIONABLE MAYBE NOT NEEDED TWICE
    MemWrite <= MemWriteSig;
    cont : control_unit port map (
        clk => clock,
        rst => reset, 
        Opcode => Opcode,
        I_5to0 => I_5to0,
        I_10to6 => I_10to6,
        PCWriteCond => PCWriteCond,
        PCWrite => PCWrite,
        IorD => IorD,
        MemRead => MemRead,
        MemWrite => MemWriteSig,
        MemtoReg => MemtoReg,
        IRWrite => IRWrite,
        PCSource => PCSource,
        ALUOp => ALUOp,
        ALUSrcA => ALUSrcA,
        ALUSrcB => ALUSrcB,
        RegAEn => RegAEn,
        RegBEn => RegBEn,
        MemDataRegEn => MemDataRegEn,
        ALUOutEn => ALUOutEn,
        RegWrite => RegWrite,
        RegDst => RegDst,
        SHAMT_Sel => SHAMT_Sel,
        MultDone => MultDone,
        HIEn => HIEn, LOEn => LOEn, Mult_Reset => Mult_Reset
    );
    dflow : cpu_dataflow port map (
        clk => clock,
        rst => reset, 
        Opcode => Opcode,
        I_5to0 => I_5to0,
        I_10to6 => I_10to6,
        PCWriteCond => PCWriteCond,
        PCWrite => PCWrite,
        IorD => IorD,
        MemtoReg => MemtoReg,
        IRWrite => IRWrite,
        PCSource => PCSource,
        ALUOp => ALUOp,
        ALUSrcA => ALUSrcA,
        ALUSrcB => ALUSrcB,
        RegAEn => RegAEn,
        RegBEn => RegBEn,
        MemDataRegEn => MemDataRegEn,
        ALUOutEn => ALUOutEn,
        RegWrite => RegWrite,
        RegDst => RegDst,
        MemDataIn => MemoryDataIn,
        MemAddrOut => MemoryAddress,
        MemDataOut => MemoryDataOut,
        SHAMT_Sel => SHAMT_Sel,
        MultDone => MultDone,
        HIEn => HIEn, LOEn => LOEn, Mult_Reset => Mult_Reset
    );

end Behavioral;
