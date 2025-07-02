----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 09:02:39 PM
-- Design Name: 
-- Module Name: b4 - Behavioral
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


entity bai4 is
    Port ( CLK: in STD_LOGIC;
           y: out STD_LOGIC;
           cnt : out STD_LOGIC_VECTOR(2 downto 0) );
end bai4;

architecture Behavioral of bai4 is
--
component T_FF is  
    Port (
        T     : in  STD_LOGIC;
        CLK   : in  STD_LOGIC;
        Q     : buffer STD_LOGIC;
        Q_inv   : buffer STD_LOGIC
    );
end component;
signal t0,t1,t2 : std_logic;
    signal Q_sig : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal Q_inv_sig : STD_LOGIC_VECTOR(2 downto 0);
begin
t0 <= not Q_sig(1) or not Q_sig(2);
t1 <= Q_sig(0) or (Q_sig(2) and Q_sig(1));
t2 <= (Q_sig(2) and Q_sig(1)) or (Q_sig(1) and Q_sig(0));
t_ff0: T_FF port map ( t0, CLK, Q_sig(0),Q_inv_sig(0));
t_ff1: T_FF port map ( t1, CLK, Q_sig(1),Q_inv_sig(1));
t_ff2: T_FF port map ( t2,CLK, Q_sig(2),Q_inv_sig(2));
cnt <= Q_sig;
y <= Q_sig(2) and Q_sig(1) and not Q_sig(0);
end Behavioral;