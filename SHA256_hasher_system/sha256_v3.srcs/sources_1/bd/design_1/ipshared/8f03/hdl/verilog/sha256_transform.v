// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sha256_transform (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ctx_data_address0,
        ctx_data_ce0,
        ctx_data_q0,
        ctx_data_address1,
        ctx_data_ce1,
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
        ctx_state_q1
);

parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_state2 = 27'd2;
parameter    ap_ST_fsm_state3 = 27'd4;
parameter    ap_ST_fsm_state4 = 27'd8;
parameter    ap_ST_fsm_state5 = 27'd16;
parameter    ap_ST_fsm_state6 = 27'd32;
parameter    ap_ST_fsm_state7 = 27'd64;
parameter    ap_ST_fsm_state8 = 27'd128;
parameter    ap_ST_fsm_state9 = 27'd256;
parameter    ap_ST_fsm_state10 = 27'd512;
parameter    ap_ST_fsm_state11 = 27'd1024;
parameter    ap_ST_fsm_state12 = 27'd2048;
parameter    ap_ST_fsm_state13 = 27'd4096;
parameter    ap_ST_fsm_state14 = 27'd8192;
parameter    ap_ST_fsm_state15 = 27'd16384;
parameter    ap_ST_fsm_state16 = 27'd32768;
parameter    ap_ST_fsm_state17 = 27'd65536;
parameter    ap_ST_fsm_state18 = 27'd131072;
parameter    ap_ST_fsm_state19 = 27'd262144;
parameter    ap_ST_fsm_state20 = 27'd524288;
parameter    ap_ST_fsm_state21 = 27'd1048576;
parameter    ap_ST_fsm_state22 = 27'd2097152;
parameter    ap_ST_fsm_state23 = 27'd4194304;
parameter    ap_ST_fsm_state24 = 27'd8388608;
parameter    ap_ST_fsm_state25 = 27'd16777216;
parameter    ap_ST_fsm_state26 = 27'd33554432;
parameter    ap_ST_fsm_state27 = 27'd67108864;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] ctx_data_address0;
output   ctx_data_ce0;
input  [7:0] ctx_data_q0;
output  [5:0] ctx_data_address1;
output   ctx_data_ce1;
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

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] ctx_data_address0;
reg ctx_data_ce0;
reg[5:0] ctx_data_address1;
reg ctx_data_ce1;
reg[2:0] ctx_state_address0;
reg ctx_state_ce0;
reg ctx_state_we0;
reg[31:0] ctx_state_d0;
reg[2:0] ctx_state_address1;
reg ctx_state_ce1;
reg ctx_state_we1;
reg[31:0] ctx_state_d1;

