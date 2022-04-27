LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use ieee.numeric_std.all;

entity clock_divider1 is
port (
      clk : in std_logic;
      reset : in std_logic;
      clk_out : out std_logic
     );
end clock_divider1;

architecture Behavioral of clock_divider1 is
--signal count : std_logic_vector (26 downto 0);
signal count : integer :=1; 
signal b : std_logic :='0';
signal f_counter : integer :=1; -- Jinak to háže error
signal generator_signal : std_logic :='0'; -- jinak to háže error
begin

 --clk generation.For 100 MHz clock this generates 1 Hz clock.
process(clk, reset) 
begin

if(reset = '0') then
count<=1; --1
b<='0';
if (rising_edge (clk)) then
count <=count+1;
if(count = 50000000) then 
--(2FAF080) in HEX
b <= not b;
count <=1; --1

end if;
end if;
end if;

clk_out <= b;

end process;

--FREQ COUNTER
count_frequency: process (b, reset, generator_signal)
begin
if(rising_edge(b) or RESET = '1') then
f_counter <=0;

if(rising_edge (generator_signal)) then
f_counter <=f_counter +1;

end if;
end if;
end process;

end Behavioral;