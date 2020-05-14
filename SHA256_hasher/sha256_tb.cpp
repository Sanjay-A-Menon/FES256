/*
BSD 2-Clause License

Copyright (c) 2020, Sanjay A Menon
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

SHA256 hasher HLS test bench
AXI STREAM input & output interface with bus data width of 1 BYTE
*/

#include <stdio.h>
#include <hls_stream.h>
#include "ap_axi_sdata.h"
#include <memory.h>
#include <string.h>
#include "./sha256.h" //Set path to your sha256.h file

#define ARRAY_LENGTH(array) (sizeof(array)/sizeof((array)[0]))


struct AXI_VAL{
	unsigned int data_single;
	bool last;
};

BYTE hash[256];

void sha256(hls::stream<AXI_VAL> & in, hls::stream<AXI_VAL> & out);


int main()
{
	hls::stream<AXI_VAL> in_stream;
	hls::stream<AXI_VAL> out_stream;

	AXI_VAL valIn,valOut;
	char text1[] = {'a','b','c','\0'};
	//unsigned int text1[] = {97,98,99,0};
    for(int i =0;i<ARRAY_LENGTH(text1);++i)
    {
    	valIn.data_single = text1[i];
    	in_stream << valIn;
    }

    sha256(in_stream, out_stream);

    for(int i=0;i<256;++i)
    {
    	out_stream.read(valOut);
    	hash[i] = valOut.data_single;
    }

    printf("%hhu",hash[0]);
	return 0;
}

