RTL=../hdl/threeFlop/threeFlop.v
XDC=../xdc/top.xdc


setup : .setup.done

.setup.done : $(RTL) $(XDC)
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl"
