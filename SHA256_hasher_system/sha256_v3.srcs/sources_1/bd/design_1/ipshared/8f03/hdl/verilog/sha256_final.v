// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sha256_final (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ctx_datalen,
        ctx_data_address0,
        ctx_data_ce0,
        ctx_data_we0,
        ctx_data_d0,
        ctx_data_q0,
        ctx_data_address1,
        ctx_data_ce1,
        ctx_data_we1,
        ctx_data_d1,
        ctx_data_q1,
        ctx_state_address0,
        ctx_state_ce0,
        ctx_state_we0,
        ctx_state_d0,
        ctx_state_q0,
        ctx_state_address1,
        ctx_state_ce1,
        ctx_state_we1,
        ctx_state_d1,
        ctx_state_q1,
        ctx_bitlen_i,
        ctx_bitlen_o,
        ctx_bitlen_o_ap_vld,
        data_address0,
        data_ce0,
        data_we0,
        data_d0,
        data_address1,
        data_ce1,
        data_we1,
        data_d1
);

parameter    ap_ST_fsm_state1 = 28'd1;
parameter    ap_ST_fsm_state2 = 28'd2;
parameter    ap_ST_fsm_state3 = 28'd4;
parameter    ap_ST_fsm_state4 = 28'd8;
parameter    ap_ST_fsm_state5 = 28'd16;
parameter    ap_ST_fsm_state6 = 28'd32;
parameter    ap_ST_fsm_state7 = 28'd64;
parameter    ap_ST_fsm_state8 = 28'd128;
parameter    ap_ST_fsm_state9 = 28'd256;
parameter    ap_ST_fsm_state10 = 28'd512;
parameter    ap_ST_fsm_state11 = 28'd1024;
parameter    ap_ST_fsm_state12 = 28'd2048;
parameter    ap_ST_fsm_state13 = 28'd4096;
parameter    ap_ST_fsm_state14 = 28'd8192;
parameter    ap_ST_fsm_state15 = 28'd16384;
parameter    ap_ST_fsm_state16 = 28'd32768;
parameter    ap_ST_fsm_state17 = 28'd65536;
parameter    ap_ST_fsm_state18 = 28'd131072;
parameter    ap_ST_fsm_state19 = 28'd262144;
parameter    ap_ST_fsm_state20 = 28'd524288;
parameter    ap_ST_fsm_state21 = 28'd1048576;
parameter    ap_ST_fsm_state22 = 28'd2097152;
parameter    ap_ST_fsm_state23 = 28'd4194304;
parameter    ap_ST_fsm_state24 = 28'd8388608;
parameter    ap_ST_fsm_state25 = 28'd16777216;
parameter    ap_ST_fsm_state26 = 28'd33554432;
parameter    ap_ST_fsm_state27 = 28'd67108864;
parameter    ap_ST_fsm_state28 = 28'd134217728;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] ctx_datalen;
output  [5:0] ctx_data_address0;
output   ctx_data_ce0;
output   ctx_data_we0;
output  [7:0] ctx_data_d0;
input  [7:0] ctx_data_q0;
output  [5:0] ctx_data_address1;
output   ctx_data_ce1;
output   ctx_data_we1;
output  [7:0] ctx_data_d1;
input  [7:0] ctx_data_q1;
output  [2:0] ctx_state_address0;
output   ctx_state_ce0;
output   ctx_state_we0;
output  [31:0] ctx_state_d0;
input  [31:0] ctx_state_q0;
output  [2:0] ctx_state_address1;
output   ctx_state_ce1;
output   ctx_state_we1;
output  [31:0] ctx_state_d1;
input  [31:0] ctx_state_q1;
input  [63:0] ctx_bitlen_i;
output  [63:0] ctx_bitlen_o;
output   ctx_bitlen_o_ap_vld;
output  [13:0] data_address0;
output   data_ce0;
output   data_we0;
output  [7:0] data_d0;
output  [13:0] data_address1;
output   data_ce1;
output   data_we1;
output  [7:0] data_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] ctx_data_address0;
reg ctx_data_ce0;
reg ctx_data_we0;
reg[7:0] ctx_data_d0;
reg[5:0] ctx_data_address1;
reg ctx_data_ce1;
reg ctx_data_we1;
reg[7:0] ctx_data_d1;
reg[2:0] ctx_state_address0;
reg ctx_state_ce0;
reg ctx_state_we0;
reg[2:0] ctx_state_address1;
reg ctx_state_ce1;
reg ctx_state_we1;
reg[63:0] ctx_bitlen_o;
reg ctx_bitlen_o_ap_vld;
reg[13:0] data_address0;
reg data_ce0;
reg data_we0;
reg[7:0] data_d0;
reg[13:0] data_address1;
reg data_ce1;
reg data_we1;
reg[7:0] data_d1;

