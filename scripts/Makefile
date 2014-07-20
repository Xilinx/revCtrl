RTL=../hdl/threeFlop/threeFlop.v
XDC=../xdc/top.xdc
IP=../ip/axi_chip2chip_0/axi_chip2chip_0.xci
DSP=../dsp/module_1_ext/module_1.slx
BD=../bd/zynq_1/zynq_1.bd
CIP=../hdl/bft/bft.vhdl
HLS=../hls/rgb_mux.cpp ../hls/rgb_mux.h

all : hls cip ip setup gen compile

compile : .compile.done
.compile.done : .gen.done
	cmd /c "vivado -mode batch -source ../scripts/compile.tcl"

# This setups up the top level project
setup : .setup.done
.setup.done : $(RTL) $(XDC) $(IP) $(DSP) $(BD)
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl"

# This generates the Zynq subystem block diagram
gen : .gen.done
.gen.done : .cip.done .hls.done
	cmd /c "vivado -mode batch -source ../scripts/gen.tcl"

# This generates the managed IP project and generates the IP for AXI_IIC
ip : .ip.done
.ip.done :
	cmd /c "vivado -mode batch -source ../scripts/ip.tcl"

# This generates the packaged RTL for bft to be integrated into IPI
cip : .cip.done
.cip.done : $(CIP)
	cmd /c "vivado -mode batch -source ../scripts/cip.tcl"

# This calls HLS and generates the rgb_mux IP packaged for IPI
hls : .hls.done
.hls.done : $(HLS)
	cmd /c "vivado_hls -f ../scripts/hls.tcl"

clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
