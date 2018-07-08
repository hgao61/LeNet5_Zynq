//==========================================================================
// cnn.cpp
//==========================================================================
// @brief: A convolution kernel for CNN on digit recognition

#include "cnn.h"
#include "layer.h"

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<bit32_t> &strm_out
)
{
  digit digit;
  bit4_t nearest;
  bit32_t result[576];

  bit32_t input_lo = strm_in.read();
  bit32_t input_hi = strm_in.read();
  
  // read two 32-bit input words into digit
  digit(31, 0) = input_lo(31,0);
  digit(48,32) = input_hi(16,0);

  // call digitrec
  cnn_xcel(digit, result);

  // write out the result
  for (int i = 0; i < 576; i++)
    strm_out.write(result[i]);
}

//----------------------------------------------------------
// CNN Accelerator
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the output of second conv layer

void cnn_xcel( digit input , bit32_t* output) 
{
  #include "model_conv.h"

  fixed16_t mem_conv1[800];
  fixed16_t mem_conv2[800];
  fixed16_t mem_conv3[576];
  fixed16_t reshape_output[576];
	//fixed16_t layer1_in[800];
	//fixed16_t layer1_out[800];
	
	//fixed16_t layer2_out[576];
	
  // prepare input fmaps
  //for (int i = 0; i < 49; i++) layer1_in[i] = input[i];
  for (int i = 0; i < 49; i++) mem_conv1[i] = input[i];

  // first conv layer
  //perform_conv1(layer1_in, layer1_out, w_conv1, b_conv1);
  // second conv layer
  //perform_conv2(layer1_out, layer2_out, w_conv2, b_conv2);

	//first conv layer
  perform_conv(mem_conv1, mem_conv2, w_conv1, b_conv1, 1, 32, 5);
	// second conv layer
  perform_conv(mem_conv2, mem_conv3, w_conv2, b_conv2, 32, 64, 3);
      
  reshape(mem_conv3, reshape_output);

  // prepare outputs
  union_f_i val;

  for (int i = 0; i < 576; i++) {
    //val.f = layer2_out[i];
    //val.f = mem_conv3[i];
    val.f = reshape_output[i];
    output[i] = (bit32_t)val.i;
  }

}


