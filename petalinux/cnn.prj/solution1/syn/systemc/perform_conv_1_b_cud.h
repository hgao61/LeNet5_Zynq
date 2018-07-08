// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __perform_conv_1_b_cud_H__
#define __perform_conv_1_b_cud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct perform_conv_1_b_cud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
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


   SC_CTOR(perform_conv_1_b_cud_ram) {
        ram[0] = "0b0110111100";
        ram[1] = "0b0110111011";
        ram[2] = "0b1000010000";
        ram[3] = "0b0110101101";
        ram[4] = "0b1011000010";
        ram[5] = "0b0111110111";
        ram[6] = "0b0111010110";
        ram[7] = "0b1001010101";
        ram[8] = "0b1010111110";
        ram[9] = "0b0111100100";
        ram[10] = "0b0111111000";
        ram[11] = "0b0110010110";
        ram[12] = "0b1000000111";
        ram[13] = "0b1000010111";
        ram[14] = "0b0110101101";
        ram[15] = "0b0101110110";
        ram[16] = "0b0110100100";
        ram[17] = "0b0111011101";
        ram[18] = "0b0101110011";
        ram[19] = "0b0111111001";
        ram[20] = "0b1000010010";
        ram[21] = "0b1000111101";
        ram[22] = "0b0110110100";
        ram[23] = "0b0111100011";
        ram[24] = "0b0111001011";
        ram[25] = "0b0110111001";
        ram[26] = "0b1010111001";
        ram[27] = "0b0111000000";
        ram[28] = "0b0111111010";
        ram[29] = "0b0110010110";
        ram[30] = "0b1001100100";
        ram[31] = "0b0110011011";
        for (unsigned i = 32; i < 64 ; i = i + 1) {
            ram[i] = "0b0000000000";
        }


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


SC_MODULE(perform_conv_1_b_cud) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


perform_conv_1_b_cud_ram* meminst;


SC_CTOR(perform_conv_1_b_cud) {
meminst = new perform_conv_1_b_cud_ram("perform_conv_1_b_cud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~perform_conv_1_b_cud() {
    delete meminst;
}


};//endmodule
#endif
