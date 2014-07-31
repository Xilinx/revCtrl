# this is a collection of useful project utilities

# implement touch - opens a file updating the time stamp,
# creating it if it does not exist
proc touch {f} {
   set FILEIN [open $f w]
   close $FILEIN
}
