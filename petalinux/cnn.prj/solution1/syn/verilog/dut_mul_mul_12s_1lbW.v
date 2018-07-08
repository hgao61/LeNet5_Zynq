
`timescale 1 ns / 1 ps

  module dut_mul_mul_12s_1lbW_DSP48_3(a, b, p);
input signed [12 - 1 : 0] a; // synthesis attribute keep a "true"
input [13 - 1 : 0] b; // synthesis attribute keep b "true"
output signed [25 - 1 : 0] p; // synthesis attribute keep p "true"

assign p = $signed (a) * $signed ({1'b0, b});

endmodule

`timescale 1 ns / 1 ps
module dut_mul_mul_12s_1lbW(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



dut_mul_mul_12s_1lbW_DSP48_3 dut_mul_mul_12s_1lbW_DSP48_3_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

