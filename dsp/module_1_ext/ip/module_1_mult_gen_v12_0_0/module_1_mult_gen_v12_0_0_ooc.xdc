# This constraints file contains default clock frequencies to be used during out-of-context flows such as
# OOC Synthesis and Hierarchical Designs. For best results the frequencies should be modified
# to match the target frequencies.
# This constraints file is not used in normal top-down synthesis.

create_clock -name CLK -period 10 [get_ports CLK]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports CLK]
