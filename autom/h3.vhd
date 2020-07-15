--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:03:11 05/21/2019
-- Design Name:   
-- Module Name:   E:/235816/Lab8/autom/h3.vhd
-- Project Name:  autom
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: au3
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
 
ENTITY h3 IS
END h3;
 
ARCHITECTURE behavior OF h3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT au3
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         I : IN  std_logic;
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal I : std_logic := '0';
	
	signal O : std_logic;
   -- Clock period definitions

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: au3 PORT MAP (
          CLK => CLK,
          RESET => RESET,
          I => I,
          O => O
        );

process
   begin
		CLK <= '1';
		wait for 5 ns;
		CLK <= '0';
		wait for 5 ns;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      RESET <= '0';
      	
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';


      wait;
   end process;

END;
