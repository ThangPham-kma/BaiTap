----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 12:13:39 AM
-- Design Name: 
-- Module Name: tb_bai1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_bai2 is
end tb_bai2;

architecture Behavioral of tb_bai2 is
    component bai2
     Port( A: in std_logic;
           B: in std_logic;
           C: in std_logic;
           F: out std_logic);
    end component;
    signal A,B,C: std_logic := '0';
    signal F: std_logic;
    constant clock_period : time := 1 us;
begin
    uut: bai2 port map(A => A,B => B,C => C,F => F);
    stim_proc: process
    begin
        A <= '0'; B <= '0'; C <= '0';
        wait for 10ns;
        A <= '0'; B <= '0'; C <= '1';
        wait for 10ns;
        A <= '0'; B <= '1'; C <= '0';
        wait for 10ns;
        A <= '0'; B <= '1'; C <= '1';
        wait for 10ns;
        A <= '1'; B <= '0'; C <= '0';
        wait for 10ns;
        A <= '1'; B <= '0'; C <= '1';
        wait for 10ns;
        A <= '1'; B <= '1'; C <= '0';
        wait for 10ns;
        A <= '1'; B <= '1'; C <= '1';
        wait for 10ns;
        wait;
    end process;
end Behavioral;