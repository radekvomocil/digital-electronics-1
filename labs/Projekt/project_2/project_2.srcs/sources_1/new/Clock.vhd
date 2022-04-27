LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity clock is
port (clk : in std_logic;
      reset : in std_logic;
      clk_out : out std_logic;
      f_counter : out std_logic 
     );
end clock;

architecture Behavioral of clock is
--signal count : std_logic_vector (26 downto 0);
signal count intiger:=1; 
signal b : std_logic :='0';
begin

 --clk generation.For 100 MHz clock this generates 1 Hz clock.
process(clk,reset) 
begin

if(reset='1') then
count<=1;
b<='0';

if(rising_edge(clk)) then
count <=count+1;
if(count = 50000000) then 
--(2FAF080) in HEX
b <= not b;
count <=1;

end if;
end if;
clk_out <=b;
end process;
end Behavioral;