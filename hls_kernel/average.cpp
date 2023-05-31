#include "ap_axi_sdata.h"
#include "hls_stream.h"

typedef ap_axis<512,0,0,0> intSdCh; //Representing the dataline has 512-bit
#define INTEGER_NUM 16  //The number of integer in one dataline


void test(hls::stream<intSdCh> &inStream, hls::stream<intSdCh> &outStream)
{
	#pragma HLS INTERFACE axis port=inStream
	#pragma HLS INTERFACE axis port=outStream
	intSdCh valIn = inStream.read();
	intSdCh valOut;

	ap_int<512> temp_dataline = valIn.data;
	ap_int<32> sum = 0;

	#pragma HLS PIPELINE
	for (int i = 0; i < INTEGER_NUM; i++){
		sum = sum + temp_dataline.range(32 * (i+1) - 1, 32 * i);
	}

	valOut.data.range(31, 0) = sum/16;
	valOut.data.range(511, 32) = 0;
	outStream.write(valOut);


}