(* fsm_encoding = "none" *) reg   [27:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln241_fu_309_p2;
reg   [0:0] icmp_ln241_reg_764;
wire   [31:0] add_ln247_fu_320_p2;
reg   [31:0] add_ln247_reg_768;
wire    ap_CS_fsm_state2;
reg   [25:0] tmp_reg_774;
wire    ap_CS_fsm_state4;
wire    grp_sha256_transform_fu_295_ap_ready;
wire    grp_sha256_transform_fu_295_ap_done;
reg    ap_block_state4_on_subcall_done;
wire   [7:0] add_ln258_fu_473_p2;
reg   [7:0] add_ln258_reg_792;
reg   [7:0] trunc_ln1_reg_797;
reg   [7:0] trunc_ln2_reg_802;
reg   [7:0] trunc_ln3_reg_807;
reg   [7:0] trunc_ln4_reg_812;
reg   [7:0] trunc_ln5_reg_817;
reg   [7:0] trunc_ln6_reg_822;
wire   [31:0] i_4_fu_539_p2;
reg   [31:0] i_4_reg_827;
wire    ap_CS_fsm_state5;
reg   [7:0] trunc_ln7_reg_836;
wire    ap_CS_fsm_state7;
reg   [31:0] ctx_state_load_reg_841;
wire    ap_CS_fsm_state14;
reg   [31:0] ctx_state_load_1_reg_846;
reg   [31:0] ctx_state_load_2_reg_851;
wire    ap_CS_fsm_state15;
reg   [31:0] ctx_state_load_3_reg_856;
reg   [31:0] ctx_state_load_4_reg_861;
wire    ap_CS_fsm_state16;
reg   [31:0] ctx_state_load_5_reg_866;
reg   [31:0] ctx_state_load_6_reg_871;
wire    ap_CS_fsm_state17;
reg   [31:0] ctx_state_load_7_reg_876;
wire   [4:0] zext_ln270_fu_571_p1;
reg   [4:0] zext_ln270_reg_881;
wire    ap_CS_fsm_state18;
wire   [2:0] i_5_fu_581_p2;
reg   [2:0] i_5_reg_889;
wire   [4:0] sub_ln271_fu_599_p2;
reg   [4:0] sub_ln271_reg_894;
wire   [0:0] icmp_ln270_fu_575_p2;
wire   [31:0] zext_ln271_1_fu_605_p1;
wire    ap_CS_fsm_state19;
wire   [7:0] trunc_ln271_1_fu_648_p1;
reg   [7:0] trunc_ln271_1_reg_911;
wire    ap_CS_fsm_state24;
wire   [7:0] trunc_ln272_fu_652_p1;
reg   [7:0] trunc_ln272_reg_916;
wire  signed [2:0] xor_ln272_fu_656_p2;
reg  signed [2:0] xor_ln272_reg_921;
wire   [7:0] trunc_ln273_fu_662_p1;
reg   [7:0] trunc_ln273_reg_928;
wire   [7:0] trunc_ln274_fu_666_p1;
reg   [7:0] trunc_ln274_reg_933;
wire   [7:0] trunc_ln275_fu_670_p1;
reg   [7:0] trunc_ln275_reg_938;
wire   [7:0] trunc_ln276_fu_674_p1;
reg   [7:0] trunc_ln276_reg_943;
wire   [7:0] trunc_ln277_fu_678_p1;
reg   [7:0] trunc_ln277_reg_948;
wire   [7:0] trunc_ln278_fu_682_p1;
reg   [7:0] trunc_ln278_reg_953;
wire  signed [3:0] or_ln_fu_690_p3;
reg  signed [3:0] or_ln_reg_958;
wire    ap_CS_fsm_state25;
wire   [4:0] add_ln276_fu_716_p2;
reg   [4:0] add_ln276_reg_963;
wire    ap_CS_fsm_state26;
wire    grp_sha256_transform_fu_295_ap_start;
wire    grp_sha256_transform_fu_295_ap_idle;
wire   [5:0] grp_sha256_transform_fu_295_ctx_data_address0;
wire    grp_sha256_transform_fu_295_ctx_data_ce0;
wire   [5:0] grp_sha256_transform_fu_295_ctx_data_address1;
wire    grp_sha256_transform_fu_295_ctx_data_ce1;
wire   [2:0] grp_sha256_transform_fu_295_ctx_state_address0;
wire    grp_sha256_transform_fu_295_ctx_state_ce0;
wire    grp_sha256_transform_fu_295_ctx_state_we0;
wire   [31:0] grp_sha256_transform_fu_295_ctx_state_d0;
wire   [2:0] grp_sha256_transform_fu_295_ctx_state_address1;
wire    grp_sha256_transform_fu_295_ctx_state_ce1;
wire    grp_sha256_transform_fu_295_ctx_state_we1;
wire   [31:0] grp_sha256_transform_fu_295_ctx_state_d1;
reg   [31:0] i_1_in_reg_265;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln248_fu_336_p2;
reg   [31:0] i_0_in_reg_274;
wire    ap_CS_fsm_state6;
reg   [2:0] i_3_reg_283;
wire    ap_CS_fsm_state28;
reg    grp_sha256_transform_fu_295_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln242_fu_315_p1;
wire   [63:0] zext_ln249_fu_341_p1;
wire   [63:0] zext_ln244_fu_551_p1;
wire   [63:0] zext_ln272_fu_686_p1;
wire   [63:0] zext_ln273_fu_698_p1;
wire   [63:0] zext_ln271_fu_703_p1;
wire   [63:0] zext_ln274_fu_711_p1;
wire   [63:0] zext_ln275_fu_729_p1;
wire    ap_CS_fsm_state27;
wire   [63:0] zext_ln276_fu_734_p1;
wire   [63:0] zext_ln277_fu_741_p1;
wire   [63:0] zext_ln278_fu_749_p1;
wire   [63:0] grp_fu_431_p2;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state13;
wire   [31:0] shl_ln257_fu_345_p2;
wire   [4:0] trunc_ln257_fu_358_p1;
wire   [12:0] trunc_ln257_3_fu_373_p1;
wire   [20:0] trunc_ln257_6_fu_388_p1;
wire   [63:0] grp_fu_431_p1;
wire   [55:0] zext_ln257_3_fu_423_p1;
wire   [55:0] trunc_ln257_11_fu_427_p1;
wire   [47:0] zext_ln257_2_fu_415_p1;
wire   [47:0] trunc_ln257_10_fu_419_p1;
wire   [39:0] zext_ln257_1_fu_407_p1;
wire   [39:0] trunc_ln257_9_fu_411_p1;
wire   [31:0] trunc_ln257_8_fu_403_p1;
wire   [23:0] trunc_ln257_4_fu_391_p3;
wire   [23:0] trunc_ln257_7_fu_399_p1;
wire   [15:0] trunc_ln257_2_fu_376_p3;
wire   [15:0] trunc_ln257_5_fu_384_p1;
wire   [7:0] trunc_ln257_1_fu_369_p1;
wire   [7:0] trunc_ln_fu_361_p3;
wire   [15:0] add_ln257_6_fu_467_p2;
wire   [23:0] add_ln257_5_fu_461_p2;
wire   [31:0] add_ln257_4_fu_455_p2;
wire   [39:0] add_ln257_3_fu_449_p2;
wire   [47:0] add_ln257_2_fu_443_p2;
wire   [55:0] add_ln257_1_fu_437_p2;
wire   [1:0] trunc_ln271_fu_587_p1;
wire   [4:0] shl_ln1_fu_591_p3;
wire   [31:0] grp_fu_608_p2;
wire   [31:0] grp_fu_613_p2;
wire   [31:0] grp_fu_618_p2;
wire   [31:0] grp_fu_623_p2;
wire   [31:0] grp_fu_628_p2;
wire   [31:0] grp_fu_633_p2;
wire   [31:0] grp_fu_638_p2;
wire   [31:0] grp_fu_643_p2;
wire  signed [3:0] sext_ln274_fu_708_p1;
wire   [4:0] or_ln3_fu_721_p3;
wire  signed [4:0] sext_ln277_fu_738_p1;
wire  signed [4:0] sext_ln278_fu_746_p1;
reg    grp_fu_431_ce;
wire   [0:0] icmp_ln243_fu_545_p2;
reg   [27:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 28'd1;
#0 grp_sha256_transform_fu_295_ap_start_reg = 1'b0;
end

sha256_transform grp_sha256_transform_fu_295(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha256_transform_fu_295_ap_start),
    .ap_done(grp_sha256_transform_fu_295_ap_done),
    .ap_idle(grp_sha256_transform_fu_295_ap_idle),
    .ap_ready(grp_sha256_transform_fu_295_ap_ready),
    .ctx_data_address0(grp_sha256_transform_fu_295_ctx_data_address0),
    .ctx_data_ce0(grp_sha256_transform_fu_295_ctx_data_ce0),
    .ctx_data_q0(ctx_data_q0),
    .ctx_data_address1(grp_sha256_transform_fu_295_ctx_data_address1),
    .ctx_data_ce1(grp_sha256_transform_fu_295_ctx_data_ce1),
    .ctx_data_q1(ctx_data_q1),
    .ctx_state_address0(grp_sha256_transform_fu_295_ctx_state_address0),
    .ctx_state_ce0(grp_sha256_transform_fu_295_ctx_state_ce0),
    .ctx_state_we0(grp_sha256_transform_fu_295_ctx_state_we0),
    .ctx_state_d0(grp_sha256_transform_fu_295_ctx_state_d0),
    .ctx_state_q0(ctx_state_q0),
    .ctx_state_address1(grp_sha256_transform_fu_295_ctx_state_address1),
    .ctx_state_ce1(grp_sha256_transform_fu_295_ctx_state_ce1),
    .ctx_state_we1(grp_sha256_transform_fu_295_ctx_state_we1),
    .ctx_state_d1(grp_sha256_transform_fu_295_ctx_state_d1),
    .ctx_state_q1(ctx_state_q1)
);

sha256_add_64ns_6bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
sha256_add_64ns_6bkb_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_bitlen_i),
    .din1(grp_fu_431_p1),
    .ce(grp_fu_431_ce),
    .dout(grp_fu_431_p2)
);

