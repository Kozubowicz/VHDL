--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:43:19 03/12/2019
-- Design Name:   
-- Module Name:   D:/235816/UP/lab4_1/TESTlAB4.vhd
-- Project Name:  lab4_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LAB44
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
 
ENTITY TESTlAB4 IS
END TESTlAB4;
 
ARCHITECTURE behavior OF TESTlAB4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LAB44
    PORT(
         X : IN  std_logic;
         SEL : IN  std_logic_vector(1 downto 0);
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal SEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LAB44 PORT MAP (
          X => X,
          SEL => SEL,
          Y => X
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		X = 1;
			SEL(0) <= '0';
			SEL(1) <= '0';
      wait for 100 ns;	
			SEL(0) <= '1';:
			SEL(1) <= '0';
      wait for 100 ns;	
			SEL(0) <= '0';
			SEL(1) <= '1';
      wait for 100 ns;	
			SEL(0) <= '1';
			SEL(1) <= '1';
      

      -- insert stimulus here 

      wait;
   end process;

END;
