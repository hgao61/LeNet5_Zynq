# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config  -ruleid {1}  -id {BD 41-968}  -string {{xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {2}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {3}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {4}  -id {BD 41-678}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {5}  -id {BD 41-1356}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {7}  -id {BD 41-759}  -string {{xlconcat_0/In}}  -new_severity {INFO} 
set_msg_config  -ruleid {8}  -id {Netlist 29-160}  -string {{vivado_system_processing_system7}}  -new_severity {INFO} 
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/vivado/xillydemo.cache/wt [current_project]
set_property parent.project_path /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/vivado/xillydemo.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado-ip [current_project]
set_property ip_output_repo /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/vivado/xillydemo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/xillydemo.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/xillybus_core.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/xillybus.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/system.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/smbus.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/i2s_audio.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/reshape.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/perform_conv_w_comb6.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/perform_conv_b_concg.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/perform_conv_1_w_bkb.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/perform_conv_1_b_cud.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/perform_conv_1.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/perform_conv.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_urem_9ns_3ns_eOg.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_urem_6ns_4ns_g8j.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_urem_6ns_3ns_fYi.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_urem_10ns_4nsocq.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_urem_10ns_4nshbi.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_uitofp_32ns_3Aem.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_result.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_mux_532_14_1_1.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_mul_mul_14s_1pcA.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_mul_mul_12s_1lbW.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_mul_mul_12ns_kbM.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_mul_mul_11ns_jbC.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_mac_muladd_6nibs.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/cnn_xcel_mem_convyd2.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/cnn_xcel_mem_convtde.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/cnn_xcel_mem_convsc4.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/cnn_xcel_mem_convqcK.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/cnn_xcel.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fpga-design/dut_urem_10ns_4nsdEe.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fifo_8x2048.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/src/fifo_32x512.v
  /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/system.v
}
read_ip -quiet /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048.xci
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048_ooc.xdc]

read_ip -quiet /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512.xci
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512_ooc.xdc]

add_files /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/vivado_system.bd
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_processing_system7_0_0_1/vivado_system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0_1/vivado_system_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0_1/vivado_system_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0_1/vivado_system_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_xbar_0_1/vivado_system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_auto_pc_1_1/vivado_system_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_auto_pc_0_1/vivado_system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_auto_pc_2_1/vivado_system_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/vivado_system/vivado_system_ooc.xdc]

read_ip -quiet /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/xillybus/vivado/xillydemo.srcs/sources_1/ip/dut_ap_uitofp_4_no_dsp_32/dut_ap_uitofp_4_no_dsp_32.xci

set_property edif_extra_search_paths /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/cores [current_fileset]
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/xillydemo.xdc
set_property used_in_implementation false [get_files /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/zedboard_project/vivado-essentials/xillydemo.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top xillydemo -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef xillydemo.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file xillydemo_utilization_synth.rpt -pb xillydemo_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
