BLKDES_PROJ=../zynq_bd_project
BD=$(BLKDES_PROJ)/zynq.srcs/sources_1/bd/zynq_bd/zynq_bd.bd


# This generates the Zynq subystem block diagram
bd_gen : .bd_gen.done
.bd_gen.done : $(BD)
	cmd /c "vivado -mode batch -source ../scripts/bd_gen.tcl -log bd_gen.log -jou bd_gen.jou"


clean :	
	find . -not -name "Makefile" -not -name "." | xargs rm -rf
