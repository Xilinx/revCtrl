RTL=../hdl/threeFlop/threeFlop.v
XDC=../xdc/top.xdc
IP=../ip/axi_iic_0/axi_iic_0.xci
DSP=../dsp/module_1_ext/module_1.slx
BD=../bd/zynq_bd/zynq_bd.bd
CIP=../hdl/bft/bft.vhdl
HLS=../hls/rgb_mux.cpp ../hls/rgb_mux.h

all : hls cip ip setup bd_gen compile

compile : .compile.done
.compile.done : .bd_gen.done
	cmd /c "vivado -mode batch -source ../scripts/compile.tcl -log compile.log -jou compile.jou"

# This setups up the top level project
setup : .setup.done
.setup.done : $(RTL) $(XDC) $(IP) $(DSP) $(BD)
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl -log setup.log -jou setup.jou"

# This generates the Zynq subystem block diagram
bd_gen : .bd_gen.done
.bd_gen.done : .cip.done .hls.done
	cmd /c "vivado -mode batch -source ../scripts/bd_gen.tcl -log bd_gen.log -jou bd_gen.jou"

# This generates the managed IP project and generates the IP for AXI_IIC
ip : .ip.done
.ip.done :
	cmd /c "vivado -mode batch -source ../scripts/ip.tcl -log ip.log -jou ip.jou"

# This generates the packaged RTL for bft to be integrated into IPI
cip : .cip.done
.cip.done : $(CIP)
	cmd /c "vivado -mode batch -source ../scripts/cip.tcl -log cip.log -jou cip.jou"

# This calls HLS and generates the rgb_mux IP packaged for IPI
hls : .hls.done
.hls.done : $(HLS)
	cmd /c "vivado_hls -f ../scripts/hls.tcl -l hls.log"

clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
