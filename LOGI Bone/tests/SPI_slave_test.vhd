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


ENTITY SPI_slave_test IS
	GENERIC (data_width : integer := 8);
END SPI_slave_test;

 
ARCHITECTURE Behavior OF SPI_slave_test IS 
	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT SPI_slave
		PORT(	 
			sclk 				 : IN  STD_LOGIC;
         mosi 				 : IN  STD_LOGIC;
         miso 				 : OUT  STD_LOGIC;
         ss_n 			    : IN  STD_LOGIC;
         rx_data 			 : OUT  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
         tx_data 		    : IN  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
         rx_data_request : IN  STD_LOGIC;
         tx_data_load_en : IN  STD_LOGIC;
         busy 				 : OUT  STD_LOGIC;
         reset_n 			 : IN  STD_LOGIC
		);
	END COMPONENT;

   --Inputs
	SIGNAL sclk 			  : STD_LOGIC := '0';
   SIGNAL mosi 			  : STD_LOGIC := '0';
   SIGNAL ss_n 			  : STD_LOGIC := '1';
   SIGNAL tx_data 		  :  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
   SIGNAL rx_data_request : STD_LOGIC := '0';
   SIGNAL tx_data_load_en : STD_LOGIC := '0';
   SIGNAL reset_n 		  : STD_LOGIC := '0';

 	--Outputs
   SIGNAL miso    : STD_LOGIC;
   SIGNAL rx_data : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
   SIGNAL busy 	: STD_LOGIC;

   -- Clock period definitions
   CONSTANT sclk_period : TIME := 250 ns;		-- 4 MHz
	
	-- Example of master data
	SIGNAL data_from_master : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
	-- Instantiate the Unit Under Test (UUT)
	uut: SPI_slave PORT MAP (
		sclk => sclk,
		mosi => mosi,
		miso => miso,
		ss_n => ss_n,
		rx_data => rx_data,
		tx_data => tx_data,
		rx_data_request => rx_data_request,
		tx_data_load_en => tx_data_load_en,
		busy => busy,
      reset_n => reset_n
	);

   -- Clock process definitions
	sclk_proc :PROCESS
   BEGIN
		sclk <= '0';
		WAIT FOR sclk_period / 2;
		sclk <= '1';
		WAIT FOR sclk_period / 2;
   END PROCESS scl_proc;
 
   -- Stimulus process
   stim_proc: PROCESS
   BEGIN		
      -- Hold reset state for 100 ns.
		reset_n <= '0';
		WAIT FOR 100 ns;	
		reset_n <= '1';
		WAIT FOR sclk_period;

		data_from_master <= "10101011";
		WAIT FOR sclk_period;

		tx_data_load_en <= '1';
		WAIT FOR sclk_period;
		tx_data <= "11001001";
		WAIT FOR sclk_period;
		tx_data_load_en <= '0';
		WAIT FOR sclk_period;

		ss_n <= '0';
		FOR i IN 0 to data_width - 1 LOOP
			mosi <= data_from_master(data_from_master'left - i);
			WAIT FOR sclk_period;
		END LOOP;
		ss_n <= '1';

		rx_data_request <= '1';
		WAIT FOR sclk_period;
		rx_data_request <= '0';

		WAIT FOR sclk_period * 4;
		reset_n <= '0';

		WAIT;
   END PROCESS stim_proc;
END Behavior;
