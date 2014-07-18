all : .setup.done .gen.done .compile.done

.compile.done : .setup.done
	cmd /c "vivado -mode batch -source ../scripts/compile.tcl"

.setup.done : ../hdl/top/threeFlop.v ../xdc/top.xdc
	cmd /c "vivado -mode batch -source ../scripts/setup.tcl"

clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
