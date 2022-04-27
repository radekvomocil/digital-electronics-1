----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2022 16:45:48
-- Design Name: 
-- Module Name: binbcd27 - Behavioral
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

entity binbcd27 is
--  Port ( );
port (
           b: in std_logic_vector (7 downto 0);
           p: out std_logic_vector (9 downto 0)
           );
end binbcd27;

architecture Behavioral of binbcd27 is

begin
bcd1: process(B)
variable z: std_logic_vector (17 downto 0);

    begin
            for i in 0 to 17 loop
                z(i) := '0';
                end loop;
            z(10 downto 3) := B;

            for i in 0 to 4 loop
                if z(11 downto 8) > 4 then
                    z(11 downto 8) := z(11 down to 8) +3;
            end if;
            if z(15 downto 12) > 4 then 
                    z(15 downto) := z(15 downto 12) +3;
            end if;
            z(17 downto 1) := z(16 downto 0);
            endloop;
            P <= z(17 downto 8);
         end process bcdl;           
end Behavioral;