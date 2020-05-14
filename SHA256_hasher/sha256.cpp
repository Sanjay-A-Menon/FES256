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

SHA256 hasher HLS code
AXI STREAM input & output interface with bus data width of 1 BYTE
*/


#include "ap_axi_sdata.h"
#include <assert.h>
#include <hls_stream.h>
#include <stdlib.h>
#include <memory.h>
#include "./sha256.h"

#define ROTLEFT(a,b) (((a) << (b)) | ((a) >> (32-(b))))
#define ROTRIGHT(a,b) (((a) >> (b)) | ((a) << (32-(b))))

#define CH(x,y,z) (((x) & (y)) ^ (~(x) & (z)))
#define MAJ(x,y,z) (((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z)))
#define EP0(x) (ROTRIGHT(x,2) ^ ROTRIGHT(x,13) ^ ROTRIGHT(x,22))
#define EP1(x) (ROTRIGHT(x,6) ^ ROTRIGHT(x,11) ^ ROTRIGHT(x,25))
#define SIG0(x) (ROTRIGHT(x,7) ^ ROTRIGHT(x,18) ^ ((x) >> 3))
#define SIG1(x) (ROTRIGHT(x,17) ^ ROTRIGHT(x,19) ^ ((x) >> 10))

/**************************** VARIABLES *****************************/
static const WORD k[64] = {
	0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
	0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
	0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
	0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
	0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
	0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
	0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
	0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
};

struct AXI_VAL{
	unsigned int data_single;
	bool last;
};
SHA256_CTX ctx;
BYTE data[10000];
typedef WORD T;

inline void full_adder(T a, T b, T c, T& sum, T& carry)
{
    sum = a ^ b ^ c;
    carry = ( (a&b) | (a&c) | (b&c) ) << 1;
}

T csa(T a=0, T b=0, T c=0, T d=0, T e=0)
{
    T sum  = 0;
    T carry = 0;
    int i = 0;
    full_adder(a,b,c,sum,carry);
    while(i!=2)
    {
         #pragma HLS unroll
    	 i++;
         T new_sum, new_carry;
         if(i==1)
             full_adder(sum,carry,d, new_sum, new_carry);
         else
        	 full_adder(sum,carry,e, new_sum, new_carry);
         sum  = new_sum;
         carry = new_carry;
    }
    return sum + carry;
}

void sha256(hls::stream<AXI_VAL> &in_stream_a, hls::stream<AXI_VAL> &out_stream){
   #pragma HLS INTERFACE axis port=in_stream_a
   #pragma HLS INTERFACE axis port=out_stream
   #pragma HLS INTERFACE ap_ctrl_none port=return
	AXI_VAL valIn_a, valOut;
	int i;
	//valIn_a = in_stream_a.read();
   //if(valIn_a.data_single == '\0')
   //{
	   i=0;
	   valIn_a = in_stream_a.read();
	   while(valIn_a.data_single != 0)
	   {
           #pragma HLS PIPELINE II=1
           //#pragma HLS unroll
		   data[i++]= valIn_a.data_single;
		   valIn_a = in_stream_a.read();
	   }
    //}
   sha256_init();
   sha256_update(i);
   sha256_final();
   for(int j=0;j<32;++j)
   {
       #pragma HLS unroll
	   valOut.data_single = data[j];
	   if(j == 31)
	     valOut.last = 1;
	   else
		 valOut.last = 0;
	   out_stream.write(valOut);
   }

}

