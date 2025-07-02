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

entity bai2 is
  Port (A: in std_logic;
        B: in std_logic;
        C: in std_logic;
        F: out std_logic );
end bai2;
architecture Behavioral of bai2 is
    signal not_A, not_B, not_C, term1, term2 : std_logic;
begin
    not_A <= A nor A;
    not_B <= B nor B;
    not_C <= C nor C;
    term1 <= B nor C;
    term2 <= (not_B nor not_C) nor (not_A);
    F <= term1 nor term2;

end Behavioral;