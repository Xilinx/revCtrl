# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source -notrace $thisDir/utils.tcl

open_project rgb_mux
set_top rgb_mux
add_files ../hls/rgb_mux.cpp
open_solution "solution_zc702"
set_part {xc7z020clg484-1}
create_clock -period 5.0 -name default
set_clock_uncertainty 1.0
source "../hls/directives.tcl"
#csim_design
csynth_design
#cosim_design -trace_level none -rtl verilog -tool auto
export_design -format ip_catalog -description "rgb_mux" -version "2.3" -display_name "rgb_mux"

# if everything is successful "touch" a file so make will not it's done
touch {.hls.done}

exit
