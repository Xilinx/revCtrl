RTL=../hdl/threeFlop/threeFlop.v

XDC=../xdc/top.xdc

IP=../ip/axi_chip2chip_0/axi_chip2chip_0.xci

DSP=../dsp/module_1_ext/module_1.slx

all : setup ip gen compile

compile : .compile.done

.compile.done : .gen.done
	cmd /c "vivado -mode batch -source ../scripts/compile.tcl"

gen : .gen.done

.gen.done : 
	cmd /c "vivado -mode batch -source ../scripts/gen.tcl"

setup : .setup.done

.setup.done : $(RTL) $(XDC) $(IP) $(DSP)
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl"

ip : .ip.done

.ip.done :
	cmd /c "vivado -mode batch -source ../scripts/ip.tcl"

clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
