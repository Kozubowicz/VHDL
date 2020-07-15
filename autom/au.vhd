----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:47:05 05/20/2019 
-- Design Name: 
-- Module Name:    au - Behavioral 
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

entity au is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           I : in  STD_LOGIC;
           O : out  STD_LOGIC);
end au;

architecture Behavioral of au is
signal state:std_logic_vector(3 downto 0);
begin

	process(CLK, RESET)
		begin
			if RESET = '1' then
				state <= "0000";
				O <= '0';
			elsif rising_edge(CLK) then
			
				if state = "0000" then
					if I = '0' then
						state <= "0001";
					else
						state <= "0000";
					end if;
				O <='0';
				
				elsif state ="0001" then
					if I = '0' then
						state <="0001";
					else
						state<="0010";
					end if;
				O <= '0';
				
				elsif state = "0010" then
					if I = '0' then
						state<="0001";
					else
						state<="0100";
					end if;
				O <= '0';
				
				
				elsif state = "0100" then
					if I = '0' then
						state<="1000";
					else
						state<="0000";
					end if;
				O <= '0';
				
				elsif state = "1000" then
					if I = '0' then
						state<="0001";
					else
						state<="0000";
					end if;
				O <= '1';
				
				
				else
					state <= "0000";
					O <= '0';
				end if;
			end if;
	end process;

end Behavioral;