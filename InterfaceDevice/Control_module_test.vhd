-- Vhdl test bench created from schematic I:\diplom2017\InterfaceDevice\Control_module_scheme.sch - Wed May 31 01:55:35 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

ENTITY Control_module_scheme_test IS
END Control_module_scheme_test;

ARCHITECTURE behavioral OF 
      Control_module_scheme_test IS 

   COMPONENT Control_module_scheme
   PORT( CD_MOSI	:	IN	STD_LOGIC; 
          CD_MISO	:	OUT	STD_LOGIC; 
          CD_SCLK	:	IN	STD_LOGIC; 
          CD_SS_N	:	IN	STD_LOGIC; 
          ST_SS_N	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          MODULE_SCLK	:	OUT	STD_LOGIC; 
          MODULE_MOSI	:	OUT	STD_LOGIC; 
          MODULE_MISO	:	IN	STD_LOGIC; 
          MODULE_SS_N	:	OUT	STD_LOGIC_VECTOR (14 DOWNTO 0));
   END COMPONENT;

   SIGNAL CD_MOSI	:	STD_LOGIC;
   SIGNAL CD_MISO	:	STD_LOGIC;
   SIGNAL CD_SCLK	:	STD_LOGIC;
   SIGNAL CD_SS_N	:	STD_LOGIC := '1';
   SIGNAL ST_SS_N	:	STD_LOGIC := '1';
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL MODULE_SCLK	:	STD_LOGIC;
   SIGNAL MODULE_MOSI	:	STD_LOGIC;
   SIGNAL MODULE_MISO	:	STD_LOGIC;
   SIGNAL MODULE_SS_N	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	
	-- Clock period definitions
	CONSTANT clk_period  : TIME := 20 ns;
   CONSTANT sclk_period : TIME := 250 ns;
	
	SIGNAL result : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL cmd_resultt : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
BEGIN

   UUT: Control_module_scheme PORT MAP(
		CD_MOSI => CD_MOSI, 
		CD_MISO => CD_MISO, 
		CD_SCLK => CD_SCLK, 
		CD_SS_N => CD_SS_N, 
		ST_SS_N => ST_SS_N, 
		CLK => CLK, 
		MODULE_SCLK => MODULE_SCLK, 
		MODULE_MOSI => MODULE_MOSI, 
		MODULE_MISO => MODULE_MISO, 
		MODULE_SS_N => MODULE_SS_N
   );
	
	-- Clock process definitions
   clk_process: PROCESS
	BEGIN
		CLK <= '0';
		WAIT FOR clk_period/2;
		CLK <= '1';
		WAIT FOR clk_period/2;
   END PROCESS clk_process;

   sclk_process: PROCESS
	BEGIN
		CD_SCLK <= '0';
		WAIT FOR sclk_period/2;
		CD_SCLK <= '1';
		WAIT FOR sclk_period/2;
   END PROCESS sclk_process;
	
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
		-- Send byte by SPI
		PROCEDURE send_byte_to_data_ch (
			value  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			SIGNAL result : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		) IS
		BEGIN
			CD_SS_N <= '0';
			FOR i IN 0 TO 7 LOOP
				CD_MOSI <= value(value'left - i);
				WAIT FOR sclk_period / 2;
				result <= result(result'left - 1 DOWNTO 0) & CD_MISO;
				WAIT FOR sclk_period / 2;
			END LOOP;
			CD_SS_N <= '1';
		END send_byte_to_data_ch;
		
		-- TODO: SS_N as parameter
		PROCEDURE send_byte_to_state_ch (
			value  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			SIGNAL result : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		) IS
		BEGIN
			ST_SS_N <= '0';
			FOR i IN 0 TO 7 LOOP
				CD_MOSI <= value(value'left - i);
				WAIT FOR sclk_period / 2;
				result <= result(result'left - 1 DOWNTO 0) & CD_MISO;
				WAIT FOR sclk_period / 2;
			END LOOP;
			ST_SS_N <= '1';
		END send_byte_to_state_ch;
		
		CONSTANT zero_byte		 : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
		CONSTANT cmd_nop 			 : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"10";
		CONSTANT cmd_read_result : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"13";
		
		CONSTANT write_to_reg_cmd : STD_LOGIC_VECTOR(63 DOWNTO 0) := X"11334489ABCDEF55";
   BEGIN
		WAIT FOR sclk_period;
		
		send_byte_to_state_ch(cmd_nop, result); 
		WAIT FOR sclk_period * 5;

--		send_byte_to_data_ch(cmd_read_result, result);
--		WAIT FOR sclk_period * 5;
--		
--		send_byte_to_state_ch(cmd_nop, result); 
--		WAIT FOR sclk_period * 5;
--		
--		FOR i IN 1 TO 7 LOOP
--			WAIT FOR sclk_period;
--			send_byte_to_data_ch(zero_byte, result);
--			cmd_resultt <= cmd_resultt(cmd_resultt'left - 8 DOWNTO 0) & result;
--		END LOOP;
		
		FOR i in 0 to 7 LOOP
			WAIT FOR sclk_period;
			send_byte_to_data_ch(write_to_reg_cmd(63 - i * 8 DOWNTO 63 - (i + 1) * 8 + 1), result);
		END LOOP;
		
		WAIT FOR sclk_period;
		send_byte_to_state_ch(cmd_nop, result); 
		WAIT FOR sclk_period * 5;
		
		WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***
END;
