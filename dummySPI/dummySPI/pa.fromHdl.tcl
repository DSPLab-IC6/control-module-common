
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name dummySPI -dir "F:/dummySPI/dummySPI/planAhead_run_1" -part xc3s500efg320-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Dummy_SPI.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {spi_slave.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Counter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Dummy_SPI.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Dummy_SPI $srcset
add_files [list {Dummy_SPI.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-5
