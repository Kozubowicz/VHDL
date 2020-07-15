----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:21:40 05/21/2019 
-- Design Name: 
-- Module Name:    au4 - Behavioral 
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

entity au4 is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
			  I : in  STD_LOGIC;
           
           O : out  STD_LOGIC);
end au4;

architecture Behavioral of au4 is
signal state:std_logic_vector(2 downto 0);
signal state2:std_logic_vector(2 downto 0);
begin

process(CLK, RESET)
		begin
			if RESET = '1' then
				state <= "000";
				O <= '0';
		elsif rising_edge(CLK) then
	
		if state = "000" and state2 = "000" then
			if I = '0' then
				state <= "001";
				state2 <= "000";
			else 			
				state2 <= "001";
				state <= "000";
			end if;
			O<='0';
			
		elsif state = "001" then
			if I = '0' then
				state <= "010";
				state2 <= "000";
			else 			
				state2 <= "001";
				state <= "000";
			end if;
			O<='0';
			
		elsif state = "010" then
			if I = '0' then
				state <= "100";
				state2 <= "000";
			else 			
				state2 <= "001";
				state <= "000";
			end if;
			O<='0';
		
		elsif state = "100" then
			if I = '0' then
				state <= "001";
				state2 <= "000";
			else 			
				state2 <= "001";
				state <= "000";
			end if;
			O<='1';
			
						
		elsif state2 = "001" then
			if I = '0' then
				state <= "001";
				state2 <= "000";
			else 			
				state2 <= "010";
				state <= "000";
			end if;
			O<='0';
			
		elsif state2 = "010" then
			if I = '0' then
				state <= "001";
				state2 <= "000";
			else 			
				state2 <= "100";
				state <= "000";
			end if;
			O<='0';			
		elsif state2 = "100" then
			if I = '0' then
				state <= "001";
				state2 <= "000";
			else 			
				state2 <= "001";
				state <= "000";
			end if;
			O<='1';		
		else
			state <= "000";
			state2 <= "000";
			O <= '0';
			end if;
		end if;
	end process;
end Behavioral;

