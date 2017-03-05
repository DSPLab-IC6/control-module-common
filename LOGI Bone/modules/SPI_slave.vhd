----------------------------------------------------------------------------------
-- Company: Bauman Moscow State Technical University
-- Engineer: Anton Telishev
-- 
-- Create Date:    22:48:56 02/27/2017 
-- Design Name: 	 
-- Module Name:     
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

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY SPI_slave IS
	GENERIC (
		cpol 	   : STD_LOGIC := '0';
		cpha 	   : STD_LOGIC := '0';
		data_width : INTEGER := 8
	);

	PORT (
		sclk : IN  STD_LOGIC;
		mosi : IN  STD_LOGIC;
		miso : OUT STD_LOGIC := 'Z';
		ss_n : IN  STD_LOGIC;

		rx_data : OUT  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
		tx_data : IN   STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);

		rx_data_request : IN STD_LOGIC;
		tx_data_load_en : IN STD_LOGIC;

		busy : OUT STD_LOGIC;

		reset_n: IN STD_LOGIC
	);
END SPI_slave;


ARCHITECTURE Logic of SPI_slave IS
	SIGNAL clk		  : STD_LOGIC;
	SIGNAL rx_buffer : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL tx_buffer : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');

	SIGNAL mode : STD_LOGIC;
BEGIN
	busy <= NOT ss_n;
	
	mode <= cpol XOR cpha;
	clk <= sclk WHEN (mode = '1') ELSE not sclk;

 	main: PROCESS (clk, ss_n, tx_data_load_en, rx_data_request, reset_n)
 	BEGIN
 		IF (ss_n = '0') THEN 
 			IF falling_edge(clk) THEN
	 			rx_buffer <= rx_buffer(rx_buffer'left - 1 DOWNTO 0) & mosi;
	 		END IF;

	 		IF rising_edge(clk) THEN
	 			miso <= tx_buffer(tx_buffer'left);
	 			tx_buffer(tx_buffer'left DOWNTO 0) <= tx_buffer(tx_buffer'left - 1 DOWNTO 0) & tx_buffer(tx_buffer'left);
	 		END IF; 		
		ELSE
			IF (reset_n = '0') THEN
				tx_buffer <= (OTHERS => '0');
				rx_buffer <= (OTHERS => '0');
				rx_data <= (OTHERS => '0');
				miso <= 'Z';
			END IF;
			
			IF (tx_data_load_en = '1') THEN
				tx_buffer <= tx_data;
			END IF;
			
			IF (rx_data_request = '1') THEN
				rx_data <= rx_buffer;
			END IF;
		END IF;
 	END PROCESS main;
END Logic;
