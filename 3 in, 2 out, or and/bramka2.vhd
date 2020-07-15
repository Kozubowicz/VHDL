----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:37:44 02/22/2019 
-- Design Name: 
-- Module Name:    bramka2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bramka2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : out  STD_LOGIC;
           e : out  STD_LOGIC);
end bramka2;

architecture Behavioral of bramka2 is

begin
	d <= a or b;
	e <= a and c;
end Behavioral;

