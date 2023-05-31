#include "ap_axi_sdata.h"
#include "hls_stream.h"

typedef ap_axis<512,0,0,0> intSdCh;

void test(hls::stream<intSdCh> &inStream, hls::stream<intSdCh> &outStream);

int main()
{
	hls::stream<intSdCh> inputStream;
	hls::stream<intSdCh> outputStream;

	intSdCh valIn;
	valIn.data = "0x0000003100000032000000330000003400000035000000360000003700000038000000390000003a0000003b0000003c0000003d0000003e0000003f00000030";
	valIn.keep = 0xFFFFFFFFFFFFFFFF; valIn.strb = 1;
	inputStream << valIn;

	test(inputStream, outputStream);

	intSdCh valOut;
	outputStream.read(valOut);
    for (int i = 7; i >= 0; --i) {
        unsigned long long chunk = valOut.data.range((i + 1) * 64 - 1, i * 64);
        printf("%016llx", chunk);
    }
	return 0;
}
