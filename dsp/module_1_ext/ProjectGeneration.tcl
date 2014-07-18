# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	proc additional_tcl_commands {} { 
		set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
		set_property USED_IN {out_of_context synthesis implementation} [get_files module_1_clock.xdc]
		launch_runs synth_1
		wait_on_run synth_1
		open_run synth_1 -name netlist_1
		write_checkpoint module_1.dcp -force
	}

	set Compilation {Synthesized Checkpoint}
	set CustomProjectDir {Synthesized Checkpoint}
	set DSPDevice {xc7z020}
	set DSPFamily {zynq}
	set DSPPackage {clg484}
	set DSPSpeed {-1}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {additional_tcl_commands}
	set Project {module_1}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{module_1_blk_mem_gen_v8_2_0_vivado.coe}}
		{{module_1_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{module_1.vhd} {-lib} {xil_defaultlib}}
		{{module_1.xdc}}
		{{module_1_clock.xdc}}
	}
	set SimPeriod 1
	set SimTime 10
	set SimulationTime {310.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Data/tmp/dsp_src/module_1_ext}
	set TopLevelModule {module_1}
	set TopLevelSimulinkHandle 1912
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface data_in3 Name {data_in3}
	dict set TopLevelPortInterface data_in3 Type Bool
	dict set TopLevelPortInterface data_in3 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in3 BinaryPoint 0
	dict set TopLevelPortInterface data_in3 Width 1
	dict set TopLevelPortInterface data_in3 DatFile {module_1_data_in3.dat}
	dict set TopLevelPortInterface data_in3 IconText {data_in3}
	dict set TopLevelPortInterface data_in3 Direction in
	dict set TopLevelPortInterface data_in3 Period 1
	dict set TopLevelPortInterface data_in3 Interface 0
	dict set TopLevelPortInterface data_in3 InterfaceString {DATA}
	dict set TopLevelPortInterface data_in3 Locs {}
	dict set TopLevelPortInterface data_in3 IOStandard {}
	dict set TopLevelPortInterface data_in2 Name {data_in2}
	dict set TopLevelPortInterface data_in2 Type Fix_16_14
	dict set TopLevelPortInterface data_in2 ArithmeticType xlSigned
	dict set TopLevelPortInterface data_in2 BinaryPoint 14
	dict set TopLevelPortInterface data_in2 Width 16
	dict set TopLevelPortInterface data_in2 DatFile {module_1_data_in2.dat}
	dict set TopLevelPortInterface data_in2 IconText {data_in2}
	dict set TopLevelPortInterface data_in2 Direction in
	dict set TopLevelPortInterface data_in2 Period 1
	dict set TopLevelPortInterface data_in2 Interface 0
	dict set TopLevelPortInterface data_in2 InterfaceString {DATA}
	dict set TopLevelPortInterface data_in2 Locs {}
	dict set TopLevelPortInterface data_in2 IOStandard {}
	dict set TopLevelPortInterface data_in1 Name {data_in1}
	dict set TopLevelPortInterface data_in1 Type UFix_4_0
	dict set TopLevelPortInterface data_in1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in1 BinaryPoint 0
	dict set TopLevelPortInterface data_in1 Width 4
	dict set TopLevelPortInterface data_in1 DatFile {module_1_data_in1.dat}
	dict set TopLevelPortInterface data_in1 IconText {data_in1}
	dict set TopLevelPortInterface data_in1 Direction in
	dict set TopLevelPortInterface data_in1 Period 1
	dict set TopLevelPortInterface data_in1 Interface 0
	dict set TopLevelPortInterface data_in1 InterfaceString {DATA}
	dict set TopLevelPortInterface data_in1 Locs {}
	dict set TopLevelPortInterface data_in1 IOStandard {}
	dict set TopLevelPortInterface data_in Name {data_in}
	dict set TopLevelPortInterface data_in Type Fix_16_14
	dict set TopLevelPortInterface data_in ArithmeticType xlSigned
	dict set TopLevelPortInterface data_in BinaryPoint 14
	dict set TopLevelPortInterface data_in Width 16
	dict set TopLevelPortInterface data_in DatFile {module_1_data_in.dat}
	dict set TopLevelPortInterface data_in IconText {data_in}
	dict set TopLevelPortInterface data_in Direction in
	dict set TopLevelPortInterface data_in Period 1
	dict set TopLevelPortInterface data_in Interface 0
	dict set TopLevelPortInterface data_in InterfaceString {DATA}
	dict set TopLevelPortInterface data_in Locs {}
	dict set TopLevelPortInterface data_in IOStandard {}
	dict set TopLevelPortInterface data_out Name {data_out}
	dict set TopLevelPortInterface data_out Type Fix_25_0
	dict set TopLevelPortInterface data_out ArithmeticType xlSigned
	dict set TopLevelPortInterface data_out BinaryPoint 0
	dict set TopLevelPortInterface data_out Width 25
	dict set TopLevelPortInterface data_out DatFile {module_1_data_out.dat}
	dict set TopLevelPortInterface data_out IconText {data_out}
	dict set TopLevelPortInterface data_out Direction out
	dict set TopLevelPortInterface data_out Period 2
	dict set TopLevelPortInterface data_out Interface 0
	dict set TopLevelPortInterface data_out InterfaceString {DATA}
	dict set TopLevelPortInterface data_out Locs {}
	dict set TopLevelPortInterface data_out IOStandard {}
	dict set TopLevelPortInterface data_out1 Name {data_out1}
	dict set TopLevelPortInterface data_out1 Type Bool
	dict set TopLevelPortInterface data_out1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_out1 BinaryPoint 0
	dict set TopLevelPortInterface data_out1 Width 1
	dict set TopLevelPortInterface data_out1 DatFile {module_1_data_out1.dat}
	dict set TopLevelPortInterface data_out1 IconText {data_out1}
	dict set TopLevelPortInterface data_out1 Direction out
	dict set TopLevelPortInterface data_out1 Period 2
	dict set TopLevelPortInterface data_out1 Interface 0
	dict set TopLevelPortInterface data_out1 InterfaceString {DATA}
	dict set TopLevelPortInterface data_out1 Locs {}
	dict set TopLevelPortInterface data_out1 IOStandard {}
	dict set TopLevelPortInterface data_out2 Name {data_out2}
	dict set TopLevelPortInterface data_out2 Type Bool
	dict set TopLevelPortInterface data_out2 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_out2 BinaryPoint 0
	dict set TopLevelPortInterface data_out2 Width 1
	dict set TopLevelPortInterface data_out2 DatFile {module_1_data_out2.dat}
	dict set TopLevelPortInterface data_out2 IconText {data_out2}
	dict set TopLevelPortInterface data_out2 Direction out
	dict set TopLevelPortInterface data_out2 Period 1
	dict set TopLevelPortInterface data_out2 Interface 0
	dict set TopLevelPortInterface data_out2 InterfaceString {DATA}
	dict set TopLevelPortInterface data_out2 Locs {}
	dict set TopLevelPortInterface data_out2 IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project