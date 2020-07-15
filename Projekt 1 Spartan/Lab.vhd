library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLOC is
Port (
CLK2: in  STD_LOGIC;
RESET : in  STD_LOGIC;
EN : in  STD_LOGIC;
C : out  STD_LOGIC_VECTOR(1 downto 0)
);
end CLOC;

architecture Behavioral of CLOC is
signal CL : STD_LOGIC_VECTOR(1 downto 0);
begin
	
	process(CLK2, RESET, EN)
	begin
		IF EN = '1' then
			If RESET = '1' then
				CL <= "00";
			elsif rising_edge(CLK2) then	
				if CL = "00" then
					CL <= "01";
				elsif CL = "01" then
					CL <= "10";
				elsif CL = "10" then
					CL <= "11";
				else
					CL <= "00";
				end if;
			end if;
		end if;
	end process;
	C <=CL;
end Behavioral;

