----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2022 08:40:25 PM
-- Design Name: 
-- Module Name: decoder4to16_tb - Behavioral
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

entity decoder4to16_tb is
--  Port ( );
end decoder4to16_tb;

architecture Behavioral of decoder4to16_tb is
component decoder4to16 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           en : in STD_LOGIC;
           b : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal a: STD_LOGIC_VECTOR(3 downto 0):="0000";
signal en:STD_LOGIC := '0';
signal b: STD_LOGIC_VECTOR (15 downto 0);

begin

uut:decoder4to16 PORT MAP(
a =>a,
en => en,
b => b
);

process
begin

wait for 100ns;
en<='0'; a<= "0000";

wait for 100ns;
en<='0'; a<= "0001";

wait for 100ns;
en<='0'; a<= "0010";

wait for 100ns;
en<='0'; a<= "0011";

wait for 100ns;
en<='0'; a<= "0100";

wait for 100ns;
en<='0'; a<= "0101";

wait for 100ns;
en<='0'; a<= "0110";

wait for 100ns;
en<='0'; a<= "0111";

wait for 100ns;
en<='0'; a<= "1000";

wait for 100ns;
en<='0'; a<= "1001";

wait for 100ns;
en<='0'; a<= "1010";

wait for 100ns;
en<='0'; a<= "1011";

wait for 100ns;
en<='0'; a<= "1100";

wait for 100ns;
en<='0'; a<= "1101";

wait for 100ns;
en<='0'; a<= "1110";

wait for 100ns;
en<='0'; a<= "1111";

---------------------------
wait for 100ns;
en<='1'; a<= "0000";

wait for 100ns;
en<='1'; a<= "0001";

wait for 100ns;
en<='1'; a<= "0010";

wait for 100ns;
en<='1'; a<= "0011";

wait for 100ns;
en<='1'; a<= "0100";

wait for 100ns;
en<='1'; a<= "0101";

wait for 100ns;
en<='1'; a<= "0110";

wait for 100ns;
en<='1'; a<= "0111";

wait for 100ns;
en<='1'; a<= "1000";

wait for 100ns;
en<='1'; a<= "1001";

wait for 100ns;
en<='1'; a<= "1010";

wait for 100ns;
en<='1'; a<= "1011";

wait for 100ns;
en<='1'; a<= "1100";

wait for 100ns;
en<='1'; a<= "1101";

wait for 100ns;
en<='1'; a<= "1110";

wait for 100ns;
en<='1'; a<= "1111";

wait;


end process;
end Behavioral;
