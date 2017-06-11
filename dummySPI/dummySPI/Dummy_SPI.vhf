--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.1
--  \   \         Application : sch2hdl
--  /   /         Filename : Dummy_SPI.vhf
-- /___/   /\     Timestamp : 05/21/2017 14:43:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl H:/dummySPI/dummySPI/Dummy_SPI.vhf -w H:/dummySPI/dummySPI/Dummy_SPI.sch
--Design Name: Dummy_SPI
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Dummy_SPI is
   port ( CLK     : in    std_logic; 
          MOSI    : in    std_logic; 
          SCLK    : in    std_logic; 
          SS_N    : in    std_logic; 
          BUSY    : out   std_logic; 
          MISO    : out   std_logic; 
          RX_DATA : out   std_logic_vector (7 downto 0));
end Dummy_SPI;

architecture BEHAVIORAL of Dummy_SPI is
   attribute BOX_TYPE   : string ;
   signal RX_DATA_REQ : std_logic;
   signal XLXN_2      : std_logic_vector (7 downto 0);
   signal BUSY_DUMMY  : std_logic;
   component Counter
      port ( clk             : in    std_logic; 
             spi_busy        : in    std_logic; 
             reset_n         : in    std_logic; 
             tx_data_load_en : out   std_logic; 
             tx_data         : out   std_logic_vector (7 downto 0));
   end component;
   
   component SPI_slave
      port ( sclk            : in    std_logic; 
             mosi            : in    std_logic; 
             ss_n            : in    std_logic; 
             rx_data_request : in    std_logic; 
             tx_data_load_en : in    std_logic; 
             reset_n         : in    std_logic; 
             tx_data         : in    std_logic_vector (7 downto 0); 
             miso            : out   std_logic; 
             busy            : out   std_logic; 
             rx_data         : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   BUSY <= BUSY_DUMMY;
   Counter_ins : Counter
      port map (clk=>CLK,
                reset_n=>RX_DATA_REQ,
                spi_busy=>BUSY_DUMMY,
                tx_data(7 downto 0)=>XLXN_2(7 downto 0),
                tx_data_load_en=>open);
   
   SPI_slave_ins : SPI_slave
      port map (mosi=>MOSI,
                reset_n=>RX_DATA_REQ,
                rx_data_request=>RX_DATA_REQ,
                sclk=>SCLK,
                ss_n=>SS_N,
                tx_data(7 downto 0)=>XLXN_2(7 downto 0),
                tx_data_load_en=>RX_DATA_REQ,
                busy=>BUSY_DUMMY,
                miso=>MISO,
                rx_data(7 downto 0)=>RX_DATA(7 downto 0));
   
   XLXI_1 : VCC
      port map (P=>RX_DATA_REQ);
   
end BEHAVIORAL;


