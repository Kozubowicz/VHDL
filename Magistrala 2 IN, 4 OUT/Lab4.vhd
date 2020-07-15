
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

entity LAB44 is
    Port ( X : in  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end LAB44;

architecture Behavioral of LAB44 is
	--signal tmp: STD_LOGIC;
	
begin
		
		
		
		Y(0) <= (not SEL(0) and not SEL(1))and X;
		Y(1) <= (SEL(0) and not SEL(1))and X;
		Y(2) <= (not SEL(0) and  SEL(1))and X;
		Y(3) <= (SEL(0) and  SEL(1))and X;

end Behavioral;

