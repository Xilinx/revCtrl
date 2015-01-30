# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# set this variable to 1 to reuse the latest "golden"
# sources checked into revision control repository
# and set it to 0 to use the local users "sandbox"
# which is rebuilt from scratch
set reuseGolden 1

# these variables point to the root directory location
# of various source types - change this to point to 
# any diretory location accessible to the machine
set repoRoot ../
set localRoot ./
set hdlRoot $repoRoot/hdl
set xdcRoot $repoRoot/xdc
set dspRoot $repoRoot/dsp
if {$reuseGolden} {
   # point to the golden repo
   set ipRoot $repoRoot/ip
   set bdRoot $repoRoot/bd
} else {
   # point to the local sandbox repo
   set ipRoot $localRoot/ip
   set bdRoot $localRoot
}

# Create project
create_project top ./top/ -part xc7z020clg484-1

# Set project properties
set obj [get_projects top]
set_property "board_part" "xilinx.com:zc702:part0:1.0" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj

# setup up custom ip repository location
set_property ip_repo_paths {../cip/bft ../cip/rgb_mux} [current_fileset]
update_ip_catalog

add_files -norecurse $hdlRoot/top/top.v
add_files -norecurse $hdlRoot/top/iicWrapper.v
add_files -norecurse $hdlRoot/top/shift.v
add_files -norecurse $hdlRoot/threeFlop/threeFlop.v
add_files -norecurse $xdcRoot/top.xdc
add_files -norecurse $xdcRoot/top_io.xdc
add_files -norecurse $ipRoot/axi_iic_0/axi_iic_0.xci
add_files -norecurse $dspRoot/module_1_ext/module_1.slx
add_files -norecurse $bdRoot/zynq_bd/zynq_bd.bd

update_compile_order -fileset sources_1
set_property SOURCE_SET sources_1 [get_filesets sim_1]
add_files -fileset sim_1 -norecurse ../tb/hdl_zynq/tb.v
update_compile_order -fileset sim_1

# if everything is successful "touch" a file so make will not it's done
touch {.setup.done}
