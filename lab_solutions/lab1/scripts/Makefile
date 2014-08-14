RTL=../hdl/top/top.v ../hdl/threeFlop/threeFlop.v
XDC=../xdc/top.xdc


setup : .setup.done

.setup.done : $(RTL) $(XDC)
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl"


compile : .compile.done

.compile.done : setup
	cmd /c "vivado -mode batch -source ../scripts/compile.tcl"

clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
