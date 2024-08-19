LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_multiplexer IS
END tb_multiplexer;
 
ARCHITECTURE behavior OF tb_multiplexer IS
 
 -- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT multiplexer
 PORT(
 a : IN STD_LOGIC_VECTOR(3 downto 0);
 s : IN STD_LOGIC_VECTOR(1 downto 0);
 b : OUT STD_LOGIC
 );
 END COMPONENT;
 
 --Inputs
 signal a : std_logic_vector(3 downto 0) := "0101";
 signal s : std_logic_vector(1 downto 0) := (others => '0');
 
 --Outputs
 signal b : std_logic;
 -- appropriate port name
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: multiplexer PORT MAP (
 a => a,
 s => s,
 b => b
 );
 
 -- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 100 ns.
 wait for 100 ns;
 
 s <= "00";
 
 wait for 100 ns;
 
 s <= "01";
 
 wait for 100 ns;
 
 s <= "10";
 
 wait for 100 ns;
 
 s <= "11";
 
 wait;
 end process;
 
END;
