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

entity Kwarc is
    Port ( RESET : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           CLK1 : out  STD_LOGIC;
           CLK2 : out  STD_LOGIC);
end Kwarc;

architecture Behavioral of Kwarc is
	signal CNT1 :std_logic_vector(26 downto 0);
	signal CNT2 :std_logic_vector(10 downto 0);
	signal CL1 :std_logic;
	signal CL2 :std_logic;
begin
	--process(CLK)
	--begin		
		--if rising_edge (CLK) then
		
	process(CLK, RESET)
	begin
		if RESET = '1' then
			CNT1 <= (others => '0');
			CL1 <= '0';
		elsif rising_edge (CLK) then
			--if CNT1(26) = '1' then
			if CNT1(26 downto 8) = "1011111010111100001" then
				CNT1 <= (others => '0');
				--CNT1 <= "000000000000000000000000000?";
					if CL1 = '0' then
						CL1 <= '1';
					else
						CL1 <= '0';
					end if;
				else
					CNT1 <= CNT1+1;
				end if;
		end if;
	end process;	
	
	--process(CLK)
	--begin
		--if rising_edge (CLK) then
		process(CLK, RESET)
		begin
		if RESET = '1' then
			CNT2 <= (others => '0');
			CL2 <= '0';
		elsif rising_edge (CLK) then		
		
			--if CNT2 = "1100001101010000??" then
			--if CNT2(10) = '1' then
			if CNT2(10 downto 4) = "1111101" then
				CNT2 <= (others => '0');
					if CL2 = '0' then
						CL2 <= '1';
					else
						CL2 <= '0';
					end if;
			else
				CNT2 <= CNT2+1;
			end if;
		end if;
	end process;
	
	CLK1 <= CL1;
	CLK2 <= CL2;
end Behavioral;