(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] k_address0;
reg    k_ce0;
wire   [31:0] k_q0;
wire   [31:0] m_q0;
reg   [31:0] reg_403;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state19;
wire   [4:0] add_ln168_fu_413_p2;
reg   [4:0] add_ln168_reg_984;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_407_p2;
wire   [5:0] trunc_ln168_fu_424_p1;
reg   [5:0] trunc_ln168_reg_994;
wire   [6:0] j_fu_439_p2;
reg   [6:0] j_reg_1005;
reg   [7:0] ctx_data_load_reg_1010;
wire    ap_CS_fsm_state3;
reg   [7:0] ctx_data_load_1_reg_1015;
reg   [7:0] ctx_data_load_2_reg_1030;
wire    ap_CS_fsm_state4;
reg   [7:0] ctx_data_load_3_reg_1035;
wire   [6:0] add_ln171_fu_485_p2;
reg   [6:0] add_ln171_reg_1043;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln170_fu_479_p2;
wire   [6:0] add_ln171_1_fu_491_p2;
reg   [6:0] add_ln171_1_reg_1048;
wire    ap_CS_fsm_state7;
wire   [6:0] add_ln171_2_fu_505_p2;
reg   [6:0] add_ln171_2_reg_1063;
wire   [6:0] add_ln171_3_fu_511_p2;
reg   [6:0] add_ln171_3_reg_1068;
wire   [31:0] m_q1;
reg   [31:0] m_load_1_reg_1073;
reg   [31:0] m_load_2_reg_1088;
wire    ap_CS_fsm_state9;
reg   [31:0] m_load_3_reg_1097;
wire   [31:0] add_ln171_4_fu_660_p2;
reg   [31:0] add_ln171_4_reg_1102;
wire    ap_CS_fsm_state10;
wire   [31:0] add_ln171_5_fu_664_p2;
reg   [31:0] add_ln171_5_reg_1107;
wire   [31:0] add_ln171_6_fu_670_p2;
reg   [31:0] add_ln171_6_reg_1112;
wire    ap_CS_fsm_state11;
wire   [6:0] i_fu_679_p2;
wire    ap_CS_fsm_state12;
reg   [31:0] a_reg_1122;
wire    ap_CS_fsm_state13;
reg   [31:0] b_reg_1128;
reg   [31:0] c_reg_1134;
wire    ap_CS_fsm_state14;
reg   [31:0] d_reg_1140;
reg   [31:0] e_reg_1146;
wire    ap_CS_fsm_state15;
reg   [31:0] f_reg_1152;
reg   [31:0] g_reg_1158;
wire    ap_CS_fsm_state16;
reg   [31:0] h_reg_1164;
wire   [6:0] i_3_fu_691_p2;
reg   [6:0] i_3_reg_1173;
wire    ap_CS_fsm_state18;
wire   [31:0] xor_ln183_3_fu_715_p2;
reg   [31:0] xor_ln183_3_reg_1178;
wire   [0:0] icmp_ln182_fu_685_p2;
wire   [31:0] add_ln195_fu_727_p2;
reg   [31:0] add_ln195_reg_1193;
wire   [31:0] add_ln196_fu_732_p2;
reg   [31:0] add_ln196_reg_1198;
wire   [31:0] add_ln200_fu_737_p2;
reg   [31:0] add_ln200_reg_1203;
wire   [31:0] add_ln201_fu_742_p2;
reg   [31:0] add_ln201_reg_1208;
reg   [31:0] k_load_reg_1213;
wire   [31:0] add_ln183_1_fu_825_p2;
reg   [31:0] add_ln183_1_reg_1218;
wire   [31:0] add_ln183_fu_830_p2;
reg   [31:0] add_ln183_reg_1223;
wire    ap_CS_fsm_state20;
wire   [31:0] add_ln183_2_fu_835_p2;
reg   [31:0] add_ln183_2_reg_1228;
wire   [31:0] t1_fu_840_p2;
reg   [31:0] t1_reg_1233;
wire    ap_CS_fsm_state21;
wire   [31:0] e_1_fu_868_p2;
reg   [31:0] e_1_reg_1239;
wire    ap_CS_fsm_state22;
wire   [31:0] add_ln192_fu_873_p2;
reg   [31:0] add_ln192_reg_1244;
wire   [31:0] a_1_fu_956_p2;
wire    ap_CS_fsm_state23;
wire   [31:0] add_ln197_fu_961_p2;
reg   [31:0] add_ln197_reg_1254;
wire    ap_CS_fsm_state24;
wire   [31:0] add_ln198_fu_966_p2;
reg   [31:0] add_ln198_reg_1259;
wire   [31:0] add_ln199_fu_971_p2;
reg   [31:0] add_ln199_reg_1264;
wire   [31:0] add_ln202_fu_976_p2;
reg   [31:0] add_ln202_reg_1269;
wire    ap_CS_fsm_state25;
reg   [5:0] m_address0;
reg    m_ce0;
reg    m_we0;
wire   [31:0] m_d0;
reg   [5:0] m_address1;
reg    m_ce1;
reg    m_we1;
reg   [6:0] j_0_reg_271;
wire    ap_CS_fsm_state5;
reg   [4:0] i_0_reg_282;
reg   [6:0] i_1_reg_294;
reg   [6:0] i_2_reg_306;
wire    ap_CS_fsm_state17;
reg   [31:0] h_0_reg_317;
reg   [31:0] h_1_reg_327;
reg   [31:0] g_1_reg_338;
reg   [31:0] f_1_reg_349;
reg   [31:0] d_0_reg_360;
reg   [31:0] d_1_reg_370;
reg   [31:0] c_1_reg_381;
reg   [31:0] b_1_reg_392;
wire   [63:0] zext_ln169_fu_419_p1;
wire   [63:0] zext_ln169_1_fu_434_p1;
wire   [63:0] zext_ln169_2_fu_450_p1;
wire   [63:0] zext_ln169_3_fu_460_p1;
wire   [63:0] zext_ln169_4_fu_474_p1;
wire   [63:0] zext_ln171_fu_497_p1;
wire   [63:0] zext_ln171_1_fu_501_p1;
wire   [63:0] zext_ln171_2_fu_517_p1;
wire   [63:0] zext_ln171_3_fu_521_p1;
wire   [63:0] zext_ln171_4_fu_674_p1;
wire   [63:0] zext_ln183_fu_721_p1;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state27;
wire   [5:0] or_ln169_fu_428_p2;
wire   [5:0] or_ln169_1_fu_445_p2;
wire   [5:0] or_ln169_2_fu_455_p2;
wire   [16:0] trunc_ln171_fu_535_p1;
wire   [14:0] lshr_ln_fu_525_p4;
wire   [18:0] trunc_ln171_1_fu_557_p1;
wire   [12:0] lshr_ln171_1_fu_547_p4;
wire   [21:0] lshr_ln171_2_fu_569_p4;
wire   [31:0] zext_ln171_5_fu_579_p1;
wire   [31:0] or_ln171_1_fu_561_p3;
wire   [31:0] xor_ln171_fu_583_p2;
wire   [31:0] or_ln_fu_539_p3;
wire   [6:0] trunc_ln171_2_fu_604_p1;
wire   [24:0] lshr_ln171_3_fu_595_p4;
wire   [17:0] trunc_ln171_3_fu_624_p1;
wire   [13:0] lshr_ln171_4_fu_615_p4;
wire   [28:0] lshr_ln171_5_fu_635_p4;
wire   [31:0] zext_ln171_6_fu_644_p1;
wire   [31:0] or_ln171_3_fu_627_p3;
wire   [31:0] xor_ln171_2_fu_648_p2;
wire   [31:0] or_ln171_2_fu_607_p3;
wire   [31:0] xor_ln171_1_fu_589_p2;
wire   [31:0] xor_ln171_3_fu_654_p2;
wire   [31:0] xor_ln183_2_fu_703_p2;
wire   [31:0] and_ln183_fu_697_p2;
wire   [31:0] and_ln183_1_fu_709_p2;
wire   [5:0] trunc_ln183_fu_757_p1;
wire   [25:0] lshr_ln1_fu_747_p4;
wire   [10:0] trunc_ln183_1_fu_779_p1;
wire   [20:0] lshr_ln183_1_fu_769_p4;
wire   [24:0] trunc_ln183_2_fu_801_p1;
wire   [6:0] lshr_ln183_2_fu_791_p4;
wire   [31:0] or_ln1_fu_761_p3;
wire   [31:0] or_ln183_1_fu_783_p3;
wire   [31:0] xor_ln183_fu_813_p2;
wire   [31:0] or_ln183_2_fu_805_p3;
wire   [31:0] xor_ln183_1_fu_819_p2;
wire   [31:0] xor_ln184_2_fu_844_p2;
wire   [31:0] and_ln184_fu_850_p2;
wire   [31:0] and_ln184_1_fu_856_p2;
wire   [31:0] xor_ln184_3_fu_862_p2;
wire   [1:0] trunc_ln184_fu_888_p1;
wire   [29:0] lshr_ln2_fu_878_p4;
wire   [12:0] trunc_ln184_1_fu_910_p1;
wire   [18:0] lshr_ln184_1_fu_900_p4;
wire   [21:0] trunc_ln184_2_fu_932_p1;
wire   [9:0] lshr_ln184_2_fu_922_p4;
wire   [31:0] or_ln2_fu_892_p3;
wire   [31:0] or_ln184_1_fu_914_p3;
wire   [31:0] xor_ln184_fu_944_p2;
wire   [31:0] or_ln184_2_fu_936_p3;
wire   [31:0] xor_ln184_1_fu_950_p2;
reg   [26:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 27'd1;
end

sha256_transform_k #(
    .DataWidth( 32 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
k_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_address0),
    .ce0(k_ce0),
    .q0(k_q0)
);

