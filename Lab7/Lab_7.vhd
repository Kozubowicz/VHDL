
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab_7 is
    Port ( 
				x0 : in  STD_LOGIC_VECTOR (3 downto 0);
				x1 : in  STD_LOGIC_VECTOR (3 downto 0);
				Y : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end Lab_7;

architecture Behavioral of Lab_7 is

	component SUM1B is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           COUT : out  STD_LOGIC;
           Y : out  STD_LOGIC);
	end component;
	
	signal C1 : std_logic_vector (7 downto 0);
	signal C2 : std_logic_vector (7 downto 0);
	signal C3 : std_logic_vector (7 downto 0);
	signal C4 : std_logic_vector (7 downto 0);
	signal CO1 : std_logic_vector (7 downto 0);
	signal Y1 : std_logic_vector (7 downto 0);
	signal CO2 : std_logic_vector (7 downto 0);
	signal Y2 : std_logic_vector (7 downto 0);
	signal CO3 : std_logic_vector (7 downto 0);
	signal CIN : STD_LOGIC;
	
	begin
		CIN <= '0';
		C1 <= "0000" & x0 when x1(0)='1' else x"00";
		C2 <= "000" & x0&'0' when x1(1)='1' else x"00";
		C3 <= "00" & x0& "00" when x1(2)='1' else x"00";
		C4 <= '0' & x0& "000" when x1(3)='1' else x"00";
	
	S0:SUM1B port map(A=>C1(0), B=>C2(0), CIN =>CIN, Y=>Y1(0), COUT=>CO1(0));
	S1:SUM1B port map(A=>C1(1), B=>C2(1), CIN =>CO1(0), Y=>Y1(1), COUT=>CO1(1));
	S2:SUM1B port map(A=>C1(2), B=>C2(2), CIN =>CO1(1), Y=>Y1(2), COUT=>CO1(2));
	S3:SUM1B port map(A=>C1(3), B=>C2(3), CIN =>CO1(2), Y=>Y1(3), COUT=>CO1(3));
	S4:SUM1B port map(A=>C1(4), B=>C2(4), CIN =>CO1(3), Y=>Y1(4), COUT=>CO1(4));
	S5:SUM1B port map(A=>C1(5), B=>C2(5), CIN =>CO1(4), Y=>Y1(5), COUT=>CO1(5));
	S6:SUM1B port map(A=>C1(6), B=>C2(6), CIN =>CO1(5), Y=>Y1(6), COUT=>CO1(6));
	S7:SUM1B port map(A=>C1(7), B=>C2(7), CIN =>CO1(6), Y=>Y1(7), COUT=>CO1(7));	
	
	S10:SUM1B port map(A=>C3(0), B=>C4(0), CIN =>CIN, Y=>Y2(0), COUT=>CO2(0));
	S11:SUM1B port map(A=>C3(1), B=>C4(1), CIN =>CO2(0), Y=>Y2(1), COUT=>CO2(1));
	S12:SUM1B port map(A=>C3(2), B=>C4(2), CIN =>CO2(1), Y=>Y2(2), COUT=>CO2(2));
	S13:SUM1B port map(A=>C3(3), B=>C4(3), CIN =>CO2(2), Y=>Y2(3), COUT=>CO2(3));
	S14:SUM1B port map(A=>C3(4), B=>C4(4), CIN =>CO2(3), Y=>Y2(4), COUT=>CO2(4));
	S15:SUM1B port map(A=>C3(5), B=>C4(5), CIN =>CO2(4), Y=>Y2(5), COUT=>CO2(5));
	S16:SUM1B port map(A=>C3(6), B=>C4(6), CIN =>CO2(5), Y=>Y2(6), COUT=>CO2(6));
	S17:SUM1B port map(A=>C3(7), B=>C4(7), CIN =>CO2(6), Y=>Y2(7), COUT=>CO2(7));
	
	S20:SUM1B port map(A=>Y1(0), B=>Y2(0), CIN =>CIN, Y=>Y(0), COUT=>CO3(0));
	S21:SUM1B port map(A=>Y1(1), B=>Y2(1), CIN =>CO3(0), Y=>Y(1), COUT=>CO3(1));
	S22:SUM1B port map(A=>Y1(2), B=>Y2(2), CIN =>CO3(1), Y=>Y(2), COUT=>CO3(2));
	S23:SUM1B port map(A=>Y1(3), B=>Y2(3), CIN =>CO3(2), Y=>Y(3), COUT=>CO3(3));
	S24:SUM1B port map(A=>Y1(4), B=>Y2(4), CIN =>CO3(3), Y=>Y(4), COUT=>CO3(4));
	S25:SUM1B port map(A=>Y1(5), B=>Y2(5), CIN =>CO3(4), Y=>Y(5), COUT=>CO3(5));
	S26:SUM1B port map(A=>Y1(6), B=>Y2(6), CIN =>CO3(5), Y=>Y(6), COUT=>CO3(6));
	S27:SUM1B port map(A=>Y1(7), B=>Y2(7), CIN =>CO3(6), Y=>Y(7), COUT=>CO3(7));
	

end Behavioral;