sha256_lshr_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .OP( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
sha256_lshr_32ns_cud_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_state_load_reg_841),
    .din1(zext_ln271_1_fu_605_p1),
    .ce(1'b1),
    .dout(grp_fu_608_p2)
);

sha256_lshr_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .OP( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
sha256_lshr_32ns_cud_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_state_load_1_reg_846),
    .din1(zext_ln271_1_fu_605_p1),
    .ce(1'b1),
    .dout(grp_fu_613_p2)
);

sha256_lshr_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .OP( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
sha256_lshr_32ns_cud_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_state_load_2_reg_851),
    .din1(zext_ln271_1_fu_605_p1),
    .ce(1'b1),
    .dout(grp_fu_618_p2)
);

sha256_lshr_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .OP( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
sha256_lshr_32ns_cud_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_state_load_3_reg_856),
    .din1(zext_ln271_1_fu_605_p1),
    .ce(1'b1),
    .dout(grp_fu_623_p2)
);

sha256_lshr_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .OP( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
sha256_lshr_32ns_cud_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_state_load_4_reg_861),
    .din1(zext_ln271_1_fu_605_p1),
    .ce(1'b1),
    .dout(grp_fu_628_p2)
);

sha256_lshr_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .OP( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
sha256_lshr_32ns_cud_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_state_load_5_reg_866),
    .din1(zext_ln271_1_fu_605_p1),
    .ce(1'b1),
    .dout(grp_fu_633_p2)
);

