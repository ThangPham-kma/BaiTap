
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity T_FF is
    Port (
        T     : in  STD_LOGIC;
        CLK   : in  STD_LOGIC;
        Q     : buffer STD_LOGIC;
        Q_inv : buffer STD_LOGIC
    );
end T_FF;
architecture Behavioral of T_FF is
    signal q_temp : STD_LOGIC := '0';  -- Kh?i t?o giá tr? ban ??u là 0
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if T = '1' then
                q_temp <= not q_temp;
            end if;
        end if;
    end process;
    Q     <= q_temp;
    Q_inv <= not q_temp;
end Behavioral;
