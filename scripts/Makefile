# these are the sources - everything depends upon them
RTL=../hdl/top/top.v ../hdl/threeFlop/threeFlop.v ../hdl/top/shift.v ../hdl/top/iicWrapper.v
XDC=../xdc/top.xdc ../xdc/top_io.xdc
IP=../ip/axi_iic_0/axi_iic_0.xci
DSP=../dsp/module_1_0/module_1_0.xci
BD=../bd/zynq_bd/zynq_bd.bd
CIP=../hdl/bft/bft.vhdl
HLS=../hls/rgb_mux.cpp ../hls/rgb_mux.h

# compile options - do you want to reuse previous "golden" sources
# or rebuild everything from scratch locally from scripts
# set this TRUE to reuse sources from golden repo
# set this to anything else to rebuild everything from scripts
REUSEGOLDEN = FALSE

# if reusing golden data you do not need to wait for bd and ip generation
ifeq ($(REUSEGOLDEN), TRUE)
SETUPUDEPS =  $(RTL) $(XDC) $(IP) $(DSP) $(BD)
SETUPOPS = -source ../scripts/setup.tcl -log setup.log -jou setup.jou -tclargs reuseGolden
CIPOPS = -source ../scripts/cip.tcl -log cip.log -jou cip.jou -tclargs reuseGolden
else
SETUPDEPS =  $(RTL) $(XDC) $(IP) $(DSP) $(BD) .bd_gen.done .ip.done
SETUPOPS = -source ../scripts/setup.tcl -log setup.log -jou setup.jou
CIPOPS = -source ../scripts/cip.tcl -log cip.log -jou cip.jou
endif

# Common Vivado options
VIVADOCOMOPS = -mode batch

# determine the OS shell - this make file should work on both linux and windows
UNAME := $(shell uname)

# on windows you have to prefix vivado call with a cmd shell with /c
ifeq ($(UNAME), Linux)
PREFIX = ""
POSTFIX = ""
else
PREFIX = cmd /c "
POSTFIX = "
endif

# These are all the compilation targets, starting with "all"
all : setup compile

# This setups up the top level project
setup : .setup.done
.setup.done : $(SETUPDEPS)
	$(PREFIX) vivado $(VIVADOCOMOPS) $(SETUPOPS) $(POSTFIX)

compile : .compile.done
.compile.done : .setup.done
	$(PREFIX) vivado $(VIVADOCOMOPS) -source ../scripts/compile.tcl -log compile.log -jou compile.jou $(POSTFIX)

# This generates the Zynq subystem block diagram
bd_gen : .bd_gen.done
.bd_gen.done : .cip.done .hls.done
	$(PREFIX) vivado $(VIVADOCOMOPS) -source ../scripts/bd_gen.tcl -log bd_gen.log -jou bd_gen.jou $(POSTFIX)

# This generates the managed IP project and generates the IP for AXI_IIC
ip : .ip.done
.ip.done :
	$(PREFIX) vivado $(VIVADOCOMOPS) -source ../scripts/ip.tcl -log ip.log -jou ip.jou $(POSTFIX)

# This generates the packaged RTL for bft to be integrated into IPI
cip : .cip.done
.cip.done : $(CIP)
	$(PREFIX) vivado $(VIVADOCOMOPS) $(CIPOPS) $(POSTFIX)

# This calls HLS and generates the rgb_mux IP packaged for IPI
hls : .hls.done
.hls.done : $(HLS)
	$(PREFIX) vivado_hls -f ../scripts/hls.tcl -l hls.log $(POSTFIX)

# delete everything except this Makefile
clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
