set projDir "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/planAhead"
set projName "16BitALU"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/mojo_top_0.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/edge_detector_1.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/button_conditioner_2.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/reset_conditioner_3.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/alu_test_4.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/pipeline_5.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/alu_6.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/alu_add16_7.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/alu_comp16_8.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/alu_bool16_9.v" "C:/Users/ktw1234/Downloads/16BitALU (2)/16BitALU/work/verilog/alu_shift16_10.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list  "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
