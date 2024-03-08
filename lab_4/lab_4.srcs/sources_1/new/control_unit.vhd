library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity control_unit is
    port (
        clk : in std_logic;
        rst : in std_logic;
        Opcode : in std_logic_vector(5 downto 0);
        I_5to0 : in std_logic_vector(5 downto 0);
        I_10to6 : in std_logic_vector(4 downto 0);
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
        ALUSrcB : out std_logic_vector(1 downto 0);
        RegAEn : out std_logic;
        RegBEn : out std_logic;
        MemDataRegEn : out std_logic;
        ALUOutEn : out std_logic;
        RegWrite : out std_logic;
        RegDst : out std_logic;
        SHAMT_Sel : out std_logic
    );
end control_unit;

architecture Behavioral of control_unit is
    -- STATES:
        -- IFetch : Instruction Fetch
        -- IDecode : Instruction Decode
        -- ExecIType : I-Type Execution
        -- ExecRType : R-Type Execution
        -- ITypeComp : I-Type Completion
        -- RTypeComp : R-Type Completion
        -- BComp : Branch Completion
        -- JComp : Jump Completion (really only for JR)
        -- LMemAccess : Load Instruction Memory Access
        -- SMemAccess : Store Instruction Memory Access
        -- MemAddrComp : Memory Address Computation
        -- MemComp : Memory Completion
        -- CLOExec : CLO Execution 
	type state_type is (
	   IFetch, IDecode, ExecIType, ITypeComp,
	   ExecRType, RTypeComp, BComp, JComp,
	   LMemAccess, SMemAccess, MemAddrComp, MemComp,
	   CLOExec
	);
	signal state : state_type;
