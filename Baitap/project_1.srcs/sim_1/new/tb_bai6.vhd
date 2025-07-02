library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_bai6 is
end tb_bai6;

architecture Behavioral of tb_bai6 is
    component bai6 is
        Port ( CLK : in STD_LOGIC;
               y   : out STD_LOGIC;
               cnt : out STD_LOGIC_VECTOR(2 downto 0));
    end component;
    
    signal CLK_tb : STD_LOGIC := '0';
    signal y_tb   : STD_LOGIC;
    signal cnt_tb : STD_LOGIC_VECTOR(2 downto 0);
    
    constant CLK_period : time := 10 ns;
    signal test_failed : boolean := false;
begin

    uut: bai6 port map (
        CLK => CLK_tb,
        y   => y_tb,
        cnt => cnt_tb
    );

    CLK_process: process
    begin
         loop
            CLK_tb <= '0';
            wait for CLK_period/2;
            CLK_tb <= '1';
            wait for CLK_period/2;
        end loop;
        wait;
    end process;

--    -- Process ki?m th? liên t?c
--    process
--    begin
--        wait until rising_edge(CLK_tb);
        
--        -- Khi ??m ??n 5 (101), ki?m tra Y
--        if cnt_tb = "101" then
--            if y_tb = '1' then
--                report "cnt = 101 -> y = 1 (?ÚNG)" severity note;
--            else
--                report "L?I: cnt = 101 mà y ? 1" severity error;
--                test_failed <= true;
--            end if;
--        end if;
        
--        -- Ki?m tra khi reset v? 000
--        if cnt_tb = "000" then
--            report "??m tr? v? 000" severity note;
            
--            -- Ki?m tra y ph?i b?ng 0 khi không ? tr?ng thái 5
--            if y_tb /= '0' then
--                report "L?I: cnt=000 mà y ? 0" severity error;
--                test_failed <= true;
--            end if;
--        end if;
        
end Behavioral;