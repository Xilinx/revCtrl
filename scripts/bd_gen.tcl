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

# Source the bd.tcl file to create the bd
#source $thisDir/bd.tcl
# Source the bd.tcl file to create the bd with custom ip module
if {[version -short] eq "2014.4"} {
   source $thisDir/bd_cip_2014_4.tcl
} else {
   source $thisDir/bd_cip.tcl
}
validate_bd_design
save_bd_design

# Generate Target
generate_target all [get_files */zynq_bd.bd]

# if everything is successful "touch" a file so make will not it's done
touch {.bd_gen.done}
