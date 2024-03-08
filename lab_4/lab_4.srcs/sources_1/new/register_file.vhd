library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity register_file is
    port (
        read_reg_1, read_reg_2, write_reg : in std_logic_vector(4 downto 0);
        write_data : in std_logic_vector(31 downto 0);
        read_data_1, read_data_2 : out std_logic_vector(31 downto 0);
        reg_write, clk, rst : in std_logic
    );
end register_file;

architecture Behavioral of register_file is
    type regArray is array(0 to 31) of std_logic_vector(31 downto 0);
    signal registers : regArray;
begin
    process (clk, rst)
    begin
        if (rst = '1') then
            for i in 0 to 31 loop
                registers(i) <= (others => '0');
            end loop;
        elsif (rising_edge(clk)) then
            if reg_write = '1' then
                registers(to_integer(unsigned(write_reg))) <= write_data;
            end if;
        end if;
    end process;
    read_data_1 <= registers(to_integer(unsigned(read_reg_1)));
    read_data_2 <= registers(to_integer(unsigned(read_reg_2)));
end Behavioral;
