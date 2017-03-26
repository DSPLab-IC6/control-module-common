--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:15:50 03/26/2017
-- Design Name:   
-- Module Name:   H:/diplom2017/InterfaceDevice/SPI_master_test.vhd
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
	GENERIC (data_width : integer := 8);
END SPI_master_test;
 
ARCHITECTURE behavior OF SPI_master_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_master
    PORT(
         clk : IN  std_logic;
         sclk : BUFFER  std_logic;
         mosi : OUT  std_logic;
         miso : IN  std_logic;
         ss_n : BUFFER  std_logic_vector(15 downto 0);
         rx_data : OUT  std_logic_vector(7 downto 0);
         tx_data : IN  std_logic_vector(7 downto 0);
         tr_enable : IN  std_logic;
         slave_addr : IN  integer;
         busy : OUT  std_logic;
         reset_n : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal miso : std_logic := '0';
   signal tx_data : std_logic_vector(7 downto 0) := (others => '0');
   signal tr_enable : std_logic := '0';
   signal slave_addr : integer := 5;
   signal reset_n : std_logic := '0';

 	--Outputs
   signal sclk : std_logic;
   signal mosi : std_logic := 'Z';
   signal ss_n : std_logic_vector(15 downto 0) := (others => '1');
   signal rx_data : std_logic_vector(7 downto 0);
   signal busy : std_logic;

   -- Clock period definitions
   constant clk_period : time := 250 ns;
	
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
      -- hold reset state for 100 ns.
      wait for 100 ns;
		reset_n <= '1';
      wait for clk_period;

      -- insert stimulus here 
		tx_data <= "10110011";
		data_from_slave <= "11011101";
		
		tr_enable <= '1';
		wait for clk_period;
		tr_enable <= '0';
		
		FOR i IN 0 to data_width - 1 LOOP
			miso <= data_from_slave(data_from_slave'left - i);
			WAIT FOR clk_period * 2;
		END LOOP;
		

      wait;
   end process;

END;
