----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:48 05/20/2017 
-- Design Name: 
-- Module Name:    Counter - Logic 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
    Port(  clk: in STD_LOGIC;
			  spi_busy : in  STD_LOGIC;
           tx_data_load_en : out  STD_LOGIC;
			  reset_n: IN STD_LOGIC;
           tx_data : out  STD_LOGIC_VECTOR(7 DOWNTO 0) );
end Counter;

architecture Logic of Counter is
begin
	tx_data_load_en <= '1';
	
	main: PROCESS(clk, spi_busy, reset_n)
		VARIABLE bytes_count: INTEGER := 200;
	BEGIN
		IF reset_n = '0' THEN
			bytes_count := 200;
		END IF;
		
		IF falling_edge(spi_busy) THEN
			bytes_count := bytes_count + 1;
			
			IF bytes_count > 255 THEN
				bytes_count := 200;
			END IF;
			
			tx_data <= std_logic_vector(to_unsigned(bytes_count, 8));
		END IF;
	END PROCESS main;

end Logic;

