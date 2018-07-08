// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __perform_conv_b_concg_H__
#define __perform_conv_b_concg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct perform_conv_b_concg_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
  static const unsigned AddressRange = 64;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(perform_conv_b_concg_ram) {
        ram[0] = "0b110110101";
        ram[1] = "0b110110001";
        ram[2] = "0b110111011";
        ram[3] = "0b110010100";
        ram[4] = "0b110011111";
        ram[5] = "0b111000100";
        ram[6] = "0b101111100";
        ram[7] = "0b111001011";
        ram[8] = "0b110101000";
        ram[9] = "0b110011001";
        ram[10] = "0b111100100";
        ram[11] = "0b111001111";
        ram[12] = "0b110011101";
        ram[13] = "0b110100100";
        ram[14] = "0b111000000";
        ram[15] = "0b110000100";
        ram[16] = "0b110101000";
        ram[17] = "0b110100100";
        ram[18] = "0b110110011";
        ram[19] = "0b110100011";
        ram[20] = "0b111010101";
        ram[21] = "0b110111010";
        ram[22] = "0b111000011";
        ram[23] = "0b110010011";
        ram[24] = "0b110110010";
        ram[25] = "0b110111001";
        ram[26] = "0b110111010";
        ram[27] = "0b110010011";
        ram[28] = "0b110101101";
        ram[29] = "0b110100110";
        ram[30] = "0b111000101";
        ram[31] = "0b110011111";
        ram[32] = "0b110101110";
        ram[33] = "0b110100010";
        ram[34] = "0b111001110";
        ram[35] = "0b111000010";
        ram[36] = "0b110111011";
        ram[37] = "0b110011111";
        ram[38] = "0b110101000";
        ram[39] = "0b110111111";
        ram[40] = "0b111000000";
        ram[41] = "0b110011110";
        ram[42] = "0b110110110";
        ram[43] = "0b111011100";
        ram[44] = "0b110101001";
        ram[45] = "0b110110010";
        ram[46] = "0b110101101";
        ram[47] = "0b110101100";
        ram[48] = "0b101110011";
        ram[49] = "0b111000100";
        ram[50] = "0b110101110";
        ram[51] = "0b110010100";
        ram[52] = "0b110111000";
        ram[53] = "0b111010101";
        ram[54] = "0b111100011";
        ram[55] = "0b111000101";
        ram[56] = "0b110111011";
        ram[57] = "0b110111100";
        ram[58] = "0b110111011";
        ram[59] = "0b110011001";
        ram[60] = "0b111000111";
        ram[61] = "0b110101000";
        ram[62] = "0b110000101";
        ram[63] = "0b110000001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(perform_conv_b_concg) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


perform_conv_b_concg_ram* meminst;


SC_CTOR(perform_conv_b_concg) {
meminst = new perform_conv_b_concg_ram("perform_conv_b_concg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~perform_conv_b_concg() {
    delete meminst;
}


};//endmodule
#endif