# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Recreate the block design
source $thisDir/bd.tcl

# if everything is successful "touch" a file so make will note it's done
touch {.bd_gen.done}
