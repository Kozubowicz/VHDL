library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Lab8_1 is
    Port ( x0 : in  STD_LOGIC_VECTOR (3 downto 0);
           x1 : in  STD_LOGIC_VECTOR (3 downto 0);
           x2 : in  STD_LOGIC_VECTOR (3 downto 0);
           x3 : in  STD_LOGIC_VECTOR (3 downto 0);
           DP : in  STD_LOGIC_VECTOR (3 downto 0);
           CLK2 : in  STD_LOGIC;
			  SEG : out  STD_LOGIC_VECTOR (7 downto 0);
           EN : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           AN : out  STD_LOGIC_VECTOR (3 downto 0)
           );
end Lab8_1;

architecture Behavioral of Lab8_1 is
component BINTO7SEG is
    Port ( 	BIN : in  STD_LOGIC_VECTOR (3 downto 0);
				SEG : out  STD_LOGIC_VECTOR (7 downto 0);
				EN : in  STD_LOGIC;
				DP : in  STD_LOGIC);
	end component;
	
	component ANN is
   Port ( 	C : in  STD_LOGIC_VECTOR (1 downto 0);
				AN : out STD_LOGIC_VECTOR (3 downto 0);
				EN : in  STD_LOGIC
				);
	end component;
	
	component CLOC is
   Port (
		CLK2: in  STD_LOGIC;
		RESET : in  STD_LOGIC;
		EN : in  STD_LOGIC;
		C : out  STD_LOGIC_VECTOR(1 downto 0)
	);
	end component;
	
		signal x : STD_LOGIC_VECTOR (3 downto 0);
		signal d : STD_LOGIC;
		signal C : STD_LOGIC_VECTOR (1 downto 0);
	begin

	with c select
		x <= 	x1 when "01",
				x2 when "10",
				x3 when "11",
				x0 when others;				
	with c select
		d <= 	DP(1) when "01",
				DP(2) when "10",
				DP(3) when "11",
				DP(0) when others;
	
	A:ANN port map(C=>C, AN=>AN, EN=>EN);
	B:BINTO7SEG port map(BIN=>x, EN=>EN, DP=>d, SEG=>SEG);
	CL:CLOC port map(CLK2=>CLK2, RESET=>RESET, C=>C, EN=>EN);
	
end Behavioral;