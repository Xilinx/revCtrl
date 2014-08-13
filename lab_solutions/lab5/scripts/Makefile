RTL=../hdl/threeFlop/threeFlop.v
XDC=../xdc/top.xdc
CIP=../hdl/bft/* ../hdl/bft/bftLib/*
HLS=../hls/rgb_mux.cpp ../hls/rgb_mux.h


setup : .setup.done

.setup.done : $(RTL) $(XDC)
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl"


compile : .compile.done

.compile.done : setup
	cmd /c "vivado -mode batch -source ../scripts/compile.tcl"

ip : .ip.done
.ip.done :
	cmd /c "vivado -mode batch -source ../scripts/ip.tcl -log ip.log -jou ip.jou"

bd_gen : .bd_done
.bd_done :
	cmd /c "vivado -mode batch -source ../scripts/bd_gen.tcl -log bd_gen.log -jou bd_gen.jou"

cip : .cip.done
.cip.done : $(CIP)
	cmd /c "vivado -mode batch -source ../scripts/cip.tcl -log cip.log -jou cip.jou"

hls : .hls.done
.hls.done : $(HLS)
	cmd /c "vivado_hls -f ../scripts/hls.tcl -l hls.log"

clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
