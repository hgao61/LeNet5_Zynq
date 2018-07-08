set moduleName perform_conv
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {perform_conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_0_V int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ input_1_V int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ input_2_V int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ input_3_V int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ input_4_V int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ output_V int 14 regular {array 576 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "input_2_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "input_3_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "input_4_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "output_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_V_address0 sc_out sc_lv 8 signal 0 } 
	{ input_0_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_V_q0 sc_in sc_lv 14 signal 0 } 
	{ input_0_V_address1 sc_out sc_lv 8 signal 0 } 
	{ input_0_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_0_V_q1 sc_in sc_lv 14 signal 0 } 
	{ input_1_V_address0 sc_out sc_lv 8 signal 1 } 
	{ input_1_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_V_q0 sc_in sc_lv 14 signal 1 } 
	{ input_1_V_address1 sc_out sc_lv 8 signal 1 } 
	{ input_1_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_1_V_q1 sc_in sc_lv 14 signal 1 } 
	{ input_2_V_address0 sc_out sc_lv 8 signal 2 } 
	{ input_2_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_V_q0 sc_in sc_lv 14 signal 2 } 
	{ input_2_V_address1 sc_out sc_lv 8 signal 2 } 
	{ input_2_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_2_V_q1 sc_in sc_lv 14 signal 2 } 
	{ input_3_V_address0 sc_out sc_lv 8 signal 3 } 
	{ input_3_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_V_q0 sc_in sc_lv 14 signal 3 } 
	{ input_3_V_address1 sc_out sc_lv 8 signal 3 } 
	{ input_3_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ input_3_V_q1 sc_in sc_lv 14 signal 3 } 
	{ input_4_V_address0 sc_out sc_lv 8 signal 4 } 
	{ input_4_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_4_V_q0 sc_in sc_lv 14 signal 4 } 
	{ input_4_V_address1 sc_out sc_lv 8 signal 4 } 
	{ input_4_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ input_4_V_q1 sc_in sc_lv 14 signal 4 } 
	{ output_V_address0 sc_out sc_lv 10 signal 5 } 
	{ output_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_V_we0 sc_out sc_logic 1 signal 5 } 
	{ output_V_d0 sc_out sc_lv 14 signal 5 } 
	{ output_V_q0 sc_in sc_lv 14 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0_V", "role": "address0" }} , 
 	{ "name": "input_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_V", "role": "ce0" }} , 
 	{ "name": "input_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_0_V", "role": "q0" }} , 
 	{ "name": "input_0_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0_V", "role": "address1" }} , 
 	{ "name": "input_0_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_V", "role": "ce1" }} , 
 	{ "name": "input_0_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_0_V", "role": "q1" }} , 
 	{ "name": "input_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1_V", "role": "address0" }} , 
 	{ "name": "input_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_V", "role": "ce0" }} , 
 	{ "name": "input_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_1_V", "role": "q0" }} , 
 	{ "name": "input_1_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1_V", "role": "address1" }} , 
 	{ "name": "input_1_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_V", "role": "ce1" }} , 
 	{ "name": "input_1_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_1_V", "role": "q1" }} , 
 	{ "name": "input_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2_V", "role": "address0" }} , 
 	{ "name": "input_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2_V", "role": "ce0" }} , 
 	{ "name": "input_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_2_V", "role": "q0" }} , 
 	{ "name": "input_2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2_V", "role": "address1" }} , 
 	{ "name": "input_2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2_V", "role": "ce1" }} , 
 	{ "name": "input_2_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_2_V", "role": "q1" }} , 
 	{ "name": "input_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3_V", "role": "address0" }} , 
 	{ "name": "input_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3_V", "role": "ce0" }} , 
 	{ "name": "input_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_3_V", "role": "q0" }} , 
 	{ "name": "input_3_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3_V", "role": "address1" }} , 
 	{ "name": "input_3_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3_V", "role": "ce1" }} , 
 	{ "name": "input_3_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_3_V", "role": "q1" }} , 
 	{ "name": "input_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4_V", "role": "address0" }} , 
 	{ "name": "input_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4_V", "role": "ce0" }} , 
 	{ "name": "input_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_4_V", "role": "q0" }} , 
 	{ "name": "input_4_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4_V", "role": "address1" }} , 
 	{ "name": "input_4_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4_V", "role": "ce1" }} , 
 	{ "name": "input_4_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_4_V", "role": "q1" }} , 
 	{ "name": "output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_V", "role": "address0" }} , 
 	{ "name": "output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "ce0" }} , 
 	{ "name": "output_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "we0" }} , 
 	{ "name": "output_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V", "role": "d0" }} , 
 	{ "name": "output_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv23_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_conv24_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U53", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U54", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U55", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U56", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U57", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U58", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U59", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U60", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4nsocq_U61", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U62", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U63", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U64", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U65", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U66", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U67", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U68", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U69", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_532_14_1_1_U70", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U71", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U72", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U73", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U74", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U75", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U76", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U77", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U78", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_kbM_U79", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U80", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U81", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U82", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U83", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U84", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U85", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U86", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U87", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_1pcA_U88", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	perform_conv {
		input_0_V {Type I LastRead 20 FirstWrite -1}
		input_1_V {Type I LastRead 20 FirstWrite -1}
		input_2_V {Type I LastRead 20 FirstWrite -1}
		input_3_V {Type I LastRead 20 FirstWrite -1}
		input_4_V {Type I LastRead 20 FirstWrite -1}
		output_V {Type IO LastRead 20 FirstWrite 1}
		w_conv23 {Type I LastRead -1 FirstWrite -1}
		b_conv24 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "95285", "Max" : "95285"}
	, {"Name" : "Interval", "Min" : "95285", "Max" : "95285"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_0_V { ap_memory {  { input_0_V_address0 mem_address 1 8 }  { input_0_V_ce0 mem_ce 1 1 }  { input_0_V_q0 mem_dout 0 14 }  { input_0_V_address1 mem_address 1 8 }  { input_0_V_ce1 mem_ce 1 1 }  { input_0_V_q1 mem_dout 0 14 } } }
	input_1_V { ap_memory {  { input_1_V_address0 mem_address 1 8 }  { input_1_V_ce0 mem_ce 1 1 }  { input_1_V_q0 mem_dout 0 14 }  { input_1_V_address1 mem_address 1 8 }  { input_1_V_ce1 mem_ce 1 1 }  { input_1_V_q1 mem_dout 0 14 } } }
	input_2_V { ap_memory {  { input_2_V_address0 mem_address 1 8 }  { input_2_V_ce0 mem_ce 1 1 }  { input_2_V_q0 mem_dout 0 14 }  { input_2_V_address1 mem_address 1 8 }  { input_2_V_ce1 mem_ce 1 1 }  { input_2_V_q1 mem_dout 0 14 } } }
	input_3_V { ap_memory {  { input_3_V_address0 mem_address 1 8 }  { input_3_V_ce0 mem_ce 1 1 }  { input_3_V_q0 mem_dout 0 14 }  { input_3_V_address1 mem_address 1 8 }  { input_3_V_ce1 mem_ce 1 1 }  { input_3_V_q1 mem_dout 0 14 } } }
	input_4_V { ap_memory {  { input_4_V_address0 mem_address 1 8 }  { input_4_V_ce0 mem_ce 1 1 }  { input_4_V_q0 mem_dout 0 14 }  { input_4_V_address1 mem_address 1 8 }  { input_4_V_ce1 mem_ce 1 1 }  { input_4_V_q1 mem_dout 0 14 } } }
	output_V { ap_memory {  { output_V_address0 mem_address 1 10 }  { output_V_ce0 mem_ce 1 1 }  { output_V_we0 mem_we 1 1 }  { output_V_d0 mem_din 1 14 }  { output_V_q0 mem_dout 0 14 } } }
}
