# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# The following Tcl commands are from the Vivado HLS script.tcl file
open_project rgb_mux
set_top rgb_mux
add_files ../hls/rgb_mux.cpp
open_solution "solution_zc702"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
set_clock_uncertainty 1
source "../scripts/hls_directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog -description "rgb_mux" -display_name "rgb_mux"

# This is for make to indicate the hls target is complete
touch {.hls.done}

# needed to exit from Vivado HLS
exit