sha256_transform_m #(
    .DataWidth( 32 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
m_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(m_address0),
    .ce0(m_ce0),
    .we0(m_we0),
    .d0(m_d0),
    .q0(m_q0),
    .address1(m_address1),
    .ce1(m_ce1),
    .we1(m_we1),
    .d1(add_ln171_6_reg_1112),
    .q1(m_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        b_1_reg_392 <= a_1_fu_956_p2;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        b_1_reg_392 <= a_reg_1122;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        c_1_reg_381 <= b_1_reg_392;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        c_1_reg_381 <= b_reg_1128;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        d_0_reg_360 <= d_1_reg_370;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        d_0_reg_360 <= d_reg_1140;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        d_1_reg_370 <= c_1_reg_381;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        d_1_reg_370 <= c_reg_1134;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        f_1_reg_349 <= e_1_reg_1239;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        f_1_reg_349 <= e_reg_1146;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        g_1_reg_338 <= f_1_reg_349;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        g_1_reg_338 <= f_reg_1152;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        h_0_reg_317 <= h_1_reg_327;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        h_0_reg_317 <= h_reg_1164;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        h_1_reg_327 <= g_1_reg_338;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        h_1_reg_327 <= g_reg_1158;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_282 <= add_ln168_reg_984;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_282 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_1_reg_294 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        i_1_reg_294 <= i_fu_679_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        i_2_reg_306 <= i_3_reg_1173;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        i_2_reg_306 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_0_reg_271 <= j_reg_1005;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_271 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        a_reg_1122 <= ctx_state_q0;
        b_reg_1128 <= ctx_state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_984 <= add_ln168_fu_413_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln170_fu_479_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln171_1_reg_1048 <= add_ln171_1_fu_491_p2;
        add_ln171_reg_1043 <= add_ln171_fu_485_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln171_2_reg_1063 <= add_ln171_2_fu_505_p2;
        add_ln171_3_reg_1068 <= add_ln171_3_fu_511_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln171_4_reg_1102 <= add_ln171_4_fu_660_p2;
        add_ln171_5_reg_1107 <= add_ln171_5_fu_664_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        add_ln171_6_reg_1112 <= add_ln171_6_fu_670_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        add_ln183_1_reg_1218 <= add_ln183_1_fu_825_p2;
        k_load_reg_1213 <= k_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        add_ln183_2_reg_1228 <= add_ln183_2_fu_835_p2;
        add_ln183_reg_1223 <= add_ln183_fu_830_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        add_ln192_reg_1244 <= add_ln192_fu_873_p2;
        e_1_reg_1239 <= e_1_fu_868_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln182_fu_685_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        add_ln195_reg_1193 <= add_ln195_fu_727_p2;
        add_ln196_reg_1198 <= add_ln196_fu_732_p2;
        add_ln200_reg_1203 <= add_ln200_fu_737_p2;
        add_ln201_reg_1208 <= add_ln201_fu_742_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        add_ln197_reg_1254 <= add_ln197_fu_961_p2;
        add_ln198_reg_1259 <= add_ln198_fu_966_p2;
        add_ln199_reg_1264 <= add_ln199_fu_971_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        add_ln202_reg_1269 <= add_ln202_fu_976_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        c_reg_1134 <= ctx_state_q0;
        d_reg_1140 <= ctx_state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_data_load_1_reg_1015 <= ctx_data_q1;
        ctx_data_load_reg_1010 <= ctx_data_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ctx_data_load_2_reg_1030 <= ctx_data_q0;
        ctx_data_load_3_reg_1035 <= ctx_data_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        e_reg_1146 <= ctx_state_q0;
        f_reg_1152 <= ctx_state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        g_reg_1158 <= ctx_state_q0;
        h_reg_1164 <= ctx_state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        i_3_reg_1173 <= i_3_fu_691_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_1005 <= j_fu_439_p2;
        trunc_ln168_reg_994 <= trunc_ln168_fu_424_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m_load_1_reg_1073 <= m_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m_load_2_reg_1088 <= m_q1;
        m_load_3_reg_1097 <= m_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_403 <= m_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        t1_reg_1233 <= t1_fu_840_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln182_fu_685_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        xor_ln183_3_reg_1178 <= xor_ln183_3_fu_715_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_data_address0 = zext_ln169_2_fu_450_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ctx_data_address0 = zext_ln169_fu_419_p1;
    end else begin
        ctx_data_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_data_address1 = zext_ln169_3_fu_460_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ctx_data_address1 = zext_ln169_1_fu_434_p1;
    end else begin
        ctx_data_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        ctx_data_ce0 = 1'b1;
    end else begin
        ctx_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        ctx_data_ce1 = 1'b1;
    end else begin
        ctx_data_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state15))) begin
        ctx_state_address0 = 3'd6;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state14))) begin
        ctx_state_address0 = 3'd4;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state13))) begin
        ctx_state_address0 = 3'd2;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state6))) begin
        ctx_state_address0 = 3'd0;
    end else begin
        ctx_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state15))) begin
        ctx_state_address1 = 3'd7;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state14))) begin
        ctx_state_address1 = 3'd5;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state13))) begin
        ctx_state_address1 = 3'd3;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state6))) begin
        ctx_state_address1 = 3'd1;
    end else begin
        ctx_state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6))) begin
        ctx_state_ce0 = 1'b1;
    end else begin
        ctx_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6))) begin
        ctx_state_ce1 = 1'b1;
    end else begin
        ctx_state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ctx_state_d0 = add_ln201_reg_1208;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        ctx_state_d0 = add_ln199_reg_1264;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        ctx_state_d0 = add_ln197_reg_1254;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        ctx_state_d0 = add_ln195_reg_1193;
    end else begin
        ctx_state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ctx_state_d1 = add_ln202_reg_1269;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        ctx_state_d1 = add_ln200_reg_1203;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        ctx_state_d1 = add_ln198_reg_1259;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        ctx_state_d1 = add_ln196_reg_1198;
    end else begin
        ctx_state_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24))) begin
        ctx_state_we0 = 1'b1;
    end else begin
        ctx_state_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24))) begin
        ctx_state_we1 = 1'b1;
    end else begin
        ctx_state_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        k_ce0 = 1'b1;
    end else begin
        k_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m_address0 = zext_ln183_fu_721_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m_address0 = zext_ln171_3_fu_521_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m_address0 = zext_ln171_fu_497_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m_address0 = zext_ln169_4_fu_474_p1;
    end else begin
        m_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        m_address1 = zext_ln171_4_fu_674_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m_address1 = zext_ln171_2_fu_517_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m_address1 = zext_ln171_1_fu_501_p1;
    end else begin
        m_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7))) begin
        m_ce0 = 1'b1;
    end else begin
        m_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        m_ce1 = 1'b1;
    end else begin
        m_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_we0 = 1'b1;
    end else begin
        m_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        m_we1 = 1'b1;
    end else begin
        m_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln168_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln170_fu_479_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
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
            ap_NS_fsm = ap_ST_fsm_state6;
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
            if (((icmp_ln182_fu_685_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
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
            ap_NS_fsm = ap_ST_fsm_state18;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_1_fu_956_p2 = (add_ln192_reg_1244 + xor_ln184_1_fu_950_p2);

assign add_ln168_fu_413_p2 = (i_0_reg_282 + 5'd1);

assign add_ln171_1_fu_491_p2 = ($signed(7'd121) + $signed(i_1_reg_294));

assign add_ln171_2_fu_505_p2 = ($signed(7'd113) + $signed(i_1_reg_294));

assign add_ln171_3_fu_511_p2 = ($signed(7'd112) + $signed(i_1_reg_294));

assign add_ln171_4_fu_660_p2 = (m_load_1_reg_1073 + m_load_3_reg_1097);

assign add_ln171_5_fu_664_p2 = (xor_ln171_1_fu_589_p2 + xor_ln171_3_fu_654_p2);

assign add_ln171_6_fu_670_p2 = (add_ln171_5_reg_1107 + add_ln171_4_reg_1102);

assign add_ln171_fu_485_p2 = ($signed(7'd126) + $signed(i_1_reg_294));

assign add_ln183_1_fu_825_p2 = (xor_ln183_1_fu_819_p2 + xor_ln183_3_reg_1178);

assign add_ln183_2_fu_835_p2 = (add_ln183_1_reg_1218 + h_0_reg_317);

assign add_ln183_fu_830_p2 = (k_load_reg_1213 + reg_403);

assign add_ln192_fu_873_p2 = (xor_ln184_3_fu_862_p2 + t1_reg_1233);

assign add_ln195_fu_727_p2 = (a_reg_1122 + b_1_reg_392);

assign add_ln196_fu_732_p2 = (b_reg_1128 + c_1_reg_381);

assign add_ln197_fu_961_p2 = (c_reg_1134 + d_1_reg_370);

assign add_ln198_fu_966_p2 = (d_reg_1140 + d_0_reg_360);

assign add_ln199_fu_971_p2 = (e_reg_1146 + f_1_reg_349);

assign add_ln200_fu_737_p2 = (f_reg_1152 + g_1_reg_338);

assign add_ln201_fu_742_p2 = (g_reg_1158 + h_1_reg_327);

assign add_ln202_fu_976_p2 = (h_reg_1164 + h_0_reg_317);

assign and_ln183_1_fu_709_p2 = (xor_ln183_2_fu_703_p2 & h_1_reg_327);

assign and_ln183_fu_697_p2 = (g_1_reg_338 & f_1_reg_349);

assign and_ln184_1_fu_856_p2 = (d_1_reg_370 & c_1_reg_381);

assign and_ln184_fu_850_p2 = (xor_ln184_2_fu_844_p2 & b_1_reg_392);

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

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign e_1_fu_868_p2 = (t1_reg_1233 + d_0_reg_360);

assign i_3_fu_691_p2 = (i_2_reg_306 + 7'd1);

assign i_fu_679_p2 = (7'd1 + i_1_reg_294);

assign icmp_ln168_fu_407_p2 = ((i_0_reg_282 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln170_fu_479_p2 = ((i_1_reg_294 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln182_fu_685_p2 = ((i_2_reg_306 == 7'd64) ? 1'b1 : 1'b0);

assign j_fu_439_p2 = (7'd4 + j_0_reg_271);

assign k_address0 = zext_ln183_fu_721_p1;

assign lshr_ln171_1_fu_547_p4 = {{reg_403[31:19]}};

assign lshr_ln171_2_fu_569_p4 = {{reg_403[31:10]}};

assign lshr_ln171_3_fu_595_p4 = {{m_load_2_reg_1088[31:7]}};

assign lshr_ln171_4_fu_615_p4 = {{m_load_2_reg_1088[31:18]}};

assign lshr_ln171_5_fu_635_p4 = {{m_load_2_reg_1088[31:3]}};

assign lshr_ln183_1_fu_769_p4 = {{f_1_reg_349[31:11]}};

assign lshr_ln183_2_fu_791_p4 = {{f_1_reg_349[31:25]}};

assign lshr_ln184_1_fu_900_p4 = {{b_1_reg_392[31:13]}};

assign lshr_ln184_2_fu_922_p4 = {{b_1_reg_392[31:22]}};

assign lshr_ln1_fu_747_p4 = {{f_1_reg_349[31:6]}};

assign lshr_ln2_fu_878_p4 = {{b_1_reg_392[31:2]}};

assign lshr_ln_fu_525_p4 = {{reg_403[31:17]}};

assign m_d0 = {{{{ctx_data_load_reg_1010}, {ctx_data_load_1_reg_1015}}, {ctx_data_load_2_reg_1030}}, {ctx_data_load_3_reg_1035}};

assign or_ln169_1_fu_445_p2 = (trunc_ln168_reg_994 | 6'd2);

assign or_ln169_2_fu_455_p2 = (trunc_ln168_reg_994 | 6'd3);

assign or_ln169_fu_428_p2 = (trunc_ln168_fu_424_p1 | 6'd1);

assign or_ln171_1_fu_561_p3 = {{trunc_ln171_1_fu_557_p1}, {lshr_ln171_1_fu_547_p4}};

assign or_ln171_2_fu_607_p3 = {{trunc_ln171_2_fu_604_p1}, {lshr_ln171_3_fu_595_p4}};

assign or_ln171_3_fu_627_p3 = {{trunc_ln171_3_fu_624_p1}, {lshr_ln171_4_fu_615_p4}};

assign or_ln183_1_fu_783_p3 = {{trunc_ln183_1_fu_779_p1}, {lshr_ln183_1_fu_769_p4}};

assign or_ln183_2_fu_805_p3 = {{trunc_ln183_2_fu_801_p1}, {lshr_ln183_2_fu_791_p4}};

assign or_ln184_1_fu_914_p3 = {{trunc_ln184_1_fu_910_p1}, {lshr_ln184_1_fu_900_p4}};

assign or_ln184_2_fu_936_p3 = {{trunc_ln184_2_fu_932_p1}, {lshr_ln184_2_fu_922_p4}};

assign or_ln1_fu_761_p3 = {{trunc_ln183_fu_757_p1}, {lshr_ln1_fu_747_p4}};

assign or_ln2_fu_892_p3 = {{trunc_ln184_fu_888_p1}, {lshr_ln2_fu_878_p4}};

assign or_ln_fu_539_p3 = {{trunc_ln171_fu_535_p1}, {lshr_ln_fu_525_p4}};

assign t1_fu_840_p2 = (add_ln183_2_reg_1228 + add_ln183_reg_1223);

assign trunc_ln168_fu_424_p1 = j_0_reg_271[5:0];

assign trunc_ln171_1_fu_557_p1 = reg_403[18:0];

assign trunc_ln171_2_fu_604_p1 = m_load_2_reg_1088[6:0];

assign trunc_ln171_3_fu_624_p1 = m_load_2_reg_1088[17:0];

assign trunc_ln171_fu_535_p1 = reg_403[16:0];

assign trunc_ln183_1_fu_779_p1 = f_1_reg_349[10:0];

assign trunc_ln183_2_fu_801_p1 = f_1_reg_349[24:0];

assign trunc_ln183_fu_757_p1 = f_1_reg_349[5:0];

assign trunc_ln184_1_fu_910_p1 = b_1_reg_392[12:0];

assign trunc_ln184_2_fu_932_p1 = b_1_reg_392[21:0];

assign trunc_ln184_fu_888_p1 = b_1_reg_392[1:0];

assign xor_ln171_1_fu_589_p2 = (xor_ln171_fu_583_p2 ^ or_ln_fu_539_p3);

assign xor_ln171_2_fu_648_p2 = (zext_ln171_6_fu_644_p1 ^ or_ln171_3_fu_627_p3);

assign xor_ln171_3_fu_654_p2 = (xor_ln171_2_fu_648_p2 ^ or_ln171_2_fu_607_p3);

assign xor_ln171_fu_583_p2 = (zext_ln171_5_fu_579_p1 ^ or_ln171_1_fu_561_p3);

assign xor_ln183_1_fu_819_p2 = (xor_ln183_fu_813_p2 ^ or_ln183_2_fu_805_p3);

assign xor_ln183_2_fu_703_p2 = (f_1_reg_349 ^ 32'd4294967295);

assign xor_ln183_3_fu_715_p2 = (and_ln183_fu_697_p2 ^ and_ln183_1_fu_709_p2);

assign xor_ln183_fu_813_p2 = (or_ln1_fu_761_p3 ^ or_ln183_1_fu_783_p3);

assign xor_ln184_1_fu_950_p2 = (xor_ln184_fu_944_p2 ^ or_ln184_2_fu_936_p3);

assign xor_ln184_2_fu_844_p2 = (d_1_reg_370 ^ c_1_reg_381);

assign xor_ln184_3_fu_862_p2 = (and_ln184_fu_850_p2 ^ and_ln184_1_fu_856_p2);

assign xor_ln184_fu_944_p2 = (or_ln2_fu_892_p3 ^ or_ln184_1_fu_914_p3);

assign zext_ln169_1_fu_434_p1 = or_ln169_fu_428_p2;

assign zext_ln169_2_fu_450_p1 = or_ln169_1_fu_445_p2;

assign zext_ln169_3_fu_460_p1 = or_ln169_2_fu_455_p2;

assign zext_ln169_4_fu_474_p1 = i_0_reg_282;

assign zext_ln169_fu_419_p1 = j_0_reg_271;

assign zext_ln171_1_fu_501_p1 = add_ln171_1_reg_1048;

assign zext_ln171_2_fu_517_p1 = add_ln171_2_reg_1063;

assign zext_ln171_3_fu_521_p1 = add_ln171_3_reg_1068;

assign zext_ln171_4_fu_674_p1 = i_1_reg_294;

assign zext_ln171_5_fu_579_p1 = lshr_ln171_2_fu_569_p4;

assign zext_ln171_6_fu_644_p1 = lshr_ln171_5_fu_635_p4;

assign zext_ln171_fu_497_p1 = add_ln171_reg_1043;

assign zext_ln183_fu_721_p1 = i_2_reg_306;

endmodule //sha256_transform
