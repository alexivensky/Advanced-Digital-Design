library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    PORT (
        A : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        B : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        SHAMT : in STD_LOGIC_VECTOR(4 DOWNTO 0);
        ALUOp : in STD_LOGIC_VECTOR(3 DOWNTO 0);
        Zero : out STD_LOGIC;
        Overflow : out STD_LOGIC;
        R : out STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
end alu;

architecture dataflow of alu is
    component Arith_Unit IS
   GENERIC (
      n       : positive := 32);
   PORT( 
      A       : IN     std_logic_vector (n-1 DOWNTO 0);
      B       : IN     std_logic_vector (n-1 DOWNTO 0);
      C_op    : IN     std_logic_vector (1 DOWNTO 0);
      CO      : OUT    std_logic;
      OFL     : OUT    std_logic;
      S       : OUT    std_logic_vector (n-1 DOWNTO 0);
      Z       : OUT    std_logic
   );
    END component ;
    component ALU_Logical is
    PORT (
        A : in STD_LOGIC_VECTOR(31 downto 0);
        B : in STD_LOGIC_VECTOR(31 downto 0);
        Op : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
    end component;
    component ALU_Shift is
    PORT (
        A : in STD_LOGIC_VECTOR(31 downto 0);
        SHAMT : in STD_LOGIC_VECTOR(4 downto 0);
        ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
    end component;
    component ALU_Comp is
    PORT (
        A_31 : in STD_LOGIC;
        B_31 : in STD_LOGIC;
        S_31 : in STD_LOGIC;
        CO : in STD_LOGIC;
        ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
    end component;
    component ALU_Mux is
    PORT (
        LogicalR, ArithR, CompR, ShiftR : in STD_LOGIC_VECTOR(31 downto 0);
        ALU_Sel : in STD_LOGIC_VECTOR(1 downto 0);
        R : out STD_LOGIC_VECTOR(31 downto 0)
    );
    end component;
    SIGNAL LogicalR, ArithR, CompR, ShiftR : STD_LOGIC_VECTOR(31 downto 0);
    SIGNAL Carryout : STD_LOGIC;
begin
    LOG : ALU_Logical port map (
        A => A,
        B => B,
        Op => ALUOp(1 downto 0),
        R => LogicalR
    );
    ARI : Arith_Unit port map (
        A => A,
        B => B,
        Z => Zero,
        OFL => Overflow,
        S => ArithR,
        CO => Carryout,
        C_op => ALUOp(1 downto 0)
    );
    COM : ALU_Comp port map (
        A_31 => A(31),
        B_31 => B(31),
        S_31 => ArithR(31),
        CO => Carryout,
        ALUOp => ALUOp(1 downto 0),
        R => CompR
    );
    SHI : ALU_Shift port map (
        A => B, -- THIS IS WHAT I CHANGED 
        SHAMT => SHAMT,
        ALUOp => ALUOp(1 downto 0),
        R => ShiftR
    );
    MUX : ALU_Mux port map (
        LogicalR => LogicalR,
        ArithR => ArithR,
        CompR => CompR,
        ShiftR => ShiftR,
        R => R,
        ALU_Sel => ALUOp(3 downto 2)
    );
end dataflow;
