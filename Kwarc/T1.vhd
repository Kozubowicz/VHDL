--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:33:34 05/26/2019
-- Design Name:   
-- Module Name:   E:/235816/Lab8/Kwarc/T1.vhd
-- Project Name:  Kwarc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Kwarc
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
 
ENTITY T1 IS
END T1;
 
ARCHITECTURE behavior OF T1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Kwarc
    PORT(
         BTN0 : IN  std_logic;
			CLK : IN  std_logic;
         CLK1 : OUT  std_logic;
         CLK2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
	signal BTN0 : std_logic := '0';
 	--Outputs
   signal CLK1 : std_logic;
   signal CLK2 : std_logic;

   -- Clock period definitions
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Kwarc PORT MAP (
				BTN0 => BTN0,
          CLK => CLK,
          CLK1 => CLK1,
          CLK2 => CLK2
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for 5 ns;
		CLK <= '1';
		wait for 5 ns;
   end process;
 


   -- Stimulus process
   stim_proc: process
   begin		
		BTN0 <= '1';
		wait for 1 ns;
		BTN0 <= '0';

      wait;
   end process;

END;
