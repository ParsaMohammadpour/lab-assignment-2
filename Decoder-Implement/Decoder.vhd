library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity decoder is
 port(
 a : in STD_LOGIC_VECTOR(1 downto 0);
 b : out STD_LOGIC_VECTOR(3 downto 0)
 );
end decoder;
 
architecture bhv of decoder is
begin
 
b(0) <= not a(1) and not a(0);
b(1) <= not a(1) and a(0);
b(2) <= a(1) and not a(0);
b(3) <= a(1) and a(0);
 
end bhv;

--entity decoder is
-- port(
-- a0 : in STD_LOGIC;
-- a1 : in STD_LOGIC;
-- b : out STD_LOGIC_VECTOR(3 downto 0)
-- );
--end decoder;
-- 
--architecture bhv of decoder is
--begin
-- 
--b(0) <= not a0 and not a1;
--b(1) <= not a0 and a1;
--b(2) <= a0 and not a1;
--b(3) <= a0 and a1;
-- 
--end bhv;