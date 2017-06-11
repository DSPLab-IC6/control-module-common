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
-- Dependencies: IEEE.STD_LOGIC_1164.ALL IEEE.STD_LOGIC_ARITH.ALL
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY SPI_master IS
	GENERIC (
		cpol 	   	 	  : STD_LOGIC := '0';
		cpha 	   	 	  : STD_LOGIC := '0';
		clk_div		 	  : INTEGER	  := 1;
		slaves_count 	  : INTEGER	  := 15;
		slave_addr_width : INTEGER   := 4;
		data_width 	 	  : INTEGER   := 8
	);
	
	PORT (
		clk : IN STD_LOGIC;
		
		sclk : OUT STD_LOGIC;
		mosi : OUT STD_LOGIC := 'Z';
		miso : IN  STD_LOGIC := 'Z';
		ss_n : OUT STD_LOGIC_VECTOR(slaves_count - 1 DOWNTO 0);
		
		rx_data : OUT STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
		tx_data : IN  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);

		tr_enable : IN STD_LOGIC;
		slave_addr: IN STD_LOGIC_VECTOR(slave_addr_width - 1 DOWNTO 0) := (OTHERS => '0');
		
		busy : OUT STD_LOGIC; 
		
		reset_n : IN STD_LOGIC
	);
END SPI_master;


ARCHITECTURE Logic OF SPI_master IS
	SIGNAL sclk_int : STD_LOGIC;
		
	TYPE MACHINE_T IS (ready, transaction);

	SIGNAL state       : MACHINE_T; 
	SIGNAL slave_index : INTEGER; 
	SIGNAL clk_ratio   : INTEGER;
	SIGNAL clk_count   : INTEGER;  
	SIGNAL clk_toggles : INTEGER RANGE 0 TO data_width * 2 + 1; 
	SIGNAL latch_data  : STD_LOGIC; 
	SIGNAL rx_buffer   : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL tx_buffer   : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL slave_number : INTEGER RANGE 0 TO slaves_count;
BEGIN				
	main: PROCESS(clk, reset_n)
	BEGIN
		sclk <= sclk_int;
		slave_number <= CONV_INTEGER(unsigned(slave_addr));
		
		IF (reset_n = '0') THEN
			busy <= '1';
			mosi <= 'Z';
			
			ss_n <= (OTHERS => '1');
			rx_buffer <= (OTHERS => '1');
			tx_buffer <= (OTHERS => '1');
			rx_data <= (OTHERS => '0');
			
			state <= ready;
		ELSIF rising_edge(clk) THEN
			CASE state IS
				WHEN ready =>
					busy <= '0'; 
					mosi <= 'Z';
					ss_n <= (OTHERS => '1');

					IF (tr_enable = '1') THEN       
						busy <= '1';
						
						IF (slave_number < slaves_count) THEN
							slave_index <= slave_number;
						ELSE
							slave_index <= 0;
						END IF;
					
						IF (clk_div = 0) THEN
							clk_ratio <= 1;
							clk_count <= 1;
						ELSE
							clk_ratio <= clk_div;
							clk_count <= clk_div;
						END IF;
						
						sclk_int <= cpol;
						latch_data <= NOT cpha;
							
						tx_buffer <= tx_data;
						
						clk_toggles <= 0;
					
						state <= transaction;
					ELSE -- tr_enable /= '1'
						state <= ready;
					END IF;
	
				WHEN transaction =>
					busy <= '1';
					ss_n(slave_index) <= '0';
          
					IF (clk_count = clk_ratio) THEN        
						clk_count <= 1;
						clk_toggles <= clk_toggles + 1; 
						latch_data <= NOT latch_data;
						
						IF (latch_data = '1') THEN 
							mosi <= tx_buffer(tx_buffer'left);
							tx_buffer(tx_buffer'left DOWNTO 0) <= tx_buffer(tx_buffer'left - 1 DOWNTO 0) & tx_buffer(tx_buffer'left);
						ELSE 
							rx_buffer <= rx_buffer(rx_buffer'left - 1 DOWNTO 0) & miso;
						END IF;
						
						IF (clk_toggles < data_width * 2) THEN 
							sclk_int <= NOT sclk_int;
							state <= transaction;
						ELSE 
							busy <= '0';
							mosi <= 'Z';
							ss_n <= (OTHERS => '1'); 
							rx_data <= rx_buffer;
							state <= ready;
						END IF;
					ELSE -- clk_count /= clk_ratio
						clk_count <= clk_count + 1;
						state <= transaction;
					END IF;
			END CASE;
		END IF;
	END PROCESS main; 
END Logic;
