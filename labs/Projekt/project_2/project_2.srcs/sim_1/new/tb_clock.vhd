library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tb_clock is
--  Port ( );
end tb_clock;

architecture Behavioral of tb_clock is

COMPONENT clock_divider1
PORT(
clk : IN std_logic;
reset : IN std_logic;
clk_out : OUT std_logic
);
END COMPONENT;

--VSTUPY
signal clk : std_logic := '0';
signal reset : std_logic := '0';

--VÝSTUPY   
signal clk_out : std_logic;

-- Perioda hodin (nevím, jestli musí být)
constant clk_period : time := 10 ns;

begin

uut: clock_divider1 PORT MAP(
clk => clk,
reset => reset,
clk_out => clk_out
);

-- PROCESS
clk_process :process
begin 
clk <= '0';
wait for clk_period / 2;
clk <= '1';
wait for clk_period / 2;
end process;

--STIMULUS PROCESS
stim_proc :process
begin
wait for 100 ns;
reset <= '1';
wait for 100 ns;
reset <= '0';
wait;
end process;
end Behavioral;
