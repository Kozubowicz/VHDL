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

entity Licz is
    Port ( CLK1 : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           C : out  STD_LOGIC;
           X : out  STD_LOGIC_VECTOR (3 downto 0));
end Licz;

architecture Behavioral of Licz is
	signal CC :std_logic_vector(3 downto 0);
begin
	process(CLK1, RESET)
		begin
			if RESET = '1' then
				CC <= "0000";
				C <= '0';
			elsif rising_edge(CLK1) then
				if CC = "1001" then
					CC <= "0000";
					C <= '1';
				else 
					CC <= CC+1;
					C <= '0';
				end if;
			
			end if;
	end process;	
	X <= CC;
end Behavioral;

