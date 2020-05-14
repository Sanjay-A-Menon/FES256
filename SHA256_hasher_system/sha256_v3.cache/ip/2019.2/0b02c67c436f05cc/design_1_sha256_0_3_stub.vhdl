-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Apr 19 13:46:08 2020
-- Host        : lenovo-g500 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sha256_0_3_stub.vhdl
-- Design      : design_1_sha256_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_stream_a_TVALID : in STD_LOGIC;
    in_stream_a_TREADY : out STD_LOGIC;
    in_stream_a_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_stream_a_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,in_stream_a_TVALID,in_stream_a_TREADY,in_stream_a_TDATA[31:0],in_stream_a_TLAST[0:0],out_stream_TVALID,out_stream_TREADY,out_stream_TDATA[31:0],out_stream_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sha256,Vivado 2019.2";
begin
end;
