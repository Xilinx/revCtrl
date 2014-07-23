# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# part xc7z020clg484-1

# if everything is successful "touch" a file so make will not it's done
touch {.setup.done}