sha256_lshr_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .OP( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
sha256_lshr_32ns_cud_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_state_load_6_reg_871),
    .din1(zext_ln271_1_fu_605_p1),
    .ce(1'b1),
    .dout(grp_fu_638_p2)
);

sha256_lshr_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .OP( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
sha256_lshr_32ns_cud_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ctx_state_load_7_reg_876),
    .din1(zext_ln271_1_fu_605_p1),
    .ce(1'b1),
    .dout(grp_fu_643_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha256_transform_fu_295_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln248_fu_336_p2 == 1'd0)))) begin
            grp_sha256_transform_fu_295_ap_start_reg <= 1'b1;
        end else if ((grp_sha256_transform_fu_295_ap_ready == 1'b1)) begin
            grp_sha256_transform_fu_295_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln241_fu_309_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_in_reg_274 <= ctx_datalen;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_0_in_reg_274 <= i_4_reg_827;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln241_fu_309_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_1_in_reg_265 <= ctx_datalen;
    end else if (((icmp_ln248_fu_336_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_1_in_reg_265 <= add_ln247_reg_768;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        i_3_reg_283 <= i_5_reg_889;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        i_3_reg_283 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln247_reg_768 <= add_ln247_fu_320_p2;
        tmp_reg_774 <= {{add_ln247_fu_320_p2[31:6]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
        add_ln258_reg_792 <= add_ln258_fu_473_p2;
        trunc_ln1_reg_797 <= {{add_ln257_6_fu_467_p2[15:8]}};
        trunc_ln2_reg_802 <= {{add_ln257_5_fu_461_p2[23:16]}};
        trunc_ln3_reg_807 <= {{add_ln257_4_fu_455_p2[31:24]}};
        trunc_ln4_reg_812 <= {{add_ln257_3_fu_449_p2[39:32]}};
        trunc_ln5_reg_817 <= {{add_ln257_2_fu_443_p2[47:40]}};
        trunc_ln6_reg_822 <= {{add_ln257_1_fu_437_p2[55:48]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        add_ln276_reg_963 <= add_ln276_fu_716_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ctx_state_load_1_reg_846 <= ctx_state_q1;
        ctx_state_load_reg_841 <= ctx_state_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        ctx_state_load_2_reg_851 <= ctx_state_q0;
        ctx_state_load_3_reg_856 <= ctx_state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ctx_state_load_4_reg_861 <= ctx_state_q0;
        ctx_state_load_5_reg_866 <= ctx_state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        ctx_state_load_6_reg_871 <= ctx_state_q0;
        ctx_state_load_7_reg_876 <= ctx_state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_4_reg_827 <= i_4_fu_539_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        i_5_reg_889 <= i_5_fu_581_p2;
        zext_ln270_reg_881[2 : 0] <= zext_ln270_fu_571_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        icmp_ln241_reg_764 <= icmp_ln241_fu_309_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        or_ln_reg_958[2 : 0] <= or_ln_fu_690_p3[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln270_fu_575_p2 == 1'd0))) begin
        sub_ln271_reg_894[4 : 3] <= sub_ln271_fu_599_p2[4 : 3];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        trunc_ln271_1_reg_911 <= trunc_ln271_1_fu_648_p1;
        trunc_ln272_reg_916 <= trunc_ln272_fu_652_p1;
        trunc_ln273_reg_928 <= trunc_ln273_fu_662_p1;
        trunc_ln274_reg_933 <= trunc_ln274_fu_666_p1;
        trunc_ln275_reg_938 <= trunc_ln275_fu_670_p1;
        trunc_ln276_reg_943 <= trunc_ln276_fu_674_p1;
        trunc_ln277_reg_948 <= trunc_ln277_fu_678_p1;
        trunc_ln278_reg_953 <= trunc_ln278_fu_682_p1;
        xor_ln272_reg_921 <= xor_ln272_fu_656_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        trunc_ln7_reg_836 <= {{grp_fu_431_p2[63:56]}};
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state18) & (icmp_ln270_fu_575_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln270_fu_575_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_bitlen_o = grp_fu_431_p2;
    end else begin
        ctx_bitlen_o = ctx_bitlen_i;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_bitlen_o_ap_vld = 1'b1;
    end else begin
        ctx_bitlen_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ctx_data_address0 = 6'd56;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        ctx_data_address0 = 6'd58;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ctx_data_address0 = 6'd60;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_data_address0 = 6'd63;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_data_address0 = zext_ln244_fu_551_p1;
    end else if (((icmp_ln248_fu_336_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ctx_data_address0 = zext_ln249_fu_341_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        ctx_data_address0 = zext_ln242_fu_315_p1;
    end else if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_data_address0 = grp_sha256_transform_fu_295_ctx_data_address0;
    end else begin
        ctx_data_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ctx_data_address1 = 6'd57;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        ctx_data_address1 = 6'd59;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ctx_data_address1 = 6'd61;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_data_address1 = 6'd62;
    end else if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_data_address1 = grp_sha256_transform_fu_295_ctx_data_address1;
    end else begin
        ctx_data_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln248_fu_336_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        ctx_data_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_data_ce0 = grp_sha256_transform_fu_295_ctx_data_ce0;
    end else begin
        ctx_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        ctx_data_ce1 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_data_ce1 = grp_sha256_transform_fu_295_ctx_data_ce1;
    end else begin
        ctx_data_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ctx_data_d0 = trunc_ln7_reg_836;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        ctx_data_d0 = trunc_ln5_reg_817;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ctx_data_d0 = trunc_ln3_reg_807;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_data_d0 = add_ln258_reg_792;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((icmp_ln248_fu_336_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        ctx_data_d0 = 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        ctx_data_d0 = 8'd128;
    end else begin
        ctx_data_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ctx_data_d1 = trunc_ln6_reg_822;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        ctx_data_d1 = trunc_ln4_reg_812;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ctx_data_d1 = trunc_ln2_reg_802;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_data_d1 = trunc_ln1_reg_797;
    end else begin
        ctx_data_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln248_fu_336_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        ctx_data_we0 = 1'b1;
    end else begin
        ctx_data_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        ctx_data_we1 = 1'b1;
    end else begin
        ctx_data_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ctx_state_address0 = 3'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        ctx_state_address0 = 3'd4;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        ctx_state_address0 = 3'd2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        ctx_state_address0 = 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_state_address0 = grp_sha256_transform_fu_295_ctx_state_address0;
    end else begin
        ctx_state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ctx_state_address1 = 3'd7;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        ctx_state_address1 = 3'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        ctx_state_address1 = 3'd3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        ctx_state_address1 = 3'd1;
    end else if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_state_address1 = grp_sha256_transform_fu_295_ctx_state_address1;
    end else begin
        ctx_state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        ctx_state_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_state_ce0 = grp_sha256_transform_fu_295_ctx_state_ce0;
    end else begin
        ctx_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        ctx_state_ce1 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_state_ce1 = grp_sha256_transform_fu_295_ctx_state_ce1;
    end else begin
        ctx_state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_state_we0 = grp_sha256_transform_fu_295_ctx_state_we0;
    end else begin
        ctx_state_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((icmp_ln241_reg_764 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ctx_state_we1 = grp_sha256_transform_fu_295_ctx_state_we1;
    end else begin
        ctx_state_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        data_address0 = zext_ln277_fu_741_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        data_address0 = zext_ln275_fu_729_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        data_address0 = zext_ln271_fu_703_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        data_address0 = zext_ln272_fu_686_p1;
    end else begin
        data_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        data_address1 = zext_ln278_fu_749_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        data_address1 = zext_ln276_fu_734_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        data_address1 = zext_ln274_fu_711_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        data_address1 = zext_ln273_fu_698_p1;
    end else begin
        data_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25))) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25))) begin
        data_ce1 = 1'b1;
    end else begin
        data_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        data_d0 = trunc_ln277_reg_948;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        data_d0 = trunc_ln275_reg_938;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        data_d0 = trunc_ln271_1_reg_911;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        data_d0 = trunc_ln272_reg_916;
    end else begin
        data_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        data_d1 = trunc_ln278_reg_953;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        data_d1 = trunc_ln276_reg_943;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        data_d1 = trunc_ln274_reg_933;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        data_d1 = trunc_ln273_reg_928;
    end else begin
        data_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25))) begin
        data_we0 = 1'b1;
    end else begin
        data_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25))) begin
        data_we1 = 1'b1;
    end else begin
        data_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done)))) begin
        grp_fu_431_ce = 1'b1;
    end else begin
        grp_fu_431_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln241_fu_309_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if (((icmp_ln241_fu_309_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln248_fu_336_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln243_fu_545_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_sha256_transform_fu_295_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln270_fu_575_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln247_fu_320_p2 = (i_1_in_reg_265 + 32'd1);

assign add_ln257_1_fu_437_p2 = (zext_ln257_3_fu_423_p1 + trunc_ln257_11_fu_427_p1);

assign add_ln257_2_fu_443_p2 = (zext_ln257_2_fu_415_p1 + trunc_ln257_10_fu_419_p1);

assign add_ln257_3_fu_449_p2 = (zext_ln257_1_fu_407_p1 + trunc_ln257_9_fu_411_p1);

assign add_ln257_4_fu_455_p2 = (shl_ln257_fu_345_p2 + trunc_ln257_8_fu_403_p1);

assign add_ln257_5_fu_461_p2 = (trunc_ln257_4_fu_391_p3 + trunc_ln257_7_fu_399_p1);

assign add_ln257_6_fu_467_p2 = (trunc_ln257_2_fu_376_p3 + trunc_ln257_5_fu_384_p1);

assign add_ln258_fu_473_p2 = (trunc_ln257_1_fu_369_p1 + trunc_ln_fu_361_p3);

assign add_ln276_fu_716_p2 = ($signed(5'd20) + $signed(zext_ln270_reg_881));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state4_on_subcall_done = ((icmp_ln241_reg_764 == 1'd0) & (grp_sha256_transform_fu_295_ap_done == 1'b0));
end

assign ctx_state_d0 = grp_sha256_transform_fu_295_ctx_state_d0;

assign ctx_state_d1 = grp_sha256_transform_fu_295_ctx_state_d1;

assign grp_fu_431_p1 = shl_ln257_fu_345_p2;

assign grp_sha256_transform_fu_295_ap_start = grp_sha256_transform_fu_295_ap_start_reg;

assign i_4_fu_539_p2 = (i_0_in_reg_274 + 32'd1);

assign i_5_fu_581_p2 = (i_3_reg_283 + 3'd1);

assign icmp_ln241_fu_309_p2 = ((ctx_datalen < 32'd56) ? 1'b1 : 1'b0);

assign icmp_ln243_fu_545_p2 = ((i_0_in_reg_274 == 32'd55) ? 1'b1 : 1'b0);

assign icmp_ln248_fu_336_p2 = ((tmp_reg_774 == 26'd0) ? 1'b1 : 1'b0);

assign icmp_ln270_fu_575_p2 = ((i_3_reg_283 == 3'd4) ? 1'b1 : 1'b0);

assign or_ln3_fu_721_p3 = {{2'd2}, {i_3_reg_283}};

assign or_ln_fu_690_p3 = {{1'd1}, {i_3_reg_283}};

assign sext_ln274_fu_708_p1 = xor_ln272_reg_921;

assign sext_ln277_fu_738_p1 = or_ln_reg_958;

assign sext_ln278_fu_746_p1 = xor_ln272_reg_921;

assign shl_ln1_fu_591_p3 = {{trunc_ln271_fu_587_p1}, {3'd0}};

assign shl_ln257_fu_345_p2 = ctx_datalen << 32'd3;

assign sub_ln271_fu_599_p2 = ($signed(5'd24) - $signed(shl_ln1_fu_591_p3));

assign trunc_ln257_10_fu_419_p1 = ctx_bitlen_i[47:0];

assign trunc_ln257_11_fu_427_p1 = ctx_bitlen_i[55:0];

assign trunc_ln257_1_fu_369_p1 = ctx_bitlen_i[7:0];

assign trunc_ln257_2_fu_376_p3 = {{trunc_ln257_3_fu_373_p1}, {3'd0}};

assign trunc_ln257_3_fu_373_p1 = ctx_datalen[12:0];

assign trunc_ln257_4_fu_391_p3 = {{trunc_ln257_6_fu_388_p1}, {3'd0}};

assign trunc_ln257_5_fu_384_p1 = ctx_bitlen_i[15:0];

assign trunc_ln257_6_fu_388_p1 = ctx_datalen[20:0];

assign trunc_ln257_7_fu_399_p1 = ctx_bitlen_i[23:0];

assign trunc_ln257_8_fu_403_p1 = ctx_bitlen_i[31:0];

assign trunc_ln257_9_fu_411_p1 = ctx_bitlen_i[39:0];

assign trunc_ln257_fu_358_p1 = ctx_datalen[4:0];

assign trunc_ln271_1_fu_648_p1 = grp_fu_608_p2[7:0];

assign trunc_ln271_fu_587_p1 = i_3_reg_283[1:0];

assign trunc_ln272_fu_652_p1 = grp_fu_613_p2[7:0];

assign trunc_ln273_fu_662_p1 = grp_fu_618_p2[7:0];

assign trunc_ln274_fu_666_p1 = grp_fu_623_p2[7:0];

assign trunc_ln275_fu_670_p1 = grp_fu_628_p2[7:0];

assign trunc_ln276_fu_674_p1 = grp_fu_633_p2[7:0];

assign trunc_ln277_fu_678_p1 = grp_fu_638_p2[7:0];

assign trunc_ln278_fu_682_p1 = grp_fu_643_p2[7:0];

assign trunc_ln_fu_361_p3 = {{trunc_ln257_fu_358_p1}, {3'd0}};

assign xor_ln272_fu_656_p2 = (i_3_reg_283 ^ 3'd4);

assign zext_ln242_fu_315_p1 = ctx_datalen;

assign zext_ln244_fu_551_p1 = i_4_reg_827;

assign zext_ln249_fu_341_p1 = add_ln247_reg_768;

assign zext_ln257_1_fu_407_p1 = shl_ln257_fu_345_p2;

assign zext_ln257_2_fu_415_p1 = shl_ln257_fu_345_p2;

assign zext_ln257_3_fu_423_p1 = shl_ln257_fu_345_p2;

assign zext_ln270_fu_571_p1 = i_3_reg_283;

assign zext_ln271_1_fu_605_p1 = sub_ln271_reg_894;

assign zext_ln271_fu_703_p1 = i_3_reg_283;

assign zext_ln272_fu_686_p1 = $unsigned(xor_ln272_reg_921);

assign zext_ln273_fu_698_p1 = $unsigned(or_ln_fu_690_p3);

assign zext_ln274_fu_711_p1 = $unsigned(sext_ln274_fu_708_p1);

assign zext_ln275_fu_729_p1 = or_ln3_fu_721_p3;

assign zext_ln276_fu_734_p1 = add_ln276_reg_963;

assign zext_ln277_fu_741_p1 = $unsigned(sext_ln277_fu_738_p1);

assign zext_ln278_fu_749_p1 = $unsigned(sext_ln278_fu_746_p1);

always @ (posedge ap_clk) begin
    zext_ln270_reg_881[4:3] <= 2'b00;
    sub_ln271_reg_894[2:0] <= 3'b000;
    or_ln_reg_958[3] <= 1'b1;
end

endmodule //sha256_final