library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ANN is
    Port ( EN : in  STD_LOGIC;
           C : in  STD_LOGIC_VECTOR (1 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end ANN;

architecture Behavioral of ANN is

begin
	
	AN <=
			"1110"  	when C = "00" and EN = '1' else
			"1101"  	when C = "01" and EN = '1' else
			"1011"  	when C = "10" and EN = '1' else
			"0111"  	when C = "11" and EN = '1' else
			"1111";

end Behavioral;

