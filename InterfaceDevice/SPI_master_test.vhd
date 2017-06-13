--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:22 06/12/2017
-- Design Name:   
-- Module Name:   I:/diplom2017/InterfaceDevice/SPI_master_test.vhd
-- Project Name:  InterfaceDevice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SPI_master
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
 
ENTITY SPI_master_test IS
	GENERIC (
		data_width 		    : INTEGER := 8;
		default_slave_addr : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101"
	);
END SPI_master_test;
 
ARCHITECTURE behavior OF SPI_master_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_master
    PORT(
         clk : IN  std_logic;
         sclk : OUT  std_logic;
         mosi : OUT  std_logic;
         miso : IN  std_logic;
         ss_n : OUT  std_logic_vector(14 downto 0);
         rx_data : OUT  std_logic_vector(7 downto 0);
         tx_data : IN  std_logic_vector(7 downto 0);
         tr_enable : IN  std_logic;
         rx_data_request : IN  std_logic;
         slave_addr : IN  std_logic_vector(3 downto 0);
         busy : OUT  std_logic;
         reset_n : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal miso : std_logic := '0';
   signal tx_data : std_logic_vector(7 downto 0) := (others => '0');
   signal tr_enable : std_logic := '0';
   signal rx_data_request : std_logic := '0';
   signal slave_addr : std_logic_vector(3 downto 0) := (others => '0');
   signal reset_n : std_logic := '0';

 	--Outputs
   signal sclk : std_logic;
   signal mosi : std_logic;
   signal ss_n : std_logic_vector(14 downto 0);
   signal rx_data : std_logic_vector(7 downto 0);
   signal busy : std_logic;

   -- Clock period definitions
   CONSTANT clk_period : TIME := 250 ns;
	
	-- Example of master data
	SIGNAL data_from_slave : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_master PORT MAP (
          clk => clk,
          sclk => sclk,
          mosi => mosi,
          miso => miso,
          ss_n => ss_n,
          rx_data => rx_data,
          tx_data => tx_data,
          tr_enable => tr_enable,
          rx_data_request => rx_data_request,
          slave_addr => slave_addr,
          busy => busy,
          reset_n => reset_n
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
		reset_n <= '0';
      WAIT FOR clk_period * 3;
		reset_n <= '1';
      WAIT FOR clk_period * 3;

		tx_data <= "10011001";
		data_from_slave <= "11010101";
		slave_addr <= default_slave_addr;
		
		tr_enable <= '1';
		WAIT FOR clk_period;
		tr_enable <= '0';
		
		rx_data_request <= '1';
		FOR i IN 0 to data_width - 1 LOOP
			miso <= data_from_slave(data_from_slave'left - i);
			WAIT FOR clk_period * 2;
		END LOOP;
		
      wait;
   end process;
END;
