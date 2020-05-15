'''
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

sha256_pynq.py
SHA256 PYNQ driver 
'''

from pynq import Overlay
from pynq import GPIO
from pynq import Xlnk
import time
import numpy
import binascii
overlay = Overlay("./sha256.bit")
dma_ip = overlay.axi_dma
xlnk = Xlnk()
output_size = 32
#Change the string below to the data input of your choice
string = "The giant mouse lemurs (genus Mirza) are primates native to Madagascar, like all other lemurs. The two described species, the northern (pictured) and Coquerel's giant mouse lemurs, are found in the western dry deciduous forests, Sambirano valley and Sahamalaza Peninsula. In 1870, British zoologist John Edward Gray assigned them to Mirza, but the classification was not widely accepted until the 1990s, following the revival of the genus by American paleoanthropologist Ian Tattersall in 1982. Giant mouse lemurs weigh approximately 300 g (11 oz) and have a long, bushy tail.\0"
input_data = bytearray(string, 'utf-8')
input_buffer = xlnk.cma_array(shape=(len(input_data)), dtype=numpy.int32)
output_buffer = xlnk.cma_array(shape=(output_size), dtype=numpy.int32)
numpy.copyto(input_buffer,input_data)
print(input_buffer)
start_time = time.time()
dma_ip.sendchannel.transfer(input_buffer)
dma_ip.recvchannel.transfer(output_buffer)
dma_ip.sendchannel.wait()
dma_ip.recvchannel.wait()
end_time = time.time()
print(output_buffer)
print(end_time-start_time)