void sha256_transform()
{
	WORD a, b, c, d, e, f, g, h, i, j, t1, t2, m[64],t1_sum,t1_carry,t2_sum,t2_carry,m_sum,m_carry;
    //#pragma HLS PIPELINE II=1
	for (i = 0, j = 0; i < 16; ++i, j += 4)
		m[i] = (ctx.data[j] << 24) | (ctx.data[j + 1] << 16) | (ctx.data[j + 2] << 8) | (ctx.data[j + 3]);
	for ( ; i < 64; ++i)
	{
		m[i] = SIG1(m[i - 2]) + m[i - 7] + SIG0(m[i - 15]) + m[i - 16];
		//csa(m_sum,m_carry,SIG1(m[i - 2]),m[i - 7],SIG0(m[i - 15]),m[i - 16]);
		//m[i] = m_sum+m_carry;
	}
	a = ctx.state[0];
	b = ctx.state[1];
	c = ctx.state[2];
	d = ctx.state[3];
	e = ctx.state[4];
	f = ctx.state[5];
	g = ctx.state[6];
	h = ctx.state[7];

	for (i = 0; i < 64; ++i) {
		t1 = h + EP1(e) + CH(e,f,g) + k[i] + m[i];
		//t1 = csa(h,EP1(e),CH(e,f,g),k[i],m[i]);
		t2 = EP0(a) + MAJ(a,b,c);
		h = g;
		g = f;
		f = e;
		e = d + t1;
		//csa(t1_sum,t1_carry,h,EP1(e),CH(e,f,g),k[i],m[i],d);
		//e = t1_sum + t1_carry;
		d = c;
		c = b;
		b = a;
		a = t1 + t2;
	}

	ctx.state[0] += a;
	ctx.state[1] += b;
	ctx.state[2] += c;
	ctx.state[3] += d;
	ctx.state[4] += e;
	ctx.state[5] += f;
	ctx.state[6] += g;
	ctx.state[7] += h;
}

void sha256_init()
{
	ctx.datalen = 0;
	ctx.bitlen = 0;
	ctx.state[0] = 0x6a09e667;
	ctx.state[1] = 0xbb67ae85;
	ctx.state[2] = 0x3c6ef372;
	ctx.state[3] = 0xa54ff53a;
	ctx.state[4] = 0x510e527f;
	ctx.state[5] = 0x9b05688c;
	ctx.state[6] = 0x1f83d9ab;
	ctx.state[7] = 0x5be0cd19;
}

void sha256_update(size_t len)
{
	WORD i;

	for (i = 0; i < len; ++i) {
		ctx.data[ctx.datalen] = data[i];
		ctx.datalen++;
		if (ctx.datalen == 64) {
			sha256_transform();
			ctx.bitlen += 512;
			ctx.datalen = 0;
		}
	}
}

void sha256_final()
{
	WORD i;

	i = ctx.datalen;

	// Pad whatever data is left in the buffer.
	if (ctx.datalen < 56) {
		ctx.data[i++] = 0x80;
		while (i < 56)
			ctx.data[i++] = 0x00;
	}
	else {
		ctx.data[i++] = 0x80;
		while (i < 64)
			ctx.data[i++] = 0x00;
		sha256_transform();
		while (i < 56)
			ctx.data[i++] = 0x00;
		//memset(ctx.data, 0, 56);
	}

	// Append to the padding the total message's length in bits and transform.
	ctx.bitlen += ctx.datalen * 8;
	ctx.data[63] = ctx.bitlen;
	ctx.data[62] = ctx.bitlen >> 8;
	ctx.data[61] = ctx.bitlen >> 16;
	ctx.data[60] = ctx.bitlen >> 24;
	ctx.data[59] = ctx.bitlen >> 32;
	ctx.data[58] = ctx.bitlen >> 40;
	ctx.data[57] = ctx.bitlen >> 48;
	ctx.data[56] = ctx.bitlen >> 56;
	sha256_transform();

	// Since this implementation uses little endian byte ordering and SHA uses big endian,
	// reverse all the bytes when copying the final state to the output hash.
	for (i = 0; i < 4; ++i) {
		data[i]      = (ctx.state[0] >> (24 - i * 8)) & 0x000000ff;
		data[i + 4]  = (ctx.state[1] >> (24 - i * 8)) & 0x000000ff;
		data[i + 8]  = (ctx.state[2] >> (24 - i * 8)) & 0x000000ff;
		data[i + 12] = (ctx.state[3] >> (24 - i * 8)) & 0x000000ff;
		data[i + 16] = (ctx.state[4] >> (24 - i * 8)) & 0x000000ff;
		data[i + 20] = (ctx.state[5] >> (24 - i * 8)) & 0x000000ff;
		data[i + 24] = (ctx.state[6] >> (24 - i * 8)) & 0x000000ff;
		data[i + 28] = (ctx.state[7] >> (24 - i * 8)) & 0x000000ff;
	}
}

