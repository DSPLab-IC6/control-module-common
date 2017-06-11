----------------------------------------------------------------------------------
-- Company: Bauman Moscow State Technical University
-- Engineer: Anton Telishev
-- 
-- Design Name: 	 
-- Module Name:     
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

 
ENTITY SPI_master_test IS
	GENERIC (
		data_width 		    : INTEGER := 8;
		default_slave_addr : INTEGER := 5
	);
END SPI_master_test;


ARCHITECTURE Behavior OF SPI_master_test IS 
	-- Component Declaration FOR the Unit Under Test (UUT)
	COMPONENT SPI_master
   PORT(
		clk  		  : IN  STD_LOGIC;
		sclk		  : BUFFER  STD_LOGIC;
		mosi		  : OUT  STD_LOGIC;
		miso 		  : IN  STD_LOGIC;
		ss_n       : OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		rx_data    : OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		tx_data 	  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		tr_enable  : IN  STD_LOGIC;
		slave_addr : IN  integer;
		busy 		  : OUT  STD_LOGIC;
		reset_n 	  : IN  STD_LOGIC
	);
	END COMPONENT;
 
   --Inputs
   SIGNAL clk 			: STD_LOGIC := '0';
   SIGNAL miso 		: STD_LOGIC := '0';
   SIGNAL tx_data    : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
   SIGNAL tr_enable  : STD_LOGIC := '0';
   SIGNAL slave_addr : INTEGER := default_slave_addr;
   SIGNAL reset_n 	: STD_LOGIC := '0';

 	--Outputs
   SIGNAL sclk 	: STD_LOGIC;
   SIGNAL mosi 	: STD_LOGIC := 'Z';
   SIGNAL ss_n 	: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '1');
   SIGNAL rx_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
   SIGNAL busy 	: STD_LOGIC;

   -- Clock period definitions
   CONSTANT clk_period : TIME := 250 ns;
	
	-- Example of master data
	SIGNAL data_from_slave : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_master PORT MAP (
		clk => clk,
      sclk => sclk,
		mosi => mosi,
		miso => miso,
		ss_n => ss_n,
		rx_data => rx_data,
		tx_data => tx_data,
		tr_enable => tr_enable,
		slave_addr => slave_addr,
		busy => busy,
		reset_n => reset_n
	);

   -- Clock process definitions
   clk_process: PROCESS
	BEGIN
		clk <= '0';
		WAIT FOR clk_period/2;
		clk <= '1';
		WAIT FOR clk_period/2;
   END PROCESS clk_process;

   -- Stimulus process
   stim_proc: PROCESS
   BEGIN		
      -- Hold reset state FOR 100 ns.
      WAIT FOR 10 ns;
		
		reset_n <= '1';
      WAIT FOR clk_period;

		tx_data <= "10110011";
		data_from_slave <= "11011101";
		
		tr_enable <= '1';
		WAIT FOR clk_period;
		tr_enable <= '0';
		
		FOR i IN 0 to data_width - 1 LOOP
			miso <= data_from_slave(data_from_slave'left - i);
			WAIT FOR clk_period * 2;
		END LOOP;
		
      WAIT;
   END PROCESS stim_proc;
END;
