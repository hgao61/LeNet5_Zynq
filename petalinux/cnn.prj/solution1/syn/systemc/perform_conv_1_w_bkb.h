// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __perform_conv_1_w_bkb_H__
#define __perform_conv_1_w_bkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct perform_conv_1_w_bkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
  static const unsigned AddressRange = 18432;
  static const unsigned AddressWidth = 15;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(perform_conv_1_w_bkb_ram) {
        ram[0] = "0b110111101101";
        ram[1] = "0b001101000001";
        ram[2] = "0b001000011010";
        ram[3] = "0b000000100000";
        ram[4] = "0b110111111000";
        ram[5] = "0b001010011100";
        ram[6] = "0b111000100010";
        ram[7] = "0b111011101111";
        ram[8] = "0b000101011101";
        ram[9] = "0b000010111110";
        ram[10] = "0b000001000100";
        ram[11] = "0b110110111000";
        ram[12] = "0b001101110110";
        ram[13] = "0b001011100010";
        ram[14] = "0b000010001010";
        ram[15] = "0b110000010010";
        ram[16] = "0b000000111111";
        ram[17] = "0b110110011111";
        ram[18] = "0b110101010010";
        ram[19] = "0b110101011010";
        ram[20] = "0b111101001101";
        ram[21] = "0b000011011011";
        ram[22] = "0b001010001001";
        ram[23] = "0b000101101011";
        ram[24] = "0b110110001010";
        ram[25] = "0b111101111010";
        ram[26] = "0b001000110101";
        ram[27] = "0b000011111001";
        ram[28] = "0b000011110100";
        ram[29] = "0b000100001110";
        ram[30] = "0b000000110111";
        ram[31] = "0b000111101000";
        ram[32] = "0b110100101001";
        ram[33] = "0b001001101000";
        ram[34] = "0b000111000011";
        ram[35] = "0b110011000010";
        ram[36] = "0b110100110111";
        ram[37] = "0b000010110100";
        ram[38] = "0b111101110010";
        ram[39] = "0b000100011000";
        ram[40] = "0b101110011000";
        ram[41] = "0b110000011001";
        ram[42] = "0b111111001100";
        ram[43] = "0b111100010010";
        ram[44] = "0b000111111110";
        ram[45] = "0b000100101011";
        ram[46] = "0b111010000001";
        ram[47] = "0b001110110000";
        ram[48] = "0b111011010100";
        ram[49] = "0b000011000100";
        ram[50] = "0b111001110011";
        ram[51] = "0b000011001011";
        ram[52] = "0b000000011000";
        ram[53] = "0b000010100110";
        ram[54] = "0b110101000111";
        ram[55] = "0b000101011111";
        ram[56] = "0b110011100010";
        ram[57] = "0b111111100011";
        ram[58] = "0b000110101110";
        ram[59] = "0b111111000111";
        ram[60] = "0b110011111101";
        ram[61] = "0b001011000001";
        ram[62] = "0b111111111001";
        ram[63] = "0b110110011111";
        ram[64] = "0b111011011101";
        ram[65] = "0b110111010100";
        ram[66] = "0b110111011010";
        ram[67] = "0b111101000000";
        ram[68] = "0b000110110011";
        ram[69] = "0b001000111000";
        ram[70] = "0b000111011010";
        ram[71] = "0b000111000001";
        ram[72] = "0b110101000010";
        ram[73] = "0b110010011101";
        ram[74] = "0b111110110100";
        ram[75] = "0b000110001111";
        ram[76] = "0b000010111010";
        ram[77] = "0b110010001011";
        ram[78] = "0b111110110111";
        ram[79] = "0b000111010111";
        ram[80] = "0b110011010100";
        ram[81] = "0b000011000111";
        ram[82] = "0b000010101110";
        ram[83] = "0b111001101110";
        ram[84] = "0b000001000111";
        ram[85] = "0b110100010101";
        ram[86] = "0b000111110100";
        ram[87] = "0b000011000110";
        ram[88] = "0b101110011011";
        ram[89] = "0b000111010010";
        ram[90] = "0b000100110100";
        ram[91] = "0b111110110000";
        ram[92] = "0b111011101010";
        ram[93] = "0b000001110011";
        ram[94] = "0b110000010010";
        ram[95] = "0b111001010011";
        ram[96] = "0b000101100010";
        ram[97] = "0b000010111100";
        ram[98] = "0b001001000000";
        ram[99] = "0b111100011000";
        ram[100] = "0b000100110010";
        ram[101] = "0b000011001011";
        ram[102] = "0b111110010110";
        ram[103] = "0b000010100001";
        ram[104] = "0b110110010111";
        ram[105] = "0b111011111001";
        ram[106] = "0b000101000001";
        ram[107] = "0b000000000010";
        ram[108] = "0b000011000100";
        ram[109] = "0b111100011011";
        ram[110] = "0b000101001011";
        ram[111] = "0b000110000001";
        ram[112] = "0b110110111001";
        ram[113] = "0b111010110010";
        ram[114] = "0b000110101100";
        ram[115] = "0b101101111100";
        ram[116] = "0b111100101001";
        ram[117] = "0b000110110001";
        ram[118] = "0b000111000111";
        ram[119] = "0b000011011000";
        ram[120] = "0b110010001001";
        ram[121] = "0b000100100001";
        ram[122] = "0b000100100001";
        ram[123] = "0b101111110010";
        ram[124] = "0b110111010100";
        ram[125] = "0b110010000001";
        ram[126] = "0b001011000010";
        ram[127] = "0b000001111001";
        ram[128] = "0b110100011111";
        ram[129] = "0b001001011101";
        ram[130] = "0b111010111101";
        ram[131] = "0b111100010110";
        ram[132] = "0b111111110010";
        ram[133] = "0b001000000001";
        ram[134] = "0b000010001101";
        ram[135] = "0b001110100011";
        ram[136] = "0b111110000001";
        ram[137] = "0b000110101010";
        ram[138] = "0b000011011000";
        ram[139] = "0b000110100111";
        ram[140] = "0b000011011011";
        ram[141] = "0b000001010110";
        ram[142] = "0b111000100101";
        ram[143] = "0b000010011101";
        ram[144] = "0b000001011011";
        ram[145] = "0b110010001010";
        ram[146] = "0b111001100100";
        ram[147] = "0b000011101110";
        ram[148] = "0b001110100011";
        ram[149] = "0b000010011111";
        ram[150] = "0b111100101100";
        ram[151] = "0b000101011101";
        ram[152] = "0b111100010101";
        ram[153] = "0b000111111100";
        ram[154] = "0b001000101110";
        ram[155] = "0b110010111000";
        ram[156] = "0b000101010100";
        ram[157] = "0b111111100011";
        ram[158] = "0b110001011010";
        ram[159] = "0b111011110001";
        ram[160] = "0b111010001111";
        ram[161] = "0b000010001001";
        ram[162] = "0b001001011111";
        ram[163] = "0b000011111111";
        ram[164] = "0b001010000011";
        ram[165] = "0b001010111101";
        ram[166] = "0b110000001010";
        ram[167] = "0b111011111011";
        ram[168] = "0b111110011111";
        ram[169] = "0b001110100111";
        ram[170] = "0b111110100111";
        ram[171] = "0b000111011100";
        ram[172] = "0b000111111010";
        ram[173] = "0b110101110000";
        ram[174] = "0b111111101010";
        ram[175] = "0b111001101100";
        ram[176] = "0b001000001111";
        ram[177] = "0b111100111101";
        ram[178] = "0b111100101101";
        ram[179] = "0b001010110010";
        ram[180] = "0b000011111101";
        ram[181] = "0b000001001111";
        ram[182] = "0b000111000111";
        ram[183] = "0b000100100000";
        ram[184] = "0b000010110110";
        ram[185] = "0b111100111101";
        ram[186] = "0b111101001111";
        ram[187] = "0b110010000110";
        ram[188] = "0b111000000010";
        ram[189] = "0b000010101100";
        ram[190] = "0b000100100111";
        ram[191] = "0b101111010101";
        ram[192] = "0b000111111010";
        ram[193] = "0b110011111111";
        ram[194] = "0b111100110101";
        ram[195] = "0b000101100010";
        ram[196] = "0b111000001001";
        ram[197] = "0b000000101111";
        ram[198] = "0b001010001110";
        ram[199] = "0b110100101101";
        ram[200] = "0b000010000001";
        ram[201] = "0b001101110100";
        ram[202] = "0b111111111010";
        ram[203] = "0b111110011011";
        ram[204] = "0b000110111101";
        ram[205] = "0b111011011011";
        ram[206] = "0b111110101001";
        ram[207] = "0b000110000011";
        ram[208] = "0b001001011101";
        ram[209] = "0b001010000111";
        ram[210] = "0b111101011101";
        ram[211] = "0b001110000101";
        ram[212] = "0b111000110000";
        ram[213] = "0b111101010000";
        ram[214] = "0b111010010111";
        ram[215] = "0b000001011100";
        ram[216] = "0b000011111100";
        ram[217] = "0b000111010001";
        ram[218] = "0b001101101011";
        ram[219] = "0b111111110100";
        ram[220] = "0b111011001000";
        ram[221] = "0b111100010100";
        ram[222] = "0b111101100010";
        ram[223] = "0b111101100000";
        ram[224] = "0b110101010010";
        ram[225] = "0b000101010010";
        ram[226] = "0b000010110000";
        ram[227] = "0b111110101110";
        ram[228] = "0b110110111011";
        ram[229] = "0b111011001110";
        ram[230] = "0b001010111101";
        ram[231] = "0b111100111111";
        ram[232] = "0b001111100001";
        ram[233] = "0b111100100001";
        ram[234] = "0b111001010100";
        ram[235] = "0b110001000001";
        ram[236] = "0b111101011110";
        ram[237] = "0b111000000100";
        ram[238] = "0b000100001011";
        ram[239] = "0b111000010111";
        ram[240] = "0b111110111001";
        ram[241] = "0b001001000010";
        ram[242] = "0b110111101010";
        ram[243] = "0b111111000011";
        ram[244] = "0b111010001001";
        ram[245] = "0b001101000000";
        ram[246] = "0b111100011100";
        ram[247] = "0b001011001000";
        ram[248] = "0b111001101110";
        ram[249] = "0b111011101101";
        ram[250] = "0b001000110101";
        ram[251] = "0b000000010101";
        ram[252] = "0b111000110101";
        ram[253] = "0b101111001101";
        ram[254] = "0b111000101001";
        ram[255] = "0b001010101100";
        ram[256] = "0b000111011011";
        ram[257] = "0b111111100010";
        ram[258] = "0b000001110001";
        ram[259] = "0b001101110010";
        ram[260] = "0b000000100111";
        ram[261] = "0b111001111010";
        ram[262] = "0b000011001000";
        ram[263] = "0b000110110100";
        ram[264] = "0b110110010110";
        ram[265] = "0b001000000101";
        ram[266] = "0b000100111000";
        ram[267] = "0b111011001100";
        ram[268] = "0b001000001000";
        ram[269] = "0b000110111101";
        ram[270] = "0b110000011110";
        ram[271] = "0b110001100010";
        ram[272] = "0b000111011110";
        ram[273] = "0b000100110110";
        ram[274] = "0b111111010010";
        ram[275] = "0b000000100100";
        ram[276] = "0b000001000010";
        ram[277] = "0b000001000001";
        ram[278] = "0b000001110110";
        ram[279] = "0b000001010010";
        ram[280] = "0b000100110110";
        ram[281] = "0b000001010111";
        ram[282] = "0b000111010101";
        ram[283] = "0b000101011110";
        ram[284] = "0b111101011111";
        ram[285] = "0b111111010011";
        ram[286] = "0b000100101010";
        ram[287] = "0b110100000100";
        for (unsigned i = 288; i < 18432 ; i = i + 1) {
            ram[i] = "0b000000000000";
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


SC_MODULE(perform_conv_1_w_bkb) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 18432;
static const unsigned AddressWidth = 15;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


perform_conv_1_w_bkb_ram* meminst;


SC_CTOR(perform_conv_1_w_bkb) {
meminst = new perform_conv_1_w_bkb_ram("perform_conv_1_w_bkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~perform_conv_1_w_bkb() {
    delete meminst;
}


};//endmodule
#endif
