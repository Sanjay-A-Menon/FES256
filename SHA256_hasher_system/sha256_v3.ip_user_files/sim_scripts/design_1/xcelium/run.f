-makelib xcelium_lib/xilinx_vip -sv \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/home/sanjay/vivado/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/home/sanjay/vivado/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/sanjay/vivado/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/regslice_core.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_add_64ns_6bkb.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_ctx_data.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_ctx_state.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_data.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_final.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_lshr_32ns_cud.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_transform.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_transform_k.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256_transform_m.v" \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8f03/hdl/verilog/sha256.v" \
  "../../../bd/design_1/ip/design_1_sha256_0_3/sim/design_1_sha256_0_3.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_6 -sv \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_8 -sv \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_3/sim/design_1_processing_system7_0_3.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_14 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_22 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_13 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_21 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec2a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_dma_1/sim/design_1_axi_dma_1.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_20 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_19 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_21 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_3/sim/design_1_xbar_3.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_3/sim/design_1_rst_ps7_0_100M_3.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_20 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_19 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_20 \
  "../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
  "../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

