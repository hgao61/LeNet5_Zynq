#=============================================================================
# run_base.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline digit recongnition design.

# Project name
set hls_prj cnn.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top dut

# Add design and testbench files
add_files cnn.cpp
add_files -tb cnn_test.cpp
add_files layer.cpp
add_files -tb data

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###
set_directive_unroll perform_conv/Lc
set_directive_unroll perform_conv/Lr
set_directive_pipeline perform_conv/Lm
set_directive_array_partition -type cyclic -factor 5 cnn_xcel mem_conv2
set_directive_array_partition -type cyclic -factor 3 cnn_xcel mem_conv1
#set_directive_pipeline perform_conv/Ln


############################################

# Simulate the C++ design
csim_design -O
# Synthesize the design
csynth_design
# Co-simulate the design
#cosim_design
exit