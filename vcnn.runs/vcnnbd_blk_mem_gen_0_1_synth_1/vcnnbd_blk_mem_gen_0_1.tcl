# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.cache/wt [current_project]
set_property parent.project_path /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/gokul/playground/ece594bb/fpgacc/vcnn/ip [current_project]
set_property ip_output_repo /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1.xci
set_property used_in_implementation false [get_files -all /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_ooc.xdc]
set_property is_locked true [get_files /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.runs/vcnnbd_blk_mem_gen_0_1_synth_1 -new_name vcnnbd_blk_mem_gen_0_1 -ip [get_ips vcnnbd_blk_mem_gen_0_1]]

if { $cached_ip eq {} } {

synth_design -top vcnnbd_blk_mem_gen_0_1 -part xc7z020clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix vcnnbd_blk_mem_gen_0_1_ vcnnbd_blk_mem_gen_0_1.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vcnnbd_blk_mem_gen_0_1_stub.v
 lappend ipCachedFiles vcnnbd_blk_mem_gen_0_1_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vcnnbd_blk_mem_gen_0_1_stub.vhdl
 lappend ipCachedFiles vcnnbd_blk_mem_gen_0_1_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vcnnbd_blk_mem_gen_0_1_sim_netlist.v
 lappend ipCachedFiles vcnnbd_blk_mem_gen_0_1_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vcnnbd_blk_mem_gen_0_1_sim_netlist.vhdl
 lappend ipCachedFiles vcnnbd_blk_mem_gen_0_1_sim_netlist.vhdl

 config_ip_cache -add -dcp vcnnbd_blk_mem_gen_0_1.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips vcnnbd_blk_mem_gen_0_1]
}

rename_ref -prefix_all vcnnbd_blk_mem_gen_0_1_

write_checkpoint -force -noxdef vcnnbd_blk_mem_gen_0_1.dcp

catch { report_utilization -file vcnnbd_blk_mem_gen_0_1_utilization_synth.rpt -pb vcnnbd_blk_mem_gen_0_1_utilization_synth.pb }

if { [catch {
  file copy -force /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.runs/vcnnbd_blk_mem_gen_0_1_synth_1/vcnnbd_blk_mem_gen_0_1.dcp /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.runs/vcnnbd_blk_mem_gen_0_1_synth_1/vcnnbd_blk_mem_gen_0_1.dcp /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.runs/vcnnbd_blk_mem_gen_0_1_synth_1/vcnnbd_blk_mem_gen_0_1_stub.v /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.runs/vcnnbd_blk_mem_gen_0_1_synth_1/vcnnbd_blk_mem_gen_0_1_stub.vhdl /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.runs/vcnnbd_blk_mem_gen_0_1_synth_1/vcnnbd_blk_mem_gen_0_1_sim_netlist.v /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.runs/vcnnbd_blk_mem_gen_0_1_synth_1/vcnnbd_blk_mem_gen_0_1_sim_netlist.vhdl /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.ip_user_files/ip/vcnnbd_blk_mem_gen_0_1]} {
  catch { 
    file copy -force /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_stub.v /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.ip_user_files/ip/vcnnbd_blk_mem_gen_0_1
  }
}

if {[file isdir /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.ip_user_files/ip/vcnnbd_blk_mem_gen_0_1]} {
  catch { 
    file copy -force /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_stub.vhdl /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.ip_user_files/ip/vcnnbd_blk_mem_gen_0_1
  }
}
