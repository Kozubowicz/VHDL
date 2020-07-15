--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:18:55 03/18/2019
-- Design Name:   
-- Module Name:   D:/235816/UP/Lab5/Lab5_1/Lab5_1/Test_1.vhd
-- Project Name:  Lab5_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab5_1
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
 
ENTITY Test_1 IS
END Test_1;
 
ARCHITECTURE behavior OF Test_1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab5_1
    PORT(
         BIN : IN  std_logic_vector(3 downto 0);
         SEG : OUT  std_logic_vector(7 downto 0);
         EN : IN  std_logic;
         DP : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal BIN : std_logic_vector(3 downto 0) := (others => '0');
   signal EN : std_logic := '0';
   signal DP : std_logic := '0';

 	--Outputs
   signal SEG : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab5_1 PORT MAP (
          BIN => BIN,
          SEG => SEG,
          EN => EN,
          DP => DP
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
     
		
		--0
		EN <= '1';
		DP <= '1';			
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--1
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--2
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--3
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--4
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;	
		--5
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--6
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--7
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--8
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--9
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--A
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--b
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--C
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--d
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--E
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--F
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '1';
		
		
		
		
      wait for 10 ns;
		--0
		EN <=	'1';
		DP <= '0';	
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--1
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--2
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--3
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--4
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;	
		--5
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--6
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--7
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--8
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--9
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--A
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--b
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--C
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--d
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--E
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--F
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '1';




		--0
		EN <= '0';
		DP <= '1';			
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--1
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--2
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--3
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--4
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;	
		--5
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--6
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--7
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--8
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--9
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--A
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--b
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--C
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--d
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--E
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--F
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '1';
		
		
		
		
      wait for 10 ns;
		--0
		EN <=	'0';
		DP <= '0';	
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--1
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--2
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--3
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '0';
		wait for 10 ns;
		--4
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;	
		--5
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--6
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--7
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '0';
		wait for 10 ns;
		--8
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--9
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--A
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--b
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '0';
		BIN(3) <= '1';
		wait for 10 ns;
		--C
		BIN(0) <= '0';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--d
		BIN(0) <= '1';
		BIN(1) <= '0';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--E
		BIN(0) <= '0';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '1';
		wait for 10 ns;
		--F
		BIN(0) <= '1';
		BIN(1) <= '1';
		BIN(2) <= '1';
		BIN(3) <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
