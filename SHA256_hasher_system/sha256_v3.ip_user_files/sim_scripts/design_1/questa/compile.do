vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_6
vlib questa_lib/msim/processing_system7_vip_v1_0_8
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_22
vlib questa_lib/msim/axi_sg_v4_1_13
vlib questa_lib/msim/axi_dma_v7_1_21
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_20
vlib questa_lib/msim/axi_data_fifo_v2_1_19
vlib questa_lib/msim/axi_crossbar_v2_1_21
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_protocol_converter_v2_1_20
vlib questa_lib/msim/axi_clock_converter_v2_1_19
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/axi_dwidth_converter_v2_1_20

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 questa_lib/msim/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 questa_lib/msim/processing_system7_vip_v1_0_8
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_22 questa_lib/msim/axi_datamover_v5_1_22
vmap axi_sg_v4_1_13 questa_lib/msim/axi_sg_v4_1_13
vmap axi_dma_v7_1_21 questa_lib/msim/axi_dma_v7_1_21
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_20 questa_lib/msim/axi_register_slice_v2_1_20
vmap axi_data_fifo_v2_1_19 questa_lib/msim/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 questa_lib/msim/axi_crossbar_v2_1_21
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_20 questa_lib/msim/axi_protocol_converter_v2_1_20
vmap axi_clock_converter_v2_1_19 questa_lib/msim/axi_clock_converter_v2_1_19
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_20 questa_lib/msim/axi_dwidth_converter_v2_1_20

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"/home/sanjay/vivado/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/sanjay/vivado/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/sanjay/vivado/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
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

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6 -64 -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8 -64 -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_3/sim/design_1_processing_system7_0_3.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_22 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_21 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec2a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_dma_1/sim/design_1_axi_dma_1.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_19 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_3/sim/design_1_xbar_3.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_3/sim/design_1_rst_ps7_0_100M_3.vhd" \

vlog -work axi_protocol_converter_v2_1_20 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_19 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_20 -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../sha256_v3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3" "+incdir+/home/sanjay/vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

