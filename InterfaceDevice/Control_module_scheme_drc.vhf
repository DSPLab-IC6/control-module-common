--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.1
--  \   \         Application : sch2hdl
--  /   /         Filename : Control_module_scheme_drc.vhf
-- /___/   /\     Timestamp : 05/27/2017 16:00:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: H:\Xilinx\14.1\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl Control_module_scheme_drc.vhf -w H:/diplom2017/InterfaceDevice/Control_module_scheme.sch
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
          CD_MISO     : out   std_logic; 
          MODULE_MOSI : out   std_logic; 
          MODULE_SCLK : out   std_logic; 
          MODULE_SS_N : out   std_logic_vector (14 downto 0));
end Control_module_scheme;

architecture BEHAVIORAL of Control_module_scheme is
   signal XLXN_1      : std_logic;
   signal XLXN_4      : std_logic_vector (7 downto 0);
   signal XLXN_5      : std_logic;
   signal XLXN_6      : std_logic_vector (7 downto 0);
   signal XLXN_8      : std_logic;
   signal XLXN_9      : std_logic;
   signal XLXN_11     : std_logic_vector (7 downto 0);
   signal XLXN_15     : std_logic;
   signal XLXN_16     : std_logic;
   signal XLXN_17     : std_logic_vector (7 downto 0);
   signal XLXN_18     : std_logic_vector (3 downto 0);
   component SPI_slave
      port ( sclk            : in    std_logic; 
             mosi            : in    std_logic; 
             miso            : out   std_logic; 
             reset_n         : in    std_logic; 
             ss_n            : in    std_logic; 
             busy            : out   std_logic; 
             tx_data         : in    std_logic_vector (7 downto 0); 
             tx_data_load_en : in    std_logic; 
             rx_data         : out   std_logic_vector (7 downto 0); 
             rx_data_request : in    std_logic);
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
      port ( cd_spi_busy          : in    std_logic; 
             module_spi_busy      : in    std_logic; 
             clk                  : in    std_logic; 
             data_from_cd         : in    std_logic_vector (7 downto 0); 
             data_from_module     : in    std_logic_vector (7 downto 0); 
             request_data_from_cd : out   std_logic; 
             load_data_to_cd      : out   std_logic; 
             spi_reset            : out   std_logic; 
             module_tr_enable     : out   std_logic; 
             data_to_cd           : out   std_logic_vector (7 downto 0); 
             data_to_module       : out   std_logic_vector (7 downto 0); 
             module_number        : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   CD_SPI_slave : SPI_slave
      port map (mosi=>CD_MOSI,
                reset_n=>XLXN_8,
                rx_data_request=>XLXN_1,
                sclk=>CD_SCLK,
                ss_n=>CD_SS_N,
                tx_data(7 downto 0)=>XLXN_6(7 downto 0),
                tx_data_load_en=>XLXN_5,
                busy=>XLXN_9,
                miso=>CD_MISO,
                rx_data(7 downto 0)=>XLXN_4(7 downto 0));
   
   CM_SPI_master : SPI_master
      port map (clk=>CLK,
                miso=>MODULE_MISO,
                reset_n=>XLXN_5,
                slave_addr(3 downto 0)=>XLXN_18(3 downto 0),
                tr_enable=>XLXN_15,
                tx_data(7 downto 0)=>XLXN_11(7 downto 0),
                busy=>XLXN_16,
                mosi=>MODULE_MOSI,
                rx_data(7 downto 0)=>XLXN_17(7 downto 0),
                sclk=>MODULE_SCLK,
                ss_n(14 downto 0)=>MODULE_SS_N(14 downto 0));
   
   Control_module_core : Control_module
      port map (cd_spi_busy=>XLXN_9,
                clk=>CLK,
                data_from_cd(7 downto 0)=>XLXN_4(7 downto 0),
                data_from_module(7 downto 0)=>XLXN_17(7 downto 0),
                module_spi_busy=>XLXN_16,
                data_to_cd(7 downto 0)=>XLXN_6(7 downto 0),
                data_to_module(7 downto 0)=>XLXN_11(7 downto 0),
                load_data_to_cd=>XLXN_5,
                module_number(3 downto 0)=>XLXN_18(3 downto 0),
                module_tr_enable=>XLXN_15,
                request_data_from_cd=>XLXN_1,
                spi_reset=>XLXN_8);
   
end BEHAVIORAL;


