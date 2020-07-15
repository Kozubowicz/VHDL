--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:01:32 05/08/2019
-- Design Name:   
-- Module Name:   D:/235816/Lab8/Lab7/ttt.vhd
-- Project Name:  Lab7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab_7
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ttt IS
END ttt;
 
ARCHITECTURE behavior OF ttt IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab_7
    PORT(
         x0 : IN  std_logic_vector(3 downto 0);
         x1 : IN  std_logic_vector(3 downto 0);
         Yy1 : OUT  std_logic_vector(7 downto 0);
         Yy2 : OUT  std_logic_vector(7 downto 0);
         Yy3 : OUT  std_logic_vector(7 downto 0);
         Yy4 : OUT  std_logic_vector(7 downto 0);
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x0 : std_logic_vector(3 downto 0) := (others => '0');
   signal x1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Yy1 : std_logic_vector(7 downto 0);
   signal Yy2 : std_logic_vector(7 downto 0);
   signal Yy3 : std_logic_vector(7 downto 0);
   signal Yy4 : std_logic_vector(7 downto 0);
   signal Y : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab_7 PORT MAP (
          x0 => x0,
          x1 => x1,
          Yy1 => Yy1,
          Yy2 => Yy2,
          Yy3 => Yy3,
          Yy4 => Yy4,
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
   end process;

END;
