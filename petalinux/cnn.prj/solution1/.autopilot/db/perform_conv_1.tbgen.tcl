set moduleName perform_conv_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {perform_conv.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V int 13 regular {array 267 { 1 1 } 1 1 }  }
	{ input_V1 int 13 regular {array 267 { 1 1 } 1 1 }  }
	{ input_V2 int 13 regular {array 266 { 1 1 } 1 1 }  }
	{ output_V int 14 regular {array 160 { 2 3 } 1 1 }  }
	{ output_V3 int 14 regular {array 160 { 2 3 } 1 1 }  }
	{ output_V4 int 14 regular {array 160 { 2 3 } 1 1 }  }
	{ output_V5 int 14 regular {array 160 { 2 3 } 1 1 }  }
	{ output_V6 int 14 regular {array 160 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "input_V1", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "input_V2", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "output_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} , 
 	{ "Name" : "output_V3", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} , 
 	{ "Name" : "output_V4", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} , 
 	{ "Name" : "output_V5", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} , 
 	{ "Name" : "output_V6", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V_address0 sc_out sc_lv 9 signal 0 } 
	{ input_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_V_q0 sc_in sc_lv 13 signal 0 } 
	{ input_V_address1 sc_out sc_lv 9 signal 0 } 
	{ input_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_V_q1 sc_in sc_lv 13 signal 0 } 
	{ input_V1_address0 sc_out sc_lv 9 signal 1 } 
	{ input_V1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_V1_q0 sc_in sc_lv 13 signal 1 } 
	{ input_V1_address1 sc_out sc_lv 9 signal 1 } 
	{ input_V1_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_V1_q1 sc_in sc_lv 13 signal 1 } 
	{ input_V2_address0 sc_out sc_lv 9 signal 2 } 
	{ input_V2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_V2_q0 sc_in sc_lv 13 signal 2 } 
	{ input_V2_address1 sc_out sc_lv 9 signal 2 } 
	{ input_V2_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_V2_q1 sc_in sc_lv 13 signal 2 } 
	{ output_V_address0 sc_out sc_lv 8 signal 3 } 
	{ output_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_V_we0 sc_out sc_logic 1 signal 3 } 
	{ output_V_d0 sc_out sc_lv 14 signal 3 } 
	{ output_V_q0 sc_in sc_lv 14 signal 3 } 
	{ output_V3_address0 sc_out sc_lv 8 signal 4 } 
	{ output_V3_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_V3_we0 sc_out sc_logic 1 signal 4 } 
	{ output_V3_d0 sc_out sc_lv 14 signal 4 } 
	{ output_V3_q0 sc_in sc_lv 14 signal 4 } 
	{ output_V4_address0 sc_out sc_lv 8 signal 5 } 
	{ output_V4_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_V4_we0 sc_out sc_logic 1 signal 5 } 
	{ output_V4_d0 sc_out sc_lv 14 signal 5 } 
	{ output_V4_q0 sc_in sc_lv 14 signal 5 } 
	{ output_V5_address0 sc_out sc_lv 8 signal 6 } 
	{ output_V5_ce0 sc_out sc_logic 1 signal 6 } 
	{ output_V5_we0 sc_out sc_logic 1 signal 6 } 
	{ output_V5_d0 sc_out sc_lv 14 signal 6 } 
	{ output_V5_q0 sc_in sc_lv 14 signal 6 } 
	{ output_V6_address0 sc_out sc_lv 8 signal 7 } 
	{ output_V6_ce0 sc_out sc_logic 1 signal 7 } 
	{ output_V6_we0 sc_out sc_logic 1 signal 7 } 
	{ output_V6_d0 sc_out sc_lv 14 signal 7 } 
	{ output_V6_q0 sc_in sc_lv 14 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_V", "role": "address0" }} , 
 	{ "name": "input_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ce0" }} , 
 	{ "name": "input_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_V", "role": "q0" }} , 
 	{ "name": "input_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_V", "role": "address1" }} , 
 	{ "name": "input_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ce1" }} , 
 	{ "name": "input_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_V", "role": "q1" }} , 
 	{ "name": "input_V1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_V1", "role": "address0" }} , 
 	{ "name": "input_V1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V1", "role": "ce0" }} , 
 	{ "name": "input_V1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_V1", "role": "q0" }} , 
 	{ "name": "input_V1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_V1", "role": "address1" }} , 
 	{ "name": "input_V1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V1", "role": "ce1" }} , 
 	{ "name": "input_V1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_V1", "role": "q1" }} , 
 	{ "name": "input_V2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_V2", "role": "address0" }} , 
 	{ "name": "input_V2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V2", "role": "ce0" }} , 
 	{ "name": "input_V2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_V2", "role": "q0" }} , 
 	{ "name": "input_V2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_V2", "role": "address1" }} , 
 	{ "name": "input_V2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V2", "role": "ce1" }} , 
 	{ "name": "input_V2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_V2", "role": "q1" }} , 
 	{ "name": "output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V", "role": "address0" }} , 
 	{ "name": "output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "ce0" }} , 
 	{ "name": "output_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "we0" }} , 
 	{ "name": "output_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V", "role": "d0" }} , 
 	{ "name": "output_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V", "role": "q0" }} , 
 	{ "name": "output_V3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V3", "role": "address0" }} , 
 	{ "name": "output_V3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V3", "role": "ce0" }} , 
 	{ "name": "output_V3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V3", "role": "we0" }} , 
 	{ "name": "output_V3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V3", "role": "d0" }} , 
 	{ "name": "output_V3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V3", "role": "q0" }} , 
 	{ "name": "output_V4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V4", "role": "address0" }} , 
 	{ "name": "output_V4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V4", "role": "ce0" }} , 
 	{ "name": "output_V4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V4", "role": "we0" }} , 
 	{ "name": "output_V4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V4", "role": "d0" }} , 
 	{ "name": "output_V4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V4", "role": "q0" }} , 
 	{ "name": "output_V5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V5", "role": "address0" }} , 
 	{ "name": "output_V5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V5", "role": "ce0" }} , 
 	{ "name": "output_V5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V5", "role": "we0" }} , 
 	{ "name": "output_V5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V5", "role": "d0" }} , 
 	{ "name": "output_V5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V5", "role": "q0" }} , 
 	{ "name": "output_V6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V6", "role": "address0" }} , 
 	{ "name": "output_V6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V6", "role": "ce0" }} , 
 	{ "name": "output_V6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V6", "role": "we0" }} , 
 	{ "name": "output_V6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V6", "role": "d0" }} , 
 	{ "name": "output_V6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V6", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv11_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_conv12_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsdEe_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsdEe_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_9ns_3ns_eOg_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_6ns_3ns_fYi_U4", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_9ns_3ns_eOg_U5", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_6ns_4ns_g8j_U6", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_6ns_3ns_fYi_U7", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_6ns_3ns_fYi_U8", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_9ns_3ns_eOg_U9", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_6ns_3ns_fYi_U10", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_6ns_3ns_fYi_U11", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_6ns_3ns_fYi_U12", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U13", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nshbi_U14", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U15", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mac_muladd_6nibs_U16", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mac_muladd_6nibs_U17", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_jbC_U18", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U19", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U20", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U21", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_jbC_U22", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U23", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_jbC_U24", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U25", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U26", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U27", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U28", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U29", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U30", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12s_1lbW_U31", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U32", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		b_conv12 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21234", "Max" : "21234"}
	, {"Name" : "Interval", "Min" : "21234", "Max" : "21234"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_V { ap_memory {  { input_V_address0 mem_address 1 9 }  { input_V_ce0 mem_ce 1 1 }  { input_V_q0 mem_dout 0 13 }  { input_V_address1 mem_address 1 9 }  { input_V_ce1 mem_ce 1 1 }  { input_V_q1 mem_dout 0 13 } } }
	input_V1 { ap_memory {  { input_V1_address0 mem_address 1 9 }  { input_V1_ce0 mem_ce 1 1 }  { input_V1_q0 mem_dout 0 13 }  { input_V1_address1 mem_address 1 9 }  { input_V1_ce1 mem_ce 1 1 }  { input_V1_q1 mem_dout 0 13 } } }
	input_V2 { ap_memory {  { input_V2_address0 mem_address 1 9 }  { input_V2_ce0 mem_ce 1 1 }  { input_V2_q0 mem_dout 0 13 }  { input_V2_address1 mem_address 1 9 }  { input_V2_ce1 mem_ce 1 1 }  { input_V2_q1 mem_dout 0 13 } } }
	output_V { ap_memory {  { output_V_address0 mem_address 1 8 }  { output_V_ce0 mem_ce 1 1 }  { output_V_we0 mem_we 1 1 }  { output_V_d0 mem_din 1 14 }  { output_V_q0 mem_dout 0 14 } } }
	output_V3 { ap_memory {  { output_V3_address0 mem_address 1 8 }  { output_V3_ce0 mem_ce 1 1 }  { output_V3_we0 mem_we 1 1 }  { output_V3_d0 mem_din 1 14 }  { output_V3_q0 mem_dout 0 14 } } }
	output_V4 { ap_memory {  { output_V4_address0 mem_address 1 8 }  { output_V4_ce0 mem_ce 1 1 }  { output_V4_we0 mem_we 1 1 }  { output_V4_d0 mem_din 1 14 }  { output_V4_q0 mem_dout 0 14 } } }
	output_V5 { ap_memory {  { output_V5_address0 mem_address 1 8 }  { output_V5_ce0 mem_ce 1 1 }  { output_V5_we0 mem_we 1 1 }  { output_V5_d0 mem_din 1 14 }  { output_V5_q0 mem_dout 0 14 } } }
	output_V6 { ap_memory {  { output_V6_address0 mem_address 1 8 }  { output_V6_ce0 mem_ce 1 1 }  { output_V6_we0 mem_we 1 1 }  { output_V6_d0 mem_din 1 14 }  { output_V6_q0 mem_dout 0 14 } } }
}
