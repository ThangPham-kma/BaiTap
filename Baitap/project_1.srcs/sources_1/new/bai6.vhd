----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 08:27:40 PM
-- Design Name: 
-- Module Name: b3 - Behavioral
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


entity bai6 is
    Port (
           CLK : in STD_LOGIC;
           y : out STD_LOGIC;
           cnt : out STD_LOGIC_VECTOR(2 downto 0) );
end bai6;

architecture Behavioral of bai6 is

component JK_FF is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;    
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
     signal J1, K1, J2, K2, J0, K0 : STD_LOGIC;
    signal Q_sig : STD_LOGIC_VECTOR(2 downto 0) := "110";
    signal Q_inv_sig : STD_LOGIC_VECTOR(2 downto 0);

begin

    J0 <= Q_sig(2) or Q_sig(1);
    K0 <= '1';
    J1 <= not Q_sig(0);
    K1 <= not Q_sig(0);
    J2 <= not Q_sig(1) and not Q_sig(0);
    K2 <= not Q_sig(1) and not Q_sig(0);

FF0: JK_FF port map (J0,k0,CLK,Q_sig(0), Q_inv_sig(0));
FF1: JK_FF port map (J1,k1,CLK,Q_sig(1), Q_inv_sig(1));
FF2: JK_FF port map (J2,k2,CLK,Q_sig(2), Q_inv_sig(2));

cnt <= Q_sig;
Y <= not Q_sig(2) and not Q_sig(1) and not Q_sig(0);
end Behavioral;