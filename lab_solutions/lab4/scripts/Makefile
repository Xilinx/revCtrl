RTL=../hdl/threeFlop/threeFlop.v
XDC=../xdc/top.xdc
BFT_SRC=../hdl/bft/* ../hdl/bft/bftLib/*


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

cip : .bft_cip.done
.bft_cip.done : $(BFT_SRC)
	cmd /c "vivado -mode batch -source ../scripts/bft_cip.tcl -log bft_cip.log -jou bft_cip.jou"

clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
