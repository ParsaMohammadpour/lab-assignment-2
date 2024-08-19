LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_encoder IS
END tb_encoder;
 
ARCHITECTURE behavior OF tb_encoder IS
 
 -- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT encoder
 PORT(
 a : IN std_logic_vector(3 downto 0);
 b : OUT std_logic_vector(1 downto 0)
 );
 END COMPONENT;
 
 --Inputs
 signal a : std_logic_vector(3 downto 0) := (others => '0');
 
 --Outputs
 signal b : std_logic_vector(1 downto 0);
 -- appropriate port name
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: encoder PORT MAP (
 a => a,
 b => b
 );
 
 -- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 100 ns.
 wait for 100 ns;
 
 a <= "0001";
 
 wait for 100 ns;
 
 a <= "0010";
 
 wait for 100 ns;
 
 a <= "0100";
 
 wait for 100 ns;
 
 a <= "1000";
 
 wait for 100 ns;
 
 a <= "1010"; 
 
 wait;
 end process;
 
END;