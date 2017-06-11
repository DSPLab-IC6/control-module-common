--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.1
--  \   \         Application : sch2hdl
--  /   /         Filename : Control_module_scheme.vhf
-- /___/   /\     Timestamp : 05/31/2017 02:04:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl I:/diplom2017/InterfaceDevice/Control_module_scheme.vhf -w I:/diplom2017/InterfaceDevice/Control_module_scheme.sch
--Design Name: Control_module_scheme
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

entity Control_module_scheme is
   port ( CD_MOSI     : in    std_logic; 
          CD_SCLK     : in    std_logic; 
          CD_SS_N     : in    std_logic; 
          CLK         : in    std_logic; 
          MODULE_MISO : in    std_logic; 
          ST_SS_N     : in    std_logic; 
          CD_MISO     : out   std_logic; 
          MODULE_MOSI : out   std_logic; 
          MODULE_SCLK : out   std_logic; 
          MODULE_SS_N : out   std_logic_vector (14 downto 0));
end Control_module_scheme;

architecture BEHAVIORAL of Control_module_scheme is
   signal XLXN_76       : std_logic;
   signal XLXN_77       : std_logic_vector (7 downto 0);
   signal XLXN_78       : std_logic;
   signal XLXN_79       : std_logic_vector (7 downto 0);
   signal XLXN_80       : std_logic;
   signal XLXN_81       : std_logic;
   signal XLXN_82       : std_logic_vector (7 downto 0);
   signal XLXN_83       : std_logic;
   signal XLXN_84       : std_logic_vector (7 downto 0);
   signal XLXN_85       : std_logic;
   signal XLXN_88       : std_logic;
   signal XLXN_89       : std_logic_vector (3 downto 0);
   signal XLXN_90       : std_logic;
   signal XLXN_91       : std_logic_vector (7 downto 0);
   signal XLXN_92       : std_logic;
   signal XLXN_93       : std_logic_vector (7 downto 0);
   signal CD_MISO_DUMMY : std_logic;
   component SPI_slave
      port ( sclk            : in    std_logic; 
             mosi            : in    std_logic; 
             miso            : out   std_logic; 
             ss_n            : in    std_logic; 
             busy            : out   std_logic; 
             tx_data         : in    std_logic_vector (7 downto 0); 
             tx_data_load_en : in    std_logic; 
             rx_data         : out   std_logic_vector (7 downto 0); 
             rx_data_request : in    std_logic; 
             reset_n         : in    std_logic);
   end component;
   
   component SPI_master
      port ( clk        : in    std_logic; 
             miso       : in    std_logic; 
             tr_enable  : in    std_logic; 
             reset_n    : in    std_logic; 
             tx_data    : in    std_logic_vector (7 downto 0); 
             sclk       : out   std_logic; 
             mosi       : out   std_logic; 
             busy       : out   std_logic; 
             ss_n       : out   std_logic_vector (14 downto 0); 
             rx_data    : out   std_logic_vector (7 downto 0); 
             slave_addr : in    std_logic_vector (3 downto 0));
   end component;
   
   component Control_module
      port ( clk                  : in    std_logic; 
             ss_spi_busy          : in    std_logic; 
             data_to_ss           : out   std_logic_vector (7 downto 0); 
             load_data_to_ss      : out   std_logic; 
             data_from_ss         : in    std_logic_vector (7 downto 0); 
             request_data_from_ss : out   std_logic; 
             cd_spi_busy          : in    std_logic; 
             load_data_to_cd      : out   std_logic; 
             data_to_cd           : out   std_logic_vector (7 downto 0); 
             request_data_from_cd : out   std_logic; 
             data_from_cd         : in    std_logic_vector (7 downto 0); 
             spi_reset_n          : out   std_logic; 
             module_number        : out   std_logic_vector (3 downto 0); 
             data_to_module       : out   std_logic_vector (7 downto 0); 
             module_tr_enable     : out   std_logic; 
             data_from_module     : in    std_logic_vector (7 downto 0); 
             module_spi_busy      : in    std_logic);
   end component;
   
begin
   CD_MISO <= CD_MISO_DUMMY;
   CD_SPI_slave : SPI_slave
      port map (mosi=>CD_MOSI,
                reset_n=>XLXN_88,
                rx_data_request=>XLXN_85,
                sclk=>CD_SCLK,
                ss_n=>CD_SS_N,
                tx_data(7 downto 0)=>XLXN_82(7 downto 0),
                tx_data_load_en=>XLXN_83,
                busy=>XLXN_81,
                miso=>CD_MISO_DUMMY,
                rx_data(7 downto 0)=>XLXN_84(7 downto 0));
   
   CM_SPI_master : SPI_master
      port map (clk=>CLK,
                miso=>MODULE_MISO,
                reset_n=>XLXN_88,
                slave_addr(3 downto 0)=>XLXN_89(3 downto 0),
                tr_enable=>XLXN_92,
                tx_data(7 downto 0)=>XLXN_93(7 downto 0),
                busy=>XLXN_90,
                mosi=>MODULE_MOSI,
                rx_data(7 downto 0)=>XLXN_91(7 downto 0),
                sclk=>MODULE_SCLK,
                ss_n(14 downto 0)=>MODULE_SS_N(14 downto 0));
   
   Control_module_core : Control_module
      port map (cd_spi_busy=>XLXN_81,
                clk=>CLK,
                data_from_cd(7 downto 0)=>XLXN_84(7 downto 0),
                data_from_module(7 downto 0)=>XLXN_91(7 downto 0),
                data_from_ss(7 downto 0)=>XLXN_79(7 downto 0),
                module_spi_busy=>XLXN_90,
                ss_spi_busy=>XLXN_76,
                data_to_cd(7 downto 0)=>XLXN_82(7 downto 0),
                data_to_module(7 downto 0)=>XLXN_93(7 downto 0),
                data_to_ss(7 downto 0)=>XLXN_77(7 downto 0),
                load_data_to_cd=>XLXN_83,
                load_data_to_ss=>XLXN_78,
                module_number(3 downto 0)=>XLXN_89(3 downto 0),
                module_tr_enable=>XLXN_92,
                request_data_from_cd=>XLXN_85,
                request_data_from_ss=>XLXN_80,
                spi_reset_n=>XLXN_88);
   
   State_SPI_slave : SPI_slave
      port map (mosi=>CD_MOSI,
                reset_n=>XLXN_88,
                rx_data_request=>XLXN_80,
                sclk=>CD_SCLK,
                ss_n=>ST_SS_N,
                tx_data(7 downto 0)=>XLXN_77(7 downto 0),
                tx_data_load_en=>XLXN_78,
                busy=>XLXN_76,
                miso=>CD_MISO_DUMMY,
                rx_data(7 downto 0)=>XLXN_79(7 downto 0));
   
end BEHAVIORAL;


