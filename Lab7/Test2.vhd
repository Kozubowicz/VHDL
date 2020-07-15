
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test2 IS
END Test2;
 
ARCHITECTURE behavior OF Test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab_7
    PORT(
         x0 : IN  std_logic_vector(3 downto 0);
         x1 : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x0 : std_logic_vector(3 downto 0) := (others => '0');
   signal x1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab_7 PORT MAP (
          x0 => x0,
          x1 => x1,
          Y => Y
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		--CIN <= '0';
      x0 <= "0000";
		x1 <= "0000";		
		wait for 10 ns;
		x0 <= "0000";
		x1 <= "0001";
		wait for 10 ns;
		x0 <= "0001";
		x1 <= "0010";
		wait for 10 ns;
		x0 <= "0010";
		x1 <= "0011";
		wait for 10 ns;
		x0 <= "0011";
		x1 <= "0100";
		wait for 10 ns;
		x0 <= "0100";
		x1 <= "0101";
		wait for 10 ns;
		x0 <= "0101";
		x1 <= "0110";
		wait for 10 ns;
		x0 <= "0110";
		x1 <= "0111";
		wait for 10 ns;
		x0 <= "0111";
		x1 <= "1000";
		wait for 10 ns;	
		x0 <= "1000";
		x1 <= "1001";
		wait for 10 ns;
		x0 <= "1001";
		x1 <= "1010";
		wait for 10 ns;
		x0 <= "1010";
		x1 <= "1011";
		wait for 10 ns;
		x0 <= "1011";
		x1 <= "1100";
		wait for 10 ns;
		x0 <= "1100";
		x1 <= "1101";
		wait for 10 ns;
		x0 <= "1101";
		x1 <= "1110";
		wait for 10 ns;
		x0 <= "1110";
		x1 <= "1111";
		wait for 10 ns;
		x0 <= "1111";
		x1 <= "1111";
		wait for 10 ns;
		x0 <= "1111";
		x1 <= "0000";
		wait for 10 ns;
		x0 <= "0000";
		x1 <= "1111";
		wait for 10 ns;
		x0 <= "0000";
		x1 <= "0000";
		wait for 10 ns;
		
      --wait;
   end process;

END;
