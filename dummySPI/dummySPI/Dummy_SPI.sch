<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(7:0)" />
        <signal name="SCLK" />
        <signal name="MOSI" />
        <signal name="MISO" />
        <signal name="CLK" />
        <signal name="BUSY" />
        <signal name="RX_DATA_REQ" />
        <signal name="RX_DATA(7:0)" />
        <signal name="XLXN_4" />
        <signal name="SS_N" />
        <port polarity="Input" name="SCLK" />
        <port polarity="Input" name="MOSI" />
        <port polarity="Output" name="MISO" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="BUSY" />
        <port polarity="Output" name="RX_DATA(7:0)" />
        <port polarity="Input" name="SS_N" />
        <blockdef name="SPI_slave">
            <timestamp>2017-5-20T10:37:22</timestamp>
            <rect width="320" x="64" y="-448" height="344" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="64" y1="-288" y2="-288" x1="0" />
            <line x2="384" y1="-416" y2="-416" x1="448" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="448" y1="-368" y2="-368" x1="384" />
            <line x2="384" y1="-304" y2="-304" x1="448" />
            <rect width="64" x="384" y="-316" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <rect width="64" x="384" y="-204" height="24" />
            <line x2="448" y1="-192" y2="-192" x1="384" />
            <line x2="384" y1="-144" y2="-144" x1="448" />
        </blockdef>
        <blockdef name="Counter">
            <timestamp>2017-5-20T10:41:3</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="SPI_slave" name="SPI_slave_ins">
            <blockpin signalname="SCLK" name="sclk" />
            <blockpin signalname="MOSI" name="mosi" />
            <blockpin signalname="SS_N" name="ss_n" />
            <blockpin signalname="RX_DATA_REQ" name="rx_data_request" />
            <blockpin signalname="RX_DATA_REQ" name="tx_data_load_en" />
            <blockpin signalname="RX_DATA_REQ" name="reset_n" />
            <blockpin signalname="XLXN_2(7:0)" name="tx_data(7:0)" />
            <blockpin signalname="MISO" name="miso" />
            <blockpin signalname="BUSY" name="busy" />
            <blockpin signalname="RX_DATA(7:0)" name="rx_data(7:0)" />
        </block>
        <block symbolname="Counter" name="Counter_ins">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="BUSY" name="spi_busy" />
            <blockpin signalname="RX_DATA_REQ" name="reset_n" />
            <blockpin name="tx_data_load_en" />
            <blockpin signalname="XLXN_2(7:0)" name="tx_data(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_1">
            <blockpin signalname="RX_DATA_REQ" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="1712" name="SPI_slave_ins" orien="R0">
        </instance>
        <instance x="1472" y="1392" name="Counter_ins" orien="R0">
        </instance>
        <branch name="XLXN_2(7:0)">
            <wire x2="1280" y1="1408" y2="1408" x1="1200" />
            <wire x2="1280" y1="1408" y2="1536" x1="1280" />
            <wire x2="1968" y1="1536" y2="1536" x1="1280" />
            <wire x2="1968" y1="1360" y2="1360" x1="1856" />
            <wire x2="1968" y1="1360" y2="1536" x1="1968" />
        </branch>
        <branch name="SCLK">
            <wire x2="752" y1="1296" y2="1296" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="1296" name="SCLK" orien="R180" />
        <branch name="MOSI">
            <wire x2="752" y1="1360" y2="1360" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="1360" name="MOSI" orien="R180" />
        <branch name="MISO">
            <wire x2="752" y1="1424" y2="1424" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="1424" name="MISO" orien="R180" />
        <branch name="CLK">
            <wire x2="1456" y1="1104" y2="1104" x1="1408" />
            <wire x2="1456" y1="1104" y2="1296" x1="1456" />
            <wire x2="1472" y1="1296" y2="1296" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1104" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1408" y="816" name="BUSY" orien="R0" />
        <branch name="RX_DATA_REQ">
            <wire x2="1376" y1="1296" y2="1296" x1="1200" />
            <wire x2="1376" y1="1296" y2="1424" x1="1376" />
            <wire x2="1376" y1="1424" y2="1456" x1="1376" />
            <wire x2="1376" y1="1456" y2="1568" x1="1376" />
            <wire x2="1376" y1="1568" y2="1712" x1="1376" />
            <wire x2="1376" y1="1712" y2="1776" x1="1376" />
            <wire x2="1472" y1="1424" y2="1424" x1="1376" />
            <wire x2="1376" y1="1456" y2="1456" x1="1200" />
            <wire x2="1376" y1="1568" y2="1568" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1712" name="RX_DATA(7:0)" orien="R90" />
        <branch name="BUSY">
            <wire x2="1280" y1="1344" y2="1344" x1="1200" />
            <wire x2="1280" y1="1344" y2="1360" x1="1280" />
            <wire x2="1472" y1="1360" y2="1360" x1="1280" />
            <wire x2="1280" y1="816" y2="1344" x1="1280" />
            <wire x2="1408" y1="816" y2="816" x1="1280" />
        </branch>
        <branch name="RX_DATA(7:0)">
            <wire x2="1216" y1="1520" y2="1520" x1="1200" />
            <wire x2="1216" y1="1520" y2="1648" x1="1216" />
            <wire x2="1216" y1="1648" y2="1664" x1="1216" />
            <wire x2="1216" y1="1664" y2="1680" x1="1216" />
            <wire x2="1216" y1="1680" y2="1712" x1="1216" />
        </branch>
        <instance x="1440" y="1776" name="XLXI_1" orien="R180" />
        <branch name="SS_N">
            <wire x2="752" y1="1488" y2="1488" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="1488" name="SS_N" orien="R180" />
    </sheet>
</drawing>