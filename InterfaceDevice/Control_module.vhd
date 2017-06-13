----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:47:30 04/12/2017 
-- Design Name: 
-- Module Name:    Control_module - Logic 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: IEEE.STD_LOGIC_1164.ALL
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY Control_module IS
	GENERIC (
		-- TODO: High case DATA_WIDTH
		data_width 				  : INTEGER := 8;
		
		slave_addr_width 		  : INTEGER := 4;
		
		crc_width   			  : INTEGER := 8;
		cmd_width				  : INTEGER := 8;
		module_addr_width 	  : INTEGER := 8;
		module_reg_addr_width  : INTEGER := 8;
		module_reg_value_width : INTEGER := 32;
		
		state_width 			  : INTEGER := 8;
		
		cmd_result_width		  : INTEGER := 32
	);
	
	-- cd: Control Device (Beagle Bone Black)
	-- ss: State SPI
	PORT (
		data_from_cd 			: IN   STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
		request_data_from_cd : OUT  STD_LOGIC := '1';
		data_to_cd   	 		: OUT  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
		load_data_to_cd 		: OUT  STD_LOGIC := '1';
		cd_spi_busy				: IN   STD_LOGIC;
		
		data_from_ss 			: IN   STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
		request_data_from_ss : OUT  STD_LOGIC := '1';
		data_to_ss   	 		: OUT  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
		load_data_to_ss 		: OUT  STD_LOGIC := '1';
		ss_spi_busy				: IN   STD_LOGIC;
		
		module_spi_busy			 : IN	 STD_LOGIC;
		module_number				 : OUT	 STD_LOGIC_VECTOR(slave_addr_width - 1 DOWNTO 0) := (OTHERS => '0');
		module_tr_enable			 : OUT  STD_LOGIC := '1';
		data_to_module   			 : OUT  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
		data_from_module 			 : IN   STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
		request_data_from_module : OUT  STD_LOGIC := '1';
		
		spi_reset_n 			: OUT  STD_LOGIC := '1';
		clk 					   : IN STD_LOGIC
	);
	
	-- External states
	TYPE MACHINE_T IS (	
		ready,
		cmd_rec_busy, cmd_proc_busy,
		unknown_cmd_error, bad_crc_error, unknown_reg_error,
		success
	);

	FUNCTION get_state_code (
		state : MACHINE_T
	) 
	RETURN STD_LOGIC_VECTOR IS
		VARIABLE state_code : STD_LOGIC_VECTOR(state_width - 1 DOWNTO 0);
	BEGIN
		CASE state IS 
			WHEN ready => state_code := X"0D";
			
			WHEN cmd_rec_busy  => state_code := X"1B";
			WHEN cmd_proc_busy => state_code := X"2B";
			
			WHEN unknown_cmd_error => state_code := X"3E";
			WHEN bad_crc_error     => state_code := X"4E";
			WHEN unknown_reg_error => state_code := X"5E";
			
			WHEN success => state_code := X"7C";
		END CASE;
		
		RETURN state_code;
	END get_state_code;
	
	TYPE COMMAND_T IS (nop, write_to_module, read_from_module, read_cmd_result, unknown);
	
	FUNCTION get_command (
		cmd_code : STD_LOGIC_VECTOR(7 DOWNTO 0)	-- cmd_width
	)
	RETURN COMMAND_T IS
		VARIABLE cmd : COMMAND_T;
	BEGIN
		CASE cmd_code IS
			WHEN X"11" => cmd := write_to_module;
			WHEN X"12" => cmd := read_from_module;
			WHEN X"13" => cmd := read_cmd_result;
			WHEN OTHERS => cmd := unknown;
		END CASE;
		
		RETURN cmd;
	END get_command;
END Control_module;


