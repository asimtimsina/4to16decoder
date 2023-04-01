----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2022 08:20:42 PM
-- Design Name: 
-- Module Name: 4to16_decoder - Behavioral
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

entity decoder4to16 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
         en : in STD_LOGIC;
           b : out STD_LOGIC_VECTOR (15 downto 0));
end decoder4to16;


architecture Structural of decoder4to16 is

Component decoder2to4 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           en : in STD_LOGIC;
           f : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

signal decoder0_out: STD_LOGIC_VECTOR (3 downto 0);



begin

decoder0: decoder2to4 port map(
a(1) => a(3),
a(0) => a(2),
en => en,
f => decoder0_out
);

decoder1: decoder2to4 port map(
a(1) => a(1),
a(0) => a(0),
en => decoder0_out(0),
f => b(3 downto 0)
);

decoder2: decoder2to4 port map(
a(1) => a(1),
a(0) => a(0),
en => decoder0_out(1),
f => b (7 downto 4)
);

decoder3: decoder2to4 port map(
a(1) => a(1),
a(0) => a(0),
en => decoder0_out(2),
f => b (11 downto 8)
);

decoder4: decoder2to4 port map(
a(1) => a(1),
a(0) => a(0),
en => decoder0_out(3),
f => b (15 downto 12)
);



end Structural;
