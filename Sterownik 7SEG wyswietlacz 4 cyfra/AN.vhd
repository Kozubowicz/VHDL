----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:05 05/04/2019 
-- Design Name: 
-- Module Name:    AN - Behavioral 
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

entity AN7 is
    Port ( EN : in  STD_LOGIC;
	 CLK : in  STD_LOGIC_VECTOR (1 downto 0);
	 
	 AN : out STD_LOGIC_VECTOR (3 downto 0)
	 );
end AN7;

architecture Behavioral of AN7 is

begin
	
	AN <=
			"1110"  	when CLK = "00"  else
			"1101"  	when CLK = "01"  else
			"1011"  	when CLK = "10"  else
			"0111"  	when CLK = "11"  else
			"1111";

end Behavioral;

