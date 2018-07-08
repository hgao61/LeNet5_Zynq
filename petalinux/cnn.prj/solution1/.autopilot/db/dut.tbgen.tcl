set C_TypeInfoList {{ 
"dut" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"strm_in": [[], {"reference": "0"}] }, {"strm_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName dut
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ strm_in_V_V int 32 regular {fifo 0 volatile }  }
	{ strm_out_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm_in_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_in.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "strm_out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_out.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_in_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ strm_in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ strm_out_V_V_din sc_out sc_lv 32 signal 1 } 
	{ strm_out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ strm_out_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "dout" }} , 
 	{ "name": "strm_in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "empty_n" }} , 
 	{ "name": "strm_in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "read" }} , 
 	{ "name": "strm_out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "din" }} , 
 	{ "name": "strm_out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "full_n" }} , 
 	{ "name": "strm_out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "dut",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125731", "EstimateLatencyMax" : "125731",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cnn_xcel_fu_114"}],
		"Port" : [
			{"Name" : "strm_in_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "strm_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "strm_out_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "strm_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_conv11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnn_xcel_fu_114", "Port" : "w_conv11"}]},
			{"Name" : "b_conv12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnn_xcel_fu_114", "Port" : "b_conv12"}]},
			{"Name" : "w_conv23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnn_xcel_fu_114", "Port" : "w_conv23"}]},
			{"Name" : "b_conv24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnn_xcel_fu_114", "Port" : "b_conv24"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "48", "87", "88"],
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
					{"ID" : "13", "SubInstance" : "grp_perform_conv_1_fu_258", "Port" : "w_conv11"}]},
			{"Name" : "b_conv12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_perform_conv_1_fu_258", "Port" : "b_conv12"}]},
			{"Name" : "w_conv23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_perform_conv_fu_274", "Port" : "w_conv23"}]},
			{"Name" : "b_conv24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_perform_conv_fu_274", "Port" : "b_conv24"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv1_0_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv1_1_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv1_2_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv2_0_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv2_1_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv2_2_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv2_3_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv2_4_V_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.mem_conv3_V_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.reshape_output_V_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258", "Parent" : "2", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.w_conv11_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.b_conv12_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_10ns_4nsdEe_U1", "Parent" : "13"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_10ns_4nsdEe_U2", "Parent" : "13"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_9ns_3ns_eOg_U3", "Parent" : "13"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U4", "Parent" : "13"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_9ns_3ns_eOg_U5", "Parent" : "13"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_6ns_4ns_g8j_U6", "Parent" : "13"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U7", "Parent" : "13"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U8", "Parent" : "13"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_9ns_3ns_eOg_U9", "Parent" : "13"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U10", "Parent" : "13"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U11", "Parent" : "13"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_6ns_3ns_fYi_U12", "Parent" : "13"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mux_532_14_1_1_U13", "Parent" : "13"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_urem_10ns_4nshbi_U14", "Parent" : "13"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mux_532_14_1_1_U15", "Parent" : "13"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mac_muladd_6nibs_U16", "Parent" : "13"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mac_muladd_6nibs_U17", "Parent" : "13"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_11ns_jbC_U18", "Parent" : "13"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12ns_kbM_U19", "Parent" : "13"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12ns_kbM_U20", "Parent" : "13"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U21", "Parent" : "13"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_11ns_jbC_U22", "Parent" : "13"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U23", "Parent" : "13"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_11ns_jbC_U24", "Parent" : "13"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U25", "Parent" : "13"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U26", "Parent" : "13"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U27", "Parent" : "13"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U28", "Parent" : "13"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U29", "Parent" : "13"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U30", "Parent" : "13"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12s_1lbW_U31", "Parent" : "13"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_1_fu_258.dut_mul_mul_12ns_kbM_U32", "Parent" : "13"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274", "Parent" : "2", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86"],
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
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.w_conv23_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.b_conv24_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U53", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U54", "Parent" : "48"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U55", "Parent" : "48"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U56", "Parent" : "48"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U57", "Parent" : "48"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U58", "Parent" : "48"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U59", "Parent" : "48"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U60", "Parent" : "48"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_urem_10ns_4nsocq_U61", "Parent" : "48"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U62", "Parent" : "48"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U63", "Parent" : "48"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U64", "Parent" : "48"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U65", "Parent" : "48"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U66", "Parent" : "48"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U67", "Parent" : "48"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U68", "Parent" : "48"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U69", "Parent" : "48"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mux_532_14_1_1_U70", "Parent" : "48"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U71", "Parent" : "48"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U72", "Parent" : "48"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U73", "Parent" : "48"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U74", "Parent" : "48"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U75", "Parent" : "48"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U76", "Parent" : "48"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U77", "Parent" : "48"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U78", "Parent" : "48"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_12ns_kbM_U79", "Parent" : "48"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U80", "Parent" : "48"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U81", "Parent" : "48"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U82", "Parent" : "48"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U83", "Parent" : "48"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U84", "Parent" : "48"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U85", "Parent" : "48"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U86", "Parent" : "48"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U87", "Parent" : "48"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_perform_conv_fu_274.dut_mul_mul_14s_1pcA_U88", "Parent" : "48"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.grp_reshape_fu_288", "Parent" : "2",
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
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_xcel_fu_114.dut_uitofp_32ns_3Aem_U101", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	dut {
		strm_in_V_V {Type I LastRead 1 FirstWrite -1}
		strm_out_V_V {Type O LastRead -1 FirstWrite 4}
		w_conv11 {Type I LastRead -1 FirstWrite -1}
		b_conv12 {Type I LastRead -1 FirstWrite -1}
		w_conv23 {Type I LastRead -1 FirstWrite -1}
		b_conv24 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "125731", "Max" : "125731"}
	, {"Name" : "Interval", "Min" : "125732", "Max" : "125732"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	strm_in_V_V { ap_fifo {  { strm_in_V_V_dout fifo_data 0 32 }  { strm_in_V_V_empty_n fifo_status 0 1 }  { strm_in_V_V_read fifo_update 1 1 } } }
	strm_out_V_V { ap_fifo {  { strm_out_V_V_din fifo_data 1 32 }  { strm_out_V_V_full_n fifo_status 0 1 }  { strm_out_V_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in_V_V { fifo_read 2 no_conditional }
	strm_out_V_V { fifo_write 576 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
