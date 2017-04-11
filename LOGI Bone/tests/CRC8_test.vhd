--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:30:28 04/10/2017
-- Design Name:   
-- Module Name:   H:/diplom2017/InterfaceDevice/CRC8_test.vhd
-- Project Name:  InterfaceDevice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CRC8_counter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CRC8_test IS
	GENERIC (data_width : integer := 16);
END CRC8_test;
 
ARCHITECTURE behavior OF CRC8_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CRC8_counter
    PORT(
         clk	: in std_logic;
			message : IN  std_logic_vector(data_width - 1 downto 0);
         crc8 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
	signal clk : std_logic := '0';
   signal message : std_logic_vector(data_width - 1 downto 0) := (others => '0');

 	--Outputs
   signal crc8 : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CRC8_counter PORT MAP (
			clk => clk,
          message => message,
          crc8 => crc8
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;	

      wait for clk_period*5;
		
		message <= "1011101111100001";	-- crc8 = "01111011"
		
		wait for clk_period*5;

		message <= "1001101111100111";	-- crc8 = "00000001"
		
		wait for clk_period*5; 
		
		message <= "0000000010011001";	-- crc8 = "10110001"
		
		wait for clk_period*5; 
		
		message <= "0000000000000111";	-- crc8 = "10010111"
		
		wait for clk_period*5;
		
      wait;
   end process;

END;
