----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:58:14 03/25/2019 
-- Design Name: 
-- Module Name:    SUM4B - Behavioral 
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

entity SUM4B is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           CIN : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (3 downto 0);
           COUT : out  STD_LOGIC
			  );
end SUM4B;
		
architecture Behavioral of SUM4B is	
	component SUM1B is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           COUT : out  STD_LOGIC;
           Y : out  STD_LOGIC);
	end component;


	signal C : std_logic_vector (2 downto 0);
	begin
	S0:SUM1B port map	(A=>A(0), B=>B(0), CIN =>CIN, Y=>Y(0), COUT=>C(0));
	S1:SUM1B port map	(A=>A(1), B=>B(1), CIN =>C(0), Y=>Y(1), COUT=>C(1));
	S2:SUM1B port map	(A=>A(2), B=>B(2), CIN =>C(1), Y=>Y(2), COUT=>C(2));
	S3:SUM1B port map	(A=>A(3), B=>B(3), CIN =>C(2), Y=>Y(3), COUT=>COUT);
	
	--Y(0) <= 	A(0) xor B(0) xor CIN ;
	--C (0) <= (A(0) and B(0)) or (A(0) and CIN) or (B(0) and CIN);
	
	--Y(1) <= 	A(1) xor B(1) xor C (0);
	--C (1) <= (A(1) and B(1)) or (A(1) and C(0)) or (B(1) and C(0));
	
	--Y(2) <= 	A(2) xor B(2) xor C (1) ;
	--C (2) <= (A(2) and B(2)) or (A(2) and C(1)) or (B(2) and C(1));

	--Y(3) <= 	A(3) xor B(3) xor C (2) ;
	--COUT <= (A(3) and B(3)) or (A(3) and C(2)) or (B(3) and C(2));

end Behavioral;



