# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.cache/wt [current_project]
set_property parent.project_path /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_output_repo /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1.xci
set_property is_locked true [get_files /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_for_gpio_axi_gpio_0_1 -part xc7z010clg400-1 -cascade_dsp force -assert -mode out_of_context

rename_ref -prefix_all design_for_gpio_axi_gpio_0_1_

write_checkpoint -force -noxdef design_for_gpio_axi_gpio_0_1.dcp

catch { report_utilization -file design_for_gpio_axi_gpio_0_1_utilization_synth.rpt -pb design_for_gpio_axi_gpio_0_1_utilization_synth.pb }

if { [catch {
  file copy -force /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.runs/design_for_gpio_axi_gpio_0_1_synth_1/design_for_gpio_axi_gpio_0_1.dcp /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.ip_user_files/ip/design_for_gpio_axi_gpio_0_1]} {
  catch { 
    file copy -force /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1_stub.v /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.ip_user_files/ip/design_for_gpio_axi_gpio_0_1
  }
}

if {[file isdir /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.ip_user_files/ip/design_for_gpio_axi_gpio_0_1]} {
  catch { 
    file copy -force /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.srcs/sources_1/bd/design_for_gpio/ip/design_for_gpio_axi_gpio_0_1/design_for_gpio_axi_gpio_0_1_stub.vhdl /home/daniele/Sistemi_Embedded/Esercitazione_7/Driver/Esercitazione_7/Driver_GPIO_Xilinx/Terza_tipologia/vivado_project/project_gpio/project_gpio.ip_user_files/ip/design_for_gpio_axi_gpio_0_1
  }
}
