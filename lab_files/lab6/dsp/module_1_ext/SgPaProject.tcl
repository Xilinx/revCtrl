namespace eval ::xilinx::dsp::planaheadworker {

   #-------------------------------------------------------
   # return name space qualifiers for worker tcl
   #-------------------------------------------------------
   proc dsp_get_worker_tcl_namespace_qualifiers {} {
      return [ namespace current ]
   }

   #-------------------------------------------------------
   # return name space qualifiers for driver tcl
   #-------------------------------------------------------
   proc dsp_get_driver_tcl_namespace_qualifiers {} {
      return ::xilinx::dsp::planaheaddriver
   }

   #-------------------------------------------------------
   # return name space qualifiers for sysgen submodule tcl
   #-------------------------------------------------------
   proc dsp_get_sysgensubmodule_tcl_namespace_qualifiers {} {
      return ::xilinx::dsp::sysgensubmodule
   }

   #-------------------------------------------------------
   # return value of the param under driver tcl name space
   #-------------------------------------------------------
   proc dsp_get_param_value_in_driver_tcl_namespace { param } {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      return [ dsp_get_param_value_in_tcl_namespace ${param} ${driverns} ]
   }

   #-------------------------------------------------------
   # return value of the param under driver tcl name space
   #-------------------------------------------------------
   proc dsp_get_param_value_in_sysgensubmodule_tcl_namespace { param } {
      set submodns [ dsp_get_sysgensubmodule_tcl_namespace_qualifiers ]
      return [ dsp_get_param_value_in_tcl_namespace ${param} ${submodns} ]
   }

   #-------------------------------------------------------
   # return value of the param under driver tcl name space
   #-------------------------------------------------------
   proc dsp_get_param_value_in_tcl_namespace { param tclns } {
      if { ![ info exists ${tclns}::${param} ] } {
         return ""
      }
      set paramvalue [ set ${tclns}::${param} ]
      return $paramvalue
   }

   #-------------------------------------------------------
   # return value device name
   #-------------------------------------------------------
   proc dsp_get_devicename { } {
      set paramvalueFamily [ dsp_get_param_value_in_driver_tcl_namespace DSPFamily ]
      set paramvalueDevice [ dsp_get_param_value_in_driver_tcl_namespace DSPDevice ]
      set paramvaluePackage [ dsp_get_param_value_in_driver_tcl_namespace DSPPackage ]
      set paramvalueSpeed [ dsp_get_param_value_in_driver_tcl_namespace DSPSpeed ]
      set devicename ${paramvalueDevice}-${paramvaluePackage}${paramvalueSpeed}
      return $devicename
   }

   #-----------------------------------------------------
   # return the vhdl library name
   #-----------------------------------------------------
   proc dsp_get_vhdllib { } {
     set vhdllib [ dsp_get_param_value_in_driver_tcl_namespace VHDLLib ]
     return $vhdllib
   }
   #-------------------------------------------------------
   # return name space qualifiers for tester tcl
   #-------------------------------------------------------
   proc dsp_get_tester_tcl_namespace_qualifiers {} {
      return ::xilinx::dsp::planaheadtester
   }

   #-------------------------------------------------------
   # return exename of current tcl shell
   # the return string are vivado or plahAhead
   #-------------------------------------------------------
   proc dsp_get_currentshellname {} {
      set exename [ info nameofexecutable ]
      set currenttclshell [ file tail [ file rootname $exename ] ]
      return $currenttclshell
   }

   #-------------------------------------------------------
   # return 1 if the name of currently running tcl shell
   # matches with match_shellname
   #-------------------------------------------------------
   proc dsp_match_currentshellname { match_shellname } {
      set current_shellname [ dsp_get_currentshellname ]
      return [ string match $match_shellname $current_shellname ]
   }

   #-------------------------------------------------------
   # return 1 if running vivado tcl shell
   #-------------------------------------------------------
   proc dsp_is_running_vivado {} {
      return [ dsp_match_currentshellname vivado ]
   }

   #-------------------------------------------------------
   # return 1 if running planAhead tcl shell
   #-------------------------------------------------------
   proc dsp_is_running_planAhead {} {
      return [ dsp_match_currentshellname planAhead ]
   }

   #-------------------------------------------------------
   # return 1 if running in supported tcl shell vivado/planAhead
   #-------------------------------------------------------
   proc dsp_is_running_supportedshell {} {
      return [ expr { [ dsp_is_running_vivado ] || [ dsp_is_running_planAhead ] } ]
   }

   #-------------------------------------------------------
   # return 1 if in test mode
   #-------------------------------------------------------
   proc dsp_is_running_in_testmode {} {
      set testerns [ dsp_get_tester_tcl_namespace_qualifiers ]
      return [ expr { [ info exists ${testerns}::is_doing_planAheadGenTest ]
         || [ info exists ${testerns}::is_doing_planAheadGenPostSynthTest ] } ]
   }

   #-------------------------------------------------------
   # main program begins here
   #-------------------------------------------------------
   if { ![ dsp_is_running_supportedshell ] } {
      error "ERROR: Please run vivado or planAhead tcl."
      return
   }


   #-------------------------------------------------------------------------
   # Checks for a required parameter.
   #
   # @param  param          Parameter name.
   # @param  postproc       Post processor.
   # @return the parameter value.
   #-------------------------------------------------------------------------
   proc dsp_required_parameter {param {postproc ""}} {
      upvar $param p
      if { ![ info exists p ] } {
         error "ERROR: Required parameter \"[namespace tail $param]\" is not specified."
      }
      if { $postproc != "" } {
         eval $postproc p
      }
      return $p
   }

   #-------------------------------------------------------------------------
   # Checks for an optional parameter.
   #
   # @param  param          Parameter name.
   # @param  defval         Default value of the parameter if unspecified.
   # @param  postproc       Post processor.
   # @return the parameter value.
   #-------------------------------------------------------------------------
   proc dsp_optional_parameter {param {defval ""} {postproc ""}} {
      upvar $param p
      if { ![ info exists p ] } {
         set p $defval
      }
      if { $postproc != "" } {
         eval $postproc p
      }
      return $p
   }

   #-------------------------------------------------------------------------
   # Deletes an existing empty parameter.
   #
   # @param  param          Parameter name.
   #-------------------------------------------------------------------------
   proc dsp_clear_empty_parameter {param} {
      upvar $param p
      if { [ info exists p ] && [ expr { [ string length $p ] == 0 } ] } {
         unset p
      }
   }

   #-------------------------------------------------------------------------
   # Checks a Boolean flag.
   #
   # @param  param          Parameter name.
   # @param  defval         Default value of the parameter if unspecified.
   # @return 1 if the flag is specified and is true, or 0 othewise.
   #-------------------------------------------------------------------------
   proc dsp_check_flag {param {defval ""}} {
      upvar $param p
      return [ expr { [ info exists p ] && $p } ]
   }

   #-------------------------------------------------------------------------
   # return 1 if HDL language is VHDL
   #-------------------------------------------------------------------------
   proc dsp_hdllang_is_vhdl {} {
      set langtype [ dsp_get_param_value_in_driver_tcl_namespace HDLLanguage ]
      return [ expr { $langtype eq "VHDL" } ]
   }

   #-------------------------------------------------------------------------
   # read contents of a file and return the contents
   #
   # @param  targetfile     name of the file to read.
   # @return                contents of the file as one string.
   #-------------------------------------------------------------------------
   proc dsp_read_file { targetfile } {
      if { [ file exists $targetfile ] == 0 } {
         return ""
      }

      if { [ catch { set fp [open $targetfile r] } err ] } {
         puts "WARNING: can not open file $targetfile for reading"
         return ""
      } else {
         set data [read $fp]
         close $fp
         return $data
      }
   }

   #-------------------------------------------------------------------------
   # merge two list into one and return the merged list
   # @param fromlist1      list 1 to merge
   # @param fromlist2      list 2 to merge
   #-------------------------------------------------------------------------
   proc dsp_merge_lists { fromlist1 fromlist2 } {
      set mergedlist [list]
      foreach item $fromlist1 {
         lappend mergedlist $item
      }
      foreach item $fromlist2 {
         lappend mergedlist $item
      }
      return $mergedlist
   }

   #-------------------------------------------------------------------------
   # read input file, print to stdout
   # @param targetfile       the content of this file will be printed to stdout
   #-------------------------------------------------------------------------
   proc dsptest_print_file_to_stdout { targetfile } {
      set filetext [ dsp_read_file $targetfile ]
      if { [ string length $filetext ] > 0 } {
         puts $filetext
      }
   }

   #-------------------------------------------------------------------------
   # checks whether isim run through without problem, for xt smoket test
   #
   # @param  isimlog          isim log file name.
   # @return error string based on parsing isim log file
   #  1. find mismatch points isim and simulink
   #  2. find error message in log
   #  3. log file does not exist
   #-------------------------------------------------------------------------
   proc dsptest_parse_isimlog {isimlog} {
      if { [ file exists $isimlog ] == 0 } {
         return "$isimlog file not exists"
      }

      set filetext [ dsp_read_file $isimlog ]

      if { [ string length $filetext ] > 0 } {
         set lines [split $filetext \n]
         # set lastline [lindex $lines end-1]
         foreach st $lines {
            if { [string match {* mismatch*} $st] } {
               return "find mismatch"
            }
         }
      } 

      return ""
   }

   #-------------------------------------------------------------------------
   # create and run post-synth sim
   #-------------------------------------------------------------------------
   proc dsptest_run_post_synth_sim {} {
      ::open_netlist_design -name netlist_1
      ::set_property is_enabled false [::get_files -of_objects [ get_filesets sources_1 ]]

      set synthesistooltype [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
      switch -- $synthesistooltype {
         "RDS" {
            ::set_param simulation.netlist.rodin 1 
         }
         "Vidado" {
            ::set_param simulation.netlist.rodin 1 
         }
      }

      #set srcfiles [planahead::get_files -of_objects sources_1]
      #foreach srcfile $srcfiles {
      #set_property is_enabled false [get_files -of_objects sources_1 $srcfile]
      #}

      set currentdir [ pwd ]
      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [file normalize $paramvalueProjDir ]
      [cd $projDir]

      if { [ dsp_hdllang_is_vhdl ] } {
         set ext {.vhd}
         ::write_vhdl -force $projDir/post_synth.vhd
      } else {
         set ext {.v}
         ::write_verilog -force -mode sim $projDir/post_synth.v
      }

      ::add_files -fileset sim_1 -norecurse -scan_for_includes post_synth${ext}
      ::import_files -fileset sim_1 -norecurse -force post_synth${ext}

      [cd $currentdir]

      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      set postsynthvhd $projDir/${paramvalueProject}.srcs/sim_1/imports/hdl_netlist/post_synth${ext}
      ::reorder_files -fileset sim_1 -front $postsynthvhd

      ::launch_isim -batch -simset sim_1 -mode behavioral
   }

   #-------------------------------------------------------------------------
   # clean up post-synth sim
   #-------------------------------------------------------------------------
   proc dsptest_clean_up_post_synth_sim {} {
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [ file normalize $paramvalueProjectDir ]

      if { [ dsp_hdllang_is_vhdl ] } {
         set ext {.vhd}
      } else {
         set ext {.v}
      }

      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      set postsynthvhd $projDir/${paramvalueProject}.srcs/sim_1/imports/hdl_netlist/post_synth${ext}

      ::remove_files -fileset sim_1 $postsynthvhd
      ::set_property is_enabled true [::get_files -of_objects [ get_filesets sources_1 ]]

      #set srcfiles [::get_files -of_objects sources_1]
      #foreach srcfile $srcfiles {
      #set_property is_enabled true [get_files -of_objects sources_1 $srcfile]
      #}
   }

   #-------------------------------------------------------------------------
   # add files with certain extenstion in certain directory to project
   #
   # @param  filedir          directory to look at
   # @param  fileext          file extension which should add
   # @param  skipfiles        list of files which should not add
   #-------------------------------------------------------------------------
   proc dsp_add_file_to_project {filedir fileext { skipfiles "" }} {
      if { [llength $skipfiles] > 0 } {
         upvar $skipfiles skipfls
         set localcopyskipfl $skipfls
         set extfiles [ dsp_get_file_name_list $filedir $fileext 0 localcopyskipfl ]
      } else {
         set extfiles [ dsp_get_file_name_list $filedir $fileext ]
      }
      if { [llength $extfiles] > 0 } {
         ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $extfiles
      }
   }

   #-------------------------------------------------------------------------
   # wait until isim is finished
   #
   # @param  isimlog          isim log file name.
   # @param  simtype          behavior/post-synth/timing
   # @param  deleteisimlog    0/1, 1 is to delete
   # @return msgtext          empty string means no error
   #-------------------------------------------------------------------------
   proc dsptest_wait_on_isim {isimlog simtype deleteisimlog} {
      set ncount 0
      while { [ expr {[ dsptest_isim_done $isimlog ] == 0} ] && $ncount < 360} {
         [ exec sleep 10 ]
         incr ncount
      }

      set isimerrmsg0 ""

      if { $ncount >= 360 } {
         set stmpmsg0 "error happened while running $simtype simulation.\n"
         set isimerrmsg0 [concat $isimerrmsg0 $stmpmsg0]
      } else {
         set isimmsg [ dsptest_parse_isimlog $isimlog ]
         if { [ dsp_is_good_string $isimmsg ] } {
            set stmpmsg0 "$isimmsg in $simtype simulation.\n"
            set isimerrmsg0 [concat $isimerrmsg0 $stmpmsg0]
         }
      }

      if { $deleteisimlog == 1 && [ file exists $isimlog ] == 1 } {
         #file delete $isimlog
         file rename -force $isimlog ${isimlog}_${simtype}
      }

      if { [string length $isimerrmsg0] > 0 } {
         ::close_project
         error "ERROR: $isimerrmsg0"
      }

      return $isimerrmsg0;
   }

   #-------------------------------------------------------------------------
   # checks whether a previous isim has finished
   #
   # @param  isimlog          isim log file name.
   # @return 1 if there is a previous isim has finished before.
   #-------------------------------------------------------------------------
   proc dsptest_isim_done { isimlog } {
      if { [ file exists $isimlog ] == 0 } {
         return 0
      }

      set data [ dsp_read_file $isimlog ]
      set lines [ split $data \n ]

      set lastline [ lindex $lines end-1 ]
      if { [ string match -nocase {*#*quit*-f*} $lastline ] } {
         return 1
      } else {
         set lastline [ lindex $lines end ]
         return [ string match -nocase {*#*quit*-f*} $lastline ]
      }
   }

   #-------------------------------------------------------------------------
   # Post processor to turn the given parameter to lower case.
   #
   # @param  param          Parameter name.
   # @return the processed parameter value.
   #-------------------------------------------------------------------------
   proc dsp_lowercase_pp { param } {
      upvar $param p
      set p [ string tolower $p ]
      return $p
   }

   #-------------------------------------------------------------------------
   # Post processor for the SynthesisTool parameter.
   #
   # @param  param          Parameter name.
   # @return the processed parameter value.
   #-------------------------------------------------------------------------
   proc dsp_synthesis_tool_pp { param } {
      upvar $param p
      switch [ string tolower $p ] {
         "xst" {
            set p "XST"
         }
         "rds" {
            set p "RDS"
         }
         "vivado" {
            set p "Vivado"
         }
         "synplify" {
            set p "Synplify"
         }
         "synplify pro" {
            set p "Synplify Pro"
         }
         default {
            error "ERROR: Invalid value for parameter \"SynthesisTool\": $p"
         }
      }
   }

   #-------------------------------------------------------------------------
   # Post processor for the HDLLanguage parameter.
   #
   # @param  param          Parameter name.
   # @return the processed parameter value.
   #-------------------------------------------------------------------------
   proc dsp_hdl_language_pp {param} {
      upvar $param p
      switch [string tolower $p] {
         "vhdl" {
            set p "VHDL"
         }
         "verilog" {
            set p "Verilog"
         }
         default {
            error "ERROR: Invalid value for parameter \"HDLLanguage\": $p"
         }
      }
   }

   #-------------------------------------------------------------------------
   # Dumps all variables of a given namespace. The current namespace is used
   # if no namespace is specified.
   #
   # @param  ns             Target namespace.
   #-------------------------------------------------------------------------
   proc dsp_dump_variables {{ns ""}} {
      if { $ns eq "" } {
         set ns [ namespace current ]
      }

      foreach param [ lsort [info vars $ns\::*] ] {
         upvar $param p
         # TODO : print array, remove upvar
         puts [namespace tail $param]\ =\ $p
      }
   }

   #-------------------------------------------------------------------------
   # Handles an exception when evaluating the given script and displays an
   # appropriate error message.
   #
   # @param  script         Script to evaluate.
   # @param  msg            Message to display upon an exception.
   # @param  append_msg     Specifies whether any returned error message is
   #                        also displayed.
   # @return 1 if the script is evaluated successfully, or 0 othewise.
   #-------------------------------------------------------------------------
   proc dsp_handle_exception {script {msg ""} {append_msg True}} {
      if [catch { uplevel $script } result] {
         if {$msg eq ""} {
            set msg "ERROR: An internal error occurred."
         }
         puts stderr "$msg"
         if {$append_msg} {
            puts stderr "$result"
         }
         return 0
      }
      return 1
   }

   #-------------------------------------------------------
   # return compilation flow name which represents the
   # compilation field in Sysgen token: HDL Netlist, Bitstream etc
   # return empty string if error
   #-------------------------------------------------------
   proc dsp_get_compilation_flow_name {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::Compilation ] } {
         return [ dsp_get_param_value_in_driver_tcl_namespace Compilation ]
      } else {
         return ""
      }
   }

   #-------------------------------------------------------
   # return 1 if the name of compilation flow name
   # matches with shellNameToMatch
   #-------------------------------------------------------
   proc dsp_match_compilation_flow_name { flowNameToMatch } {
      set compilationFlowName [ dsp_get_compilation_flow_name ]
      return [ string match $flowNameToMatch $compilationFlowName ]
   }

   #-------------------------------------------------------
   # return 1 if running HDL Netlist compilation
   #-------------------------------------------------------
   proc dsp_is_hdlnetlist_compilation {} {
      set compilationFlowName {HDL Netlist}
      return [ dsp_match_compilation_flow_name $compilationFlowName ]
   }

   #-------------------------------------------------------
   # return 1 if running Bitstream compilation
   #-------------------------------------------------------
   proc dsp_is_bitstream_compilation {} {
     #Commenting this in Vivado because Bitstrema target is not supported natively in Vivado
     #return [ dsp_match_compilation_flow_name Bitstream ]
     return false
   }
   proc dsp_is_ipxact_compilation {} {
      return [ dsp_match_compilation_flow_name {IP Catalog} ]
   }
 
   #-------------------------------------------------------------------------
   # check a proc exists, if yes run the proc and return 1 
   # if proc does not exist, return 0
   # @param  procname       name of the proc to run.
   # @param  np             name space for the proc.
   # @return 1 if proc found and run, otherwise return 0
   #-------------------------------------------------------------------------
   proc dsp_check_and_run_proc { procname {np ""} } {
      if { [ string length $np ] > 0 } {
         if { $np == "::" } {
            set decoratedprocname ::${procname}
         } else {
            set decoratedprocname ${np}::${procname}
         }
      } else {
         set decoratedprocname $procname
      }

      set findproc [ info proc $decoratedprocname ]
      if { [ string length $findproc ] > 0  } {
         eval $decoratedprocname
         return 1
      } else {
         return 0
      }
   }


   #-------------------------------------------------------
   # run tcl proc in dsp namespaces with precedence
   #-------------------------------------------------------
   proc dsp_run_proc_in_dsp_namespaces { procname } {
      if { [ string length $procname ] < 1 } {
         return
      }

      set ns [ namespace qualifiers $procname ]
      if { $ns > 0 } {
         if { [ dsp_check_and_run_proc $procname ] } {
            return
         }
      } else {
         set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
         if { [ dsp_check_and_run_proc $procname ${driverns} ] } {
            return
         }

         set wrokerns [ dsp_get_worker_tcl_namespace_qualifiers ]
         if { [ dsp_check_and_run_proc $procname ${wrokerns} ] } {
            return
         }

         if { [ dsp_check_and_run_proc $procname {::} ] } {
            return
         }

         if { [ dsp_check_and_run_proc $procname ] } {
            return
         }
     } 

     puts "WARNING: can not find proc: $procname"
   }

   #-------------------------------------------------------------------------
   # Processes all project parameters.
   #
   # REQUIRED PARAMETERS
   # ======================================================================
   #   Project
   #     PlanAhead project name.
   #
   #   DSPFamily
   #     Device family into which the design is implemented.
   #
   #   DSPDevice
   #     Device into which the design is implemented.
   #
   #   DSPPackage
   #     Package for the device being targeted.
   #
   #   DSPSpeed
   #     Speed grade of the device being targeted.
   #
   #   ProjectFiles
   #     Source files to be added in the project.
   #
   #
   # OPTIONAL PARAMETERS
   # ======================================================================
   # (*) Notes:
   #     "::=" denotes the list of supported values for each parameter.
   #
   # ----------------------------------------------------------------------
   #
   #   CompilationFlow
   #     Compilation flow.
   #
   #   TopLevelModule
   #     Top-level module of the design.
   #
   #   HDLLanguage
   #     Preferred language property controls the default setting for
   #     process properties that generate HDL output.
   #       ::= "VHDL" | "Verilog"
   #
   #   SynthesisTool
   #     Synthesis tool used for the design.
   #       ::= "XST" | "RDS" | "Synplify" | "Synplify Pro"
   #
   #   SynthesisConstraintsFile
   #     Synthesis constraints file. XCF for XST,
   #     SDC for Synplify/Synplify Pro.
   #
   #   SynthesisRegisterBalancing
   #     Register balancing option of the Synthesis process.
   #
   #   SynthesisRegisterDuplication
   #     Register duplication option of the Synthesis process.
   #
   #   SynthesisRetiming
   #     Retiming option of the Synthesis process. Synplify Pro Only.
   #       ::= True | False
   #
   #   WriteTimingConstraints
   #     Specifies whether or not to place timing constraints in the NGC
   #     file.
   #       ::= True | False
   #
   #   WriteVendorConstraints
   #     Specifies whether or not to generate vendor constraints file.
   #       ::= True | False
   #
   #   ReadCores
   #     Specifies whether or not black box cores are read for timing
   #     and area estimation in order to get better optimization of
   #     the rest of the design.
   #       ::= True | False
   #
   #   InsertIOBuffers
   #     Specifies whether or not to infer input/output buffers on all
   #     top-level I/O ports of the design.
   #       ::= True | False
   #
   #   BusDelimiter
   #     Specifies the delimiter type used to define the signal vectors in
   #     the resulting netlist.
   #       ::= "<>" | "[]" | "{}" | "()"
   #
   #   HierarchySeparator
   #     Hierarchy separator character which will be used in name
   #     generation when the design hierarchy is flattened.
   #       ::= "/" | "_"
   #
   #   KeepHierarchy
   #     Specifies whether or not the corresponding design unit should be
   #     preserved and not merged with the rest of the design.
   #       ::= "Yes" | "No" | "Soft"
   #
   #   Frequency
   #     Global clock frequency for timing-driven synthesis.
   #
   #   FanoutLimit
   #     Maximum limit of the fanout of nets.
   #
   #   MapRegisterDuplication
   #     Register duplication option of the Map process.
   #
   #   MapEffortLevel
   #     Effort level of the Map process.
   #
   #   PAREffortLevel
   #     Effort level of the Place & Route process.
   #
   #   BlockMemoryMapFile
   #     Block memory map (.bmm) file for the Data2MEM process.
   #
   #   BlockMemoryContentFile
   #     Block memory content file for the Data2MEM process.
   #
   #   Simulator
   #     Tool used for simulation.
   #
   #   DesignInstance
   #     Design instance name.
   #
   #   TestBenchModule
   #     Test-bench module.
   #
   #   SimulationTime
   #     Simulation time.
   #
   #   BehavioralSimulationCustomDoFile
   #     Custom Do file for the Behavioral Simulation process.
   #
   #   PostTranslateSimulationCustomDoFile
   #     Custom Do file for the Post-Translate Simulation process.
   #
   #   PostMapSimulationCustomDoFile
   #     Custom Do file for the Post-Map Simulation process.
   #
   #   PostPARSimulationCustomDoFile
   #     Custom Do file for the Post-Place & Route Simulation process.
   #
   #   ISimCustomProjectFile
   #     Custom project file for PlanAhead Simulator.
   #
   #   HasVerilogSource
   #     Indicate the project contains a Verilog source file.
   #
   #   ImplementationStopView
   #
   #   ProjectGenerator
   #
   #   PostProjectCreationProc
   #     optional param in driver tcl, tclsh will call this proc after project creation.
   #
   #   CustomUpdateParametersProc
   #     optional param in driver tcl, this tcl proc will be called to update parameters.
   #
   #   CustomUpdateSynthesisSettingsProc
   #     optional param in driver tcl, this tcl proc will be called to update synthesis settings.
   #
   #   CustomUpdateImplementationSettingsProc
   #     optional param in driver tcl, this tcl proc will be called to update implementation settings.
   #
   #   CustomUpdateSimulationSettingsProc
   #     optional param in driver tcl, this tcl proc will be called to update simulation settings.
   #
   #   CustomProjectDir
   #     optional param in driver tcl, this is dir name relative to tcl working dir, planAhead or vivado
   #     project will be generated in this dir
   #
   #   InferBoard
   #      optional param in driver tcl. If the param exists then 0 indicates do not associate a board with the 
   #      project else attempt to associate a pre-existing board with the project
   #-------------------------------------------------------------------------
   proc dsp_process_parameters {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      dsp_required_parameter ${driverns}::Project

      dsp_required_parameter ${driverns}::DSPFamily dsp_lowercase_pp
      dsp_required_parameter ${driverns}::DSPDevice dsp_lowercase_pp
      dsp_required_parameter ${driverns}::DSPPackage dsp_lowercase_pp
      dsp_required_parameter ${driverns}::DSPSpeed
      if {[dsp_hdllang_is_vhdl]} {
         dsp_required_parameter ${driverns}::VHDLLib
      }

      dsp_required_parameter ${driverns}::ProjectFiles
      dsp_optional_parameter ${driverns}::Compilation {HDL Netlist}

      dsp_optional_parameter ${driverns}::SynthStrategyName {}
      dsp_optional_parameter ${driverns}::ImplStrategyName {}
      dsp_optional_parameter ${driverns}::CompilationFlow {general}
      dsp_optional_parameter ${driverns}::HDLLanguage {VHDL} dsp_hdl_language_pp
      dsp_optional_parameter ${driverns}::SynthesisTool {XST} dsp_synthesis_tool_pp
      dsp_optional_parameter ${driverns}::SynthesisRegisterBalancing {No}
      dsp_optional_parameter ${driverns}::SynthesisRegisterDuplication True
      dsp_optional_parameter ${driverns}::SynthesisRetiming True
      dsp_optional_parameter ${driverns}::WriteTimingConstraints False
      dsp_optional_parameter ${driverns}::WriteVendorConstraints False
      dsp_optional_parameter ${driverns}::ReadCores True
      dsp_optional_parameter ${driverns}::InsertIOBuffers True
      set is_vhdl [ dsp_hdllang_is_vhdl ]
      #dsp_optional_parameter ${driverns}::BusDelimiter [expr { $is_vhdl ? {()} : {[]} }]
      dsp_optional_parameter ${driverns}::BusDelimiter [expr { $is_vhdl ? {()} : {()} }]
      dsp_optional_parameter ${driverns}::HierarchySeparator {/}
      dsp_optional_parameter ${driverns}::KeepHierarchy {No}
      dsp_optional_parameter ${driverns}::HasVerilogSource False
      dsp_optional_parameter ${driverns}::MapRegisterDuplication True
      dsp_optional_parameter ${driverns}::MapEffortLevel {High}
      dsp_optional_parameter ${driverns}::PAREffortLevel {High}
      dsp_optional_parameter ${driverns}::DesignInstance {sysgen_dut}

      dsp_clear_empty_parameter ${driverns}::TopLevelModule
      dsp_clear_empty_parameter ${driverns}::SynthesisConstraintsFile
      dsp_clear_empty_parameter ${driverns}::Frequency
      dsp_clear_empty_parameter ${driverns}::FanoutLimit
      dsp_clear_empty_parameter ${driverns}::BlockMemoryMapFile
      dsp_clear_empty_parameter ${driverns}::BlockMemoryContentFile
      dsp_clear_empty_parameter ${driverns}::Simulator
      dsp_clear_empty_parameter ${driverns}::TestBenchModule
      dsp_clear_empty_parameter ${driverns}::BehavioralSimulationCustomDoFile
      dsp_clear_empty_parameter ${driverns}::PostTranslateSimulationCustomDoFile
      dsp_clear_empty_parameter ${driverns}::PostMapSimulationCustomDoFile
      dsp_clear_empty_parameter ${driverns}::PostPARSimulationCustomDoFile
      dsp_clear_empty_parameter ${driverns}::ISimCustomProjectFile
      dsp_clear_empty_parameter ${driverns}::ProjectGenerator
      dsp_clear_empty_parameter ${driverns}::ImplementationStopView
      dsp_clear_empty_parameter ${driverns}::PostProjectCreationProc
      dsp_clear_empty_parameter ${driverns}::CustomUpdateParametersProc
      dsp_clear_empty_parameter ${driverns}::CustomUpdateSynthesisSettingsProc
      dsp_clear_empty_parameter ${driverns}::CustomUpdateImplementationSettingsProc
      dsp_clear_empty_parameter ${driverns}::CustomUpdateSimulationSettingsProc
      dsp_clear_empty_parameter ${driverns}::CustomProjectDir
      dsp_clear_empty_parameter ${driverns}::FileRepository
      dsp_clear_empty_parameter ${driverns}::InferBoard

      if { [ info exists ${driverns}::CustomProjectDir ] } {
         set paramvalueCustomUpdateProjectDir [ dsp_get_param_value_in_driver_tcl_namespace CustomProjectDir ]
         if { [dsp_is_good_string $paramvalueCustomUpdateProjectDir] } {
            dsp_optional_parameter ${driverns}::ProjectDir ${paramvalueCustomUpdateProjectDir}
         }
      }

      if { ![ info exists ${driverns}::ProjectDir ] } {
         if { [ dsp_is_hdlnetlist_compilation ] } {
            dsp_optional_parameter ${driverns}::ProjectDir {hdl_netlist}
         } elseif { [ dsp_is_bitstream_compilation ] } {
            dsp_optional_parameter ${driverns}::ProjectDir {bitstream}
         } elseif { [ dsp_is_ipxact_compilation ] } {
            dsp_optional_parameter ${driverns}::ProjectDir [dsp_ip_packager_get_location]
         } else {      
            dsp_optional_parameter ${driverns}::ProjectDir {hwcosim}
         }
      }

      if { [ info exists ${driverns}::CustomUpdateParametersProc ] } {
         set paramvalueCustomUpdateParametersProc [ dsp_get_param_value_in_driver_tcl_namespace CustomUpdateParametersProc ]
         dsp_run_proc_in_dsp_namespaces $paramvalueCustomUpdateParametersProc
      }
   } 
   
   #-------------------------------------------------------------------------
   # Dumps all parameters.
   #-------------------------------------------------------------------------
   proc dsp_dump_parameters {} {
    dsp_dump_variables param
   }

   #-------------------------------------------------------------------------
   # a good string has length > 0 and has at least one non-white space char
   # return 0 if string is empty or only has white spaces
   # return 1 if string is good as descriped above
   # @param  str          Parameter name.
   #-------------------------------------------------------------------------
   proc dsp_is_good_string { str } {
      set strtmp [ string trim $str ]
      set length [ string length $strtmp ]
      if { $length == 0 } {
         return 0
      } else {
         return 1
      }
   }

   #-------------------------------------------------------------------------
   # return core part of file name. For example abc.d will return abc
   # @param filename       file name 
   #-------------------------------------------------------------------------
   proc dsp_get_file_core_name { filename } {
      if { ![dsp_is_good_string $filename] } {
         return ""
      }

      set dirnames [split $filename /]
      set fname [lindex $dirnames end]
      if { [dsp_is_good_string $fname] } {
         set names [split $fname .]
         set name [lindex $names end-1]
         return $name
      }

      return ""
   }

   #-------------------------------------------------------------------------
   # return the list of of search pathes for sysgen project files
   #-------------------------------------------------------------------------
   proc dsp_get_sysgen_project_file_search_path_list {} {
      set tmplist [list]

      set paramvalueFileRepository [ dsp_get_param_value_in_driver_tcl_namespace FileRepository ]
      if { [ dsp_is_good_string $paramvalueFileRepository ] } {
         set filereposdir [file normalize ${paramvalueFileRepository} ]
         if { [file exists ${filereposdir} ] } {
            lappend tmplist ${filereposdir}
         }
      }

      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [file normalize $paramvalueProjectDir ]

      set filedir "$projDir/../sysgen"
      set filedir [file normalize ${filedir} ]
      if { [file exists ${filedir} ] } {
         if { [ lsearch $tmplist ${filedir} ] < 0 } {
            lappend tmplist ${filedir}
         }
      }

      set filedir "$projDir/.."
      set filedir [file normalize ${filedir} ]
      if { [file exists ${filedir} ] } {
         if { [ lsearch $tmplist ${filedir} ] < 0 } {
            lappend tmplist ${filedir}
         }
      }

      return $tmplist
   }

   #-------------------------------------------------------------------------
   # return the full path to scoped ip dir for bxml flow
   #-------------------------------------------------------------------------
   proc dsp_get_scoped_ip_dir_full_path {} {
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [ file normalize $paramvalueProjectDir ]

      set ipdir "$projDir/../ip"
      set ipdir [ file normalize ${ipdir} ]
      return ${ipdir}
   }

   #-------------------------------------------------------------------------
   # return the dir which has sysgen project files
   #-------------------------------------------------------------------------
   proc dsp_get_sysgen_project_file_dir {} {
      set paramvalueFileRepository [ dsp_get_param_value_in_driver_tcl_namespace FileRepository ]
      if { [ dsp_is_good_string $paramvalueFileRepository ] } {
         set filereposdir [file normalize ${paramvalueFileRepository} ]
         if { [file exists ${filereposdir} ] } {
            return ${filereposdir}
         }
      }

      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [file normalize $paramvalueProjectDir ]

      set filedir "$projDir/../sysgen"
      set filedir [file normalize ${filedir} ]
      if { [file exists ${filedir} ] } {
         return ${filedir}
      }

      set filedir "$projDir/.."
      set filedir [file normalize ${filedir} ]
      if { [file exists ${filedir} ] } {
         return ${filedir}
      }
   }

   #-------------------------------------------------------------------------
   # return a list of file names
   # when return list of core names, the file named abc.d, only abc will be in the return list
   # when return list of full names, the file named with full path will be in the return list
   # @param filedir          the dir in which to do glob
   # @param fileext          the file extention used to do glob
   # @param corenameonly     return list of core names if 1, otherwise return list of full names
   # @param skipfiles        list of files which should be skipped
   #-------------------------------------------------------------------------
   proc dsp_get_file_name_list { filedir fileext {corenameonly 0} {skipfiles ""}} {
      set skiplist [list]
      if { [llength $skipfiles] > 0 } {
         upvar $skipfiles skipfl
         if { [llength $skipfl] > 0 } {
            foreach skipfname $skipfl {
               set fullname [file normalize $skipfname]
               set name [ dsp_get_file_core_name $fullname ]
               if { [ dsp_is_good_string $name] } {
                  lappend skiplist $name
               }
            }
         }
      }

      set namelist [list]
      set sourcefiles [ glob -nocomplain ${filedir}/*${fileext} ]
      foreach fullname $sourcefiles {
         set fullname [file normalize $fullname]
         set name [ dsp_get_file_core_name $fullname ]

         if { [llength $skiplist] > 0} {
            if { [ dsp_is_good_string $name] } {
               if { [lsearch $skiplist $name] >= 0 } {
                  continue
               }
            }
         }

         if { $corenameonly == 0 } {
            lappend namelist $fullname
         } else {
            if { [ dsp_is_good_string $name] } {
               lappend namelist $name
            }
         }
      }
      return $namelist
   }

   #-------------------------------------------------------------------------
   # return a list of file names
   # when return list of core names, the file named abc.d, only abc will be in the return list
   # when return list of full names, the file named with full path will be in the return list
   # @param pathlist         list of the dirs in which to do glob, if same file name appears in 
   #                          mulitiple dir, the one in the front of dir list are used, and the rest
   #                          files with same name are ignored
   # @param fileext          the file extention used to do glob
   # @param corenameonly     return list of core names if 1, otherwise return list of full names
   #-------------------------------------------------------------------------
   proc dsp_get_file_name_list_from_pathlist { pathlist fileext {corenameonly 0} } {
      set namelist [list]
      set addedfiles [list]
      foreach filedir $pathlist {
         set filedir [file normalize ${filedir} ]
         if { ![file exists ${filedir} ] } {
            continue
         }

         set tmplist [ dsp_get_file_name_list ${filedir} ${fileext} $corenameonly]
         foreach tmpfilename $tmplist {
            if { $corenameonly == 0 } {
               set corename [ dsp_get_file_core_name ${tmpfilename} ]
            } else {
               set corename ${tmpfilename}
            }

            if { [ dsp_is_good_string ${corename} ] } {
               if { [ lsearch $addedfiles ${corename} ] < 0 } {
                  lappend namelist ${tmpfilename}
                  lappend  addedfiles ${corename}
               }
            }
         }
      }
      return $namelist
   }

   #-------------------------------------------------------------------------
   # return 1 if project has test bench
   #-------------------------------------------------------------------------
   proc dsp_has_testbench {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      return [info exists ${driverns}::TestBenchModule]
   }

   #-------------------------------------------------------------------------
   # return 1 if project has created interface document
   #-------------------------------------------------------------------------
   proc dsp_has_create_interface_document {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [info exists ${driverns}::CreateInterfaceDocument] } {
         set paramvalueCreateInterfaceDocument [ dsp_get_param_value_in_driver_tcl_namespace CreateInterfaceDocument ]
         if { [string equal -nocase ${paramvalueCreateInterfaceDocument} "on"] } {
            return 1
         } else {
            return 0
         }
      } else {
         return 0
      }
   }

   #-------------------------------------------------------------------------
   # return name of the list var which is used to store files with specific extension
   # @param extname              file extension string
   #-------------------------------------------------------------------------
   proc dsp_get_list_var_name { extname } {
      set extlower [ string tolower $extname ]
      return hidden_list_var_to_hold_file_$extlower
   }
   #-------------------------------------------------------------------------
   # return name of the list variables which are used to store testbench files with specific extension
   # @param extname              file extension string
   #------------------------------------------------------------------------
   proc dsp_get_testbench_list_var_name { extname } {
      set extlower [ string tolower $extname ]
      return hidden_testbench_list_var_to_hold_file_$extlower
   }

   #-------------------------------------------------------------------------
   # return value of the list var which is used to store files with specific extension
   # @param extname              file extension string
   #-------------------------------------------------------------------------
   #proc dsp_get_list_var_value { extname } {
   #   set tmplist [list]
   #   set listvarname [ dsp_get_list_var_name $extname ]
   #   if { [info exists $listvarname] } {
   #      set tmplist [set $listvarname] 
   #   } else {
   #      set tmplist [list] 
   #   }
   #   return $tmplist
   #}

   #-------------------------------------------------------------------------
   # return name of the list var which is used to store files with specific extension
   # @param extnamelist          list of file extentions
   #-------------------------------------------------------------------------
   proc dsp_reset_project_file_list_var { extnamelist } {
      foreach ext $extnamelist {
         set vn [ dsp_get_list_var_name $ext ]
         if { [ info exists $vn ] } {
            unset $vn
         }
      }
   }

   #-------------------------------------------------------------------------
   # return name of the handler proc for add project files with extension
   # @param extname              file extension string
   #-------------------------------------------------------------------------
   proc dsp_get_add_project_files_handler_name { extname } {
      set extlower [ string tolower $extname ]
      return dsp_add_project_files_handler_$extlower
   }

   #-------------------------------------------------------------------------
   # return name of the handler proc for add project files with extension to bxml
   # @param extname              file extension string
   #-------------------------------------------------------------------------
   proc dsp_get_bxml_add_project_files_handler_name { extname } {
      set extlower [ string tolower $extname ]
      return dsp_bxml_add_project_files_handler_$extlower
   }

   #-------------------------------------------------------------------------
   # handler for .ucf files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_ucf { filelist } {
      upvar $filelist ucffl
      if { [llength $ucffl] > 0 } {
         if { [ dsp_is_running_planAhead ] } {
            ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $ucffl
         } 
      }
   }

   #-------------------------------------------------------------------------
   # handler for .ucf files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_project_files_handler_ucf { fpbxml filelist } {
      upvar $filelist ucffl
      if { [llength $ucffl] > 0 } {
         if { [ dsp_is_running_planAhead ] } {
            #dsp_bxml_add_file_list $fpbxml $ucffl
            dsp_bxml_copy_ucf_add_ncf $fpbxml $ucffl
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for .tcl files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_tcl { filelist } {
      upvar $filelist tclfl
      if { [llength $tclfl] > 0 } {
         foreach tclf $tclfl {
            source ${tclf} -notrace
         }
      }
   }
   
   #-------------------------------------------------------------------------
   # handler for .coe files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_coe { filelist } {
      upvar $filelist coefl
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      set ipdir ${paramvalueProjectDir}/${paramvalueProject}.srcs/sources_1/ip
      if { ![ file exists $ipdir ] } {
         file mkdir $ipdir
      }
      if { [llength $coefl] > 0 } {
         foreach coef $coefl {
             file copy -force $coef $ipdir
         }
      }
   }
   #-------------------------------------------------------------------------
   # handler for .xdc files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_xdc { filelist } {
      upvar $filelist xdcfl
      if { [llength $xdcfl] > 0 } {
         if { [ dsp_is_running_vivado ] } {
            set_property constrs_type XDC [get_filesets constrs_1]
            ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $xdcfl
         }
      }
   }
   #-------------------------------------------------------------------------
   # handler for .dcp files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_dcp { filelist } {
      upvar $filelist dcpfl
      if { [llength $dcpfl] > 0 } {
          ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $dcpfl
      }
   }

   #-------------------------------------------------------------------------
   # handler for .xco files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_xco { filelist } {
      upvar $filelist xcofl
      if { [llength $xcofl] > 0 } {
         foreach xcofile $xcofl {
            set xcofile [file normalize $xcofile]
            set xcofilerootname [ file rootname $xcofile ]
            set ipname [ file tail $xcofilerootname ]
            if [dsp_is_good_string $ipname] {
               ::import_ip -file $xcofile -name  $ipname
            }
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for .xdc files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_project_files_handler_xdc { fpbxml filelist } {
      upvar $filelist xdcfl
      if { [llength $xdcfl] > 0 } {
         if { [ dsp_is_running_vivado ] } {
            dsp_bxml_add_file_list $fpbxml $xdcfl
         }
      }
   }

   #-------------------------------------------------------------------------
   # handler for .ngc files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_ngc { filelist } {
      upvar $filelist ngcfl
      if { [llength $ngcfl] > 0 } {
         ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $ngcfl
      }
   }

   #-------------------------------------------------------------------------
   # handler for .ngc files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_project_files_handler_ngc { fpbxml filelist } {
      upvar $filelist ngcfl
      if { [llength $ngcfl] > 0 } {
         dsp_bxml_add_file_list $fpbxml $ngcfl
      }
   }

   #-------------------------------------------------------------------------
   # handler for .mif files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_mif { filelist } {
      upvar $filelist miffl
   #   if { [ dsp_has_testbench ] } {
         if { [llength $miffl] > 0 } {
            ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse $miffl
         }
   #   }
   }
   
   proc dsp_add_project_files_handler_dat { filelist } {
      upvar $filelist datl
      if { [llength $datl] > 0 } {
         ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $datl
         ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse $datl
      }
   }
   #-------------------------------------------------------------------------
   # handler for .mif files when add project files to bxml
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_project_files_handler_mif { filebxml filelist } {
      upvar $filelist miffl
      dsp_bxml_add_file_list $filebxml $miffl
   }

   #-------------------------------------------------------------------------
   # handler for testbench files when add project files
   # @param filelist    the list holds file names
   #-------------------------------------------------------------------------
   proc dsp_add_project_files_handler_testbench { filelist } {
      upvar $filelist tbfl
      if { [ dsp_has_testbench ] } {
         if { [llength $tbfl] > 0 } {
            ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse $tbfl
         }
      }
   }
   
   #------------------------------------------------------------------------
   # Add DAT files to the project as testbench files
   #------------------------------------------------------------------------
   proc dsp_add_project_testbench_dat_files {} {
        set datapath [ dsp_get_sysgen_project_file_search_path_list ]
        set datfiles [ dsp_get_file_name_list_from_pathlist $datapath {.dat} ]
         if { [llength $datfiles] > 0 } {
            ::add_files -fileset [ get_filesets sim_1 ] $datfiles
         }
   }

   #-------------------------------------------------------------------------
   # Adds source files to the project.
   #-------------------------------------------------------------------------
   proc dsp_add_project_files {} {
      set projfilesexts "xco ucf xdc mif coe ngc v vhd vh testbench tcl dat dcp"
      set retcode [ dsp_reset_project_file_list_var $projfilesexts ]
      set_property design_mode RTL [ get_filesets sources_1]
      set filedir [ dsp_get_sysgen_project_file_dir ]

      set paramvalueTestBenchModule [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]
      set paramvalueProjectFiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
      foreach p $paramvalueProjectFiles {
         set filen [list]
         set origname [lindex $p 0]
         set origrootname [ file rootname [lindex $p 0] ]
         set filenameraw "$filedir/$origname"
         if { [ file exists $filenameraw ] } {
            set filename [file normalize $filenameraw]
         } else {
            set filename [file normalize $origname]
         }
         #set filename [file normalize [lindex $p 0]]
         set opts [lrange $p 1 end]
         set nopts [llength $opts]
         if {$nopts % 2 != 0} {
            error "Parameter \"ProjectFiles\" contains an invalid value \"$p\"."
         }
         # Remember it if the project contains a Verilog source file.
         if { [string match -nocase "*.v" $filename] || [string match -nocase "*.vh" $filename] } {
            set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
            set ${driverns}::HasVerilogSource True
         }

         foreach curext $projfilesexts {
            if { [string match -nocase "*.$curext" $filename] } {
               if { [string match -nocase "*.v" $filename] || [string match -nocase "*.vhd" $filename] || [string match -nocase "*.vh" $filename] } {
                  if { [ dsp_has_testbench ] && [ string match -nocase ${paramvalueTestBenchModule} ${origrootname} ] } {
                     set listvarname [ dsp_get_list_var_name "testbench" ]
                     lappend $listvarname $filename
                  } else {
                     lappend filen $filename
                     ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $filen

                     for {set i 0} {$i < $nopts} {set i [expr {$i + 2}]} {
                        set key [lindex $opts $i]
                        set val [lindex $opts [expr {$i + 1}]]
                        switch -- $key {
                           "-lib" {
                               set_property library $val [get_files -of_object [ get_filesets sources_1 ] [file tail $origname]]
                           }
                        }
                     }
                  }
               } else {
                  set listvarname [ dsp_get_list_var_name $curext ]
                  lappend $listvarname $filename
               }
               break
            }
         }
      }
      # At this point all VHDL & Verilog Files need have been addressed
      # Addressing CR#727593 : .do file passed to questsim doesn't work
      set_property -quiet FILE_TYPE {Verilog Header} [get_files -quiet conv_pkg.v]  

      foreach curext $projfilesexts {
         set listvarname [ dsp_get_list_var_name $curext ]
         if { [ info exists $listvarname ] } {
            set handlername [ dsp_get_add_project_files_handler_name $curext ]
            set findproc [ info proc $handlername ]
            if { [ string length $findproc ] > 0  } {
               eval $handlername $listvarname
            }
         }
      }

      set paramvalueSynthesisTool [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
      if { [string equal -nocase ${paramvalueSynthesisTool} "RDS"]
         || [string equal -nocase ${paramvalueSynthesisTool} "Vivado"] } {

         set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
         set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
         set ipdir ${paramvalueProjectDir}/${paramvalueProject}.srcs/sources_1/ip
         
         set listvarname [ dsp_get_list_var_name ngc ]
         if { [ info exists $listvarname ] } {
            set ngcfiles [ dsp_get_file_name_list $filedir {.ngc} 0 $listvarname]
         } else {
            set ngcfiles [ dsp_get_file_name_list $filedir {.ngc} ]
         }
         if { [llength $ngcfiles] > 0 } {
            ::import_files -fileset [ get_filesets sources_1 ] -force -norecurse $ngcfiles
         }
      } else {
         set fileext ".ngc"
         set listvarname [ dsp_get_list_var_name ngc ]
         if { [ info exists $listvarname ] } {
            dsp_add_file_to_project $filedir $fileext $listvarname
         } else {
            dsp_add_file_to_project $filedir $fileext
         }
      }

      set fileextlist [list]
      lappend fileextlist ".edn"
      lappend fileextlist ".edf"
      lappend fileextlist ".ndf"

      foreach fileext $fileextlist {
         dsp_add_file_to_project $filedir $fileext
      }

      if { [ dsp_has_testbench ] } {
          dsp_add_project_testbench_dat_files
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if [info exists ${driverns}::TopLevelModule] {
         set paramvalueTopLevelModule [ dsp_get_param_value_in_driver_tcl_namespace TopLevelModule ]
         ::set_property top ${paramvalueTopLevelModule} [ get_property srcset [ current_run ] ]
      }
   }

   #-------------------------------------------------------------------------
   # Sets the synthesis settings for vivado.
   #-------------------------------------------------------------------------
   proc dsp_set_vivado_synthesis_settings {} {
       set_property flow {Vivado Synthesis 2013} [get_runs synth_1]
      set paramvalueSynthStrategyName [ dsp_get_param_value_in_driver_tcl_namespace SynthStrategyName ]
      if { [string length ${paramvalueSynthStrategyName}] > 0 } {
         set_property strategy ${paramvalueSynthStrategyName} [get_runs synth_1]
         return
      }
   } 

   #-------------------------------------------------------------------------
   # Sets the synthesis settings for XST.
   #-------------------------------------------------------------------------
   proc dsp_set_xst_synthesis_settings {} {
      set_property flow {XST 14} [get_runs synth_1]
      #set_property strategy Sysgen_Defaults [get_runs synth_1]

      set paramvalueSynthStrategyName [ dsp_get_param_value_in_driver_tcl_namespace SynthStrategyName ]
      if { [string length ${paramvalueSynthStrategyName}] > 0 } {
         if {[string equal -nocase ${paramvalueSynthStrategyName} "XST Defaults*"] } {
            set_property strategy "XST Defaults" [get_runs synth_1]
         } else {
            set_property strategy ${paramvalueSynthStrategyName} [get_runs synth_1]
            return
         }
      }
       
      ::config_run synth_1 -program xst -option -opt_mode -value speed
      ::config_run synth_1 -program xst -option -opt_level -value 1
      set paramvalueKeepHierarchy [ dsp_get_param_value_in_driver_tcl_namespace KeepHierarchy ]
      set moreoptions "-keep_hierarchy ${paramvalueKeepHierarchy}"

      # tmp walk around for CR 618368, pa xml parser cannot read in [], the bus delimiter for verilog
      # should roll back after the cr is fixed
      #if {[dsp_hdllang_is_vhdl]} {
      set paramvalueBusDelimiter [ dsp_get_param_value_in_driver_tcl_namespace BusDelimiter ]
      set moreoptions "$moreoptions -bus_delimiter ${paramvalueBusDelimiter}"
      #}

      set paramvalueHierarchySeparator [ dsp_get_param_value_in_driver_tcl_namespace HierarchySeparator ]
      set moreoptions "$moreoptions -hierarchy_separator ${paramvalueHierarchySeparator}"
      # TODO: Remove this check when PlanAhead settles with the read core property value

      set paramvalueReadCores [ dsp_get_param_value_in_driver_tcl_namespace ReadCores ]
      if {[string equal -nocase ${paramvalueReadCores} "false"]
         || [string equal -nocase ${paramvalueReadCores} "no"]} {
         set moreoptions "$moreoptions -read_cores no"
      } else {
         set moreoptions "$moreoptions -read_cores yes"
      }

      set paramvalueInsertIOBuffers [ dsp_get_param_value_in_driver_tcl_namespace InsertIOBuffers ]
      if { [string equal -nocase ${paramvalueInsertIOBuffers} "false"]
         || [string equal -nocase ${paramvalueInsertIOBuffers} "no"]} {
         set moreoptions "$moreoptions -iobuf no"
      } else {
         set moreoptions "$moreoptions -iobuf yes"
      }

      set paramvalueSynthesisRegisterBalancing [ dsp_get_param_value_in_driver_tcl_namespace SynthesisRegisterBalancing ]
      ::config_run synth_1 -program xst -option -register_balancing -value ${paramvalueSynthesisRegisterBalancing}

      set paramvalueSynthesisRegisterDuplication [ dsp_get_param_value_in_driver_tcl_namespace SynthesisRegisterDuplication ]
      if { [string equal -nocase ${paramvalueSynthesisRegisterDuplication} "false"]
         || [string equal -nocase ${paramvalueSynthesisRegisterDuplication} "no"]} {
         set moreoptions "$moreoptions -register_duplication no"
      } else {
         set moreoptions "$moreoptions -register_duplication yes"
      }

      set paramvalueWriteTimingConstraints [ dsp_get_param_value_in_driver_tcl_namespace WriteTimingConstraints ]
      if { [string equal -nocase ${paramvalueWriteTimingConstraints} "true"]
         || [string equal -nocase ${paramvalueWriteTimingConstraints} "yes"]} {
         set moreoptions "$moreoptions -write_timing_constraints yes"
      } else {
         set moreoptions "$moreoptions -write_timing_constraints no"
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if [info exists ${driverns}::SynthesisConstraintsFile] {
         #set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
         #set projDir [file normalize ${paramvalueProjectDir} ]
         #set filedir "$projDir/../sysgen"
         #if { ![file exists $filedir ] } {
         #   set filedir "$projDir/.."
         #}
         set filedir [ dsp_get_sysgen_project_file_dir ]

         set paramvalueSynthesisConstraintsFile [ dsp_get_param_value_in_driver_tcl_namespace SynthesisConstraintsFile ]
         set origname ${paramvalueSynthesisConstraintsFile}
         set filenameraw "$filedir/$origname"
         if { [file exists $filenameraw] } {
            set filename [file normalize $filenameraw]
         } else {
            set filename [file normalize $origname]
         }

         #set moreoptions "$moreoptions -iuc no"
         set moreoptions "$moreoptions -iuc yes"
         #set moreoptions "$moreoptions -uc \"${paramvalueSynthesisConstraintsFile}\""
         #set moreoptions "$moreoptions -uc ${paramvalueSynthesisConstraintsFile}"
         #set moreoptions "$moreoptions -uc \"[file normalize ${paramvalueSynthesisConstraintsFile}]\""
         #set moreoptions "$moreoptions -uc [file normalize ${paramvalueSynthesisConstraintsFile}]"
         ::import_files -fileset [ get_filesets constrs_1 ] -force -norecurse $filename
      } else {
         set moreoptions "$moreoptions -iuc yes"
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if [info exists ${driverns}::FanoutLimit] {
         set paramvalueFanoutLimit [ dsp_get_param_value_in_driver_tcl_namespace FanoutLimit ]
         set moreoptions "$moreoptions -max_fanout ${paramvalueFanoutLimit}"
      }

      ::config_run synth_1 -program xst -option {More Options} -value "$moreoptions"      
   } 

   #-------------------------------------------------------------------------
   # Sets target language settings.
   #-------------------------------------------------------------------------
   proc dsp_set_target_language_settings {} {
      if { [ dsp_hdllang_is_vhdl ] } {
         set_property target_language VHDL [current_project]
         if { [ dsp_has_testbench ] } {
            set_property -quiet ng.output_hdl_format VHDL [get_filesets sim_1]
         }
      } else {
         set_property target_language Verilog [current_project]
         if { [ dsp_has_testbench ] } {
            set_property -quiet ng.output_hdl_format Verilog [get_filesets sim_1]
         }
      }
   }
    
   #-------------------------------------------------------------------------
   # Sets the synthesis settings.
   #-------------------------------------------------------------------------
   proc dsp_set_synthesis_settings {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::CustomUpdateSynthesisSettingsProc ] } {
         set paramvalueCustomUpdateSynthesisSettingsProc [ dsp_get_param_value_in_driver_tcl_namespace CustomUpdateSynthesisSettingsProc ]
         dsp_run_proc_in_dsp_namespaces ${paramvalueCustomUpdateSynthesisSettingsProc}
      } else {

         set paramvalueSynthesisTool [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
         switch -- ${paramvalueSynthesisTool} {
            "XST" { 
               dsp_set_xst_synthesis_settings 
            }
            "RDS" { 
               dsp_set_vivado_synthesis_settings 
            }
            "Vivado" { 
               dsp_set_vivado_synthesis_settings 
            }
         }
      }
   }
    
   #-------------------------------------------------------------------------
   # Sets the implementation settings.
   #-------------------------------------------------------------------------
   proc dsp_set_implementation_settings {} {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::CustomUpdateImplementationSettingsProc] } {
         set paramvalueCustomUpdateImplementationSettingsProc [ dsp_get_param_value_in_driver_tcl_namespace CustomUpdateImplementationSettingsProc ]
         dsp_run_proc_in_dsp_namespaces ${paramvalueCustomUpdateImplementationSettingsProc}
      } else {

         set paramvalueSynthesisTool [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
         switch -- ${paramvalueSynthesisTool} {
            "XST" {   
               dsp_set_xst_implementation_settings 
            }
            "RDS" {
               dsp_set_vivado_implementation_settings
            }
            "Vivado" {
               dsp_set_vivado_implementation_settings
            }
         }
      }
   }

   #-------------------------------------------------------------------------
   # Sets the vivado implementation settings.
   #-------------------------------------------------------------------------
   proc dsp_set_vivado_implementation_settings {} {
      set_property flow {Vivado Implementation 2013} [get_runs impl_1]
      set paramvalueImplStrategyName [ dsp_get_param_value_in_driver_tcl_namespace ImplStrategyName ]
      if { [string length ${paramvalueImplStrategyName}] > 0 } {
         set_property strategy ${paramvalueImplStrategyName} [get_runs impl_1]
         return
      }
   }
    
   #-------------------------------------------------------------------------
   # Sets the xst implementation settings.
   #-------------------------------------------------------------------------
   proc dsp_set_xst_implementation_settings {} {

      set_property flow {ISE 14} [get_runs impl_1]
      #set_property strategy Sysgen_Defaults [get_runs impl_1]

      set paramvalueImplStrategyName [ dsp_get_param_value_in_driver_tcl_namespace ImplStrategyName ]
      if { [string length ${paramvalueImplStrategyName}] > 0 } {
         if {[string equal -nocase ${paramvalueImplStrategyName} "ISE Defaults*"] } {
            set_property strategy "ISE Defaults" [get_runs impl_1]
         } else {
            set_property strategy ${paramvalueImplStrategyName} [get_runs impl_1]
            return
         }
      }

      set moreoptions {-nt timestamp}
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if [info exists ${driverns}::BlockMemoryMapFile] {
         set paramvalueBlockMemoryMapFile [ dsp_get_param_value_in_driver_tcl_namespace BlockMemoryMapFile ]
         set moreoptions "$moreoptions -bm ${paramvalueBlockMemoryMapFile}"
      }

      ::config_run impl_1 -program ngdbuild -option {More Options} -value "$moreoptions"

      # Determine the type of value the "Map Register Duplication" property accepts
      set paramvalueFamily [ dsp_get_param_value_in_driver_tcl_namespace DSPFamily ]
      switch -- ${paramvalueFamily} {
         "virtex" - "virtexe" - "spartan2" - "spartan2e" {
         }
         default {
            set map_reg_dup [ dsp_get_param_value_in_driver_tcl_namespace MapRegisterDuplication ]
            if {[string equal -nocase $map_reg_dup "true"]
               || [string equal -nocase $map_reg_dup "on"]
               || [string equal -nocase $map_reg_dup "yes"]} {
               set map_reg_dup {true}
            } else {
               set map_reg_dup {false}
            }
         }
      }

      # Map properties
      set mapol [ dsp_get_param_value_in_driver_tcl_namespace MapEffortLevel ]
      if {[string equal -nocase $mapol "high"]} {
         set mapol {high}
      } elseif {[string equal -nocase $mapol "standard"]
         || [string equal -nocase $mapol "std"]} {
         set mapol {std}
      } else {
         set mapol {<none>}
      }

      set paramvalueFamily [ dsp_get_param_value_in_driver_tcl_namespace DSPFamily ]
      switch -glob -- ${paramvalueFamily} {
         "*virtex4*" - "*spartan3*" {
            ::config_run impl_1 -program map -option -ol -value $mapol
            ::config_run impl_1 -program map -option -timing -value true
            ::config_run impl_1 -program map -option -register_duplication -value $map_reg_dup
         }
         "virtex" - "virtexe" - "spartan2" - "spartan2e" {
            ::config_run impl_1 -program map -option -timing -value true
         }
         default {
            ::config_run impl_1 -program map -option -ol -value $mapol
            ::config_run impl_1 -program map -option -register_duplication -value $map_reg_dup
         }
      }

      # Place & Route properties
      set parol [ dsp_get_param_value_in_driver_tcl_namespace PAREffortLevel ]
      if {[string equal -nocase $parol "high"]} {
         set parol {high}
      } elseif {[string equal -nocase $parol "standard"]
         || [string equal -nocase $parol "std"]} {
         set parol {std}
      } else {
         set parol {<none>}
      }
      ::config_run impl_1 -program par -option -ol -value $parol
   }

   #-------------------------------------------------------------------------
   # Sets the simulation settings
   #-------------------------------------------------------------------------
   proc dsp_set_simulation_settings {} {
      if { ![ dsp_has_testbench ] } {
         return
      } else {
         #create_fileset -simset sim_1
         set_property SOURCE_SET sources_1 [ get_filesets sim_1 ]
         set paramvalueTestBenchModule [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]
         set_property top ${paramvalueTestBenchModule} [ get_filesets sim_1 ]
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      set has_simtime [info exists ${driverns}::SimulationTime]
      if {$has_simtime} {
         set paramvalueSimulationTime [ dsp_get_param_value_in_driver_tcl_namespace SimulationTime ]
         set_property runtime ${paramvalueSimulationTime} [ get_filesets sim_1 ]
      }

      if { [ info exists ${driverns}::CustomUpdateSimulationSettingsProc] } {
         set paramvalueCustomUpdateSimulationSettingsProc [ dsp_get_param_value_in_driver_tcl_namespace CustomUpdateSimulationSettingsProc ]
         dsp_run_proc_in_dsp_namespaces ${paramvalueCustomUpdateSimulationSettingsProc}
      } else {
         #set_property NG.MORE_NETGEN_OPTIONS {-sdf_anno false} [ get_filesets sim_1 ]
         set propertylist [string tolower [list_property [get_filesets sim_1]]]
         if { [lsearch $propertylist nl.sdf_anno] >= 0 } {
            set_property nl.sdf_anno false [get_filesets sim_1]
         }

         if { [lsearch $propertylist ng.sdf_anno] >= 0 } {
            set_property ng.sdf_anno false [get_filesets sim_1]
         }
         set_property source_mgmt_mode DisplayOnly [current_project]

         if { ![ dsp_hdllang_is_vhdl ] } {
            set_property xelab.more_options { --timescale 1ns/10ps } [get_filesets sim_1]
         }

         # Commenting out library setting for ISim simulation for Verilog 
         # Setting of MORE_OPTIONS for verilog specific simulation libraries is not requires as of P.15 release
         #  set paramvalueHDLLanguage [ dsp_get_param_value_in_driver_tcl_namespace HDLLanguage ]
         #  set is_vhdl [expr { ${paramvalueHDLLanguage} eq "VHDL" }]
         #  if { !$is_vhdl } {
         #      #set_property -property_name FUSE.MORE_OPTIONS -property_value {-L unisims_ver -L simprims_ver -L xilinxcorelib_ver -L secureip} -object [get_filesets sim_1]
         #      set_property -name FUSE.MORE_OPTIONS -value "-L unisims_ver -L simprims_ver -L xilinxcorelib_ver -L secureip" -object [get_filesets sim_1]
         #  }
      }
   }

   #-------------------------------------------------------------------------
   # Starts the project creation.
   #-------------------------------------------------------------------------
   proc dsp_start_project_creation {} {
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      if { [file exists ${paramvalueProjectDir}] } {
         file delete -force ${paramvalueProjectDir}
      }

      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      set devicenamevalue [ dsp_get_devicename ]
      ::create_project ${paramvalueProject} ${paramvalueProjectDir} -part ${devicenamevalue}
      dsp_inferboard $devicenamevalue
      if { [ dsp_hdllang_is_vhdl ] } {
         set vhdl_lib [ dsp_get_vhdllib ]
         dsp_setvhdllib $vhdl_lib
      }
      
   }

   #-------------------------------------------------------------------------
   # Set the VHDL Default Lib Name
   #------------------------------------------------------------------------
   proc dsp_setvhdllib { vhdl_lib } {
      set_property Default_Lib $vhdl_lib [current_project]
   }
   #--------------------------------------------------------------------------
   # Infer the board that is necessary
   #--------------------------------------------------------------------------
   proc dsp_inferboard { devicenamevalue } {
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::InferBoard] } {
         set paramvalueInferBoard [ dsp_get_param_value_in_driver_tcl_namespace InferBoard]
      } else {
         if { [ dsp_get_param_value_in_driver_tcl_namespace Compilation ] == "IP Catalog" } {
            set paramvalueInferBoard 1 
         } else {
            return
         }
      }
      if { $paramvalueInferBoard == 0 } {
         return
      }
      set boards [get_boards]
      foreach board $boards {
         set device [get_property DEVICE $board]
         set speed [get_property SPEED $board]
         set package [get_property PACKAGE $board]
         if { "$device$package$speed" == $devicenamevalue } {
            set_property board $board [current_project]
            return 
         } 
      } 
   }


   #-------------------------------------------------------------------------
   # Finishes the project creation.
   #-------------------------------------------------------------------------
   proc dsp_finish_project_creation {} {
      if { [catch current_project] } {
         return
      }
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      if { [ info exists ${driverns}::PostProjectCreationProc ] } {
         set paramvaluePostProjectCreationProc [ dsp_get_param_value_in_driver_tcl_namespace PostProjectCreationProc ]
         dsp_run_proc_in_dsp_namespaces ${paramvaluePostProjectCreationProc}
      }
      ::close_project
   }

   #-------------------------------------------------------------------------
   # return relative file path
   #-------------------------------------------------------------------------
   proc dsp_get_proj_relative_path {filepath} {
      set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set projDir [file normalize ${paramvalueProjectDir} ]
      set toppath "$projDir/.."
      set toppath [ file normalize $toppath ]
      set normalpath [ file normalize $filepath ]
      set toppathsize [ string length $toppath ]
      set endidx [ expr $toppathsize - 1 ]
      set topsub [ string range $normalpath 0 $endidx ]
      if { [ string match $topsub $toppath ]} {
         set startidx [ expr $toppathsize + 1 ]
         set relativepath [ string range $normalpath $startidx end ]
         return $relativepath
      } else {
         return $filepath
      }
   }

   #-------------------------------------------------------------------------
   # add file with specific extention as  nodes to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_file_ext {fpbxml filedir fileext { skipfiles "" }} {
      if { [llength $skipfiles] > 0 } {
         upvar $skipfiles skipfls
         set localcopyskipfl $skipfls
         set extfiles [ dsp_get_file_name_list $filedir $fileext 0 localcopyskipfl ]
      } else {
         set extfiles [ dsp_get_file_name_list $filedir $fileext ]
      }

      if { [llength $extfiles] > 0 } {
         dsp_bxml_add_file_list $fpbxml $extfiles
      }
   }

   #-------------------------------------------------------------------------
   # copy a list of ucf files to ncf files and add ncf files to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_copy_ucf_add_ncf {fpbxml ucffilenamelist} {
      if { [llength $ucffilenamelist] > 0 } {
         foreach ucffname $ucffilenamelist {
            if { [dsp_is_good_string $ucffname] } {
               set nlength [string length $ucffname]
               set nidxstart [ expr { $nlength - 3 } ]
               set nidxend [ expr { $nlength - 1 } ]
               set ncffname [string replace $ucffname $nidxstart $nidxend "ncf"]
               if { ![file exists $ncffname ] } {
                  file copy -force $ucffname $ncffname
               }
               dsp_bxml_add_file $fpbxml $ncffname
            }
         }
      }
   }

   #-------------------------------------------------------------------------
   # write sime files which need dsp module to handle in pa project
   #-------------------------------------------------------------------------
   proc dsp_write_manualsimfile_list {filenamelist} {

      set subname [ dsp_get_param_value_in_sysgensubmodule_tcl_namespace submodule_name ]
      set filename ${subname}.simset
      set tmpfilename "./sysgen/$filename"
      set tmpfilename [file normalize $tmpfilename ]
      set fp [open $tmpfilename w]

      if { [llength $filenamelist] > 0 } {
         foreach fname $filenamelist {
            if { [dsp_is_good_string $fname] } {
               if { [file exists $fname] } {
                  puts $fp $fname
               }
            }
         }
      }

      close $fp
   }

   #-------------------------------------------------------------------------
   # add a list of files nodes to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_file_list {fpbxml filenamelist {vhdllibname ""}} {
      if { [llength $filenamelist] > 0 } {
         foreach fname $filenamelist {
            if { [dsp_is_good_string $fname] } {
               dsp_bxml_add_file $fpbxml $fname $vhdllibname
            }
         }
      }
   }

   #-------------------------------------------------------------------------
   # add a file node to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_file {fpbxml filename {vhdllibname ""}} {
      set filename [dsp_get_proj_relative_path $filename]
      set fnameext [split $filename .]
      set ntmp [llength $fnameext]
      if { $ntmp > 1} {
         set sext [lindex $fnameext end]
         dsp_bxml_add_file_type $fpbxml $filename $sext $vhdllibname
      }
   }

   #-------------------------------------------------------------------------
   # add a file node to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_file_type {fpbxml filename filetype {vhdllibname ""}} {
      set filetimestamp 0
      if { [file exists $filename] } {
         set filetimestamp [file mtime $filename]
      }

      puts -nonewline $fpbxml {<File Name="}
      puts -nonewline $fpbxml $filename
      puts -nonewline $fpbxml {" Type="}

      if [string match -nocase "vhd" $filetype] {
         puts -nonewline $fpbxml {VHDL}
      } elseif [string match -nocase "v" $filetype] {
         if [string match -nocase "conv_pkg.v" [file tail $filename]] {
            puts -nonewline $fpbxml {VHeader}
         } else {
            puts -nonewline $fpbxml {Verilog}
         }
      } else {
         puts -nonewline $fpbxml [string toupper $filetype]
      }

      puts $fpbxml {">}
      puts $fpbxml "<Description>This is $filetype file</Description>"
      if { [string match -nocase "ncf" $filetype] } {
         puts -nonewline $fpbxml {<Properties IsEditable="false" IsTrackable="false" IsVisible="false" Timestamp="}
      } elseif { [string match -nocase "xdc" $filetype] } {
         puts -nonewline $fpbxml {<Properties IsEditable="false" IsTrackable="false" IsVisible="true" ScopedToRef="}
         set paramvalueTopLevelModule [ dsp_get_param_value_in_driver_tcl_namespace TopLevelModule ]
         puts -nonewline $fpbxml ${paramvalueTopLevelModule}
         puts -nonewline $fpbxml {" Timestamp="}
      } else {
         puts -nonewline $fpbxml {<Properties IsEditable="false" IsTrackable="false" IsVisible="true" Timestamp="}
      }
      puts $fpbxml "$filetimestamp\"/>"
      if { [string match -nocase "ngc" $filetype] } {
         puts $fpbxml {<UsedIn Val="SYNTHESIS"/>}
         puts $fpbxml {<UsedIn Val="IMPLEMENTATION"/>}
      } elseif { [string match -nocase "v" $filetype] || [string match -nocase "vhd" $filetype]} {
         set dirnames [split $filename /]
         set sfilename [lindex $dirnames end]
         set origrootname [ file rootname [lindex $sfilename 0] ]
         set paramvalueTestBenchModule [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]
         if { [ dsp_has_testbench ] && [ string match -nocase ${paramvalueTestBenchModule} $origrootname ] } {
            puts $fpbxml {<UsedIn Val="SIMULATION"/>}
         } else {
            if { [string match -nocase "vhd" $filetype] } {
               if { ![string equal $vhdllibname ""] } {
                  puts -nonewline $fpbxml {<Library Name="}
                  puts -nonewline $fpbxml ${vhdllibname}
                  puts $fpbxml {"/>}
               }
            }
            puts $fpbxml {<UsedIn Val="SYNTHESIS"/>}
            puts $fpbxml {<UsedIn Val="SIMULATION"/>}
         }
      } elseif { [string match -nocase "ucf" $filetype] || [string match -nocase "ncf" $filetype] || [string match -nocase "xcf" $filetype]} {
         puts $fpbxml {<UsedIn Val="IMPLEMENTATION"/>}
      } elseif { [string match -nocase "xdc" $filetype] } {
         puts $fpbxml {<UsedIn Val="SYNTHESIS"/>}
         puts $fpbxml {<UsedIn Val="IMPLEMENTATION"/>}
      } elseif { [string match -nocase "dat" $filetype] } {
         puts $fpbxml {<UsedIn Val="SIMULATION"/>}
      } elseif { [string match -nocase "mif" $filetype] || [string match -nocase "coe" $filetype] } {
         puts $fpbxml {<UsedIn Val="SIMULATION"/>}
      } else {
         puts $fpbxml {<UsedIn Val="SYNTHESIS"/>}
      }
      puts $fpbxml {</File>}
   }

   #-------------------------------------------------------------------------
   # add files to bxml
   #-------------------------------------------------------------------------
   proc dsp_bxml_add_files {fp} {
      set projfilesexts "ucf xdc mif ngc v vh vhd testbench"
      set retcode [ dsp_reset_project_file_list_var $projfilesexts ]

      #set ucffiles [list]
      #set xdcfiles [list]
      #set tbfiles [list]
      set manualsimfiles [list]
      #set miffiles [list]

      #set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      #set projDir [file normalize ${paramvalueProjectDir} ]
      #set filedir "$projDir/../sysgen"
      #set filedir [file normalize $filedir ]
      #if { ![file exists $filedir ] } {
      #   set filedir "$projDir/.."
      #   set filedir [file normalize $filedir ]
      #}
      set filedir [ dsp_get_sysgen_project_file_dir ]

      set paramvalueTestBenchModule [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]
      set paramvalueProjectFiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
      foreach p ${paramvalueProjectFiles} {
         set filen [list]
         set origname [lindex $p 0]
         set origrootname [ file rootname [lindex $p 0] ]
         set filenameraw "$filedir/$origname"
         if { [file exists $filenameraw] } {
            set filename [file normalize $filenameraw]
         } else {
            set filename [file normalize $origname]
         }
         #set filename [file normalize [lindex $p 0]]
         set opts [lrange $p 1 end]
         set nopts [llength $opts]
         if {$nopts % 2 != 0} {
            error "Parameter \"ProjectFiles\" contains an invalid value \"$p\"."
         }
         # Remember it if the project contains a Verilog source file.
         if { [string match -nocase "*.v" $filename] || [string match -nocase "*.vh" $filename]  } {
            set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
            set ${driverns}::HasVerilogSource True
         }

         foreach curext $projfilesexts {
            if { [string match -nocase "*.$curext" $filename] } {
               if { [string match -nocase "*.v" $filename] || [string match -nocase "*.vhd" $filename] || [string match -nocase "*.vh" $filename]  } {
                  if { [ dsp_has_testbench ] && [ string match -nocase ${paramvalueTestBenchModule} ${origrootname} ] } {
                     set listvarname [ dsp_get_list_var_name "testbench" ]
                     lappend $listvarname $filename
                  } else {
                     lappend filen $filename
                     set vhdllibname ""

                     for {set i 0} {$i < $nopts} {set i [expr {$i + 2}]} {
                        set key [lindex $opts $i]
                        set val [lindex $opts [expr {$i + 1}]]
                        switch -- $key {
                           "-lib" {
                              set vhdllibname $val
                              #puts $fpcallback2 "set_property library ${val} \[get_files -of_object \{sources_1\} ${origname}\]"
                              #set_property library $val [get_files -of_object {sources_1} $origname]
                           }
                        }
                     }

                     if { [string equal $vhdllibname "work"] } {
                        dsp_bxml_add_file_list $fp $filen
                     } else {
                        dsp_bxml_add_file_list $fp $filen $vhdllibname
                     }
                  }
               } else {
                  set listvarname [ dsp_get_list_var_name $curext ]
                  lappend $listvarname $filename
               }
               break
            }
         }
      }

      foreach curext $projfilesexts {
         set listvarname [ dsp_get_list_var_name $curext ]
         if { [ info exists $listvarname ] } {
            set handlername [ dsp_get_bxml_add_project_files_handler_name $curext ]
            set findproc [ info proc $handlername ]
            if { [ string length $findproc ] > 0  } {
               eval $handlername $fp $listvarname
            }
         }
      }

      set synthesistooltype [ dsp_get_param_value_in_driver_tcl_namespace SynthesisTool ]
      if {[string equal -nocase ${synthesistooltype} "RDS"]
         || [string equal -nocase ${synthesistooltype} "Vivado"] } {

         #set paramvalueProjectDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
         #set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
         #set ipdir ${paramvalueProjectDir}/${paramvalueProject}.srcs/sources_1/ip
         set ipdir [ dsp_get_scoped_ip_dir_full_path ]
         if { ![ file exists $ipdir ] } {
            file mkdir $ipdir
         }
         set coeSources [ glob -nocomplain $filedir/*.coe ]
         foreach coefile $coeSources {
            file copy -force $coefile $ipdir
            dsp_bxml_add_file $fp $coefile
         }

         set callbackname "sgpaintcallback.tcl"
         if { [file exists $callbackname ] } {
             file delete -force $callbackname
         }
         # Added for SgVivadoCore.tcl file for callback from Vivado project
         set CoreConfigTclFile "${filedir}/SgVivadoCore.tcl"
         set CoreConfigTclFile [file normalize ${CoreConfigTclFile}]

         set listvarname [ dsp_get_list_var_name ngc ]
         if { [ info exists $listvarname ] } {
            set ngcfiles [ dsp_get_file_name_list $filedir {.ngc} 0 $listvarname]
         } else {
            set ngcfiles [ dsp_get_file_name_list $filedir {.ngc} ]
         }

         if { [llength $ngcfiles] > 0} {
            dsp_bxml_add_file_list $fp $ngcfiles
         }
      } else {
         set fileext ".ngc"
         set listvarname [ dsp_get_list_var_name ngc ]
         if { [ info exists $listvarname ] } {
            dsp_bxml_add_file_ext $fp $filedir $fileext $listvarname
         } else {
            dsp_bxml_add_file_ext $fp $filedir $fileext
         }
     }
 
     set fileextlist [list]
     lappend fileextlist ".edn"
     lappend fileextlist ".edf"
     lappend fileextlist ".ndf"

     foreach fileext $fileextlist {
        dsp_bxml_add_file_ext $fp $filedir $fileext
     }

     if { [ dsp_has_testbench ] } {
        set listvarname [ dsp_get_list_var_name "testbench" ]
        if { [info exists $listvarname] } {
           set tbfiles [set $listvarname] 
        } else {
           set tbfiles ""
        }
        if { [llength $tbfiles] > 0 } {
           set manualsimfiles [ dsp_merge_lists $manualsimfiles $tbfiles ]
        }
 
        set datapath [ dsp_get_sysgen_project_file_search_path_list ]
        set datfiles [ dsp_get_file_name_list_from_pathlist $datapath {.dat} ]

        if { [llength $datfiles] > 0 } {
           set manualsimfiles [ dsp_merge_lists $manualsimfiles $datfiles ]
        }

        if { [llength $manualsimfiles] > 0 } {
           dsp_write_manualsimfile_list $manualsimfiles
        } else {
           set subname [ dsp_get_param_value_in_sysgensubmodule_tcl_namespace submodule_name ]
           set filename ${subname}.simset
           set tmpfilename "./sysgen/$filename"
           set tmpfilename [file normalize $tmpfilename ]

           if { [ file exists $tmpfilename ] == 1 } {
              file delete $tmpfilename
           }
        }

     }
   }

   #-------------------------------------------------------------------------
   # Creates bxml for SysGen sub module in a PA project
   #-------------------------------------------------------------------------
   proc dsp_write_bxml_file {} {
      set subname [ dsp_get_param_value_in_sysgensubmodule_tcl_namespace submodule_name ]
      set filename ${subname}.bxml
      set bxmlfilename "./$filename"
      set bxmlfilename [file normalize $bxmlfilename ]
      set fp [open $bxmlfilename w]
      set smachinetimestamp [clock seconds]
      puts $fp {<Root MajorVersion="0" MinorVersion="18" xmlns="" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="Compositefile.xsd">}
      set paramvalueTopLevelModule [ dsp_get_param_value_in_driver_tcl_namespace TopLevelModule ]
      set devicenamevalue [ dsp_get_devicename ]
      puts $fp "<CompositeFile CompositeFileTopName=\"${paramvalueTopLevelModule}\" CanBeSetAsTop=\"false\" CanDisplayChildGraph=\"true\" Part=\"${devicenamevalue}\">"
      puts $fp {<Description>A description of the composite file</Description>}

      puts -nonewline $fp {<Generation Name="SYNTHESIS" State="GENERATED" Timestamp="}
      puts $fp "$smachinetimestamp\"/>"

      puts -nonewline $fp {<Generation Name="IMPLEMENTATION" State="GENERATED" Timestamp="}
      puts $fp "$smachinetimestamp\"/>"

      puts -nonewline $fp {<Generation Name="SIMULATION" State="GENERATED" Timestamp="}
      puts $fp "$smachinetimestamp\"/>"

      puts $fp {<FileCollection Name="SOURCES" Type="SOURCES">
<Description>A description for this file collection</Description>}

      dsp_bxml_add_files $fp

      puts $fp {</FileCollection>
</CompositeFile>
</Root>}
      close $fp
   }

   #-------------------------------------------------------------------------
   # Creates a SysGen sub module for existing PlanAhead project.
   #-------------------------------------------------------------------------
   proc dsp_create_sysgen_submodule {} {
      dsp_write_bxml_file
    }

   #-------------------------------------------------------------------------
   # Creates a new PlanAhead project.
   #-------------------------------------------------------------------------
   proc dsp_create_planahead_project {} {
      dsp_start_project_creation
      dsp_set_synthesis_settings
      dsp_set_implementation_settings
      dsp_set_simulation_settings
      dsp_set_target_language_settings
      if { [ dsp_get_param_value_in_driver_tcl_namespace Compilation ] == "IP Catalog" } {
          dsp_ipp_create_ips 
      } else {
          dsp_add_project_files
      }

      if { [ dsp_is_bitstream_compilation ] } {
         dsp_generate_planahead_bitstream
      }  

      dsp_finish_project_creation
   }

   #-------------------------------------------------------------------------
   # check bitstream file.
   #-------------------------------------------------------------------------
   proc dsp_check_bitstream_file {} {
      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
 
      set bitfile ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/${paramvalueProject}.bit 
      if { ! [ file exists $bitfile ] } {
         set bitgenerrmsg "failed to generate bitstream file $bitfile.\n"
         #error "ERROR: $bitgenerrmsg"
         puts "ERROR: $bitgenerrmsg"
         exit 1
      }
   }

   #-------------------------------------------------------------------------
   # Compiles an PlanAhead project into a bitstream.
   #-------------------------------------------------------------------------
   proc dsp_generate_planahead_bitstream {} {
      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
       
      ::reset_run synth_1
      ::reset_run impl_1

      #::set_param logicopt.enableMandatoryLopt no

      ::launch_runs synth_1
      ::wait_on_run synth_1

      set runmelog ${paramvalueProjDir}/${paramvalueProject}.runs/synth_1/runme.log
      dsptest_print_file_to_stdout $runmelog

      #::set_property add_step Bitgen [get_runs impl_1] 

      ::launch_runs impl_1 -to_step bitgen
      ::wait_on_run impl_1

      set runmelog ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/runme.log
      dsptest_print_file_to_stdout $runmelog

      dsp_check_bitstream_file
   }

   #-------------------------------------------------------------------------
   # Do smoket test for an PlanAhead project
   #-------------------------------------------------------------------------
   proc dsptest_compile_planahead_project {} {
      set status [dsp_handle_exception {
         dsp_process_parameters
         dsp_dump_parameters
      } "ERROR: An error occurred when processing project parameters."]
      if {!$status} { return }

      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]

      ::set_param logicopt.enableMandatoryLopt no

      set ext {.xpr}
      if { [ dsp_is_running_vivado ]} {
         set ext {.xpr}
      } else {
         set ext {.ppr}
      }
      ::open_project ${paramvalueProjDir}/${paramvalueProject}${ext}

      if { [ dsp_is_bitstream_compilation ] } {
         ::open_rtl_design -name rtl_1
         ::open_impl_design
         ::close_project
         dsp_check_bitstream_file
         return;
      }

      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      set has_simtime [info exists ${driverns}::SimulationTime]
      if {$has_simtime && [ dsp_is_running_planAhead ]} {
         set isimcmdfn [file normalize "xt_isim.cmd"]
         set isimcmd [open $isimcmdfn w]
         puts $isimcmd {onerror {resume}}
         set paramvalueSimulationTime [ dsp_get_param_value_in_driver_tcl_namespace SimulationTime ]
         puts $isimcmd "run ${paramvalueSimulationTime}"
         puts $isimcmd "quit -f"
         set_property isim.cmdfile $isimcmdfn [get_filesets sim_1]
         close $isimcmd
      }

      set ips [::get_ips -quiet]
      set nips [llength $ips]
      if { $nips > 0 } {
         ::reset_ip -ips [::get_ips]
         ::generate_ip -ips [::get_ips]
      }

      ::reset_run synth_1
      ::reset_run impl_1

      ::open_rtl_design -name rtl_1

      if { [ dsp_has_testbench ] } {
         if { [dsptest_launch_sim behavioral] == 0 } {
            ::close_project
            return
         }
      }

      ::launch_runs synth_1
      ::wait_on_run synth_1

      set runmelog ${paramvalueProjDir}/${paramvalueProject}.runs/synth_1/runme.log
      dsptest_print_file_to_stdout $runmelog

      set testerns [ dsp_get_tester_tcl_namespace_qualifiers ]
      if { [info exists ${testerns}::is_doing_planAheadGenPostSynthTest] } {
         ::close_project
         return
      }

      ::launch_runs impl_1
      ::wait_on_run impl_1

      set runmelog ${paramvalueProjDir}/${paramvalueProject}.runs/impl_1/runme.log
      dsptest_print_file_to_stdout $runmelog

      ::open_impl_design

      if { [ dsp_has_testbench ] } {
         if { [dsptest_launch_sim timing] == 0 } {
            ::close_project
            return
           }
      }

      ::close_project
   }

   #-------------------------------------------------------------------------
   # Entry point for creating a new PlanAhead project.
   #-------------------------------------------------------------------------
   proc dsp_create_project {} {
      set status [dsp_handle_exception {
         dsp_process_parameters
         dsp_dump_parameters
      } "ERROR: An error occurred when processing project parameters."]
      if {!$status} { return }

      set sysgensubns [ dsp_get_sysgensubmodule_tcl_namespace_qualifiers ]
      if { [info exists ${sysgensubns}::is_generating_sysgensubmodule] } {
         set status [dsp_handle_exception {
            dsp_create_sysgen_submodule
         } "ERROR: An error occurred when creating the Vivado project."]
         if {!$status} { return }
      } else {
         set status [dsp_handle_exception {
            dsp_create_planahead_project
         } "ERROR: An error occurred when creating the Vivado project."]
         if {!$status} { return }
      }
   }

   #-------------------------------------------------------
   # Check is the flow is Vivado or PlanAhead. Returns
   # 1 for vivado
   #-------------------------------------------------------
   proc dsp_isLinuxOS {} {
      set isLinux 0
      package require platform
      set osType [platform::generic]
      if { [string equal -nocase -length 5 $osType "linux"] == 1 } {
         set isLinux 1
      }
      return $isLinux
   }

   #-------------------------------------------------------
   # Launch the simulator based on the right context with options
   # passed as arguments 
   #-------------------------------------------------------
   proc dsptest_launch_sim { mode } {
      set simlog [dsptest_sim_log_file]
      if {[ dsp_is_running_vivado ]} {
         if { [ string match $mode timing ] } {
            ::launch_xsim -mode [dsptest_translate_sim_mode $mode] -type [dsptest_get_sim_type $mode] -simset sim_1 
     } else {
            ::launch_xsim -mode [dsptest_translate_sim_mode $mode] -simset sim_1 
     }
         # use this check until close_sim works correctly on Windows also
         if { [dsp_isLinuxOS] } {
            ::close_sim
         }
      } else {
         ::launch_isim -batch -mode $mode -simset sim_1
         set simlog [dsptest_sim_log_file]
         set isimerrmsg [ dsptest_wait_on_isim $simlog $mode 1 ]
         if { [string length $isimerrmsg] > 0 } {
            return 0
         }
      }
      return 1
   }

   #--------------------------------------------------------
   # Return the simulation mode by mapping isim simulation mode
   # with xsim
   # -------------------------------------------------------
   proc dsptest_translate_sim_mode { mode } {
      switch -exact $mode {
         "timing"
         {return "post-implementation"}
         default
         {return $mode}
      }
   }

   #--------------------------------------------------------
   # Return the simulation type
   # with xsim
   # when we say 'timing', what we really want is 'functional'
   # -------------------------------------------------------
   proc dsptest_get_sim_type { mode } {
      switch -exact $mode {
         "timing"
         {return "functional"}
         default
         {return ""}
      }
   }

   #-------------------------------------------------------
   # Return path to the simulation log file to parse for errors
   # Used only by PlanAhead as in Vivado the error appears in
   # the vivad.log file 
   #-------------------------------------------------------
   proc dsptest_sim_log_file {} {
      set paramvalueProjDir [ dsp_get_param_value_in_driver_tcl_namespace ProjectDir ]
      set paramvalueProject [ dsp_get_param_value_in_driver_tcl_namespace Project ]
      if {[ dsp_is_running_vivado ]} {
         return ${paramvalueProjDir}/${paramvalueProject}.sim/sim_1/isim.log
      } else {
         return ${paramvalueProjDir}/${paramvalueProject}.sim/sim_1/isim.log
      }
   }
  
  #-------------------------------------------------------
  # Here are some file processing libraries that used in dsp_ip_packager.
  # There file processing libraries are very important.
  # You can use these functions to find files with patterns, 
  # read in file, write data to file, replace certain string with file. 
  # If you find any mistakes, please contact Guosheng Wu
  # Emial:guoshen@xilinx.com
  #-------------------------------------------------------
  #-------------------------------------------------------
  # Return file list of full path names under base director with pattern
  # basedir - the directory to start looking in 
  # pattern - A pattern, as defined by the glob command, that the files must match 
  #-------------------------------------------------------
    proc dsp_find_files_with_pattern { basedir pattern } {  
       set basedir [string trimright [file join [file normalize $basedir] { }]]
       set fileList {}
       foreach fileName [glob -nocomplain -type {f r} -path $basedir $pattern] {
          lappend fileList $fileName
       }
       foreach dirName [glob -nocomplain -type {d  r} -path $basedir *] {
          set subDirList [dsp_find_files_with_pattern $dirName $pattern]
          if { [llength $subDirList] > 0 } {
             foreach subDirFile $subDirList {
                lappend fileList $subDirFile
             }
         }
      }
      return $fileList
 }
  #-------------------------------------------------------
  # Read file to memory
  # filename: the full path file 
  # return data from filename
  #-------------------------------------------------------
    proc dsp_read_file {filename} { 
       set fd [open $filename]
       set data [read $fd]
       close $fd
       return $data
    }     
  #-------------------------------------------------------
  # Write file with data
  # filename: the full path file 
  # data: data need to write to file
  #-------------------------------------------------------
    proc dsp_write_file {filename data} { 
       set fd [open $filename w]
       puts -nonewline $fd $data
       close $fd
    } 
  
  #-------------------------------------------------------
  # replace data in file 
  # filename: the full path file 
  # pattern: pattern for replace
  # replacement: new string used to replace stirng
  #-------------------------------------------------------
    proc dsp_replace_in_file {filename pattern replacement} { 
       set cont [dsp_read_file $filename]
       regsub -all $pattern $cont $replacement result
       dsp_write_file $filename $result
    } 
  #-------------------------------------------------------
  # Copy file to specified location
  # baseDir: base directory, from which to copy files
  # destDir: Destination Directory
  # patterns: pattern list. for example, set a {"*.v"} or set a {"*.v" "*.hdl" "*.ngc"}, using space to seperate
  #-------------------------------------------------------
   proc dsp_ip_packager_copy_files {baseDir destDir patterns} {  
       file mkdir $destDir
       foreach pattern $patterns {
          set ipFiles [dsp_find_files_with_pattern $baseDir $pattern]
          foreach absFile $ipFiles {
           if { [dsp_isLinuxOS] } {
			file copy -force $absFile $destDir
			
           } else {
			if { [string length $absFile] <256 } {
				file copy -force $absFile $destDir
		   	   } else {

			error "ERROR:file path too long, please reduce the path length: $absFile" 

		        }
           }
		
          }
      }
  }
 
  #-------------------------------------------------------
  # Here are some element functions for dsp_ip_packager.
  # If you find any mistakes, please contact Guosheng Wu
  # Emial:guoshen@xilinx.com
  #-------------------------------------------------------
  #-------------------------------------------------------
  # Return the IP Packager file location
  #-------------------------------------------------------
    proc dsp_ip_packager_get_location { } {
       return "ip_catalog"
    }
  #-------------------------------------------------------
  # Return the top level module name
  #-------------------------------------------------------
    proc dsp_ip_packager_get_top_name { } {
       set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
       return [dsp_required_parameter ${driverns}::TopLevelModule]
    }
  #-------------------------------------------------------
  # Return vendor value
  #-------------------------------------------------------    
    proc dsp_ip_packager_get_vendor {} {
       set text [dsp_get_param_value_in_driver_tcl_namespace IP_Vendor_Text]
       set replace [string map {" " "_"} $text]
       return $replace
    }
  #-------------------------------------------------------
  # Return library value
  #-------------------------------------------------------
    proc dsp_ip_packager_get_library {} {
       set lib [dsp_get_param_value_in_driver_tcl_namespace IP_Library_Text]
       set replace [string map {" " "_"} $lib]
       return $replace
    }
  #-------------------------------------------------------
  # Return Version number
  #-------------------------------------------------------
    proc dsp_ip_packager_get_version {} {
       set version [dsp_get_param_value_in_driver_tcl_namespace IP_Version_Text]
       set result [split $version "."]
       if { [llength $result] < 2 } {
          set ver [format "%s.0" $version]
          return $ver
       } else {
          return $version
       }
    }
    
    proc dsp_ip_packager_get_revision {} {
       set revision [dsp_get_param_value_in_driver_tcl_namespace IP_Revision]
       return $revision
    }
  #-------------------------------------------------------
  # Return taxonomy
  #-------------------------------------------------------
    proc dsp_ip_packager_get_taxonomy {} {
       set taxonomy [dsp_get_param_value_in_driver_tcl_namespace IP_Categories_Text]
       set replace [string map {" " "_"} $taxonomy]
       set final [format "{/%s}" $replace]
       return $final
    }
    
  #-------------------------------------------------------
  # Return ip dir
  #-------------------------------------------------------
    proc dsp_ip_packager_get_common_Repos_flag {} {
       return [dsp_get_param_value_in_driver_tcl_namespace IP_Common_Repos]
    }
    proc dsp_ip_packager_get_common_Repos {} {
       set repos [dsp_get_param_value_in_driver_tcl_namespace IP_Dir]
       return $repos
    }

  #-------------------------------------------------------
  # Return Auto Infer
  #-------------------------------------------------------
    proc dsp_ip_packager_get_Auto_Infer_flag {} {
       return [dsp_get_param_value_in_driver_tcl_namespace IP_Auto_Infer]
    }
  #-------------------------------------------------------
  # get the status of this IP
  #-------------------------------------------------------    
    proc dsp_ip_packager_get_life_cycle {} {
       set cycle [dsp_get_param_value_in_driver_tcl_namespace IP_LifeCycle_Menu]
       if {$cycle == "1"} {
          return {Production}
       }
       if {$cycle == "2"} {
          return {Beta}
       }
       if {$cycle == "3"} {
          return "Pre-Production"
       }
    }
  #-------------------------------------------------------
  # get the descriptions for the ip
  #-------------------------------------------------------    
    proc dsp_ip_packager_get_description {} {
       set text [dsp_get_param_value_in_driver_tcl_namespace IP_Description]
       set descrip [format " This IP was generated from System Generator. All changes must be made in SysGen model. %s " $text]
       return $descrip
    }
  #-------------------------------------------------------
  # Set the default values for ip packager process
  #-------------------------------------------------------
    proc dsp_ip_packager_set_default_value { } {  
       set currentCore [ipx::current_core]
       set_property vendor [dsp_ip_packager_get_vendor] $currentCore
       set_property library [dsp_ip_packager_get_library] $currentCore
       set_property name [dsp_ip_packager_get_top_name] $currentCore
       set_property version [dsp_ip_packager_get_version] $currentCore
       set_property core_revision [dsp_ip_packager_get_revision] $currentCore
       set_property display_name [dsp_ip_packager_get_top_name] $currentCore
       set_property description [dsp_ip_packager_get_description] $currentCore
       set_property company_url {} $currentCore
       set_property taxonomy [dsp_ip_packager_get_taxonomy] $currentCore
    } 
  #-------------------------------------------------------
  # Set support family for ip packager process
  #-------------------------------------------------------
    proc dsp_ip_packager_set_support_family { } { 
        #set the support family
       set currentCore [ipx::current_core]
       set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
       set tmplist [list]
       lappend tmplist [dsp_required_parameter ${driverns}::DSPFamily]
       lappend tmplist [dsp_ip_packager_get_life_cycle]
       set_property supported_families $tmplist $currentCore
    }
 
  #-------------------------------------------------------
  #Set the payment property for IP
  #required: true or false. If true, it requires payment, else no payment needs
  # 
  #-------------------------------------------------------
  proc dsp_ip_packager_set_payment {required} { 
      set currentCore [ipx::current_core]
      set_property payment_required $required $currentCore
      #set_property supports_coregen {false} $currentCore
  } 

  #-------------------------------------------------------
  #Set the license property for IP
  #license: license key
  #descrip: description for the license key
  #-------------------------------------------------------
    proc dsp_ip_packager_set_license {license descrip} { 
       set currentCore [ipx::current_core]
       ipx::add_license_key $license $currentCore
       set_property description $descrip [ipx::get_license_key $license $currentCore]
    } 
  #-------------------------------------------------------
  # Get IP path based on filled property 
  #-------------------------------------------------------
    proc dsp_ip_packager_get_full_path {} {  
       set currentCore [ipx::current_core]
       dsp_ip_packager_set_default_value
       dsp_ip_packager_set_support_family
       set root [get_property root_directory $currentCore]
       set ven [get_property vendor $currentCore]
       set lib [get_property library $currentCore]
       set nam [get_property name $currentCore]
       set ver [get_property version $currentCore]
       set folder [dsp_ip_packager_get_location]
       set verlist [split $ver {.}]
       set verstr ""
       foreach verpart $verlist {
          if { [string length $verstr] < 1 } {
             set verstr $verpart
          } else {
             set verstr [format "%s_%s" $verstr $verpart]
          }
       }
       set ipname [format "%s/%s/%s_%s_%s_v%s" $root $folder $ven $lib $nam $verstr]
       return $ipname
    } 
  #-------------------------------------------------------
  # Get IP name based on filled property 
  #-------------------------------------------------------
    proc dsp_ip_packager_get_ip_name {} {  
       set currentCore [ipx::current_core]
       dsp_ip_packager_set_default_value
       dsp_ip_packager_set_support_family
       set ven [get_property vendor $currentCore]
       set lib [get_property library $currentCore]
       set nam [get_property name $currentCore]
       set ver [get_property version $currentCore]
       set verlist [split $ver {.}]
       set verstr ""
       foreach verpart $verlist {
          if { [string length $verstr] < 1 } {
             set verstr $verpart
          } else {
             set verstr [format "%s_%s" $verstr $verpart]
          }
       }
       set ipname [format "%s_%s_%s_v%s" $ven $lib $nam $verstr ]
       return $ipname
    } 
  #-------------------------------------------------------
  # Here are some functions that actually doing dsp_ip_packager.
  # If you find any mistakes, please contact Guosheng Wu
  # Emial:guoshen@xilinx.com
  #-------------------------------------------------------
  #-------------------------------------------------------
  # add files to file group
  # dir: directory to find files
  # pattern: pattern file format
  #-------------------------------------------------------
   proc dsp_ip_packager_add_files_to_group_xci {dir group patterns libname} {  
      set root [get_property root_directory [ipx::current_core]]
      foreach pattern $patterns {
         set ipFiles [dsp_find_files_with_pattern $dir $pattern]
         foreach absFile $ipFiles {
            set file [string range $absFile [expr [string length $root] + 1] [string length $absFile]]
            ipx::add_file $file $group
            set_property library_name $libname [ipx::get_file $file $group]
         }
      }
  }
  #-------------------------------------------------------
  # add files to file group
  # dir: directory to find files
  # pattern: pattern file format
  #-------------------------------------------------------
   proc dsp_ip_packager_add_files_to_group {dir group patterns libname} {  
      set root [get_property root_directory [ipx::current_core]]
      set folder [dsp_ip_packager_get_location]
      set ippath [format "%s/" [dsp_ip_packager_get_full_path]]
      set nam [dsp_ip_packager_get_top_name]
      foreach pattern $patterns {
         set ipFiles [dsp_find_files_with_pattern $dir $pattern]
         foreach absFile $ipFiles {
            set file [string range $absFile [string length $ippath] [string length $absFile]]
            ipx::add_file $file $group
            set_property library_name $libname [ipx::get_file $file $group]
         }
      }
  }

  #-------------------------------------------------------
  # Add sub IPs using subcore reference. Will deprecate soon
  #-------------------------------------------------------
   proc dsp_ip_packager_add_sub_ips {} { 
        set currentCore [ipx::current_core]
        set synth [ipx::get_file_groups xilinx_anylanguagesynthesis -of $currentCore] 
        set sim [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of $currentCore]
        set root [get_property root_directory $currentCore]
        set nam [dsp_ip_packager_get_top_name] 
        set ippath [dsp_ip_packager_get_full_path]
        set folder [dsp_ip_packager_get_location]
        set ips [get_ips]
        
        if {[llength $ips] > 0 } {
            generate_target {simulation Synthesis} $ips
            #special handler for only one IP situation, as if the result is only one ip, it returns string, not list.
            if {[llength $ips] == 1} {
                set ips [list $ips]
            }
            
            foreach ipName $ips {
                set ipPath [get_property IP_DIR $ipName]
                set vlnv [get_property IPDEF $ipName]
                set result [split $vlnv ":"]
                if { [llength $result] != 4} {
                    error "ERROR: Bad VLNV value for IP: $ips\n V:Vendor, L: Library, N: Name, V: Version " 
                }
                set vendor [lindex $result 0] 
                set library [lindex $result 1]
                set name [lindex $result 2] 
                set version [lindex $result 3] 
                # Add subcore reference to Synthesis 
                set baseDir [format "%s/synth" $ipPath]
                set destDirSynth [format "%s/ips/%s/synth" $ippath $ipName]
                dsp_ip_packager_copy_files $baseDir $destDirSynth {"*.ngc" "*.v" "*.vhd" "*.mif" "*.coe"}
                ipx::add_component_subcore_ref $vendor $library $name $version $synth
                dsp_ip_packager_add_files_to_group $destDirSynth $synth {"*.ngc" "*.v" "*.vhd" "*.mif" "*.coe"} {work}
                # Add subcore reference to Simulation    
                set baseDir [format "%s/sim" $ipPath]
                set destDirSim [format "%s/ips/%s/sim" $ippath $ipName]
                dsp_ip_packager_copy_files $baseDir $destDirSim {"*.ngc" "*.v" "*.vhd" "*.mif" "*.coe"}
                ipx::add_component_subcore_ref $vendor $library $name $version $sim
                dsp_ip_packager_add_files_to_group $destDirSim $sim {"*.ngc" "*.v" "*.vhd" "*.mif" "*.coe"}  {work}

                # Add COE file into synthesis and simulation
                set baseDir [format "%s/%s/%s.srcs/sources_1/ip/" $root $folder $nam]
                set destDir [format "%s/ips" $ippath]
                dsp_ip_packager_copy_files $baseDir $destDir {"*.coe"}
                dsp_ip_packager_add_files_to_group $destDir $synth {"*.coe"} {work}
                dsp_ip_packager_add_files_to_group $destDir $sim {"*.coe"}  {work}
            }    
            
        }
    }
  #-------------------------------------------------------
  # Add sub IPs
  # Package "XCI" and "XCO" files into IP
  #-------------------------------------------------------
    proc dsp_ip_packager_add_sub_core {} { 
        set currentCore [ipx::current_core]
        set synth [ipx::get_file_groups xilinx_anylanguagesynthesis -of $currentCore] 
        set sim [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of $currentCore]
        set root [get_property root_directory $currentCore]
        set nam [dsp_ip_packager_get_top_name] 
        set folder [dsp_ip_packager_get_location]
        set ippath [dsp_ip_packager_get_full_path]
        set ips [get_ips]
        
        if {[llength $ips] > 0 } {
            #generate_target {simulation Synthesis} $ips
            #special handler for only one IP situation, as if the result is only one ip, it returns string, not list.
            if {[llength $ips] == 1} {
                set ips [list $ips]
            }
            
            foreach ipName $ips {
                set srcPath [get_property IP_DIR $ipName]
                # Add subcore reference to Synthesis 
                set baseDir [format "%s" $srcPath]
                set destDirSynth [format "%s/ips/%s/synth" $ippath $ipName]
                dsp_ip_packager_copy_files $baseDir $destDirSynth {"*.xci" "*.xco"}
                dsp_ip_packager_add_files_to_group $destDirSynth $synth {"*.xci" "*.xco"} {work}
                # Add subcore reference to Simulation    
                set baseDir [format "%s" $srcPath]
                set destDirSim [format "%s/ips/%s/sim" $ippath $ipName]
                dsp_ip_packager_copy_files $baseDir $destDirSim {"*.xci" "*.xco"}
                dsp_ip_packager_add_files_to_group $destDirSim $sim {"*.xci" "*.xco"}  {work}
            }    
            
        }
    }
  #-------------------------------------------------------
  #Check whether the packaged IP contains sub IPs
  # if there is sub IPs,generate files then add all the files 
  #-------------------------------------------------------
    proc dsp_ip_packager_add_files {} {
        set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
        set currentCore [ipx::current_core]
     # remove all the file groups that automatical generated by ip packager
        ipx::remove_file_group {xilinx_verilogsynthesis} $currentCore
        ipx::remove_file_group {xilinx_verilogbehavioralsimulation} $currentCore
        ipx::remove_file_group {xilinx_verilogtestbench} $currentCore
        ipx::remove_file_group {xilinx_vhdlsynthesis} $currentCore
        ipx::remove_file_group {xilinx_vhdlbehavioralsimulation} $currentCore
        ipx::remove_file_group {xilinx_vhdltestbench} $currentCore
        ipx::remove_file_group {xilinx_implementation} $currentCore
        
     # create file group for adding files.
        ipx::add_file_group -type {synthesis} {} $currentCore 
        ipx::add_file_group -type {simulation} {} $currentCore    
        set synth [ipx::get_file_groups xilinx_anylanguagesynthesis -of $currentCore]
        set sim [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of $currentCore]
        set_property model_name [dsp_ip_packager_get_top_name] $synth
        set_property model_name [dsp_ip_packager_get_top_name] $sim 
        set ippath [dsp_ip_packager_get_full_path]        
        set folder [dsp_ip_packager_get_location]
        
      # handling sub ips before copying all source files.
        dsp_ip_packager_add_sub_ips
        
      #copy and add files.
        set root [get_property root_directory $currentCore]
        set nam [dsp_ip_packager_get_top_name] 
        set baseDir [format "%s/%s/%s.srcs/sources_1/imports/sysgen/" $root $folder $nam]
        set destDir [format "%s/src/" $ippath]
        dsp_ip_packager_copy_files $baseDir $destDir {"*.ngc" "*.v" "*.vhd"}
        dsp_ip_packager_add_files_to_group $destDir $synth {"*.ngc" "*.v" "*.vhd"}  {work}
        dsp_ip_packager_add_files_to_group $destDir $sim {"*.ngc" "*.v" "*.vhd"} {work}
        
        set baseDir [format "%s/%s/%s.srcs/constrs_1/imports/sysgen/" $root $folder $nam]
        set destDir [format "%s/constrain/" $ippath]
        dsp_ip_packager_copy_files $baseDir $destDir {"*.xdc"}
        dsp_ip_packager_add_files_to_group $destDir $synth {"*.xdc"} {work}
        dsp_ip_packager_add_files_to_group $destDir $sim {"*.xdc"} {work}

        if { [ dsp_has_testbench ] }    {
            ipx::add_file_group -type {testbench} {} $currentCore
            set test [ipx::get_file_groups xilinx_testbench -of $currentCore]
            set_property model_name [dsp_ip_packager_get_top_name] $test
            set baseDir [format "%s/%s/%s.srcs/sim_1/imports/sysgen/" $root $folder $nam]
            set destDir [format "%s/testbench/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.v" "*.vhd"}
            dsp_ip_packager_add_files_to_group $destDir $test {"*.v" "*.vhd"} {work}
        
            set baseDir [format "%s/%s/%s.srcs/sim_1/imports/" $root $folder $nam]
            set destDir [format "%s/testbench/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.dat"}
            dsp_ip_packager_add_files_to_group $destDir $test {"*.dat"} {work}
        }
        ipx::add_file_group -type {utility} {} $currentCore
        set utility [ipx::get_file_groups xilinx_utilityxitfiles -of $currentCore]
        if { [ dsp_has_create_interface_document ] }    {
            ipx::add_file_group -type {version_info} {} $currentCore
            set versionInfo [ipx::get_file_groups xilinx_versioninformation -of $currentCore]
            set baseDir [format "%s/documentation/" $root]
            set destDir [format "%s/version_info/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.htm"}
            dsp_ip_packager_add_files_to_group $destDir $versionInfo {"*.htm"} {work}
        
            set baseDir [format "%s/documentation/images/" $root]
            set destDir [format "%s/version_info/images/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.jpg" "*.gif" "*.bmp" "*.png"}
            dsp_ip_packager_add_files_to_group $destDir $utility {"*.jpg" "*.gif" "*.bmp" "*.png"} {work}
        }
        
        if { [ dsp_has_create_interface_document ] }    {
            ipx::add_file_group -type {datasheet} {} $currentCore
            set datasheet [ipx::get_file_groups xilinx_datasheet -of $currentCore]
            set baseDir [format "%s/documentation/" $root]
            set destDir [format "%s/datasheet/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.htm"}
            dsp_ip_packager_add_files_to_group $destDir $datasheet {"*.htm"} {work}
        
            set baseDir [format "%s/documentation/images/" $root]
            set destDir [format "%s/datasheet/images/" $ippath]
            dsp_ip_packager_copy_files $baseDir $destDir {"*.jpg" "*.gif" "*.bmp" "*.png"}
            dsp_ip_packager_add_files_to_group $destDir $utility {"*.jpg" "*.gif" "*.bmp" "*.png"} {work}
        }
    } 
    
  #-------------------------------------------------------
  # Ip packager remove sources
  # remove the source file of project
  # 
  #-------------------------------------------------------
    proc dsp_ip_packager_remove_sources {} {
       set filelist [get_files -of_objects {sources_1} *.v]
       if {[llength $filelist] > 0 } {
          remove_files $filelist
       }
       set filelist [get_files -of_objects {sources_1} *.vhd]
       if {[llength $filelist] > 0 } {
          remove_files $filelist
       }
       set filelist [get_files -of_objects {sources_1} *.coe]
       if {[llength $filelist] > 0 } {
          remove_files $filelist
       }
       #remove subips
       set ips [get_files -of_objects {sources_1} *.xci]
       if {[llength $ips ] > 0 } {
          remove_files -fileset sources_1 $ips
       }
   }
  #-------------------------------------------------------
  # Add IP to project
  #-------------------------------------------------------
    proc dsp_ip_packager_add_ip {} {  
       set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
       set currentCore [ipx::current_core]
       set root [get_property root_directory $currentCore]
       set ven [get_property vendor $currentCore]
       set lib [get_property library $currentCore]
       set nam [get_property name $currentCore]
       set ver [get_property version $currentCore]
       set vlnvs [format "%s:%s:%s:%s" $ven $lib $nam $ver]
       set instant [format "%s_0" [dsp_ip_packager_get_ip_name]]
       create_ip -vlnv $vlnvs -module_name $instant
       if { [ dsp_has_testbench ] }    {
          if { [dsp_hdllang_is_vhdl] } {
             set testbench [lindex [get_files -of_objects {sim_1} *_tb.vhd] 0]
             if { [string length $testbench] > 0} {
                set pattern [format "work.%s" [dsp_ip_packager_get_top_name]]
                set replace [format "work.%s" $instant]
                dsp_replace_in_file $testbench $pattern $replace
             }
          } else {
            set testbench [lindex [get_files -of_objects {sim_1} *_tb.v] 0]
            if { [string length $testbench] > 0} {
               set pattern [format " %s " [dsp_ip_packager_get_top_name]]
               set replace [format " %s " $instant]
               dsp_replace_in_file $testbench $pattern $replace
            }
        }
            
       set_property top $instant [current_fileset]
       update_compile_order -fileset sources_1
       generate_target {Simulation Synthesis instantiation_template} [get_ips]
     }
  }
	
	
   #-------------------------------------------------------
   # Get Sysgen location
   #-------------------------------------------------------
   proc dsp_ip_packager_sysgen_location {} {
     return "sysgen"
   }

   #-------------------------------------------------------
   # Get Documentation location
   #-------------------------------------------------------
   proc dsp_ip_packager_sysgen_documentation {} {
     return "documentation"
   }

   #-------------------------------------------------------
   # Based on extension name to get the corresponding handler
   #-------------------------------------------------------
   proc dsp_ip_packager_get_handler_name { extname } {
      set extlower [ string tolower $extname ]
      return dsp_ip_packager_handler_$extlower
   }
 #-----------------------------------------------------------------
 # Locates the root of Xilinx IP Repository. Returns empty if not found
 #-----------------------------------------------------------------
 proc dsp_get_xilinx_ip_repository_root {} {
     set rdi_data_dir_env $::env(RDI_DATADIR)
     if {[dsp_isLinuxOS]} {
         set path_sep ":"
     } else {
         set path_sep ";"
     }
     set index_file_name ""
     set rdi_data_dirs [split $rdi_data_dir_env $path_sep]
     foreach rdi_data_dir $rdi_data_dirs {
         set index_file_name [file normalize [file join $rdi_data_dir "ip/vv_index.xml"]]
         if { [file exists $index_file_name ] } {
             return [file dirname $index_file_name] 
         }
      }
      return ""
 }
 
 #
 # Constructs the handler name based on file extension
 #
 proc dsp_ipp_get_files_handler_name { ext } {
     return dsp_ipp_handler_$ext
 }
 
 #
 # Constructs the handler name based on testbench file extension
 #
 proc dsp_ipp_get_testbench_files_handler_name { ext } {
     return dsp_ipp_handler_testbench_$ext
 }
 
 #
 # Get synthesis file group based on top level language
 #
 proc dsp_ipp_get_synthesis_file_group {} {
     if { [dsp_hdllang_is_vhdl] } {
         set synth_file_group_text "xilinx_vhdlsynthesis"
     } else {
          set synth_file_group_text "xilinx_verilogsynthesis"    
     }
     set synth_file_group [ipx::get_file_groups -quiet $synth_file_group_text -of [ipx::current_core]]
     if { $synth_file_group == ""} {
         set synth_file_group [ipx::add_file_group $synth_file_group_text [ipx::current_core]]
     }
     set_property MODEL_NAME [dsp_get_param_value_in_driver_tcl_namespace TopLevelModule] $synth_file_group
     return $synth_file_group
 }
 #
 # Get software drivers file group
 #
 proc dsp_ipp_get_softwaredrivers_file_group {} {
     set file_group_text "xilinx_softwaredrivers"
     set file_group [ipx::get_file_groups -quiet $file_group_text -of [ipx::current_core]]
     if { $file_group == ""} {
         set file_group [ipx::add_file_group $file_group_text [ipx::current_core]]
     }
     return $file_group
 }
 #
 # Get datasheet file group
 #
 proc dsp_ipp_get_datasheet_file_group {} {
     set datasheet_file_group [ipx::get_file_groups -quiet xilinx_datasheet -of [ipx::current_core]]
     if { $datasheet_file_group == ""} {
         set datasheet_file_group [ipx::add_file_group  xilinx_datasheet [ipx::current_core]]
     }
     return $datasheet_file_group
 }
 #
 # Get testbench file group based on top level language
 #
 proc dsp_ipp_get_testbench_file_group {} {
     if { [dsp_hdllang_is_vhdl] } {
        set tb_file_group_text "xilinx_vhdltestbench"
     } else {
        set tb_file_group_text "xilinx_verilogtestbench"
     }
     set tb_file_group [ipx::get_file_groups -quiet $tb_file_group_text -of [ipx::current_core]]
     if { $tb_file_group == "" } {
        set tb_file_group [ipx::add_file_group $tb_file_group_text [ipx::current_core]]
     }
     return $tb_file_group 
 }

 #
 # Get simulation file group based on top level language
 #
 proc dsp_ipp_get_simulation_file_group {} {
     if { [dsp_hdllang_is_vhdl] } {
         set sim_file_group_text "xilinx_vhdlbehavioralsimulation"
     } else {
          set sim_file_group_text "xilinx_verilogbehavioralsimulation"    
     }
     set sim_file_group [ipx::get_file_groups -quiet $sim_file_group_text -of [ipx::current_core]]
     if { $sim_file_group == ""} {
         set sim_file_group [ipx::add_file_group $sim_file_group_text [ipx::current_core]]
     }
     set_property MODEL_NAME [dsp_get_param_value_in_driver_tcl_namespace TopLevelModule] $sim_file_group
     return $sim_file_group
 }

 #-----------------------------------------------------------
 # Handles the processing of Verilog files for Packaging
 #-----------------------------------------------------------
 proc dsp_ipp_handler_v { filelist } {
     set top_module [dsp_get_param_value_in_driver_tcl_namespace TopLevelModule]
     set top_module_file "$top_module.v"
     set root_hdl_dir "[dsp_ipp_get_ip_directory]/hdl"
     file mkdir "$root_hdl_dir"
     set ordered_file_list [list]
     foreach ffile $filelist {    
         set library "work"
         set opts [lrange $ffile 1 end]
         set nopts [llength $opts]
         if {$nopts > 0} {
             set ffile [lindex $ffile 0]
             for {set i 0} {$i < $nopts} {set i [expr {$i + 2}]} {
                 set key [lindex $opts $i]
                 set val [lindex $opts [expr {$i + 1}]]
                 switch -- $key {
                     "-lib" {
                         set library $val
                     }
                 }
             }
         }
         file copy -force "$ffile" "$root_hdl_dir"              
         if { [string match conv_pkg.v [file tail $ffile]] } {
             set_property -dict "LIBRARY_NAME $library IS_INCLUDE true" [ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_synthesis_file_group]]
             set_property -dict "LIBRARY_NAME $library IS_INCLUDE true" [ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_simulation_file_group]]
         } else { 
             set_property LIBRARY_NAME $library [ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_synthesis_file_group]]
             set_property LIBRARY_NAME $library [ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_simulation_file_group]]
         }

         lappend ordered_file_list $ffile
         if { $top_module_file == [file tail $ffile] } {
             ipx::import_top_level_hdl -verbose -include_dirs [dsp_get_sysgen_project_file_dir] -ordered_files  $ordered_file_list -top_level_hdl_file $ffile -top_module_name $top_module [ipx::current_core]
             ipx::add_model_parameters_from_hdl -include_dirs [dsp_get_sysgen_project_file_dir] -ordered_files  $ordered_file_list -top_level_hdl_file $ffile -top_module_name $top_module [ipx::current_core]
         }
     }
 }

 #-----------------------------------------------------------
 # Handles the processing of Verilog files for Packaging
 #-----------------------------------------------------------
 proc dsp_ipp_handler_vh { filelist } {
     set root_hdl_dir "[dsp_ipp_get_ip_directory]/hdl"
     file mkdir "$root_hdl_dir"
     foreach ffile $filelist { 
         set library "work"
         set opts [lrange $ffile 1 end]
         set nopts [llength $opts]
         if {$nopts > 0} {
             set ffile [lindex $ffile 0]
             for {set i 0} {$i < $nopts} {set i [expr {$i + 2}]} {
                 set key [lindex $opts $i]
                 set val [lindex $opts [expr {$i + 1}]]
                 switch -- $key {
                     "-lib" {
                         set library $val
                     }
                 }
             }
         } 
         file copy -force "$ffile" "$root_hdl_dir"              
         set_property -dict "LIBRARY_NAME $library IS_INCLUDE true" [ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_synthesis_file_group]]
         set_property -dict "LIBRARY_NAME $library IS_INCLUDE true" [ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_simulation_file_group]]
     }
 }
 #-----------------------------------------------------------
 # Handles Processing of VHDL files for packaging
 #-----------------------------------------------------------
 proc dsp_ipp_handler_vhd { filelist } {
     set top_module [dsp_get_param_value_in_driver_tcl_namespace TopLevelModule]
     set top_module_file "$top_module.vhd"
     set root_hdl_dir "[dsp_ipp_get_ip_directory]/hdl"
     file mkdir "$root_hdl_dir"
     set ordered_file_list [list]
     foreach ffile $filelist {    
         set library "work"
         set opts [lrange $ffile 1 end]
         set nopts [llength $opts]
         if {$nopts > 0} {
             set ffile [lindex $ffile 0]
             for {set i 0} {$i < $nopts} {set i [expr {$i + 2}]} {
                 set key [lindex $opts $i]
                 set val [lindex $opts [expr {$i + 1}]]
                 switch -- $key {
                     "-lib" {
                         set library $val
                     }
                 }
             }
         }
         file copy -force "$ffile" "$root_hdl_dir"               
         set_property LIBRARY_NAME $library [ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_synthesis_file_group]]
         set_property LIBRARY_NAME $library [ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_simulation_file_group]]
         lappend ordered_file_list $ffile
         if { $top_module_file == [file tail $ffile] } {
             ipx::import_top_level_hdl -verbose -include_dirs [dsp_get_sysgen_project_file_dir] -ordered_files  $ordered_file_list -top_level_hdl_file $ffile -top_module_name $top_module [ipx::current_core]
             ipx::add_model_parameters_from_hdl -include_dirs [dsp_get_sysgen_project_file_dir] -ordered_files  $ordered_file_list -top_level_hdl_file $ffile -top_module_name $top_module [ipx::current_core]
         }
     }
 } 
 #
 # Handles Processing of DCP Files
 #
 proc dsp_ipp_handler_dcp { filelist } {
     set root_dcp_dir "[dsp_ipp_get_ip_directory]/dcp"
     file mkdir "$root_dcp_dir"
     foreach ffile $filelist {    
         file copy -force "$ffile" "$root_dcp_dir"
         ipx::add_file "dcp/[file tail $ffile]" [dsp_ipp_get_synthesis_file_group]
     }
 }

 #
 # Handles Processing of XCI files for packaging
 #
 proc dsp_ipp_handler_xci { filelist } {
     set root_ip_dir "[dsp_ipp_get_ip_directory]"      
     
     foreach ffile $filelist {   
         set ip_dir "$root_ip_dir/[file tail [file rootname $ffile]]"
         file mkdir "$ip_dir"       
         file copy -force "$ffile" "$ip_dir"
         puts "Adding File $ffile"
         set file_obj [ipx::add_file "[file tail $ip_dir]/[file tail $ffile]" [dsp_ipp_get_synthesis_file_group]]
         set file_obj [ipx::add_file "[file tail $ip_dir]/[file tail $ffile]" [dsp_ipp_get_simulation_file_group]]
     }
 }  
 #
 # Handles Processing of XDC files for packaging
 #
 proc dsp_ipp_handler_xdc { filelist } {
     set root_xdc_dir "[dsp_ipp_get_ip_directory]/constrs"      
     file mkdir "$root_xdc_dir"     
     foreach ffile $filelist {
         file copy -force "$ffile" "$root_xdc_dir"
         puts "Adding File $ffile"
         ipx::add_file "constrs/[file tail $ffile]" [dsp_ipp_get_synthesis_file_group]
     }
 } 
 #
 # Handles Processing of COE files for packaging
 #
 proc dsp_ipp_handler_coe { filelist } {
     set root_coe_dir "[dsp_ipp_get_ip_directory]"      
     file mkdir "$root_coe_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$root_coe_dir"    
         puts "Adding File $ffile"
         ipx::add_file "[file tail $ffile]" [dsp_ipp_get_synthesis_file_group]
         ipx::add_file "[file tail $ffile]" [dsp_ipp_get_simulation_file_group]
     }
 }
 #
 # Handles processing of dat files for packaging - copied to the same dir as hdl files
 # needed to import HLS designs into System Generator for DSP
 #
 proc dsp_ipp_handler_dat { filelist } {
     set root_dat_dir "[dsp_ipp_get_ip_directory]/hdl"      
     file mkdir "$root_dat_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$root_dat_dir"    
         puts "Adding File $ffile"
         ipx::add_file "hdl/[file tail $ffile]" [dsp_ipp_get_simulation_file_group]
     }
 }
 #
 # Handles processing of htm files for packaging
 #
 proc dsp_ipp_handler_htm { filelist } {
     set root_dir "[dsp_ipp_get_ip_directory]"      
     file mkdir "$root_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$root_dir"    
         puts "Adding File $ffile"
         ipx::add_file "[file tail $ffile]" [dsp_ipp_get_datasheet_file_group]
     }
     set images_src_dir "[file dirname $ffile]/images"
     set images_des_dir "$root_dir"
     file copy -force "$images_src_dir" "$images_des_dir"
 }
 #
 # Handles Processing of dat files
 #
 proc dsp_ipp_handler_testbench_dat { filelist } {
     set root_testbench_dat_dir "[dsp_ipp_get_ip_directory]/testbench"      
     file mkdir "$root_testbench_dat_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$root_testbench_dat_dir"    
         puts "Adding File $ffile"
         ipx::add_file "testbench/[file tail $ffile]" [dsp_ipp_get_testbench_file_group]
     }
 }
 #
 # Handles the processing of vhd testbench
 #
 proc dsp_ipp_handler_testbench_vhd { filelist } {
     set root_testbench_dir "[dsp_ipp_get_ip_directory]/testbench"      
     file mkdir "$root_testbench_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$root_testbench_dir"    
         puts "Adding File $ffile"
         ipx::add_file "testbench/[file tail $ffile]" [dsp_ipp_get_testbench_file_group]
     }
 }

 #
 # Handles creation of logo files
 #
 proc dsp_ipp_handler_logo { filelist } {     
     set root_logo_dir "[dsp_ipp_get_ip_directory]"      
     foreach ffile $filelist {     
         file copy -force "$ffile" "$root_logo_dir"         
         ipx::create_xgui_files -logo_file [file tail $ffile] -logo_width 100 -logo_height 100 -logo_gui_page Page0 [ipx::current_core]
     }
 }
 
 #
 # Handles c driver files
 #
 proc dsp_ipp_handler_c { filelist } {     
     set driver_dir "[dsp_ipp_get_drivers_directory]"      
     set driver_src_dir "$driver_dir/src"
     file mkdir "$driver_src_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$driver_src_dir"         
         ipx::add_file "[dsp_ipp_drivers_dir_hierarchy]/src/[file tail $ffile]" [dsp_ipp_get_softwaredrivers_file_group]
     }
 }

 #
 # Handles h driver files
 #
 proc dsp_ipp_handler_h { filelist } {     
     set driver_dir "[dsp_ipp_get_drivers_directory]"      
     set driver_src_dir "$driver_dir/src"
     file mkdir "$driver_src_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$driver_src_dir"         
         ipx::add_file "[dsp_ipp_drivers_dir_hierarchy]/src/[file tail $ffile]" [dsp_ipp_get_softwaredrivers_file_group]
     }
 }
 #
 # Handles the mdd file
 #
 proc dsp_ipp_handler_mdd { filelist } {     
     set driver_dir "[dsp_ipp_get_drivers_directory]"      
     set driver_data_dir "$driver_dir/data"
     file mkdir "$driver_data_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$driver_data_dir"         
         ipx::add_file "[dsp_ipp_drivers_dir_hierarchy]/data/[file tail $ffile]" [dsp_ipp_get_softwaredrivers_file_group]
     }
 }
 #
 # Handles the mdd-tcl file
 #
 proc dsp_ipp_handler_mtcl { filelist } {     
     set driver_dir "[dsp_ipp_get_drivers_directory]"      
     set driver_data_dir "$driver_dir/data"
     file mkdir "$driver_data_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$driver_data_dir/[file rootname [file tail $ffile]].tcl"
         ipx::add_file "[dsp_ipp_drivers_dir_hierarchy]/data/[file rootname [file tail $ffile]].tcl" [dsp_ipp_get_softwaredrivers_file_group]
     }
 }
 #
 # Handles the Make file
 #
 proc dsp_ipp_handler_mak { filelist } {     
     set driver_dir "[dsp_ipp_get_drivers_directory]"      
     set driver_src_dir "$driver_dir/src"
     file mkdir "$driver_src_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$driver_src_dir/[file rootname [file tail $ffile]]"
         ipx::add_file "[dsp_ipp_drivers_dir_hierarchy]/src/[file rootname [file tail $ffile]]" [dsp_ipp_get_softwaredrivers_file_group]
     }
 }
 #
 # Handles the Driver Documentation file
 #
 proc dsp_ipp_handler_html { filelist } {     
     set driver_dir "[dsp_ipp_get_drivers_directory]"      
     set driver_doc_dir "$driver_dir/doc"
     file mkdir "$driver_doc_dir"     
     set driver_html_dir "$driver_doc_dir/html"
     file mkdir "$driver_html_dir"     
     set driver_api_dir "$driver_dir/doc/html/api"
     file mkdir "$driver_api_dir"     
     foreach ffile $filelist {     
         file copy -force "$ffile" "$driver_api_dir"
         ipx::add_file "[dsp_ipp_drivers_dir_hierarchy]/doc/html/api/[file tail $ffile]" [dsp_ipp_get_softwaredrivers_file_group]
     }
 }
 #
 # Returns the location of the directory in which contain the packaged 
 # IP. If the directory does not exist a directory is created
 #
 proc dsp_ipp_get_ip_directory {} {
     set netlist_dir [ dsp_get_param_value_in_driver_tcl_namespace TargetDir ]     
     return "$netlist_dir/ip" 
 }

 #
 # Returns the location of the directory in the driver files are delivered 
 # If the directory does not exist a directory is created
 #
 proc dsp_ipp_get_drivers_directory {} {
     set ip_dir [dsp_ipp_get_ip_directory] 
     file mkdir "$ip_dir"
     file mkdir "$ip_dir/drivers"
     file mkdir "$ip_dir/drivers/[dsp_ip_packager_get_top_name]_v1_00_a"
     return "$ip_dir/drivers/[dsp_ip_packager_get_top_name]_v1_00_a" 
 }
 proc dsp_ipp_drivers_dir_hierarchy {} {
     return "drivers/[dsp_ip_packager_get_top_name]_v1_00_a"
 }

 #
 # Searches a file repository for a specific file name
 # 
 proc dsp_get_file_name { filename } {
     set filedir [dsp_get_sysgen_project_file_dir]
     set origname $filename
     set origrootname [file rootname $filename]
     set filenameraw "$filedir/$origname"
     if { [ file exists $filenameraw ] } {
        set filename [file normalize $filenameraw]
     } else {
        set filename [file normalize $origname]
     }    

     return $filename
 }

 #
 # Create IPs in the project for IP Catalog flow to enable creation of XCI files used for packaging
 # 
 proc dsp_ipp_create_ips {} {
     set projfilesexts "coe tcl"
     set retcode [ dsp_reset_project_file_list_var $projfilesexts ] 
     set_property design_mode RTL [ get_filesets sources_1]
     set filedir [ dsp_get_sysgen_project_file_dir ]
     set paramvalueProjectFiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]
     foreach p $paramvalueProjectFiles {
        set filename [dsp_get_file_name [lindex $p 0]]
        foreach curext $projfilesexts {
           if { [string match -nocase "*.$curext" $filename] } {
               set listvarname [ dsp_get_list_var_name $curext ]
               lappend $listvarname $filename
           }
        }
     }
     foreach curext $projfilesexts {
         set listvarname [ dsp_get_list_var_name $curext ]
         if { [ info exists $listvarname ] } {
             set handlername [ dsp_get_add_project_files_handler_name $curext ]
             set findproc [ info proc $handlername ]
             if { [ string length $findproc ] > 0  } {
                 eval $handlername $listvarname
             }
         }
     } 
  } 
  
  proc dsp_ipp_remove_ips {} {
      set ips [get_ips]
      set coe_dir ""
      foreach ip $ips {
         set ipfile [get_property IP_FILE $ip]
         remove_files $ipfile
         if { $coe_dir == "" } {
             set coe_dir [file dirname [file dirname $ipfile]]
         }
         file delete -force [file dirname $ipfile] 
      }
      if { $coe_dir != "" } {
          set coe_files [glob -nocomplain "$coe_dir/*.coe"]
          foreach coe_file $coe_files {
             file delete -force $coe_file 
          }
      }
  }
  #----------------------------------------------------------
  # Factory Method to create a IP with user setting
  #----------------------------------------------------------
  proc dsp_ipp_get_ip_core {} {
      set ip_core [ipx::create_core -quiet [dsp_ip_packager_get_vendor] [dsp_ip_packager_get_library] [dsp_ip_packager_get_top_name] [dsp_ip_packager_get_version]]        
      set_property core_revision [dsp_ip_packager_get_revision] $ip_core
      set_property display_name [dsp_ip_packager_get_top_name] $ip_core
      set_property description [dsp_ip_packager_get_description] $ip_core
      set_property company_url {} $ip_core
      set_property taxonomy [dsp_ip_packager_get_taxonomy] $ip_core
      set_property XML_FILE_NAME "[dsp_ipp_get_ip_directory]/component.xml" $ip_core
      set_property payment_required false $ip_core
      #Set the support family    
      set driverns [ dsp_get_driver_tcl_namespace_qualifiers ]
      set tmplist [list]
      lappend tmplist [dsp_required_parameter ${driverns}::DSPFamily]
      lappend tmplist [dsp_ip_packager_get_life_cycle]
      set_property supported_families $tmplist $ip_core
      return $ip_core
  }
  #----------------------------------------------------------
  # returns the instance name for the top level IP instanced in the example project
  #----------------------------------------------------------
  proc dsp_ipp_get_rtl_example_ip_name {} {
      return [dsp_ip_packager_get_top_name]_0
  }
  #---------------------------------------------------------
  # Set layered metedata for each bus interface
  #---------------------------------------------------------
  proc dsp_ipp_set_layered_meta_data_on_bifs { ip_core } {
      foreach intf $intfs {
          set intf_vlnv [get_property VLNV $intf]
          set index [string first "aximm_rtl" $intf_vlnv]
          if {$index != -1} {
              # Apply BD Automation to every AXI Lite Interface exported by SysGen
              continue 
          }
          set index [string first "aximm_rtl" $intf_vlnv]
      }
  }
  proc dsp_ipp_add_bus_parameter {bus name value {resolve_type ""}} {
      if {$resolve_type == ""} {
        set resolve_type "immediate"
      }

      set current_bus_parameter [ipx::add_bus_parameter $name $bus]
      set_property value $value $current_bus_parameter
      set_property value_resolve_type $resolve_type $current_bus_parameter

      return $current_bus_parameter
  }  
  #
  # Takes a bus interface object as an input and returns 1 if it is an
  # axi_memoery_mapped interface else return 0
  #
  proc dsp_ipp_is_aximm { bif } {
      set bif_vlnv [get_property BUS_TYPE_VLNV $bif]
      set index [string first "aximm" $bif_vlnv]      
      if { $index != "-1" } {
          return 1
      }
      return 0
  }

  #
  # Takes a bus interface object as an input and returns 1 if it is an
  # axi_streaming interface else return 0
  #
  proc dsp_ipp_is_axis { bif } {
      set bif_vlnv [get_property BUS_TYPE_VLNV $bif]
      set index [string first "axis" $bif_vlnv]      
      if { $index != "-1" } {
          return 1
      }
      return 0
  }
  #
  # Iterates through all the bif and associates LAYERED_META_DATA with bifs
  # that are axis_rtl type
  #
  proc dsp_ipp_set_axis_layered_meta_data { ip_core } {
      set top_level_port_interface [ dsp_get_param_value_in_driver_tcl_namespace TopLevelPortInterface ]   
      set bifs [ipx::get_bus_interfaces -of_objects $ip_core]
      foreach bif $bifs {
          if { [dsp_ipp_is_axis $bif] == 1 } {
              set tdata_name [get_property NAME $bif]
              append tdata_name _tdata
              if { [dict exists $top_level_port_interface $tdata_name] } {
                  set port_interface [dict get $top_level_port_interface $tdata_name]
                  set layered_meta_data_for_port ""
                  dict set layered_meta_data_for_port $iptypes::vlnv TDATA [dsp_ipp_get_data_type port_interface]
                  dsp_ipp_add_bus_parameter $bif LAYERED_METADATA $layered_meta_data_for_port generated
              }
          }
      }    
  }
  #
  # Iterates through all the ports of the IP and associates a layered meta
  # data with a port if and only if the port is not associated with any
  # AXI bus interfaces
  #
  proc dsp_ipp_package_ports_as_data_interface { ip_core } {
      set top_level_port_interface [ dsp_get_param_value_in_driver_tcl_namespace TopLevelPortInterface ]   
      set bifs [ipx::get_bus_interfaces -of_objects $ip_core]
      set interface_ports [list]
      #Create a list of all the mapped Physical ports

      foreach bif $bifs {
          set portmaps [ipx::get_port_maps -of_objects $bif]
          foreach portmap $portmaps {
              lappend interface_ports [get_property PHYSICAL_NAME $portmap]
          }
      }
      set interface_ports [lsort -ascii $interface_ports]
      foreach {port_obj} [ipx::get_ports -of $ip_core] {
          set port_name [get_property NAME $port_obj]
          if {[lsearch -sorted $interface_ports $port_name] == -1} {
              set current_bus_interface [ipx::add_bus_interface $port_name $ip_core ]
              if {[string match "clk*" $port_name]} {
                  set_property bus_type_vlnv {xilinx.com:signal:clock:1.0} $current_bus_interface
                  set_property abstraction_type_vlnv {xilinx.com:signal:clock_rtl:1.0} $current_bus_interface              
                  set_property interface_mode {slave} $current_bus_interface
                  set current_port_map [ipx::add_port_map $port_name $current_bus_interface]
                  set_property logical_name {CLK} $current_port_map
                  set_property physical_name $port_name $current_port_map
                  if {[dict exists $top_level_port_interface $port_name]} {
                      set port_interface [dict get $top_level_port_interface $port_name]
                      if {[dict exists $port_interface InterfaceString]} {
                          if {[dict get $port_interface InterfaceString] == "CLOCK"} {
                              if {[dict exists $port_interface AssociatedInterfaces]} {
                                  set associated_interfaces [dict get $port_interface AssociatedInterfaces]
                                  if { [llength $associated_interfaces] > 0 } {
                                      dsp_ipp_add_bus_parameter $current_bus_interface ASSOCIATED_BUSIF [lindex $associated_interfaces 0] immediate 
                                  }
                              }
                              if {[dict exists $port_interface AssociatedResets]} {
                                  set associated_resets [dict get $port_interface AssociatedResets]
                                  if { [llength $associated_resets] > 0 } {
                                      dsp_ipp_add_bus_parameter $current_bus_interface ASSOCIATED_RESET [lindex $associated_resets 0] immediate 
                                  }
                              }
                          }
                      }
                  }
              } elseif {[string match "ce" $port_name]} {
                  set_property bus_type_vlnv {xilinx.com:signal:clockenable:1.0} $current_bus_interface
                  set_property abstraction_type_vlnv {xilinx.com:signal:clockenable_rtl:1.0} $current_bus_interface
                  set_property interface_mode {slave} $current_bus_interface
                  set current_port_map [ipx::add_port_map $port_name $current_bus_interface]
                  set_property logical_name {CE} $current_port_map
                  set_property physical_name $port_name $current_port_map
              } elseif {[string match "*aresetn" $port_name]} {
                  set_property bus_type_vlnv {xilinx.com:signal:reset:1.0} $current_bus_interface
                  set_property abstraction_type_vlnv {xilinx.com:signal:reset_rtl:1.0} $current_bus_interface
                  set_property interface_mode {slave} $current_bus_interface
                  set current_port_map [ipx::add_port_map $port_name $current_bus_interface]
                  set_property logical_name {RESET} $current_port_map
                  set_property physical_name $port_name $current_port_map
              } else {                  
                  set_property bus_type_vlnv {xilinx.com:signal:data:1.0} $current_bus_interface
                  set_property abstraction_type_vlnv {xilinx.com:signal:data_rtl:1.0} $current_bus_interface
                  set current_port_map [ipx::add_port_map $port_name $current_bus_interface]
                  set_property logical_name {DATA} $current_port_map    
                  set_property physical_name $port_name $current_port_map
                  if {[dict exists $top_level_port_interface $port_name]} { 
                      set port_interface [dict get $top_level_port_interface $port_name]
                      if {[dict exists $port_interface Direction]} {
                          if {[dict get $port_interface Direction] == "in"} {
                              set_property interface_mode slave $current_bus_interface
                          } else {
                              set_property interface_mode master $current_bus_interface
                          }               
                      } 
                      if {[dict exists $port_interface Interface]} {
                          if {[dict get $port_interface Interface] == 3} {
                              set_property bus_type_vlnv {xilinx.com:signal:interrupt:1.0} $current_bus_interface
                              set_property abstraction_type_vlnv {xilinx.com:signal:interrupt_rtl:1.0} $current_bus_interface
                              set_property logical_name {INTERRUPT} $current_port_map    
                              continue
                          }
                      }
                      set layered_meta_data_for_port ""
                      dict set layered_meta_data_for_port $iptypes::vlnv DATA [dsp_ipp_get_data_type port_interface]
                      dsp_ipp_add_bus_parameter $current_bus_interface LAYERED_METADATA $layered_meta_data_for_port immediate 
                  }
              }
          }
      }  
  }
  #---------------------------------------------------------
  # Creates bus interfaces for the IP 
  #---------------------------------------------------------
  proc dsp_ipp_infer_bus_interface { ip_core } {
      if {[dsp_ip_packager_get_Auto_Infer_flag] == "1" } {
	      ipx::infer_bus_interfaces {{xilinx.com:interface:axis:1.0} {xilinx.com:interface:aximm_rtl:1.0} {xilinx.com:signal:data_rtl:1.0}} $ip_core
          dsp_ipp_package_ports_as_data_interface $ip_core      
          dsp_ipp_set_axis_layered_meta_data $ip_core
      } else {
        foreach {port_obj} [ipx::get_ports -of $ip_core] {
           set port_name [get_property name $port_obj]
           set current_bus_interface [ipx::add_bus_interface $port_name $ip_core ]
           if {[string match "clk*" $port_name]} {
              set_property bus_type_vlnv {xilinx.com:signal:clock:1.0} $current_bus_interface
              set_property abstraction_type_vlnv {xilinx.com:signal:clock_rtl:1.0} $current_bus_interface              
              set_property interface_mode {slave} $current_bus_interface
              set current_port_map [ipx::add_port_map $port_name $current_bus_interface]
              set_property logical_name {CLK} $current_port_map
           } elseif {[string match "ce" $port_name]} {
              set_property bus_type_vlnv {xilinx.com:signal:clockenable:1.0} $current_bus_interface
              set_property abstraction_type_vlnv {xilinx.com:signal:clockenable_rtl:1.0} $current_bus_interface
              set_property interface_mode {slave} $current_bus_interface
              set current_port_map [ipx::add_port_map $port_name $current_bus_interface]
              set_property logical_name {CE} $current_port_map
           } else {
              set_property bus_type_vlnv {xilinx.com:signal:data:1.0} $current_bus_interface
              set_property abstraction_type_vlnv {xilinx.com:signal:data_rtl:1.0} $current_bus_interface
              set current_port_map [ipx::add_port_map $port_name $current_bus_interface]
              set_property logical_name {DATA} $current_port_map
           }
           set_property physical_name $port_name $current_port_map
        }
     }
  }
  #----------------------------------------------------------------
  # Returns the absolute path to the testbench module
  #----------------------------------------------------------------
  proc dsp_ipp_testbench_file_name {} {
     set test_bench_module [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ]    
     if { [dsp_hdllang_is_vhdl] } {
         return [dsp_get_file_name "$test_bench_module.vhd"]
     } else {
         return [dsp_get_file_name "$test_bench_module.v"]
     }
  }

  proc dsp_ipp_stub_file_name {} {
     set top_level_module [ dsp_get_param_value_in_driver_tcl_namespace TopLevelModule ]    
     if { [dsp_hdllang_is_vhdl] } {
         return [dsp_get_file_name ${top_level_module}_stub.vhd]
     } else {
         return [dsp_get_file_name ${top_level_module}_stub.v]
     }
  }
  #----------------------------------------------------------------
  # Returns the absolute path to the modified testbench module that 
  # instances IP
  #----------------------------------------------------------------
  proc dsp_ipp_modified_testbench_file_name {} {
      set test_bench_module_mod [file dirname [dsp_ipp_testbench_file_name]]/[dsp_get_param_value_in_driver_tcl_namespace TestBenchModule]_mod   
     if { [dsp_hdllang_is_vhdl] } {
         return "$test_bench_module_mod.vhd"
     } else {
         return "$test_bench_module_mod.v"
     }
  }
  #----------------------------------------------------------------
  # Returns the absolute path to the modified stub module that 
  # instances IP
  #----------------------------------------------------------------
  proc dsp_ipp_modified_stub_file_name {} {
     set stub_module_mod [file dirname [dsp_ipp_stub_file_name]]/[dsp_get_param_value_in_driver_tcl_namespace TopLevelModule]_mod   
     if { [dsp_hdllang_is_vhdl] } {
         return "$stub_module_mod.vhd"
     } else {
         return "$stub_module_mod.v"
     }
  }
  #---------------------------------------------------------------
  # Generates the testbench for IP from the tesbench created during
  # netlisting of system generator design by simply modifying the
  # dut name to the im instance name
  #---------------------------------------------------------------
  proc dsp_ipp_get_modified_testbench_file {} {
       set test_bench_file [dsp_ipp_testbench_file_name]
       set mod_test_bench_file [dsp_ipp_modified_testbench_file_name]
       set cont [dsp_read_file $test_bench_file]
       set pattern [format "component %s is" [dsp_ip_packager_get_top_name]]
       set replace [format "component %s is" [dsp_ipp_get_rtl_example_ip_name]]
       regsub -all $pattern $cont $replace cont 
       set pattern [format "sysgen_dut: %s" [dsp_ip_packager_get_top_name]]
       set replace [format "sysgen_dut: %s" [dsp_ipp_get_rtl_example_ip_name]]
       regsub -all $pattern $cont $replace cont 
       set pattern [format "sysgen_dut: entity work.%s" [dsp_ip_packager_get_top_name]]
       set replace [format "sysgen_dut: entity work.%s" [dsp_ipp_get_rtl_example_ip_name]]
       regsub -all $pattern $cont $replace cont 
       set pattern [format "%s sysgen_dut" [dsp_ip_packager_get_top_name]]
       set replace [format "%s sysgen_dut" [dsp_ipp_get_rtl_example_ip_name]]
       regsub -all $pattern $cont $replace cont 
       dsp_write_file $mod_test_bench_file $cont
       return $mod_test_bench_file
  }

  proc dsp_ipp_get_modified_stub_file {} {
       set stub_file [dsp_ipp_stub_file_name]
       set mod_stub_file [dsp_ipp_modified_stub_file_name]
       set cont [dsp_read_file $stub_file]
       set pattern [format "component %s is" [dsp_ip_packager_get_top_name]]
       set replace [format "component %s is" [dsp_ipp_get_rtl_example_ip_name]]
       regsub -all $pattern $cont $replace cont 
       set pattern [format "sysgen_dut: %s" [dsp_ip_packager_get_top_name]]
       set replace [format "sysgen_dut: %s" [dsp_ipp_get_rtl_example_ip_name]]
       regsub -all $pattern $cont $replace cont 
       set pattern [format "sysgen_dut: entity work.%s" [dsp_ip_packager_get_top_name]]
       set replace [format "sysgen_dut: entity work.%s" [dsp_ipp_get_rtl_example_ip_name]]
       regsub -all $pattern $cont $replace cont 
       set pattern [format "%s sysgen_dut" [dsp_ip_packager_get_top_name]]
       set replace [format "%s sysgen_dut" [dsp_ipp_get_rtl_example_ip_name]]
       regsub -all $pattern $cont $replace cont 
       dsp_write_file $mod_stub_file $cont
       return $mod_stub_file
  }

  proc dsp_ipp_translate_arithmetic_type { ArithmeticType } {
      if {$ArithmeticType == "xlSigned"} {
          set Signed true
      } else {
          set Signed false
      }
      return $Signed
  }  
  
  proc dsp_ipp_get_fixed_data_type_impl {Width ArithmeticType BinaryPoint} {
      set fixed_type [iptypes::datatype::new -type real -bitwidth $Width -bitoffset 0 -fixed -signed [dsp_ipp_translate_arithmetic_type $ArithmeticType] -fractwidth $BinaryPoint]
      return $fixed_type
  }
  
  proc dsp_ipp_get_float_data_type_impl {Width ArithmeticType BinaryPoint} {
      set float_type [iptypes::datatype::new -type real -bitwidth $Width -bitoffset 0 -float -sigwidth $BinaryPoint]
      return $float_type
  }
  
  proc dsp_ipp_get_data_type { data_type_dict_name } {
      upvar 1 $data_type_dict_name data_type_dict
      set data_type [dict get $data_type_dict ArithmeticType]
      if {$data_type == "xlFloat" } {
          return [dsp_ipp_get_float_data_type_impl [dict get  $data_type_dict Width] [dict get  $data_type_dict ArithmeticType] [dict get  $data_type_dict BinaryPoint]]
      } else {
          return [dsp_ipp_get_fixed_data_type_impl [dict get  $data_type_dict Width] [dict get  $data_type_dict ArithmeticType] [dict get  $data_type_dict BinaryPoint]]
      }
  }

  #-------------------------------------------------------
  # Ip packager script
  # If there is no IP in design, just package like like GUI performed 
  # If there are IPs in the design, it package the IP using XCI files.
  #-------------------------------------------------------
  proc dsp_package_for_vivado_ip_integrator {} {
    # This Will Work Only In the Context of Having a Xilinx IP Repo Present
    set ip_repo_root [dsp_get_xilinx_ip_repository_root]
    if { $ip_repo_root != "" } {
        #Source a utility to create the layered meta data types
        if {[catch {source $ip_repo_root/xilinx/xbip_utils_v3_0/common_tcl/iptypes.tcl}]} {
            error "Could not source iptypes.tcl to enable layered metadata for ip."
        }
        puts "IP Repository Located at : $ip_repo_root"
    } else {
        error "Could not locate Xilinx IP Repository. Please Verify that you have a correct Vivado installation."
    }   
    # At this point netlist directory already exists
    # Cleaup the ip directory where all ip files 
    # will be stored
    set root_ip_dir [dsp_ipp_get_ip_directory]
    if {[file isdirectory $root_ip_dir]} {
     file delete -force "$root_ip_dir" 
    }
    file mkdir "$root_ip_dir"
    
    set projfilesexts "xci ucf xdc xco dat coe mif ngc vhd v h c htm mdd mtcl mak html dcp"
    set projpath [ get_property DIRECTORY [current_project] ]
    set nam [dsp_ip_packager_get_top_name]
    ::close_project
    ::open_project $projpath/$nam.xpr
    set ip_core [dsp_ipp_get_ip_core] 
    set_property XML_FILE_NAME "[dsp_ipp_get_ip_directory]/component.xml" $ip_core
    set paramvalueProjectFiles [ dsp_get_param_value_in_driver_tcl_namespace ProjectFiles ]    
    foreach p $paramvalueProjectFiles {
        set filename [dsp_get_file_name [lindex $p 0]]
        #Update with fully qualified file name
        lset p 0 $filename
        foreach curext $projfilesexts {
            #Filter out Testbench
            if { [string match -nocase "*.$curext" $filename] } {
               if { [string match -nocase [ dsp_get_param_value_in_driver_tcl_namespace TestBenchModule ] [file tail [file rootname $filename] ] ] } {
                  set listvarname [ dsp_get_testbench_list_var_name $curext ]
                  lappend $listvarname $p
                  continue
               }    
               set listvarname [ dsp_get_list_var_name $curext ]
               lappend $listvarname $p
           }
        }
    }
    #Collect all the XCI file seperately
    set ips [get_ips]
    foreach ip $ips {
        set ipfile [get_property IP_FILE $ip] 
        set listvarname [ dsp_get_list_var_name xci ]
        lappend $listvarname $ipfile
    }    

    #Collect all the .dat tetbench files separately 
    if { [ dsp_has_testbench ] } {
        set datapath [ dsp_get_sysgen_project_file_search_path_list ]
        set listvarname [ dsp_get_testbench_list_var_name "dat" ]
        set $listvarname [ dsp_get_file_name_list_from_pathlist $datapath {.dat} ]
    }
    #Handle all the source files
    foreach curext $projfilesexts {
        set listvarname [ dsp_get_list_var_name $curext ]
        if { [ info exists $listvarname ] } {
            set handlername [ dsp_ipp_get_files_handler_name $curext ]
            set findproc [ info proc $handlername ]
            if { [ string length $findproc ] > 0  } {
               eval $handlername $$listvarname
            }
         }
    }
    #Handle all the testbench files
    foreach curext $projfilesexts {
        set listvarname [ dsp_get_testbench_list_var_name $curext ]
        if { [ info exists $listvarname ] } {
            set handlername [ dsp_ipp_get_testbench_files_handler_name $curext ]
            set findproc [ info proc $handlername ]
            if { [ string length $findproc ] > 0  } {
               eval $handlername $$listvarname
            }
        }
    }
    # Handle the GUI and Logo
    dsp_ipp_handler_logo [dsp_get_sysgen_project_file_dir]/[dsp_get_param_value_in_driver_tcl_namespace IP_Logo] 
    
    # Infer Bus Interfaces
    dsp_ipp_infer_bus_interface $ip_core 
    # Handle Interface Document
    ipx::save_core [ipx::current_core]
    ipx::check_integrity [ipx::current_core]
    ipx::archive_core "[dsp_ipp_get_ip_directory]/[dsp_ip_packager_get_ip_name].zip" [ipx::current_core]
    dsp_ipp_remove_ips    
    # Add the ip path to project 
    set_property ip_repo_paths [dsp_ipp_get_ip_directory] [current_fileset]
    update_ip_catalog
    # Remove coe files references
    remove_files [get_files "*.coe" -quiet] -quiet
    # Create an example RTL Design
    create_ip -vlnv [dsp_ip_packager_get_vendor]:[dsp_ip_packager_get_library]:[dsp_ip_packager_get_top_name]:[dsp_ip_packager_get_version] -module_name [dsp_ipp_get_rtl_example_ip_name]
    ::import_files -force -norecurse [ dsp_ipp_get_modified_stub_file ]
    # Create an example Testbench With the IP
    if { [ dsp_has_testbench] } {
        ::import_files -fileset [ get_filesets sim_1 ] -force -norecurse [ dsp_ipp_get_modified_testbench_file ]
        dsp_add_project_testbench_dat_files 
    }
    # Create an example Microblaze/Zynq based design only if the compilation target is IP Catalog
    # This is done because someone might just want to use the IP created and not the microblaze based system
    # If they want the microblaze/Zynq  based system , they can call dsp_create_vivado_ip_integrator_design 
    # separately using the custom compilation target
    if { [ dsp_is_ipxact_compilation ] } { 
	    dsp_create_vivado_ip_integrator_design
    }
    #
    # This is done to ensure that the requisite files needed for compilation
    # only are picked up as the design contains both an RTL top level and 
    # IP integrator top level 
    update_compile_order -fileset sources_1
    update_compile_order -fileset sim_1
 }

 proc dsp_create_vivado_ip_integrator_design {} {
    # This Proc should Only Be called is AXI Lite and AXI MM interfaces are detected
    set bd_design [create_bd_design [dsp_ip_packager_get_top_name]_bd]
    #Instantiate IP in IPI design
    dsp_instance_ip_in_ipi_design
    if { [dsp_is_processor_interfaces_available_on_ip] == 1 } {
        # This Should Only be executed if there are any AXI Lite Interfaces in the design
        if {[dsp_ipp_is_zynq]} {
           dsp_apply_bd_automation_for_ps
        } else {
           dsp_apply_bd_automation_for_microblaze           
        } 
    } 
    dsp_apply_bd_automation_for_ip

    save_bd_design
    # Create a Wrapper for the BD Design and Make that the top Level
    # Since we create only one block diagram it is okay to use *.bd
    # quite added to ensure that project exhits gracefully even
    # if there are issues with validation and generation
    # done because FREQ parameter was not being propagated to xternal
    # interface pins
    set top_wrapper [make_wrapper -files [get_files *.bd] -top -quiet]
    import_files -force -norecurse $top_wrapper -quiet 
    set_property top [file rootname [file tail $top_wrapper]]  [current_fileset] -quiet 
 }

 #-------------------------------------------------------
 # Returns the VLNV of the IP that packaged using System Generator 
 #
 #-------------------------------------------------------
 proc dsp_get_ip_vlnv {} {
    set ip_vlnv [dsp_ip_packager_get_vendor]:[dsp_ip_packager_get_library]:[dsp_ip_packager_get_top_name]:[dsp_ip_packager_get_version]
    return $ip_vlnv
 }
 #-------------------------------------------------------
 # Creates a functioning template ZynQ design
 #-------------------------------------------------------
 proc dsp_apply_bd_automation_for_ps {} {
    set ps_inst processing_system_1
    set ps_version 5.4 
    create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:$ps_version $ps_inst
    apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1"}  [get_bd_cells /$ps_inst] 
    set_property -dict [list CONFIG.PCW_USE_M_AXI_GP0 {1}] [get_bd_cells /$ps_inst]	
	set_property -dict [list CONFIG.PCW_EN_CLK0_PORT {1}] [get_bd_cells /$ps_inst]	
 }
 #-------------------------------------------------------
 # Create a functioning template Microblaze Design
 #-------------------------------------------------------
 proc dsp_apply_bd_automation_for_microblaze {} {
    set microblaze_inst microblaze_1
    set microblaze_version 9.3
    create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:$microblaze_version $microblaze_inst
    apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "8KB" ecc "None" debug_module "Debug Only" axi_periph "1" axi_intc "0" clk "New Clocking Wizard (100 MHz)" }  [get_bd_cells /$microblaze_inst]
    #Following lines have a lot of hardcoding to make the design functional and useful 
    # By default Block Automation of Microblaze instances an AXI Interconnect with two 
    # Masters So We Reconfigure it to have only One Master
    set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells /${microblaze_inst}_axi_periph]
    # By default Block Automation of Microblaze instances a Clock Wizard with 
    # differential pins but does not make them external so we reconfigure it
    # to make both the reset and the diff pairs external
    set clk_wiz_inst clk_wiz_1
    create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN1_D
    connect_bd_intf_net [get_bd_intf_ports /CLK_IN1_D] [get_bd_intf_pins /$clk_wiz_inst/CLK_IN1_D]
    # By default Block Automation of Microblaze instances a proc_sys_reset port
    # with dangling ext_reset_in and aux_reset_in. aux_reset_in is left unconnected
    # because it gets a good default value. ext_reset_in is connected to 
    # reset_rtl port that is an external port. The reset pin of clk_wiz is
    # also connected to the same port. This reset pin is Active High
    set proc_sys_reset_inst rst_clk_wiz_1_100M
    create_bd_port -dir I reset_rtl -type rst
    set_property CONFIG.POLARITY ACTIVE_HIGH [get_bd_ports /reset_rtl]
    connect_bd_net [get_bd_ports /reset_rtl] [get_bd_pins /$proc_sys_reset_inst/ext_reset_in]
    connect_bd_net [get_bd_ports /reset_rtl] [get_bd_pins /$clk_wiz_inst/reset] 
 }

 #-------------------------------------------------------
 # Returns IP instance in IPI design
 #-------------------------------------------------------
 proc dsp_get_ip_instance_name {} {
    set ip_inst [dsp_ip_packager_get_top_name]_1
    return $ip_inst
 }
 #-------------------------------------------------------
 # Instantiate IP bd cell in IPI design
 #------------------------------------------------------
 proc dsp_instance_ip_in_ipi_design {} {
    set ip_inst [dsp_get_ip_instance_name]
    set ip_vlnv [dsp_get_ip_vlnv]
    #Create a System Generator IP instance 
    create_bd_cell -type ip -vlnv $ip_vlnv $ip_inst
 }
 
proc dsp_is_processor_interfaces_available_on_ip {} {
    set intfs [get_bd_intf_pins /[dsp_get_ip_instance_name]/*]
    if { $intfs == "" } {
        #No Interfaces Available
        return 0
    }
    foreach intf $intfs {
        set intf_vlnv [get_property VLNV $intf]
        set index [string first "aximm_rtl" $intf_vlnv]
        if {$index != -1} {
            return 1;
        }        
    }    
    return 0
 }
 #-------------------------------------------------------------------------
 # Returns 1 if ZynQ device is targetted
 #-------------------------------------------------------------------------
 proc dsp_ipp_is_zynq {} {
    return [string match [dsp_get_param_value_in_driver_tcl_namespace DSPFamily] "zynq"]
 }
 #-------------------------------------------------------
 # Performs Automation for IP Created By System Generator
 # AXI Lite Interfaces are connected to AXI Interconnect 
 # AXI Stream Interfaces are made external
 # Non-interface ports other than clock and aresetn are made external
 # Clock is connected to clocking wizard
 # Reset is connected to proc_sys_reset_1 
 #-------------------------------------------------------
 proc dsp_apply_bd_automation_for_ip {} {
    set microblaze_inst microblaze_1
    set ip_inst [dsp_get_ip_instance_name]
    set ps_inst processing_system_1    
    if { [dsp_is_processor_interfaces_available_on_ip] == 1 } {
        set intfs [get_bd_intf_pins /[dsp_get_ip_instance_name]/*]
        foreach intf $intfs {
            set intf_vlnv [get_property VLNV $intf]
            set index [string first "aximm_rtl" $intf_vlnv]
            if {$index != -1} {
                if {[dsp_ipp_is_zynq]} {
                   apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config [list Master "/$ps_inst/M_AXI_GP0"] $intf 
                } else {
                   #Apply BD Automation to every AXI Lite Interface exported by SysGen
                   apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config [list Master "/$microblaze_inst (Periph)"] $intf 
                }
            }
        }
    }
    #Apply a Rule to Make Each UnConnected Interface an External Interface
    set intfs [get_bd_intf_pins /$ip_inst/*]
    foreach intf $intfs {
        set intf_vlnv [get_property VLNV $intf]
        set index [string first "axis_rtl" $intf_vlnv]
        if { $index != -1 } {
            create_bd_intf_port -mode [get_property MODE $intf] -vlnv xilinx.com:interface:axis_rtl:1.0 [get_property NAME $intf]
            # Added to enable board Automation for ZynQ single clock systems
            if {([dsp_ipp_is_zynq] == 1) && ([dsp_is_processor_interfaces_available_on_ip] == 1)} {
              set_property -dict [list CONFIG.FREQ_HZ {100000000}] [get_bd_intf_ports [get_property NAME $intf]] 
            } 
            #set_property -dict [list CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ  [get_bd_intf_pins /$ip_inst/[get_property NAME $intf]]]] [get_bd_intf_ports /[get_property NAME $intf]]                      
            connect_bd_intf_net [get_bd_intf_pins /$ip_inst/[get_property NAME $intf]] [get_bd_intf_ports /[get_property NAME $intf]]
            if {[get_property MODE $intf] == "Slave"} {
                set_property CONFIG.TDATA_NUM_BYTES [get_property CONFIG.TDATA_NUM_BYTES [get_bd_intf_pins /$ip_inst/[get_property NAME $intf]]] [get_bd_intf_ports /[get_property NAME $intf]]                
                set_property CONFIG.HAS_TLAST [get_property CONFIG.HAS_TLAST [get_bd_intf_pins /$ip_inst/[get_property NAME $intf]]] [get_bd_intf_ports /[get_property NAME $intf]]
                set_property CONFIG.LAYERED_METADATA [get_property CONFIG.LAYERED_METADATA [get_bd_intf_pins /$ip_inst/[get_property NAME $intf]]] [get_bd_intf_ports /[get_property NAME $intf]]
            } 
        }
    }
    # Apply Rule Automation to all Unconnected Pins that do not belong to any interface
    set pins [get_bd_pins /$ip_inst/*]
    foreach pin $pins {
        set pin_net [get_bd_nets -quiet -of_object $pin]
        set is_intf_pin [get_property -quiet INTF $pin]
        if { $is_intf_pin == FALSE && $pin_net == "" } {
            # Make it External
            set pin_name  [file tail [get_property -quiet NAME $pin]]
            if {[get_property -quiet LEFT $pin] == ""} {
                # A boolean signal
                create_bd_port -dir [get_property -quiet DIR $pin] -type [get_property -quiet TYPE $pin] $pin_name 
            } else {
                create_bd_port -dir [get_property -quiet DIR $pin] -from [get_property -quiet LEFT $pin] -to [get_property -quiet RIGHT $pin] -type [get_property -quiet TYPE $pin] $pin_name 
            }
            connect_bd_net [get_bd_ports /$pin_name] [get_bd_pins $pin]
        }
    } 
 }
}
# END namespace ::xilinx::dsp::planaheadworker
