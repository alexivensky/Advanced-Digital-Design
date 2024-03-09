library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity control is
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
end control;

architecture Behavioral of control is
	type state_type is (sLoad, s0, s1, s2, s3, s4);
	signal state   : state_type;
	  
	
begin
    process (clk, rst)
    variable i : integer range 0 to 32 := 0;  
    begin
        if rst = '1' then
            state <= sLoad;
            i := 0;
        elsif (rising_edge(clk)) then
            case state is
                when sLoad =>
                    state <= s0;
                when s0 =>
                    if MPLR_out(0) = '1' then
                        state <= s1;
                    else
                        state <= s2;
                    end if;
                when s1 =>
                    state <= s2;
                when s2 =>
                    state <= s3;
                when s3 =>
                    i := i + 1;
                    if i < 32 then
                        state <= s0;
                    else 
                        state <= s4;
                    end if;
                when s4 =>
                    state <= s4;
            end case;
        end if;
    end process;
    
    process (state)
    begin
        case state is 
            when sLoad => 
                ProdEn <= '0';
                adderK <= '0'; 
                MCND_S <= '0';
                MPLR_S <= '0';
                MCND_load <= '1'; 
                MPLR_load <= '1'; 
                done <= '0';    
            when s0 =>
                ProdEn <= '0';
                adderK <= '0'; 
                MCND_S <= '0';
                MPLR_S <= '0';
                MCND_load <= '0'; 
                MPLR_load <= '0'; 
                done <= '0'; 
            when s1 =>
                ProdEn <= '1';
                adderK <= '0'; 
                MCND_S <= '0';
                MPLR_S <= '0';
                MCND_load <= '0'; 
                MPLR_load <= '0';
                done <= '0'; 
            when s2 =>
                ProdEn <= '0';
                adderK <= '0'; 
                MCND_S <= '1';
                MPLR_S <= '0';
                MCND_load <= '0'; 
                MPLR_load <= '0';
                done <= '0'; 
            when s3 =>
                ProdEn <= '0';
                adderK <= '0'; 
                MCND_S <= '0';
                MPLR_S <= '1';
                MCND_load <= '0'; 
                MPLR_load <= '0';
                done <= '0'; 
            when s4 =>
                ProdEn <= '0';
                adderK <= '0'; 
                MCND_S <= '0';
                MPLR_S <= '0';
                MCND_load <= '0'; 
                MPLR_load <= '0';
                done <= '1'; 
            
        end case;
    end process;
end Behavioral;
