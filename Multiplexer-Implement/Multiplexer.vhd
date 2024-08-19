library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity multiplexer is
 port(
 a : in STD_LOGIC_VECTOR(3 downto 0);
 s : in STD_LOGIC_VECTOR(1 downto 0);
 b : out STD_LOGIC
 );
end multiplexer;
 
architecture bhv of multiplexer is
begin
 
b <= (a(0) and not s(0) and not s(1)) 
		or (a(1) and s(0) and not s(1))
		or (a(2) and not s(0) and s(1)) 
		or(a(3) and s(0) and s(1));
 
end bhv;