LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test2 IS
END test2;
 
ARCHITECTURE behavior OF test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bramka2
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : OUT  std_logic;
         e : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal d : std_logic;
   signal e : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bramka2 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          e => e
        );

   -- Stimulus process
   stim_proc: process
   begin
		a <= '0';
		b <= '0';
		c <= '0';
		wait for 10 ns;
		a <= '0';
		b <= '0';
		c <= '1';
		wait for 10 ns;
		a <= '0';
		b <= '1';
		c <= '0';
		wait for 10 ns;
		a <= '1';
		b <= '0';
		c <= '0';
		wait for 10 ns;
		a <= '1';
		b <= '0';
		c <= '1';
		wait for 10 ns;
		a <= '1';
		b <= '1';
		c <= '0';
		wait for 10 ns;
		a <= '0';
		b <= '1';
		c <= '1';
		wait for 10 ns;
		a <= '1';
		b <= '1';
		c <= '1';
      wait;
      -- insert stimulus here 

      wait;
   end process;

END;
