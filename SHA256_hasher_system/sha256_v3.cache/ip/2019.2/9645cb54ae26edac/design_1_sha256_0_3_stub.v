// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Apr 19 13:36:24 2020
// Host        : lenovo-g500 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sha256_0_3_stub.v
// Design      : design_1_sha256_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sha256,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, in_stream_a_TVALID, 
  in_stream_a_TREADY, in_stream_a_TDATA, in_stream_a_TLAST, out_stream_TVALID, 
  out_stream_TREADY, out_stream_TDATA, out_stream_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,in_stream_a_TVALID,in_stream_a_TREADY,in_stream_a_TDATA[31:0],in_stream_a_TLAST[0:0],out_stream_TVALID,out_stream_TREADY,out_stream_TDATA[31:0],out_stream_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input in_stream_a_TVALID;
  output in_stream_a_TREADY;
  input [31:0]in_stream_a_TDATA;
  input [0:0]in_stream_a_TLAST;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [31:0]out_stream_TDATA;
  output [0:0]out_stream_TLAST;
endmodule
