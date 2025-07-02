----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 09:28:54 AM
-- Design Name: 
-- Module Name: tb_bai3 - Behavioral
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

entity tb_bai3 is
end tb_bai3;

architecture sim of tb_bai3 is
    signal CLK : std_logic := '0';
    signal cnt : std_logic_vector(2 downto 0);
    signal Y   : std_logic;

    constant CLK_period : time := 10 ns;
begin
    uut: entity work.bai3
        port map (
            CLK => CLK,
            cnt => cnt,
            Y   => Y
        );

    -- T?o xung clock liên t?c
    CLK <= not CLK after CLK_period / 2;

    -- Process ki?m th? liên t?c
    process
    begin
        wait until rising_edge(CLK);

        -- Khi ??m ??n 5 (101), ki?m tra Y
        if cnt = "101" then
            if Y = '1' then
                report " yes cnt = 101" severity note;
            else
                report "y =1 in cnt = 101" severity error;
            end if;
        end if;

        -- Khi reset v? 000, thông báo (tu? ch?n)
        if cnt = "000" then
            report "tro ve 000" severity note;
        end if;

 
    end process;

end sim;
