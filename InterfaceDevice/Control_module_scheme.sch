<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CD_MOSI" />
        <signal name="CD_MISO" />
        <signal name="CD_SCLK" />
        <signal name="CD_SS_N" />
        <signal name="ST_SS_N" />
        <signal name="CLK" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77(7:0)" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79(7:0)" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82(7:0)" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84(7:0)" />
        <signal name="XLXN_85" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89(3:0)" />
        <signal name="XLXN_91(7:0)" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93(7:0)" />
        <signal name="MODULE_SCLK" />
        <signal name="MODULE_MOSI" />
        <signal name="MODULE_MISO" />
        <signal name="MODULE_SS_N(14:0)" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <port polarity="Input" name="CD_MOSI" />
        <port polarity="Output" name="CD_MISO" />
        <port polarity="Input" name="CD_SCLK" />
        <port polarity="Input" name="CD_SS_N" />
        <port polarity="Input" name="ST_SS_N" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="MODULE_SCLK" />
        <port polarity="Output" name="MODULE_MOSI" />
        <port polarity="Input" name="MODULE_MISO" />
        <port polarity="Output" name="MODULE_SS_N(14:0)" />
        <blockdef name="Control_module">
            <timestamp>2017-6-12T7:43:11</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="64" y1="144" y2="144" x1="0" />
            <rect width="64" x="0" y="132" height="24" />
            <line x2="64" y1="192" y2="192" x1="0" />
            <line x2="0" y1="240" y2="240" x1="64" />
            <rect width="64" x="0" y="228" height="24" />
            <line x2="64" y1="288" y2="288" x1="0" />
            <line x2="0" y1="368" y2="368" x1="64" />
            <line x2="64" y1="464" y2="464" x1="0" />
            <line x2="64" y1="416" y2="416" x1="0" />
            <rect width="64" x="0" y="404" height="24" />
            <line x2="64" y1="560" y2="560" x1="0" />
            <line x2="0" y1="512" y2="512" x1="64" />
            <rect width="64" x="0" y="500" height="24" />
            <line x2="64" y1="640" y2="640" x1="0" />
            <rect width="64" x="688" y="84" height="24" />
            <line x2="752" y1="96" y2="96" x1="688" />
            <rect width="64" x="688" y="132" height="24" />
            <line x2="752" y1="144" y2="144" x1="688" />
            <line x2="752" y1="192" y2="192" x1="688" />
            <line x2="688" y1="240" y2="240" x1="752" />
            <rect width="64" x="688" y="228" height="24" />
            <rect width="624" x="64" y="0" height="680" />
            <line x2="752" y1="288" y2="288" x1="688" />
            <line x2="688" y1="336" y2="336" x1="752" />
        </blockdef>
        <blockdef name="SPI_slave">
            <timestamp>2017-5-30T19:13:11</timestamp>
            <rect width="320" x="64" y="-448" height="344" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="64" y1="-288" y2="-288" x1="0" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-352" y2="-352" x1="448" />
            <rect width="64" x="384" y="-364" height="24" />
            <line x2="384" y1="-304" y2="-304" x1="448" />
            <rect width="64" x="384" y="-252" height="24" />
            <line x2="448" y1="-240" y2="-240" x1="384" />
            <line x2="384" y1="-192" y2="-192" x1="448" />
            <line x2="384" y1="-144" y2="-144" x1="448" />
        </blockdef>
        <blockdef name="SPI_master">
            <timestamp>2017-6-12T7:38:57</timestamp>
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-304" y2="-304" x1="320" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-220" height="24" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-144" y2="-144" x1="0" />
            <rect width="64" x="0" y="-156" height="24" />
            <rect width="64" x="0" y="-316" height="24" />
            <line x2="0" y1="-304" y2="-304" x1="64" />
            <rect width="256" x="64" y="-384" height="416" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="0" />
            <line x2="0" y1="0" y2="0" x1="64" />
        </blockdef>
        <block symbolname="Control_module" name="Control_module_core">
            <blockpin signalname="XLXN_81" name="cd_spi_busy" />
            <blockpin signalname="XLXN_76" name="ss_spi_busy" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_84(7:0)" name="data_from_cd(7:0)" />
            <blockpin signalname="XLXN_79(7:0)" name="data_from_ss(7:0)" />
            <blockpin signalname="XLXN_91(7:0)" name="data_from_module(7:0)" />
            <blockpin signalname="XLXN_85" name="request_data_from_cd" />
            <blockpin signalname="XLXN_83" name="load_data_to_cd" />
            <blockpin signalname="XLXN_80" name="request_data_from_ss" />
            <blockpin signalname="XLXN_78" name="load_data_to_ss" />
            <blockpin signalname="XLXN_92" name="module_tr_enable" />
            <blockpin signalname="XLXN_100" name="spi_reset_n" />
            <blockpin signalname="XLXN_82(7:0)" name="data_to_cd(7:0)" />
            <blockpin signalname="XLXN_77(7:0)" name="data_to_ss(7:0)" />
            <blockpin signalname="XLXN_89(3:0)" name="module_number(3:0)" />
            <blockpin signalname="XLXN_93(7:0)" name="data_to_module(7:0)" />
            <blockpin signalname="XLXN_101" name="request_data_from_module" />
            <blockpin signalname="XLXN_102" name="module_spi_busy" />
        </block>
        <block symbolname="SPI_slave" name="State_SPI_slave">
            <blockpin signalname="CD_SCLK" name="sclk" />
            <blockpin signalname="CD_MOSI" name="mosi" />
            <blockpin signalname="CD_MISO" name="miso" />
            <blockpin signalname="ST_SS_N" name="ss_n" />
            <blockpin signalname="XLXN_76" name="busy" />
            <blockpin signalname="XLXN_77(7:0)" name="tx_data(7:0)" />
            <blockpin signalname="XLXN_78" name="tx_data_load_en" />
            <blockpin signalname="XLXN_79(7:0)" name="rx_data(7:0)" />
            <blockpin signalname="XLXN_80" name="rx_data_request" />
            <blockpin signalname="XLXN_100" name="reset_n" />
        </block>
        <block symbolname="SPI_slave" name="CD_SPI_slave">
            <blockpin signalname="CD_SCLK" name="sclk" />
            <blockpin signalname="CD_MOSI" name="mosi" />
            <blockpin signalname="CD_MISO" name="miso" />
            <blockpin signalname="CD_SS_N" name="ss_n" />
            <blockpin signalname="XLXN_81" name="busy" />
            <blockpin signalname="XLXN_82(7:0)" name="tx_data(7:0)" />
            <blockpin signalname="XLXN_83" name="tx_data_load_en" />
            <blockpin signalname="XLXN_84(7:0)" name="rx_data(7:0)" />
            <blockpin signalname="XLXN_85" name="rx_data_request" />
            <blockpin signalname="XLXN_100" name="reset_n" />
        </block>
        <block symbolname="SPI_master" name="CM_SPI_master">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="MODULE_MISO" name="miso" />
            <blockpin signalname="XLXN_92" name="tr_enable" />
            <blockpin signalname="XLXN_93(7:0)" name="tx_data(7:0)" />
            <blockpin signalname="XLXN_89(3:0)" name="slave_addr(3:0)" />
            <blockpin signalname="MODULE_SCLK" name="sclk" />
            <blockpin signalname="MODULE_MOSI" name="mosi" />
            <blockpin signalname="MODULE_SS_N(14:0)" name="ss_n(14:0)" />
            <blockpin signalname="XLXN_91(7:0)" name="rx_data(7:0)" />
            <blockpin signalname="XLXN_101" name="rx_data_request" />
            <blockpin signalname="XLXN_102" name="busy" />
            <blockpin signalname="XLXN_100" name="reset_n" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CD_MOSI">
            <wire x2="336" y1="944" y2="944" x1="256" />
            <wire x2="512" y1="944" y2="944" x1="336" />
            <wire x2="512" y1="416" y2="416" x1="336" />
            <wire x2="336" y1="416" y2="944" x1="336" />
        </branch>
        <branch name="CD_MISO">
            <wire x2="368" y1="1008" y2="1008" x1="256" />
            <wire x2="512" y1="1008" y2="1008" x1="368" />
            <wire x2="512" y1="480" y2="480" x1="368" />
            <wire x2="368" y1="480" y2="1008" x1="368" />
        </branch>
        <branch name="CD_SCLK">
            <wire x2="304" y1="880" y2="880" x1="256" />
            <wire x2="512" y1="880" y2="880" x1="304" />
            <wire x2="512" y1="352" y2="352" x1="304" />
            <wire x2="304" y1="352" y2="880" x1="304" />
        </branch>
        <branch name="CD_SS_N">
            <wire x2="512" y1="1072" y2="1072" x1="256" />
        </branch>
        <instance x="1328" y="448" name="Control_module_core" orien="R0">
        </instance>
        <instance x="512" y="768" name="State_SPI_slave" orien="R0">
        </instance>
        <instance x="512" y="1296" name="CD_SPI_slave" orien="R0">
        </instance>
        <iomarker fontsize="28" x="256" y="880" name="CD_SCLK" orien="R180" />
        <iomarker fontsize="28" x="256" y="944" name="CD_MOSI" orien="R180" />
        <iomarker fontsize="28" x="256" y="1008" name="CD_MISO" orien="R180" />
        <iomarker fontsize="28" x="256" y="1072" name="CD_SS_N" orien="R180" />
        <branch name="ST_SS_N">
            <wire x2="512" y1="544" y2="544" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="544" name="ST_SS_N" orien="R180" />
        <branch name="CLK">
            <wire x2="1312" y1="144" y2="144" x1="1072" />
            <wire x2="1312" y1="144" y2="480" x1="1312" />
            <wire x2="1328" y1="480" y2="480" x1="1312" />
            <wire x2="2144" y1="144" y2="144" x1="1312" />
            <wire x2="2144" y1="144" y2="496" x1="2144" />
            <wire x2="2432" y1="496" y2="496" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="1072" y="144" name="CLK" orien="R180" />
        <branch name="XLXN_76">
            <wire x2="1136" y1="352" y2="352" x1="960" />
            <wire x2="1136" y1="352" y2="544" x1="1136" />
            <wire x2="1328" y1="544" y2="544" x1="1136" />
        </branch>
        <branch name="XLXN_77(7:0)">
            <wire x2="1120" y1="416" y2="416" x1="960" />
            <wire x2="1120" y1="416" y2="592" x1="1120" />
            <wire x2="1328" y1="592" y2="592" x1="1120" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="1104" y1="464" y2="464" x1="960" />
            <wire x2="1104" y1="464" y2="640" x1="1104" />
            <wire x2="1328" y1="640" y2="640" x1="1104" />
        </branch>
        <branch name="XLXN_79(7:0)">
            <wire x2="1088" y1="528" y2="528" x1="960" />
            <wire x2="1088" y1="528" y2="688" x1="1088" />
            <wire x2="1328" y1="688" y2="688" x1="1088" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="1072" y1="576" y2="576" x1="960" />
            <wire x2="1072" y1="576" y2="736" x1="1072" />
            <wire x2="1328" y1="736" y2="736" x1="1072" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="1136" y1="880" y2="880" x1="960" />
            <wire x2="1136" y1="816" y2="880" x1="1136" />
            <wire x2="1328" y1="816" y2="816" x1="1136" />
        </branch>
        <branch name="XLXN_82(7:0)">
            <wire x2="1152" y1="944" y2="944" x1="960" />
            <wire x2="1152" y1="864" y2="944" x1="1152" />
            <wire x2="1328" y1="864" y2="864" x1="1152" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="1168" y1="992" y2="992" x1="960" />
            <wire x2="1168" y1="912" y2="992" x1="1168" />
            <wire x2="1328" y1="912" y2="912" x1="1168" />
        </branch>
        <branch name="XLXN_84(7:0)">
            <wire x2="1184" y1="1056" y2="1056" x1="960" />
            <wire x2="1184" y1="960" y2="1056" x1="1184" />
            <wire x2="1328" y1="960" y2="960" x1="1184" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="1200" y1="1104" y2="1104" x1="960" />
            <wire x2="1200" y1="1008" y2="1104" x1="1200" />
            <wire x2="1328" y1="1008" y2="1008" x1="1200" />
        </branch>
        <branch name="XLXN_89(3:0)">
            <wire x2="2432" y1="544" y2="544" x1="2080" />
        </branch>
        <branch name="XLXN_91(7:0)">
            <wire x2="2160" y1="688" y2="688" x1="2080" />
            <wire x2="2160" y1="688" y2="704" x1="2160" />
            <wire x2="2432" y1="704" y2="704" x1="2160" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="2432" y1="640" y2="640" x1="2080" />
        </branch>
        <branch name="XLXN_93(7:0)">
            <wire x2="2160" y1="592" y2="592" x1="2080" />
            <wire x2="2160" y1="592" y2="608" x1="2160" />
            <wire x2="2432" y1="608" y2="608" x1="2160" />
        </branch>
        <branch name="MODULE_SCLK">
            <wire x2="2880" y1="496" y2="496" x1="2816" />
        </branch>
        <branch name="MODULE_MOSI">
            <wire x2="2880" y1="544" y2="544" x1="2816" />
        </branch>
        <branch name="MODULE_MISO">
            <wire x2="2880" y1="592" y2="592" x1="2816" />
        </branch>
        <branch name="MODULE_SS_N(14:0)">
            <wire x2="2880" y1="640" y2="640" x1="2816" />
        </branch>
        <instance x="2432" y="848" name="CM_SPI_master" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2880" y="640" name="MODULE_SS_N(14:0)" orien="R0" />
        <iomarker fontsize="28" x="2880" y="592" name="MODULE_MISO" orien="R0" />
        <iomarker fontsize="28" x="2880" y="544" name="MODULE_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2880" y="496" name="MODULE_SCLK" orien="R0" />
        <branch name="XLXN_100">
            <wire x2="1024" y1="624" y2="624" x1="960" />
            <wire x2="1024" y1="624" y2="1152" x1="1024" />
            <wire x2="1024" y1="1152" y2="1232" x1="1024" />
            <wire x2="1280" y1="1232" y2="1232" x1="1024" />
            <wire x2="2160" y1="1232" y2="1232" x1="1280" />
            <wire x2="1024" y1="1152" y2="1152" x1="960" />
            <wire x2="1328" y1="1088" y2="1088" x1="1280" />
            <wire x2="1280" y1="1088" y2="1232" x1="1280" />
            <wire x2="2432" y1="848" y2="848" x1="2160" />
            <wire x2="2160" y1="848" y2="1232" x1="2160" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="2432" y1="736" y2="736" x1="2080" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="2160" y1="784" y2="784" x1="2080" />
            <wire x2="2160" y1="784" y2="800" x1="2160" />
            <wire x2="2432" y1="800" y2="800" x1="2160" />
        </branch>
    </sheet>
</drawing>