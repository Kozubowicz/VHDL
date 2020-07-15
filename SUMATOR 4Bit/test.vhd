--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:28:44 03/25/2019
-- Design Name:   
-- Module Name:   D:/235816/UP/Lab6/SUM4B/test.vhd
-- Project Name:  SUM4B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SUM4B
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SUM4B
    PORT(
         A : IN  std_logic_vector(0 to 3);
         B : IN  std_logic_vector(0 to 3);
         CIN : IN  std_logic;
         Y : IN  std_logic_vector(0 to 3);
         COUT : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(0 to 3) := (others => '0');
   signal B : std_logic_vector(0 to 3) := (others => '0');
   signal CIN : std_logic := '0';
   signal Y : std_logic_vector(0 to 3) := (others => '0');
   signal COUT : std_logic := '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SUM4B PORT MAP (
          A => A,
          B => B,
          CIN => CIN,
          Y => Y,
          COUT => COUT
        );

   
   stim_proc: process
   begin		
		CIN <= '0';
		A <= "0000";
		B <= "0000";
      wait for 10 ns;	
		A <= "0001";
		B <= "0000";
      wait for 10 ns;
		A <= "0010";
		B <= "0000";
		wait for 10 ns;
		A <= "0011";
		B <= "0000";
		wait for 10 ns;
		A <= "0100";
		B <= "0000";
		wait for 10 ns;
		A <= "0101";
		B <= "0000";
		wait for 10 ns;
		A <= "0110";
		B <= "0000";
		wait for 10 ns;
		A <= "0111";
		B <= "0000";
		wait for 10 ns;
		A <= "1000";
		B <= "0000";
		wait for 10 ns;
		A <= "1001";
		B <= "0000";
		wait for 10 ns;
		A <= "1010";
		B <= "0000";
		wait for 10 ns;
		A <= "1011";
		B <= "0000";
		wait for 10 ns;
		A <= "1100";
		B <= "0000";
		wait for 10 ns;
		A <= "1101";
		B <= "0000";
		wait for 10 ns;
		A <= "1110";
		B <= "0000";
		wait for 10 ns;
		A <= "1111";
		B <= "0000";
		wait for 10 ns;


		B <= "0000";
		A <= "0000";
      wait for 10 ns;	
		B <= "0001";
		A <= "0000";
      wait for 10 ns;
		B <= "0010";
		A <= "0000";
		wait for 10 ns;
		B <= "0011";
		A <= "0000";
		wait for 10 ns;
		B <= "0100";
		A <= "0000";
		wait for 10 ns;
		B <= "0101";
		A <= "0000";
		wait for 10 ns;
		B <= "0110";
		A <= "0000";
		wait for 10 ns;
		B <= "0111";
		A <= "0000";
		wait for 10 ns;
		B <= "1000";
		A <= "0000";
		wait for 10 ns;
		B <= "1001";
		A <= "0000";
		wait for 10 ns;
		B <= "1010";
		A <= "0000";
		wait for 10 ns;
		B <= "1011";
		A <= "0000";
		wait for 10 ns;
		B <= "1100";
		A <= "0000";
		wait for 10 ns;
		B <= "1101";
		A <= "0000";
		wait for 10 ns;
		B <= "1110";
		A <= "0000";
		wait for 10 ns;
		B <= "1111";
		A <= "0000";
		wait for 10 ns;
		CIN <= '1';
		A <= "0000";
		B <= "0000";
      wait for 10 ns;	
		A <= "0001";
		B <= "0000";
      wait for 10 ns;
		A <= "0010";
		B <= "0000";
		wait for 10 ns;
		A <= "0011";
		B <= "0000";
		wait for 10 ns;
		A <= "0100";
		B <= "0000";
		wait for 10 ns;
		A <= "0101";
		B <= "0000";
		wait for 10 ns;
		A <= "0110";
		B <= "0000";
		wait for 10 ns;
		A <= "0111";
		B <= "0000";
		wait for 10 ns;
		A <= "1000";
		B <= "0000";
		wait for 10 ns;
		A <= "1001";
		B <= "0000";
		wait for 10 ns;
		A <= "1010";
		B <= "0000";
		wait for 10 ns;
		A <= "1011";
		B <= "0000";
		wait for 10 ns;
		A <= "1100";
		B <= "0000";
		wait for 10 ns;
		A <= "1101";
		B <= "0000";
		wait for 10 ns;
		A <= "1110";
		B <= "0000";
		wait for 10 ns;
		A <= "1111";
		B <= "0000";
		wait for 10 ns;
		B <= "0000";
		A <= "0000";
      wait for 10 ns;	
		B <= "0001";
		A <= "0000";
      wait for 10 ns;
		B <= "0010";
		A <= "0000";
		wait for 10 ns;
		B <= "0011";
		A <= "0000";
		wait for 10 ns;
		B <= "0100";
		A <= "0000";
		wait for 10 ns;
		B <= "0101";
		A <= "0000";
		wait for 10 ns;
		B <= "0110";
		A <= "0000";
		wait for 10 ns;
		B <= "0111";
		A <= "0000";
		wait for 10 ns;
		B <= "1000";
		A <= "0000";
		wait for 10 ns;
		B <= "1001";
		A <= "0000";
		wait for 10 ns;
		B <= "1010";
		A <= "0000";
		wait for 10 ns;
		B <= "1011";
		A <= "0000";
		wait for 10 ns;
		B <= "1100";
		A <= "0000";
		wait for 10 ns;
		B <= "1101";
		A <= "0000";
		wait for 10 ns;
		B <= "1110";
		A <= "0000";
		wait for 10 ns;
		B <= "1111";
		A <= "0000";
		wait for 10 ns;
		
    

      --wait;
   end process;

END;
