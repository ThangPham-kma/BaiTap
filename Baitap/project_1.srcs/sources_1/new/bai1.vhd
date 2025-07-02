----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 12:04:58 AM
-- Design Name: 
-- Module Name: bai1 - Behavioral
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

entity bai1 is
  Port (A: in std_logic;
        B: in std_logic;
        C: in std_logic;
        F: out std_logic );
end bai1;
architecture Behavioral of bai1 is
    signal not_A, not_B, not_C, term1, term2 : std_logic;
begin
    not_A <= A nand A;
    not_B <= B nand B;
    not_C <= C nand C;
    term1 <= not_A nand (not_B nand not_C);
    term2 <= B nand C;
    F <= term1 nand term2;

end Behavioral;
