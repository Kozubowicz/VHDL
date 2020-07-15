library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BINTO7SEG is
Port (
--CLK : in  STD_LOGIC;
BIN : in  STD_LOGIC_VECTOR (3 downto 0);
SEG : out  STD_LOGIC_VECTOR (7 downto 0);
EN : in  STD_LOGIC;
DP : in  STD_LOGIC);
end BINTO7SEG;

architecture Behavioral of BINTO7SEG is

begin
	
		SEG (6 downto 0)<= 
		"1000000"  	when BIN = "0000" and EN = '1' else
		"1111001"	when BIN = "0001" and EN = '1' else
		"0100100"	when BIN = "0010" and EN = '1' else
		"0110000"	when BIN = "0011" and EN = '1' else
		"0011001"	when BIN = "0100" and EN = '1' else
		"0010010"	when BIN = "0101" and EN = '1' else
		"0000010"	when BIN = "0110" and EN = '1' else
		"1111000"	when BIN = "0111" and EN = '1' else
		"0000000"	when BIN = "1000" and EN = '1' else
		"0010000"	when BIN = "1001" and EN = '1' else	
		"0001000"	when BIN = "1010" and EN = '1' else
		"0000011"	when BIN = "1011" and EN = '1' else
		"1000110"	when BIN = "1100" and EN = '1' else
		"0100001"	when BIN = "1101" and EN = '1' else
		"0000110"	when BIN = "1110" and EN = '1' else
		"0001110"	when BIN = "1111" and EN = '1' else
		"1111111";
	
		SEG(7) <= 	'0' when DP ='1' and EN = '1' else
						'1';
		
end Behavioral;

