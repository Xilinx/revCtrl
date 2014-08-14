RTL=../hdl/top/top.v ../hdl/threeFlop/threeFlop.v ../hdl/top/shift.v ../hdl/top/iicWrapper.v
XDC=../xdc/top.xdc
IP=../ip/axi_iic_0/axi_iic_0.xci


setup : .setup.done
.setup.done : $(RTL) $(XDC) $(IP)
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl -log setup.log -jou setup.jou"


compile : .compile.done
.compile.done : setup
	cmd /c "vivado -mode batch -source ../scripts/compile.tcl -log compile.log -jou compile.jou"


ip : .ip.done
.ip.done :
	cmd /c "vivado -mode batch -source ../scripts/ip.tcl -log ip.log -jou ip.jou"


clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
