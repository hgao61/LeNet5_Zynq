set moduleName cnn_xcel
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {cnn_xcel}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V int 49 regular  }
	{ output_V int 32 regular {array 576 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "output_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V sc_in sc_lv 49 signal 0 } 
	{ output_V_address0 sc_out sc_lv 10 signal 1 } 
	{ output_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_V_we0 sc_out sc_logic 1 signal 1 } 
	{ output_V_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "input_V", "role": "default" }} , 
 	{ "name": "output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_V", "role": "address0" }} , 
 	{ "name": "output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "ce0" }} , 
 	{ "name": "output_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "we0" }} , 
 	{ "name": "output_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "46", "85", "86"],
		"CDFG" : "cnn_xcel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "124576", "EstimateLatencyMax" : "124576",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_perform_conv_1_fu_258"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_perform_conv_fu_274"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reshape_fu_288"}],
		"Port" : [
			{"Name" : "input_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_conv11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_perform_conv_1_fu_258", "Port" : "w_conv11"}]},
			{"Name" : "b_conv12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_perform_conv_1_fu_258", "Port" : "b_conv12"}]},
			{"Name" : "w_conv23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_perform_conv_fu_274", "Port" : "w_conv23"}]},
			{"Name" : "b_conv24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_perform_conv_fu_274", "Port" : "b_conv24"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_0_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_1_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_2_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_3_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_4_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv3_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reshape_output_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "perform_conv_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21234", "EstimateLatencyMax" : "21234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "input_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_V1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_V2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_V3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_V4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_V5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_V6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_conv11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_conv12", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.w_conv11_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.b_conv12_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_10ns_4nsdEe_U1", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_10ns_4nsdEe_U2", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_9ns_3ns_eOg_U3", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U4", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_9ns_3ns_eOg_U5", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_6ns_4ns_g8j_U6", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U7", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U8", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_9ns_3ns_eOg_U9", "Parent" : "11"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U10", "Parent" : "11"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U11", "Parent" : "11"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U12", "Parent" : "11"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mux_532_14_1_1_U13", "Parent" : "11"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_urem_10ns_4nshbi_U14", "Parent" : "11"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mux_532_14_1_1_U15", "Parent" : "11"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mac_muladd_6nibs_U16", "Parent" : "11"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mac_muladd_6nibs_U17", "Parent" : "11"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_11ns_jbC_U18", "Parent" : "11"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12ns_kbM_U19", "Parent" : "11"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12ns_kbM_U20", "Parent" : "11"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U21", "Parent" : "11"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_11ns_jbC_U22", "Parent" : "11"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U23", "Parent" : "11"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_11ns_jbC_U24", "Parent" : "11"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U25", "Parent" : "11"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U26", "Parent" : "11"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U27", "Parent" : "11"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U28", "Parent" : "11"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U29", "Parent" : "11"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U30", "Parent" : "11"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U31", "Parent" : "11"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_1_fu_258.dut_mul_mul_12ns_kbM_U32", "Parent" : "11"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274", "Parent" : "0", "Child" : ["47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84"],
		"CDFG" : "perform_conv",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "95285", "EstimateLatencyMax" : "95285",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "input_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_conv23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_conv24", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.w_conv23_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.b_conv24_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U53", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U54", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U55", "Parent" : "46"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U56", "Parent" : "46"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U57", "Parent" : "46"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U58", "Parent" : "46"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U59", "Parent" : "46"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U60", "Parent" : "46"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U61", "Parent" : "46"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U62", "Parent" : "46"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U63", "Parent" : "46"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U64", "Parent" : "46"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U65", "Parent" : "46"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U66", "Parent" : "46"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U67", "Parent" : "46"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U68", "Parent" : "46"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U69", "Parent" : "46"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U70", "Parent" : "46"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U71", "Parent" : "46"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U72", "Parent" : "46"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U73", "Parent" : "46"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U74", "Parent" : "46"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U75", "Parent" : "46"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U76", "Parent" : "46"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U77", "Parent" : "46"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U78", "Parent" : "46"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U79", "Parent" : "46"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U80", "Parent" : "46"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U81", "Parent" : "46"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U82", "Parent" : "46"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U83", "Parent" : "46"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U84", "Parent" : "46"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U85", "Parent" : "46"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U86", "Parent" : "46"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U87", "Parent" : "46"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U88", "Parent" : "46"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reshape_fu_288", "Parent" : "0",
		"CDFG" : "reshape",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1665", "EstimateLatencyMax" : "1665",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "input_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_uitofp_32ns_3Aem_U101", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_xcel {
		input_V {Type I LastRead 0 FirstWrite -1}
		output_V {Type O LastRead -1 FirstWrite 17}
		w_conv11 {Type I LastRead -1 FirstWrite -1}
		b_conv12 {Type I LastRead -1 FirstWrite -1}
		w_conv23 {Type I LastRead -1 FirstWrite -1}
		b_conv24 {Type I LastRead -1 FirstWrite -1}}
	perform_conv_1 {
		input_V {Type I LastRead 18 FirstWrite -1}
		input_V1 {Type I LastRead 18 FirstWrite -1}
		input_V2 {Type I LastRead 18 FirstWrite -1}
		output_V {Type IO LastRead 32 FirstWrite 1}
		output_V3 {Type IO LastRead 32 FirstWrite 1}
		output_V4 {Type IO LastRead 32 FirstWrite 1}
		output_V5 {Type IO LastRead 32 FirstWrite 1}
		output_V6 {Type IO LastRead 32 FirstWrite 1}
		w_conv11 {Type I LastRead -1 FirstWrite -1}
		b_conv12 {Type I LastRead -1 FirstWrite -1}}
	perform_conv {
		input_0_V {Type I LastRead 20 FirstWrite -1}
		input_1_V {Type I LastRead 20 FirstWrite -1}
		input_2_V {Type I LastRead 20 FirstWrite -1}
		input_3_V {Type I LastRead 20 FirstWrite -1}
		input_4_V {Type I LastRead 20 FirstWrite -1}
		output_V {Type IO LastRead 20 FirstWrite 1}
		w_conv23 {Type I LastRead -1 FirstWrite -1}
		b_conv24 {Type I LastRead -1 FirstWrite -1}}
	reshape {
		input_V {Type I LastRead 3 FirstWrite -1}
		output_V {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "124576", "Max" : "124576"}
	, {"Name" : "Interval", "Min" : "124576", "Max" : "124576"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_V { ap_none {  { input_V in_data 0 49 } } }
	output_V { ap_memory {  { output_V_address0 mem_address 1 10 }  { output_V_ce0 mem_ce 1 1 }  { output_V_we0 mem_we 1 1 }  { output_V_d0 mem_din 1 32 } } }
}
