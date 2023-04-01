----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/25/2022 09:41:32 AM
-- Design Name: 
-- Module Name: 2to16decoder - Behavioral
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

entity decoder2to4 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           en: in STD_LOGIC;
           f : out STD_LOGIC_VECTOR (3 downto 0));
end decoder2to4;

architecture Behavioral of decoder2to4 is

begin
process(a,en)

begin

if en='0' then
    f<="0000";
    
elsif en='1' and a="00" then
    f<="0001";
    
elsif en='1' and a="01" then
    f<="0010";
    
elsif en='1' and a="10" then
    f<="0100";

elsif en='1' and a="11" then
    f<="1000";
    

 
end if;
end process;
end Behavioral;
