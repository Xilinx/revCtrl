RTL= ../hdl/threeFlop/threeFlop.v
XDC=../xdc/top.xdc
IP=../ip/axi_iic_0/axi_iic_0.xci

#compile : .compile.done
#.compile.done : .bd_gen.done
#	cmd /c "vivado -mode batch -source ../scripts/compile.tcl -log compile.log -jou compile.jou"

## This setups up the top level project
#setup : .setup.done
#.setup.done : $(RTL) $(XDC) $(IP)
#	cmd /c "vivado -mode batch -source ../scripts/setup.tcl -log setup.log -jou setup.jou"

# This generates the managed IP project and generates the IP for AXI_IIC
ip : .ip.done
.ip.done :
	cmd /c "vivado -mode batch -source ../scripts/ip.tcl -log ip.log -jou ip.jou"


clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