ARCHITECTURE Logic OF Control_module IS
	SIGNAL state		 	   : MACHINE_T := ready;
	SIGNAL state_code  	   : STD_LOGIC_VECTOR(state_width - 1 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL cmd_crc		 	   : STD_LOGIC_VECTOR(crc_width - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL module_addr 	   : STD_LOGIC_VECTOR(module_addr_width - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL module_reg_addr  : STD_LOGIC_VECTOR(module_reg_addr_width - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL module_reg_value : STD_LOGIC_VECTOR(module_reg_value_width - 1 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL cmd_result	 	   : STD_LOGIC_VECTOR(cmd_result_width - 1 DOWNTO 0) := "10001001101010111100110111101111";
BEGIN
	load_data_to_cd <= '1';
	request_data_from_cd <= '1';
	
	load_data_to_ss <= '1';
	request_data_from_ss <= '1';
	
	module_tr_enable <= '1';
	request_data_from_module <= '1';
	
	data_to_ss <= get_state_code(state);
			
	main: PROCESS(clk, cd_spi_busy, ss_spi_busy)
		VARIABLE cmd : COMMAND_T := nop;
		VARIABLE byte_received_count : INTEGER := 0;
		CONSTANT ZERO_BYTE : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (others => '0');
	BEGIN
		-- Byte received from data channel
		IF falling_edge(cd_spi_busy) THEN
			byte_received_count := byte_received_count + 1;
					
			-- External states
			CASE state IS
				-- Command recognition --
				WHEN ready =>
					-- Received command code
					IF byte_received_count = 1 THEN
						cmd := get_command(data_from_cd);
						
						CASE cmd IS
							WHEN unknown =>
								state <= unknown_cmd_error;
							
							WHEN nop =>
								state <= ready;
							
							WHEN write_to_module =>
								state <= cmd_rec_busy;
							
							WHEN read_from_module =>
								state <= cmd_rec_busy;
								
							WHEN read_cmd_result =>
								state <= cmd_rec_busy;
						END CASE;
					END IF;
				-- Command recognition -- 
				
				-- Command processing --
				WHEN cmd_rec_busy =>
					-- Internal states
					CASE cmd IS
						WHEN write_to_module =>
							IF (byte_received_count = 2) THEN
								module_addr <= data_from_cd;
							END IF;
							
							IF (byte_received_count = 3) THEN
								module_reg_addr <= data_from_cd;
							END IF;
							
							IF (byte_received_count > 3) AND (byte_received_count < 8) THEN
								module_reg_value <= module_reg_value(module_reg_value'left - 8 DOWNTO 0) & data_from_cd;
							END IF;
							
							IF (byte_received_count = 8) THEN
								byte_received_count := 0;
								
								cmd_crc <= data_from_cd;
								state <= cmd_proc_busy;
							END IF;
						
						WHEN read_from_module =>
							IF (byte_received_count = 2) THEN
								module_addr <= data_from_cd;
							END IF;
							
							IF (byte_received_count = 3) THEN
								module_reg_addr <= data_from_cd;
							END IF;
							
							IF (byte_received_count > 3) AND (byte_received_count < 8) THEN
								module_reg_value <= module_reg_value(module_reg_value'left - 8 DOWNTO 0) & data_from_cd;
							END IF;
							
							IF (byte_received_count = 8) THEN
								byte_received_count := 0;
								
								cmd_crc <= data_from_cd;
								state <= cmd_proc_busy;
							END IF;
							
						WHEN read_cmd_result =>
							IF (byte_received_count > 3) AND (byte_received_count < 8) THEN
								data_to_cd <= cmd_result(cmd_result'left DOWNTO cmd_result'left - 8);	-- First 8 bits from MSB
								cmd_result <= cmd_result(cmd_result'left - 8 DOWNTO 0) & ZERO_BYTE;
							END IF;
							
							IF (byte_received_count = 8) THEN
								byte_received_count := 0;
								
								state <= ready;
							END IF;
							
						WHEN OTHERS =>
							NULL;
					END CASE;
				-- Command processing --

				WHEN success =>
					state <= ready;

				WHEN OTHERS =>
					NULL;
			END CASE;
		-- Byte received from state channel
		ELSIF falling_edge(ss_spi_busy) THEN
			CASE state IS
				WHEN cmd_rec_busy =>
					state <= cmd_rec_busy;
				WHEN cmd_proc_busy =>
					state <= cmd_proc_busy;
				
				WHEN OTHERS =>
					state <= ready;
			END CASE;
		END IF;
	END PROCESS main;
END Logic;