begin
    process (clk, rst)
    begin
        if (rst = '1') then
            state <= IFetch;
        elsif (rising_edge(clk)) then 
            case state is 
                when IFetch =>
                    state <= IDecode;
                when IDecode =>
                    if (Opcode = "001000" or Opcode = "001101" or Opcode = "001010" or Opcode = "001111") then -- I-Type: ADDI, ORI, SLTI, LUI
                        state <= ExecIType;
                    elsif (Opcode = "000000") then -- R-Type: ADD, AND, SUB, SRA, SLL, SLLV
                        if (I_5to0 = "001000") then -- JR
                            state <= JComp;
                        else
                            state <= ExecRType;
                        end if;
                    elsif (Opcode = "000010") then -- J-Type
                        state <= IFetch;
                    elsif (Opcode = "100001" or Opcode = "100011") then -- LH, LW
                        state <= MemAddrComp;
                    elsif (Opcode = "101011") then -- SW
                        state <= MemAddrComp;
                    elsif (Opcode = "011100" and I_5to0 = "100001") then -- CLO
                        state <= CLOExec;
                    --else 
                        --state <= IFetch;
                    end if;
                when ExecIType =>
                    state <= ITypeComp;
                when ExecRType =>
                    state <= RTypeComp;
                when MemAddrComp =>
                    if (Opcode = "100001" or Opcode = "100011") then -- LH, LW
                        state <= LMemAccess;
                    elsif (Opcode = "101011") then -- SW
                        state <= SMemAccess;
                    end if;
                when LMemAccess =>
                    state <= MemComp;
                when SMemAccess => 
                    state <= IFetch;
                when BComp =>
                    state <= IFetch;
                when ITypeComp =>
                    state <= IFetch; 
                when RTypeComp =>
                    state <= IFetch; 
                when JComp =>
                    state <= IFetch;
                when MemComp =>
                    state <= IFetch;
                when CLOExec =>
                    state <= IFetch;
            end case;
        end if;  
    end process;
    
    process (state, Opcode, I_5to0)
    begin
        case state is
            -- INSTRUCTION FETCH
            when IFetch =>
                PCWriteCond <= '0';
                PCWrite <= '1';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '1';
                PCSource <= "00";
                ALUOp <= "0101";
                ALUSrcA <= '0';
                ALUSrcB <= "01";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                SHAMT_Sel <= '0';
            -- INSTRUCTION DECODE
            when IDecode =>
                ---- I-Type Decode ----
                ---------------ADDI-----------------ORI------------------SLTI-----------------LUI---------
                if (Opcode = "001000" or Opcode = "001101" or Opcode = "001010" or Opcode = "001111") then
                    PCWriteCond <= '0';
                    PCWrite <= '0';
                    IorD <= '0';
                    MemRead <= '0';
                    MemWrite <= '0';
                    MemtoReg <= "000";
                    IRWrite <= '0';
                    PCSource <= "00";
                    ALUOp <= "0000";
                    ALUSrcA <= '0';
                    ALUSrcB <= "00";
                    RegAEn <= '1';
                    RegBEn <= '0';
                    MemDataRegEn <= '0';
                    ALUOutEn <= '0';
                    RegWrite <= '0';
                    RegDst <= '0';
                    SHAMT_Sel <= '0';
                ---- R-Type Decode ----
                elsif (Opcode = "000000") then
                    PCWriteCond <= '0';
                    PCWrite <= '0';
                    IorD <= '0';
                    MemRead <= '0';
                    MemWrite <= '0';
                    MemtoReg <= "000";
                    IRWrite <= '0';
                    PCSource <= "00";
                    ALUOp <= "0000";
                    ALUSrcA <= '0';
                    ALUSrcB <= "00";
                    RegAEn <= '1';
                    if (I_5to0 = "001000") then RegBEn <= '0'; -- for JR 
                                           else RegBEn <= '1';
                    end if;
                    MemDataRegEn <= '0';
                    ALUOutEn <= '0';
                    RegWrite <= '0';
                    RegDst <= '0';
                    SHAMT_Sel <= '0';
                ---- J-Type Decode ----
                elsif (Opcode = "000010") then -- J
                    PCWriteCond <= '0';
                    PCWrite <= '1';
                    IorD <= '0';
                    MemRead <= '0';
                    MemWrite <= '0';
                    MemtoReg <= "000";
                    IRWrite <= '0';
                    PCSource <= "10";
                    ALUOp <= "0000";
                    ALUSrcA <= '0';
                    ALUSrcB <= "00";
                    RegAEn <= '0';
                    RegBEn <= '0';
                    MemDataRegEn <= '0';
                    ALUOutEn <= '0';
                    RegWrite <= '0';
                    RegDst <= '0';
                    SHAMT_Sel <= '0';
                ---- Branch Decode ----
                elsif (Opcode = "000101") then -- BNE
                    PCWriteCond <= '0';
                    PCWrite <= '0';
                    IorD <= '0';
                    MemRead <= '0';
                    MemWrite <= '0';
                    MemtoReg <= "000";
                    IRWrite <= '0';
                    PCSource <= "00";
                    ALUOp <= "0100";
                    ALUSrcA <= '0';
                    ALUSrcB <= "11";
                    RegAEn <= '1';
                    RegBEn <= '1';
                    MemDataRegEn <= '0';
                    ALUOutEn <= '1';
                    RegWrite <= '0';
                    RegDst <= '0';
                    SHAMT_Sel <= '0';
                ---- Load Decode ----
                elsif (Opcode = "100011" or Opcode = "100001") then -- LW or LH
                    PCWriteCond <= '0';
                    PCWrite <= '0';
                    IorD <= '0';
                    MemRead <= '0';
                    MemWrite <= '0';
                    MemtoReg <= "000";
                    IRWrite <= '0';
                    PCSource <= "00";
                    ALUOp <= "0000";
                    ALUSrcA <= '0';
                    ALUSrcB <= "00";
                    RegAEn <= '1';
                    RegBEn <= '0';
                    MemDataRegEn <= '0';
                    ALUOutEn <= '0';
                    RegWrite <= '0';
                    RegDst <= '0';
                    SHAMT_Sel <= '0';
                ---- Store Decode ----
                elsif (Opcode = "101011") then
                    PCWriteCond <= '0';
                    PCWrite <= '0';
                    IorD <= '0';
                    MemRead <= '0';
                    MemWrite <= '0';
                    MemtoReg <= "000";
                    IRWrite <= '0';
                    PCSource <= "00";
                    ALUOp <= "0000";
                    ALUSrcA <= '0';
                    ALUSrcB <= "00";
                    RegAEn <= '1';
                    RegBEn <= '1';
                    MemDataRegEn <= '0';
                    ALUOutEn <= '0';
                    RegWrite <= '0';
                    RegDst <= '0';
                    SHAMT_Sel <= '0';
                ---- CLO Decode ----
                elsif (Opcode = "011100" and I_5to0 = "100001") then
                    PCWriteCond <= '0';
                    PCWrite <= '0';
                    IorD <= '0';
                    MemRead <= '0';
                    MemWrite <= '0';
                    MemtoReg <= "000";
                    IRWrite <= '0';
                    PCSource <= "00";
                    ALUOp <= "0000";
                    ALUSrcA <= '0';
                    ALUSrcB <= "00";
                    RegAEn <= '1';
                    RegBEn <= '0';
                    MemDataRegEn <= '0';
                    ALUOutEn <= '0';
                    RegWrite <= '0';
                    RegDst <= '0';
                    SHAMT_Sel <= '0';
                end if;
            -- I-TYPE EXECUTION
            when ExecIType =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "00";
                if (Opcode = "001000" or Opcode = "001111") then -- ADDI and LUI
                    ALUOp <= "0101"; -- add signed 
                elsif (Opcode = "001101") then -- ORI
                    ALUOp <= "0001"; -- or
                elsif (Opcode = "001010") then -- SLTI
                    ALUOp <= "1010"; -- SLTU
                end if;
                ALUSrcA <= '1';
                ALUSrcB <= "10";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '1';
                RegWrite <= '0';
                RegDst <= '0';
                SHAMT_Sel <= '0';
            -- R-TYPE EXECUTION
            when ExecRType =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "00";
                if (I_5to0 = "100001") then -- ADDU
                    ALUOp <= "0100";
                    SHAMT_Sel <= '0';
                elsif (I_5to0 = "100100") then -- AND
                    ALUOp <= "0000";
                    SHAMT_Sel <= '0';
                elsif (I_5to0 = "100010") then -- SUB
                    ALUOp <= "0110";
                    SHAMT_Sel <= '0';
                elsif (I_5to0 = "000011") then -- SRA
                    ALUOp <= "1111";
                    SHAMT_Sel <= '0';
                elsif (I_5to0 = "000000") then -- SLL
                    ALUOp <= "1100";
                    SHAMT_Sel <= '0';
                elsif (I_5to0 = "000100") then -- SLLV
                    ALUOp <= "1100";
                    SHAMT_Sel <= '1';
                end if;
                ALUSrcA <= '1';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '1';
                RegWrite <= '0';
                RegDst <= '0';
            -- MEMORY ADDRESS COMPUTATION
            when MemAddrComp =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "00";
                ALUOp <= "0101";
                ALUSrcA <= '1';
                ALUSrcB <= "10";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '1';
                RegWrite <= '0';
                RegDst <= '0';
                SHAMT_Sel <= '0';
            -- LOAD INSTRUCTION MEMORY ACCESS
            when LMemAccess =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '1';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "00";
                ALUOp <= "0000";
                ALUSrcA <= '0';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '1';
                ALUOutEn <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                SHAMT_Sel <= '0';
            -- STORE INSTRUCTION MEMORY ACCESS
            when SMemAccess =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '1';
                MemRead <= '0';
                MemWrite <= '1';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "00";
                ALUOp <= "0000";
                ALUSrcA <= '0';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                SHAMT_Sel <= '0';
            -- CLO EXECUTION
            when CLOExec =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "100";
                IRWrite <= '0';
                PCSource <= "00";
                ALUOp <= "0000";
                ALUSrcA <= '0';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '0';
                RegWrite <= '1';
                RegDst <= '1';
                SHAMT_Sel <= '0';
            -- BRANCH COMPLETION 
            when BComp =>
                PCWriteCond <= '1';
                PCWrite <= '0';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "01";
                ALUOp <= "0110";
                ALUSrcA <= '1';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                SHAMT_Sel <= '0';
            -- I-TYPE COMPLETION
            when ITypeComp =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                if (Opcode = "001000" or Opcode = "001101" or Opcode = "001010") then -- addi, ori, slti
                    MemtoReg <= "000";
                elsif (Opcode = "001111") then -- lui
                    MemtoReg <= "011";
                end if;
                IRWrite <= '0';
                PCSource <= "00";
                ALUOp <= "0000";
                ALUSrcA <= '0';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '0';
                RegWrite <= '1';
                RegDst <= '0';
                SHAMT_Sel <= '0';
            -- R-TYPE COMPLETION
            when RTypeComp =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "00";
                ALUOp <= "0000";
                ALUSrcA <= '0';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '0';
                RegWrite <= '1';
                RegDst <= '1';
                SHAMT_Sel <= '0';
            -- JUMP COMPLETION
            when JComp =>
                PCWriteCond <= '0';
                PCWrite <= '1';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                MemtoReg <= "000";
                IRWrite <= '0';
                PCSource <= "11";
                ALUOp <= "0000";
                ALUSrcA <= '0';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '0';
                RegWrite <= '0';
                RegDst <= '0';
                SHAMT_Sel <= '0';
            -- MEMORY COMPLETION
            when MemComp =>
                PCWriteCond <= '0';
                PCWrite <= '0';
                IorD <= '0';
                MemRead <= '0';
                MemWrite <= '0';
                if (Opcode = "100011") then
                    MemtoReg <= "001"; -- grabs whole contents of mem reg
                elsif (Opcode = "100001") then
                    MemtoReg <= "010"; -- grabs sign extended upper half
                end if;
                IRWrite <= '0';
                PCSource <= "00";
                ALUOp <= "0000";
                ALUSrcA <= '0';
                ALUSrcB <= "00";
                RegAEn <= '0';
                RegBEn <= '0';
                MemDataRegEn <= '0';
                ALUOutEn <= '0';
                RegWrite <= '1';
                RegDst <= '0';
                SHAMT_Sel <= '0';
        end case;
    end process;
end Behavioral;
