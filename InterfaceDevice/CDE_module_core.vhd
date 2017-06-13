----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:59:10 05/31/2017 
-- Design Name: 
-- Module Name:    CDE_module_core - Logic 
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
USE IEEE.NUMERIC_STD.ALL;

LIBRARY WORK;
USE WORK.CRC_8.ALL;

ENTITY CDE_module_core IS
	GENERIC (
		data_width : INTEGER := 8;
		
		regs_count 		: INTEGER := 256;
		reg_width  		: INTEGER := 32;
		reg_addr_width : INTEGER := 8
	);
	
	PORT (
		clk						: IN STD_LOGIC;
		cm_spi_busy 			: IN STD_LOGIC;
      data_to_cm 		 		: OUT STD_LOGIC_VECTOR (data_width - 1 DOWNTO 0) := (OTHERS => '0');
      load_data_to_cm 		: OUT STD_LOGIC := '1';
      data_from_cm 		   : IN STD_LOGIC_VECTOR (data_width - 1 DOWNTO 0);
      request_data_from_cm : OUT STD_LOGIC := '1';
      reset_n 					: IN  STD_LOGIC
	);
	
	TYPE RAM_T IS ARRAY (0 TO regs_count - 1) OF STD_LOGIC_VECTOR(reg_width - 1 DOWNTO 0);
	
	TYPE MACHINE_T IS (
		ready, 
		busy, 
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
			WHEN crc_error   		  => state_code := X"4E";
			WHEN unknown_reg_error => state_code := X"5E";
			
			WHEN success => state_code := X"7C";
		END CASE;
		
		RETURN state_code;
	END get_state_code;
			
	TYPE COMMAND_T IS (nop, read_from_reg, fast_read_from_reg, write_to_reg, unknown);

	FUNCTION get_command (
		cmd_code : STD_LOGIC_VECTOR(7 DOWNTO 0)	-- cmd_width
	)
	RETURN COMMAND_T IS
		VARIABLE cmd : COMMAND_T;
	BEGIN
		CASE cmd_code IS
			WHEN X"10" => cmd := nop;
			WHEN X"11" => cmd := write_to_reg;
			WHEN X"12" => cmd := read_from_reg;
			WHEN OTHERS => cmd := unknown;
		END CASE;
		
		RETURN cmd;
	END get_command;
END CDE_module_core;

ARCHITECTURE Logic OF CDE_module_core IS
	SIGNAL state : MACHINE_T := ready;
	SIGNAL cmd	 : COMMAND_T := unknown;
	
	SIGNAL ram 		  		: RAM_T;
	SIGNAL reg_index 		: INTEGER := 0;
	SIGNAL reg_value 	   : STD_LOGIC_VECTOR(reg_width - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL reg_value_crc : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL buff : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
	main: PROCESS(clk, cm_spi_busy)
		VARIABLE byte_received_count : INTEGER := 0;
	BEGIN
		IF falling_edge(cm_spi_busy) THEN
			byte_received_count := byte_received_count + 1;
			
			CASE state IS 
				WHEN ready =>
					IF byte_received_count = 1 THEN
						cmd <= get_command(data_from_cm);
						
						IF cmd = unknown THEN
							state <= error;
							data_to_cm <= error_code;
							byte_received_count := 0;
						ELSE
							state <= busy;
						END IF;
					END IF;
				
				WHEN busy =>
					IF byte_received_count = 2 THEN
						reg_index <= to_integer(unsigned(data_from_cm));
						
						IF reg_index >= regs_count THEN
							state <= get_state_code(unknown_cmd_error);
							byte_received_count := 0;
						ELSIF cmd = read_from_reg THEN						
							reg_value <= ram(reg_index);
							reg_value_crc <= CRC8(reg_value);
						END IF;
					END IF;
					
					IF (byte_reveived_count > 2) AND (byte_received_count < 7) THEN
						IF (cmd = read_from_reg) OR (cmd = fast_read_from_reg) THEN
							data_to_cm <= reg_value(reg_value'left DOWNTO reg_value'left - 8);
							reg_value <= reg_value(reg_value'left - 8 DOWNTO 0) & reg_value(reg_value'left DOWNTO reg_value'left - 8);
						ELSIF cmd = write_to_reg THEN
							reg_value <= reg_value(reg_value'left - 8 DOWNTO 0) & data_from_cm;
						END IF;
					END IF;
					
					IF byte_received_count = 8 THEN
						reg_value_crc <= data_from_cm;
						 
						IF reg_value_crc /= CRC8(reg_value) THEN
							state <= get_state_code(bad_crc_error);
							--byte_received
							-- TODO: check it
						END IF;
					END IF;
				
				WHEN error =>
					state <= ready;
					byte_received_count := 0;					
			END CASE;
		END IF;
	END PROCESS main;
END Logic;
