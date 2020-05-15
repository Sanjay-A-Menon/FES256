# FES256
A fast and efficient implementation of a SHA256 cracker.

## Implementation status ##
Have implemented a SHA256 hasher core at present, currently a 
version of the SHA256 cracker is been developed using this core.

## Introduction
Hardware implementation of the SHA-256 cryptographic function. 
The implementation is written in C++(Vivado HLS) compliant code.

The hardware implementation is complemented by a functional model
written in Python for the PYNQ framework v2.5.

## Implementation details ##
The sha256 hasher IP design is divided into the following sections:

- SHA256_hasher/sha256.cpp - The sha256 hasher IP definitions.
- SHA256_hasher/sha256_tb.cpp - The testbench for simulating the design on HLS.
- SHA256_hasher/sha256.h - A header which lays an outline for the IP definitions.

The sha256 IP implementation system design is divided into the following sections:-

- SHA256_hasher_system/archived_project - Contains an archived project with the system design on Vivado 2019.2.
- SHA256_hasher_system/(all the other remaining folders/files) - The actual folders/files for the system design project.

The block design was synthesized and implemented for a TUL PYNQ-Z2 featuring a Xilinx Zynq XC7Z020-1CLG400C SoC.

## Fpga-results ##

### Xilinx FPGAs ###

Implementation results using Vivado 2019.2.

**TUL PYNQ-Z2**
- Utilization Report(Block design)

|          Site Type         | Used | Fixed | Available | Util% |
|----------------------------|------|-------|-----------|-------|
| Slice LUTs                 | 5542 |     0 |     53200 | 10.42 |
|   LUT as Logic             | 5302 |     0 |     53200 |  9.97 |
|   LUT as Memory            |  240 |     0 |     17400 |  1.38 |
|     LUT as Distributed RAM |   22 |     0 |           |       |
|     LUT as Shift Register  |  218 |     0 |           |       |
| Slice Registers            | 8305 |     0 |    106400 |  7.81 |
|   Register as Flip Flop    | 8305 |     0 |    106400 |  7.81 |
|   Register as Latch        |    0 |     0 |    106400 |  0.00 |
| F7 Muxes                   |    0 |     0 |     26600 |  0.00 |
| F8 Muxes                   |    0 |     0 |     13300 |  0.00 |

- **Fmax** :- 142 MHz
- Performance in PYNQ framework v2.5 - 1.9 ms for a single hash(upto data size of about 300 characters)

## TODO ##
- Implement the SHA256 cracker using the above developed hasher core.
- Try to implement the same design on ASIC/other FPGA's as well.
- Complete documentation.
