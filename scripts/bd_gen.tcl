# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Create project
create_project zynq ./zynq -part xc7z020clg484-1

# setup up custom ip repository location
set_property ip_repo_paths {../cip/bft ../cip/rgb_mux} [current_fileset]
update_ip_catalog

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects zynq]
set_property "board_part" "xilinx.com:zc702:part0:1.0" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj

puts "INFO: Project created:zynq"

# Source the bd.tcl file to create the bd with custom ip module
# first get the major.minor version of the tool - and source
# the bd creation script that corresponds to the current tool version
set currVer [join [lrange [split [version -short] "."] 0 1] "."]
puts "Current Version $currVer"
if {$currVer eq "2014.3"} {
   source $thisDir/bd_cip_2014_3.tcl
} elseif {$currVer eq "2014.4"} {
   source $thisDir/bd_cip_2014_4.tcl
} elseif {$currVer eq "2015.1"} {
   source $thisDir/bd_cip_2015_1.tcl
} else {
   # this script will only work with 2014.2, everything else will fail
   source $thisDir/bd_cip.tcl
}
validate_bd_design
save_bd_design

# Generate Target
create_fileset -blockset -define_from zynq_bd zynq_bd
generate_target all [get_files */zynq_bd.bd]
launch_runs zynq_bd_synth_1
wait_on_run zynq_bd_synth_1 

# if everything is successful "touch" a file so make will not it's done
touch {.bd_gen.done}
