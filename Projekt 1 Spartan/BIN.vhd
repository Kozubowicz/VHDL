----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:29:01 05/26/2019 
-- Design Name: 
-- Module Name:    BIN - Behavioral 
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

use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BIN is

    Port ( --CLK1 : in  STD_LOGIC;
			  --CLK2 : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
           --X0 : out  STD_LOGIC_VECTOR (3 downto 0);
           --X1 : out  STD_LOGIC_VECTOR (3 downto 0);
           --X2 : out  STD_LOGIC_VECTOR (3 downto 0);
           --X3 : out  STD_LOGIC_VECTOR (3 downto 0);
			  --C : out  STD_LOGIC;				
			  --DP : in  STD_LOGIC_VECTOR (3 downto 0);           
			  SEG : out  STD_LOGIC_VECTOR (7 downto 0);
           --EN : in  STD_LOGIC;           
           AN : out  STD_LOGIC_VECTOR (3 downto 0)
           );
end BIN;
architecture Behavioral of BIN is

component Licz is
   Port (
				CLK1 : in  STD_LOGIC;
				RESET : in  STD_LOGIC;
				C : out  STD_LOGIC;
				X : out  STD_LOGIC_VECTOR (3 downto 0));
end component;


component Kwarc is
    Port ( RESET : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           CLK1 : out  STD_LOGIC;
           CLK2 : out  STD_LOGIC);
end component;

component Lab8_1 is
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
end component;
	signal X0: std_logic_vector (3 downto 0);
	signal X1: std_logic_vector (3 downto 0);
	signal X2: std_logic_vector (3 downto 0);
	signal X3: std_logic_vector (3 downto 0);
	
	signal CLK1: std_logic;
	signal CLK2: std_logic;
	signal CL: std_logic_vector (2 downto 0);
	signal EN : STD_LOGIC;  
	signal DP : STD_LOGIC_VECTOR (3 downto 0); 
begin
	EN <= '1';
	DP <= "0000";
	
	BN:Lab8_1 port map(RESET=>BTN0, CLK2=>CLK2, x0=>X0, x1=>X1, x2=>X2, x3=>X3, SEG=>SEG, AN=>AN, DP=>DP, EN=>EN);
	B0:Licz port map(RESET=>BTN0, CLK1=>CLK1, C=>CL(0), X=>X0);
	B1:Licz port map(RESET=>BTN0, CLK1=>CL(0), C=>CL(1), X=>X1);
	B2:Licz port map(RESET=>BTN0, CLK1=>CL(1), C=>CL(2), X=>X2);
	B3:Licz port map(RESET=>BTN0, CLK1=>CL(2), X=>X3);
	Kwa:Kwarc port map(RESET=>BTN0,CLK=>CLK, CLK1=>CLK1,CLK2=>CLK2);
end Behavioral;

