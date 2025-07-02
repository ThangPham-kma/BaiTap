----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 09:12:27 AM
-- Design Name: 
-- Module Name: bai3 - Behavioral
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

entity bai3 is
  Port (CLK : in  STD_LOGIC;
        cnt : out STD_LOGIC_VECTOR(2 downto 0); 
        Y   : out STD_LOGIC);
end bai3;

architecture Structural of bai3 is
component JK_FF
    Port ( 
            J     : in  STD_LOGIC;
            K     : in  STD_LOGIC;
            CLK   : in  STD_LOGIC;
            Q     : buffer STD_LOGIC;
            Q_inv : buffer STD_LOGIC
        );
    end component;
    
    signal Q_sig : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal J, K  : STD_LOGIC_VECTOR(2 downto 0);
    signal Q_inv_sig : STD_LOGIC_VECTOR(2 downto 0);
begin
    J(0) <= '1';
    K(0) <= '1';
    J(1) <= Q_sig(0) and not Q_sig(2);
    K(1) <= Q_sig(0);
    J(2) <= Q_sig(1) and Q_sig(0);
    K(2) <= Q_sig(0);
       
    FF0: JK_FF port map (J(0), K(0), CLK, Q_sig(0), Q_inv_sig(0));
    FF1: JK_FF port map (J(1), K(1), CLK, Q_sig(1), Q_inv_sig(1));
    FF2: JK_FF port map (J(2), K(2), CLK, Q_sig(2), Q_inv_sig(2));

    cnt <= Q_sig;
    Y <= Q_sig(2) and not Q_sig(1) and Q_sig(0); -- Phát hi?n "101"

end Structural;
