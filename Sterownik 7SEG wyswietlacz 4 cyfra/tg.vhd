LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tg IS
END tg;
 
ARCHITECTURE behavior OF tg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab8_1
    PORT(
         x0 : IN  std_logic_vector(3 downto 0);
         x1 : IN  std_logic_vector(3 downto 0);
         x2 : IN  std_logic_vector(3 downto 0);
         x3 : IN  std_logic_vector(3 downto 0);
         DP : IN  std_logic_vector(3 downto 0);
         CLK : IN  std_logic;
         SEG : OUT  std_logic_vector(7 downto 0);
         EN : IN  std_logic;
         RESET : IN  std_logic;
         AN : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x0 : std_logic_vector(3 downto 0) := (others => '0');
   signal x1 : std_logic_vector(3 downto 0) := (others => '0');
   signal x2 : std_logic_vector(3 downto 0) := (others => '0');
   signal x3 : std_logic_vector(3 downto 0) := (others => '0');
   signal DP : std_logic_vector(3 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal EN : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal SEG : std_logic_vector(7 downto 0);
   signal AN : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab8_1 PORT MAP (
          x0 => x0,
          x1 => x1,
          x2 => x2,
          x3 => x3,
          DP => DP,
          CLK => CLK,
          SEG => SEG,
          EN => EN,
          RESET => RESET,
          AN => AN
        );

   -- Clock process definitions
   process
   begin
		CLK <= '1';
		wait for 5 ns;
		CLK <= '0';
		wait for 5 ns;
   end process;
 

   -- Stimulus process
	process
   begin	
		RESET <= '0';
		EN <= '1';
		x0 <= "0100";
		x1 <= "0011";
		x2 <= "0010";
		x3 <= "0001";
		DP <= "0000";
		wait for 40 ns;
		DP <= "1111";
		wait for 40 ns;
		EN <= '0';
		wait for 40 ns;
		RESET <= '1';
		EN <= '1';
		wait for 40 ns;
		RESET <= '0';
		wait for 40 ns;
		RESET <= '0';
		x0 <= "0100";
		x1 <= "0011";
		x2 <= "0010";
		x3 <= "0001";
		DP <= "0000";
		
      wait;
   end process;

END;
