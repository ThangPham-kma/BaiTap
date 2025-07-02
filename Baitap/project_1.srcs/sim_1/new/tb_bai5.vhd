----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 11:40:25 AM
-- Design Name: 
-- Module Name: tb_b4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai5 is

end tb_bai5;

architecture Behavioral of tb_bai5 is

    component bai5 is
        Port ( CLK: in STD_LOGIC;
               y: out STD_LOGIC;
               cnt : out STD_LOGIC_VECTOR(2 downto 0) );
    end component;

    signal CLK_tb : STD_LOGIC := '0';
    signal y_tb   : STD_LOGIC;
    signal cnt_tb : STD_LOGIC_VECTOR(2 downto 0);
    constant CLK_period : time := 10 ns;
begin

        uut: bai5 port map (
        CLK => CLK_tb,
        y   => y_tb,
        cnt => cnt_tb );
        
    CLK_process: process
    begin
         while true loop
            CLK_tb <= '0';
            wait for CLK_period/2;
            CLK_tb <= '1';
            wait for CLK_period/2;
         end loop;
        wait;
    end process;

end Behavioral;