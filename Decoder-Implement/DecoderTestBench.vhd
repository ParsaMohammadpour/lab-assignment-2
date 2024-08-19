LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_decoder IS
END tb_decoder;
 
ARCHITECTURE behavior OF tb_decoder IS
 
 -- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT decoder
 PORT(
 a : IN std_logic_vector(1 downto 0);
 b : OUT std_logic_vector(3 downto 0)
 );
 END COMPONENT;
 
 --Inputs
 signal a : std_logic_vector(1 downto 0) := (others => '0');
 
 --Outputs
 signal b : std_logic_vector(3 downto 0);
 -- appropriate port name
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: decoder PORT MAP (
 a => a,
 b => b
 );
 
 -- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 100 ns.
 wait for 100 ns;
 
 a <= "00";
 
 wait for 100 ns;
 
 a <= "01";
 
 wait for 100 ns;
 
 a <= "10";
 
 wait for 100 ns;
 
 a <= "11";
 
 wait;
 end process;
 
END;
