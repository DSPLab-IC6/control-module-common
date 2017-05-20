-- Vhdl test bench created from schematic H:\dummySPI\dummySPI\Dummy_SPI.sch - Sat May 20 13:49:07 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Dummy_SPI_Dummy_SPI_sch_tb IS
END Dummy_SPI_Dummy_SPI_sch_tb;
ARCHITECTURE behavioral OF Dummy_SPI_Dummy_SPI_sch_tb IS 

   COMPONENT Dummy_SPI
   PORT( RESET_N	:	IN	STD_LOGIC; 
          SCLK	:	IN	STD_LOGIC; 
          MOSI	:	IN	STD_LOGIC; 
          MISO	:	OUT	STD_LOGIC; 
          SS_N	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL RESET_N	:	STD_LOGIC;
   SIGNAL SCLK	:	STD_LOGIC;
   SIGNAL MOSI	:	STD_LOGIC;
   SIGNAL MISO	:	STD_LOGIC;
   SIGNAL SS_N	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
	
	-- Clock period definitions
   CONSTANT sclk_period : TIME := 20 ns;
	CONSTANT clk_period : TIME := 10 ns;	
	
	-- Example of master data
	SIGNAL data_from_master : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
BEGIN

   UUT: Dummy_SPI PORT MAP(
		RESET_N => RESET_N, 
		SCLK => SCLK, 
		MOSI => MOSI, 
		MISO => MISO, 
		SS_N => SS_N, 
		CLK => CLK
   );
	
	sclk_proc :PROCESS
   BEGIN
		SCLK <= '0';
		WAIT FOR sclk_period / 2;
		SCLK <= '1';
		WAIT FOR sclk_period / 2;
   END PROCESS sclk_proc;
	
	clk_proc :PROCESS
   BEGIN
		CLK <= '0';
		WAIT FOR clk_period / 2;
		CLK <= '1';
		WAIT FOR clk_period / 2;
   END PROCESS clk_proc;
	
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	-- Hold reset state for 100 ns.
		reset_n <= '0';
		WAIT FOR 100 ns;	
		reset_n <= '1';
		WAIT FOR sclk_period;

		data_from_master <= "10101011";
		WAIT FOR sclk_period;
		
		FOR j in 0 to 5 LOOP
			ss_n <= '0';
			FOR i IN 0 to 7 LOOP
				mosi <= data_from_master(7 - i);
				WAIT FOR sclk_period;
			END LOOP;
			ss_n <= '1';
			
			WAIT FOR sclk_period;
		END LOOP;

		WAIT FOR sclk_period * 4;
		reset_n <= '0';

      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
