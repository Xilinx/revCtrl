# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# script will be sourced from work directory
# output created in ip directory
set ipDir ./ip
