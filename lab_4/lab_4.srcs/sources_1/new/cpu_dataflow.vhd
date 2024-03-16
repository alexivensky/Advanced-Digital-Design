library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- dataflow for 32-bit MIPS CPU.
-- created by Alex Ivensky for ECE 1195 - University of Pittsburgh
-- note: most comments are notes to self and not necessarily descriptive of implementation
entity cpu_dataflow is
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
end cpu_dataflow;

architecture Behavioral of cpu_dataflow is
    component InstructionRegister is
        port (
            clk, rst, IRWrite : in std_logic;
            InstrIn : in std_logic_vector(31 downto 0);
            I_31to26 : out std_logic_vector(5 downto 0);
            I_25to21 : out std_logic_vector(4 downto 0);
            I_20to16: out std_logic_vector(4 downto 0);
            I_15to0: out std_logic_vector(15 downto 0)
        );
    end component;
    component sync_register is
        generic (
            n : positive := 32
        );
        port (
            CLK     : IN     std_logic;
            D       : IN     std_logic_vector(n-1 downto 0);
            EN      : IN     std_logic;
            RST     : IN     std_logic;
            Q       : OUT    std_logic_vector(n-1 downto 0)
        );
    end component;
    component register_file is
        port (
            read_reg_1, read_reg_2, write_reg : in std_logic_vector(4 downto 0);
            write_data : in std_logic_vector(31 downto 0);
            read_data_1, read_data_2 : out std_logic_vector(31 downto 0);
            reg_write, clk, rst : in std_logic
        );
    end component;
    component program_counter is
        port (
            PC_en, clk, rst : in std_logic;
            PC_in : in std_logic_Vector(31 downto 0);
            PC_out : out std_logic_vector(31 downto 0)
        );
    end component;
    component sign_extend is
        port (
            se_in : in std_logic_vector(15 downto 0);
            se_out : out std_logic_vector(31 downto 0)
        );
    end component;
    component alu is
        PORT (
            A : in STD_LOGIC_VECTOR(31 DOWNTO 0);
            B : in STD_LOGIC_VECTOR(31 DOWNTO 0);
            SHAMT : in STD_LOGIC_VECTOR(4 DOWNTO 0);
            ALUOp : in STD_LOGIC_VECTOR(3 DOWNTO 0);
            Zero : out STD_LOGIC;
            Overflow : out STD_LOGIC;
            R : out STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    end component;
    component CLO is
        port (
            A : in std_logic_vector(31 downto 0);
            ones : out std_logic_vector(31 downto 0)
        );
    end component;
    component multiplier is
        port (
            A : in std_logic_vector(31 downto 0);
            B : in std_logic_vector(31 downto 0);
            clk : in std_logic;
            rst : in std_logic;
            R : out std_logic_vector(63 downto 0);
            done : out std_logic
        );
    end component;
    signal ALUResult, ALUOut, PC_D, PC_out, CLO_out : std_logic_vector(31 downto 0);
    signal PC_en, ALUZero : std_logic;
    signal I_31to26 : std_logic_vector(5 downto 0);
    signal I_25to21, I_20to16 : std_logic_vector(4 downto 0);
    signal I_15to0 : std_logic_vector(15 downto 0);
    signal write_reg : std_logic_vector(4 downto 0);
    signal memDataRegOut, write_data, read_data_1, read_data_2 : std_logic_vector(31 downto 0);
    signal regAOut, regBout : std_logic_vector(31 downto 0);
    signal ALU_Ain, ALU_Bin, sign_ex_out, HI_out, LO_out : std_logic_vector(31 downto 0);
    signal MultResult : std_logic_vector(63 downto 0);
    signal SHAMT : std_logic_vector(4 downto 0);
    
begin
    -- signal going into top of PC
    PC_en <= (not ALUZero and PCWriteCond) or PCWrite;
    
    -- opcode
    Opcode <= I_31to26;
    
    -- I(5 to 0) for ALU control from FSM
    I_5to0 <= I_15to0(5 downto 0);
    
    -- I(10 to 6) for SHAMT
    I_10to6 <= I_15to0(10 downto 6);
    
    --memory data
    memDataOut <= regBOut;
    
    -- mux on the far right of the figure
    PCInMUX : process(PCSource, ALUResult, ALUOut, PC_out, I_25to21, I_20to16, I_15to0, regAOut)
    begin
        case PCSource is
            when "00" =>
                PC_D <= ALUResult;
            when "01" =>
                PC_D <= ALUOut;
            when "10" =>
                PC_D <= PC_out(31 downto 28) & I_25to21 & I_20to16 & I_15to0 & "00";
            when "11" =>
                PC_D <= regAOut;
            when others =>
                PC_D <= (others => '0');
        end case;
    end process;
    
    -- program counter
    PC : program_counter port map (
        PC_en => PC_en,
        clk => clk,
        rst => rst,
        PC_in => PC_D,
        PC_out => PC_out
    );
    
    -- mux coming from PC
    PCOutMux : process(PC_out, ALUOut, IorD)
    begin
        case IorD is 
            when '0' =>
                memAddrOut <= PC_out;
            when '1' =>
                memAddrOut <= ALUOut;
            when others =>
                memAddrOut <= (others => '0');
        end case;
    end process;
    
    -- instruction register
    instr_reg : InstructionRegister port map (
        clk => clk, rst => rst,
        IRWrite => IRWrite,
        InstrIn => memDataIn,
        I_31to26 => I_31to26, I_25to21 => I_25to21,
        I_20to16 => I_20to16, I_15to0 => I_15to0
    );
    
    -- memory data register
    mem_data_reg : sync_register port map (
        clk => clk, rst => rst,
        D => MemDataIn,
        EN => MemDataRegEn,
        Q => MemDataRegOut
    );
    
    -- mux going into write register port of register file
    wr_mux : process(I_20to16, I_15to0, RegDst)
    begin
        case RegDst is
            when '0' =>
                write_reg <= I_20to16;
            when '1' =>
                write_reg <= I_15to0(15 downto 11);
            when others =>
                write_reg <= (others => '0');
        end case;
    end process;
    
    -- mux going into write data port of register file
    wd_mux : process(ALUOut, memDataRegOut, MemtoReg, CLO_out)
    begin
        case MemtoReg is
            when "000" =>
                write_data <= ALUOut;
            when "001" =>
                write_data <= memDataRegOut;
            when "010" =>
                if (memDataRegOut(31) = '1') then
                    write_data <= "1111111111111111" & memDataRegOut(31 downto 16); -- for LH
                else 
                    write_data <= "0000000000000000" & memDataRegOut(31 downto 16); -- for LH
                end if;
            when "011" =>
                write_data <= ALUOut(15 downto 0) & "0000000000000000"; -- for LUI
            when "100" =>
                write_data <= CLO_out;
            when "101" =>
                write_data <= HI_out;
            when "110" =>
                write_data <= LO_out;
            when others =>
                write_data <= (others => '0');
        end case;
    end process;
    
    -- register file
    reg_file : register_file port map (
        read_reg_1 => I_25to21,
        read_reg_2 => I_20to16,
        write_reg => write_reg,
        write_data => write_data,
        read_data_1 => read_data_1,
        read_data_2 => read_data_2,
        reg_write => RegWrite,
        clk => clk, rst => rst
    );
    
    -- register A
    reg_A : sync_register port map (
        clk => clk, rst => rst,
        D => read_data_1,
        EN => RegAEn,
        Q => regAOut
    );
    
    -- register B
    reg_B : sync_register port map (
        clk => clk, rst => rst,
        D => read_data_2,
        EN => RegBEn,
        Q => regBOut
    );
    
    -- MUX for ALU Input A
    ALUSrcA_MUX : process (PC_out, regAOut, ALUSrcA)
    begin
        case ALUSrcA is
            when '0' =>
                ALU_Ain <= PC_out;
            when '1' =>
                ALU_Ain <= regAOut;
            when others =>
                ALU_Ain <= (others => '0');
        end case;   
    end process;
    
    -- MUX for ALU Input B
    ALUSrcB_MUX : process (regBOut, sign_ex_out, I_15to0, ALUSrcB)
    begin
        case ALUSrcB is 
            when "000" =>
                ALU_Bin <= regBOut;
            when "001" =>
                ALU_Bin <= std_logic_vector(to_unsigned(4, 32));
            when "010" =>
                ALU_Bin <= sign_ex_out;
            when "011" =>
                ALU_Bin <= sign_ex_out(29 downto 0) & "00";
            when "100" =>
                ALU_Bin <= "0000000000000000" & I_15to0;
            when others =>
                ALU_Bin <= (others => '0');
        end case;
    end process;
    
    -- the man himself...... ARITHMETIC LOGIC UNIT
    CPU_alu : alu port map (
        A => ALU_Ain,
        B => ALU_Bin,
        ALUOp => ALUOp,
        SHAMT => SHAMT,
        R => ALUResult,
        Zero => ALUZero
    );
    
    -- sign extend
    sign_ex : sign_extend port map (
        se_in => I_15to0,
        se_out => sign_ex_out
    );
    
    -- ALU Out Register
    alu_out_reg : sync_register port map (
        clk => clk, rst => rst,
        D => ALUResult,
        EN => ALUOutEn, 
        Q => ALUOut
    );
    
    -- ALU SHAMT MUX
    alu_shamt_mux : process(SHAMT_Sel, I_15to0, regAOut)
    begin
        case SHAMT_Sel is
            when '0' =>
                SHAMT <= I_15to0(10 downto 6);
            when '1' =>
                SHAMT <= regAOut(4 downto 0);
            when others =>
                SHAMT <= (others => '0');
        end case;
    end process;
    
    -- CLO
    clo_unit : CLO port map (
        A => regAOut,
        ones => CLO_out
    );
    
    -- multiplier
    mult : multiplier port map (
        A => regAOut,
        B => regBOut,
        clk => clk,
        rst => Mult_Reset,
        R => MultResult,
        done => MultDone
    );
    
    -- hi and lo registers
    hi : sync_register port map (
        clk => clk, rst => rst,
        EN => HIen,
        D => MultResult(63 downto 32),
        Q => HI_out
    );
    lo : sync_register port map (
        clk => clk, rst => rst,
        EN => LOen,
        D => MultResult(31 downto 0),
        Q => LO_out
    );
end Behavioral;
