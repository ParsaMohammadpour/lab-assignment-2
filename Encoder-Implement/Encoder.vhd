library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity encoder is
 port(
 a : in STD_LOGIC_VECTOR(3 downto 0);
 b : out STD_LOGIC_VECTOR(1 downto 0)
 );
end encoder;
 
architecture bhv of encoder is
begin
 
b(0) <= a(3) or a(1);
b(1) <= a(3) or a(2);
 
end bhv;
