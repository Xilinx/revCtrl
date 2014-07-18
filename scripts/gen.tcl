# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Create project
open_project ./top/top.xpr

generate_target all [get_files *.bd]

# if everything is successful "touch" a file so make will not it's done
touch {.gen.done}
