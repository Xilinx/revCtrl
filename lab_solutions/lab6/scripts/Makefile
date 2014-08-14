RTL=../hdl/top/top.v ../hdl/threeFlop/threeFlop.v ../hdl/top/shift.v ../hdl/top/iicWrapper.v
XDC=../xdc/top.xdc
IP=../ip/axi_iic_0/axi_iic_0.xci
BD=../bd/zynq_bd/zynq_bd.bd
BFT_SRC=../hdl/bft/* ../hdl/bft/bftLib/*
HLS=../hls/rgb_mux.cpp ../hls/rgb_mux.h
DSP=../dsp/module_1_ext/module_1.slx

all : setup compile ip hls bd_gen cip hls

setup : .setup.done
.setup.done : $(RTL) $(XDC) $(IP) $(BD)
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl -log setup.log -jou setup.jou"


compile : .compile.done
.compile.done : setup
	cmd /c "vivado -mode batch -source ../scripts/compile.tcl -log compile.log -jou compile.jou"


ip : .ip.done
.ip.done :
	cmd /c "vivado -mode batch -source ../scripts/ip.tcl -log ip.log -jou ip.jou"


bd_gen : .bd_done
.bd_done :
	cmd /c "vivado -mode batch -source ../scripts/bd_gen.tcl -log bd_gen.log -jou bd_gen.jou"


cip : .bft_cip.done
.bft_cip.done : $(BFT_SRC)
	cmd /c "vivado -mode batch -source ../scripts/bft_cip.tcl -log bft_cip.log -jou bft_cip.jou"


hls : .hls.done
.hls.done : $(HLS)
	cmd /c "vivado_hls -f ../scripts/hls.tcl -l hls.log"


clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
