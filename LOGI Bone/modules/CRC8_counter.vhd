----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:57:32 04/10/2017 
-- Design Name: 
-- Module Name:    CRC8_counter - Logic 
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
LIBRARY work;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.CRC_8.ALL;


ENTITY CRC8_counter IS
	GENERIC (
		data_width : INTEGER := 16
	);

	PORT(
		clk	  : IN  STD_LOGIC;
		message : IN  STD_LOGIC_VECTOR (data_width - 1 downto 0);
      crc8 	  : OUT STD_LOGIC_VECTOR (7 downto 0)
	);
END CRC8_counter;


ARCHITECTURE Logic OF CRC8_counter IS
BEGIN
	main: PROCESS(clk, message)
	BEGIN
		crc8 <= work.CRC_8.CRC8(message);
	END PROCESS main;
END Logic;
