// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: sanjay:hls:sha256:1.0
// IP Revision: 2004192311

(* X_CORE_INFO = "sha256,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "design_1_sha256_0_3,sha256,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_sha256_0_3 (
  ap_clk,
  ap_rst_n,
  in_stream_a_TVALID,
  in_stream_a_TREADY,
  in_stream_a_TDATA,
  in_stream_a_TLAST,
  out_stream_TVALID,
  out_stream_TREADY,
  out_stream_TDATA,
  out_stream_TLAST
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_stream_a:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_3_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_a TVALID" *)
input wire in_stream_a_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_a TREADY" *)
output wire in_stream_a_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_a TDATA" *)
input wire [31 : 0] in_stream_a_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream_a, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_3_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_a TLAST" *)
input wire [0 : 0] in_stream_a_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TVALID" *)
output wire out_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TREADY" *)
input wire out_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TDATA" *)
output wire [31 : 0] out_stream_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_3_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TLAST" *)
output wire [0 : 0] out_stream_TLAST;

  sha256 inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .in_stream_a_TVALID(in_stream_a_TVALID),
    .in_stream_a_TREADY(in_stream_a_TREADY),
    .in_stream_a_TDATA(in_stream_a_TDATA),
    .in_stream_a_TLAST(in_stream_a_TLAST),
    .out_stream_TVALID(out_stream_TVALID),
    .out_stream_TREADY(out_stream_TREADY),
    .out_stream_TDATA(out_stream_TDATA),
    .out_stream_TLAST(out_stream_TLAST)
  );
endmodule
