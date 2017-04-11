LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


PACKAGE CRC_8 IS
	CONSTANT polinomial : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00110001";	-- x^8 + x^5 + x^4 + 1
	
	FUNCTION CRC8 (
		message : STD_LOGIC_VECTOR
	) 
	RETURN STD_LOGIC_VECTOR;
END CRC_8;


PACKAGE BODY CRC_8 IS
	FUNCTION CRC8 (
		message : STD_LOGIC_VECTOR
	) 
	RETURN STD_LOGIC_VECTOR IS
		VARIABLE message_bits 		 : STD_LOGIC_VECTOR(message'left DOWNTO 0);
		VARIABLE message_bits_count : INTEGER := message_bits'left + 1 + 8;
		VARIABLE first_bit	 		 : STD_LOGIC;
		VARIABLE message_byte		 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	BEGIN
		message_bits := message;

		WHILE message_bits_count > 8 LOOP
			first_bit := message_bits(message_bits'left);
			
			message_bits := message_bits(message_bits'left - 1 DOWNTO 0) & '0';
			message_bits_count := message_bits_count - 1;
			
			IF first_bit = '1' THEN
				message_byte := message_bits(message_bits'left DOWNTO message_bits'left - 7);
				message_bits(message_bits'left DOWNTO message_bits'left - 7) := message_byte XOR polinomial;
			END IF;
		END LOOP;
		
		RETURN message_bits(message_bits'left DOWNTO message_bits'left - 7);
	END CRC8;
END CRC_8;
