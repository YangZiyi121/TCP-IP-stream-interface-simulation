// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="test_test,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=6.508750,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2,HLS_SYN_LUT=645,HLS_VERSION=2021_2}" *)

module test (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        inStream_TVALID,
        outStream_TREADY,
        inStream_TDATA,
        inStream_TREADY,
        inStream_TKEEP,
        inStream_TSTRB,
        inStream_TLAST,
        outStream_TDATA,
        outStream_TVALID,
        outStream_TKEEP,
        outStream_TSTRB,
        outStream_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   inStream_TVALID;
input   outStream_TREADY;
input  [511:0] inStream_TDATA;
output   inStream_TREADY;
input  [63:0] inStream_TKEEP;
input  [63:0] inStream_TSTRB;
input  [0:0] inStream_TLAST;
output  [511:0] outStream_TDATA;
output   outStream_TVALID;
output  [63:0] outStream_TKEEP;
output  [63:0] outStream_TSTRB;
output  [0:0] outStream_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    regslice_both_outStream_V_data_V_U_apdone_blk;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    inStream_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    outStream_TDATA_blk_n;
reg    ap_block_pp0_stage0_11001;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] p_Result_12_fu_281_p4;
wire   [31:0] p_Result_13_fu_291_p4;
wire   [31:0] p_Result_11_fu_271_p4;
wire   [31:0] p_Result_10_fu_261_p4;
wire   [31:0] add_ln70_1_fu_317_p2;
wire   [31:0] add_ln70_fu_311_p2;
wire   [31:0] p_Result_8_fu_231_p4;
wire   [31:0] p_Result_7_fu_221_p4;
wire   [31:0] p_Result_s_fu_251_p4;
wire   [31:0] p_Result_9_fu_241_p4;
wire   [31:0] add_ln70_4_fu_335_p2;
wire   [31:0] add_ln70_3_fu_329_p2;
wire   [31:0] add_ln70_5_fu_341_p2;
wire   [31:0] add_ln70_2_fu_323_p2;
wire   [31:0] p_Result_1_fu_161_p4;
wire   [31:0] p_Result_2_fu_171_p4;
wire   [31:0] sum_V_fu_157_p1;
wire   [31:0] p_Result_4_fu_191_p4;
wire   [31:0] add_ln70_8_fu_359_p2;
wire   [31:0] add_ln70_7_fu_353_p2;
wire   [31:0] p_Result_3_fu_181_p4;
wire   [31:0] p_Result_6_fu_211_p4;
wire   [31:0] p_Result_5_fu_201_p4;
wire   [31:0] p_Result_14_fu_301_p4;
wire   [31:0] add_ln70_11_fu_377_p2;
wire   [31:0] add_ln70_10_fu_371_p2;
wire   [31:0] add_ln70_12_fu_383_p2;
wire   [31:0] add_ln70_9_fu_365_p2;
wire   [31:0] add_ln70_13_fu_389_p2;
wire   [31:0] add_ln70_6_fu_347_p2;
wire   [31:0] sum_V_1_fu_395_p2;
wire   [31:0] sub_ln1558_fu_409_p2;
wire   [27:0] trunc_ln1558_1_fu_415_p4;
wire   [28:0] zext_ln1558_fu_425_p1;
wire   [27:0] trunc_ln1558_2_fu_435_p4;
wire   [0:0] tmp_fu_401_p3;
wire   [28:0] sub_ln1558_1_fu_429_p2;
wire   [28:0] zext_ln1558_1_fu_445_p1;
wire   [28:0] select_ln1558_fu_449_p3;
wire  signed [31:0] sext_ln391_fu_457_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_inStream_V_data_V_U_apdone_blk;
wire   [511:0] inStream_TDATA_int_regslice;
wire    inStream_TVALID_int_regslice;
reg    inStream_TREADY_int_regslice;
wire    regslice_both_inStream_V_data_V_U_ack_in;
wire    regslice_both_inStream_V_keep_V_U_apdone_blk;
wire   [63:0] inStream_TKEEP_int_regslice;
wire    regslice_both_inStream_V_keep_V_U_vld_out;
wire    regslice_both_inStream_V_keep_V_U_ack_in;
wire    regslice_both_inStream_V_strb_V_U_apdone_blk;
wire   [63:0] inStream_TSTRB_int_regslice;
wire    regslice_both_inStream_V_strb_V_U_vld_out;
wire    regslice_both_inStream_V_strb_V_U_ack_in;
wire    regslice_both_inStream_V_last_V_U_apdone_blk;
wire   [0:0] inStream_TLAST_int_regslice;
wire    regslice_both_inStream_V_last_V_U_vld_out;
wire    regslice_both_inStream_V_last_V_U_ack_in;
wire   [511:0] outStream_TDATA_int_regslice;
reg    outStream_TVALID_int_regslice;
wire    outStream_TREADY_int_regslice;
wire    regslice_both_outStream_V_data_V_U_vld_out;
wire    regslice_both_outStream_V_keep_V_U_apdone_blk;
wire    regslice_both_outStream_V_keep_V_U_ack_in_dummy;
wire    regslice_both_outStream_V_keep_V_U_vld_out;
wire    regslice_both_outStream_V_strb_V_U_apdone_blk;
wire    regslice_both_outStream_V_strb_V_U_ack_in_dummy;
wire    regslice_both_outStream_V_strb_V_U_vld_out;
wire    regslice_both_outStream_V_last_V_U_apdone_blk;
wire    regslice_both_outStream_V_last_V_U_ack_in_dummy;
wire    regslice_both_outStream_V_last_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

test_regslice_both #(
    .DataWidth( 512 ))
regslice_both_inStream_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TDATA),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_data_V_U_ack_in),
    .data_out(inStream_TDATA_int_regslice),
    .vld_out(inStream_TVALID_int_regslice),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_data_V_U_apdone_blk)
);

test_regslice_both #(
    .DataWidth( 64 ))
regslice_both_inStream_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TKEEP),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_keep_V_U_ack_in),
    .data_out(inStream_TKEEP_int_regslice),
    .vld_out(regslice_both_inStream_V_keep_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_keep_V_U_apdone_blk)
);

test_regslice_both #(
    .DataWidth( 64 ))
regslice_both_inStream_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TSTRB),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_strb_V_U_ack_in),
    .data_out(inStream_TSTRB_int_regslice),
    .vld_out(regslice_both_inStream_V_strb_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_strb_V_U_apdone_blk)
);

test_regslice_both #(
    .DataWidth( 1 ))
regslice_both_inStream_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TLAST),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_last_V_U_ack_in),
    .data_out(inStream_TLAST_int_regslice),
    .vld_out(regslice_both_inStream_V_last_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_last_V_U_apdone_blk)
);

test_regslice_both #(
    .DataWidth( 512 ))
regslice_both_outStream_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(outStream_TDATA_int_regslice),
    .vld_in(outStream_TVALID_int_regslice),
    .ack_in(outStream_TREADY_int_regslice),
    .data_out(outStream_TDATA),
    .vld_out(regslice_both_outStream_V_data_V_U_vld_out),
    .ack_out(outStream_TREADY),
    .apdone_blk(regslice_both_outStream_V_data_V_U_apdone_blk)
);

test_regslice_both #(
    .DataWidth( 64 ))
regslice_both_outStream_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(64'd0),
    .vld_in(outStream_TVALID_int_regslice),
    .ack_in(regslice_both_outStream_V_keep_V_U_ack_in_dummy),
    .data_out(outStream_TKEEP),
    .vld_out(regslice_both_outStream_V_keep_V_U_vld_out),
    .ack_out(outStream_TREADY),
    .apdone_blk(regslice_both_outStream_V_keep_V_U_apdone_blk)
);

test_regslice_both #(
    .DataWidth( 64 ))
regslice_both_outStream_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(64'd0),
    .vld_in(outStream_TVALID_int_regslice),
    .ack_in(regslice_both_outStream_V_strb_V_U_ack_in_dummy),
    .data_out(outStream_TSTRB),
    .vld_out(regslice_both_outStream_V_strb_V_U_vld_out),
    .ack_out(outStream_TREADY),
    .apdone_blk(regslice_both_outStream_V_strb_V_U_apdone_blk)
);

test_regslice_both #(
    .DataWidth( 1 ))
regslice_both_outStream_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(1'd0),
    .vld_in(outStream_TVALID_int_regslice),
    .ack_in(regslice_both_outStream_V_last_V_U_ack_in_dummy),
    .data_out(outStream_TLAST),
    .vld_out(regslice_both_outStream_V_last_V_U_vld_out),
    .ack_out(outStream_TREADY),
    .apdone_blk(regslice_both_outStream_V_last_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (ap_start == 1'b0))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1))) begin
        inStream_TDATA_blk_n = inStream_TVALID_int_regslice;
    end else begin
        inStream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1))) begin
        inStream_TREADY_int_regslice = 1'b1;
    end else begin
        inStream_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1)))) begin
        outStream_TDATA_blk_n = outStream_TREADY_int_regslice;
    end else begin
        outStream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1))) begin
        outStream_TVALID_int_regslice = 1'b1;
    end else begin
        outStream_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln70_10_fu_371_p2 = (p_Result_3_fu_181_p4 + p_Result_6_fu_211_p4);

assign add_ln70_11_fu_377_p2 = (p_Result_5_fu_201_p4 + p_Result_14_fu_301_p4);

assign add_ln70_12_fu_383_p2 = (add_ln70_11_fu_377_p2 + add_ln70_10_fu_371_p2);

assign add_ln70_13_fu_389_p2 = (add_ln70_12_fu_383_p2 + add_ln70_9_fu_365_p2);

assign add_ln70_1_fu_317_p2 = (p_Result_11_fu_271_p4 + p_Result_10_fu_261_p4);

assign add_ln70_2_fu_323_p2 = (add_ln70_1_fu_317_p2 + add_ln70_fu_311_p2);

assign add_ln70_3_fu_329_p2 = (p_Result_8_fu_231_p4 + p_Result_7_fu_221_p4);

assign add_ln70_4_fu_335_p2 = (p_Result_s_fu_251_p4 + p_Result_9_fu_241_p4);

assign add_ln70_5_fu_341_p2 = (add_ln70_4_fu_335_p2 + add_ln70_3_fu_329_p2);

assign add_ln70_6_fu_347_p2 = (add_ln70_5_fu_341_p2 + add_ln70_2_fu_323_p2);

assign add_ln70_7_fu_353_p2 = (p_Result_1_fu_161_p4 + p_Result_2_fu_171_p4);

assign add_ln70_8_fu_359_p2 = (sum_V_fu_157_p1 + p_Result_4_fu_191_p4);

assign add_ln70_9_fu_365_p2 = (add_ln70_8_fu_359_p2 + add_ln70_7_fu_353_p2);

assign add_ln70_fu_311_p2 = (p_Result_12_fu_281_p4 + p_Result_13_fu_291_p4);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_outStream_V_data_V_U_apdone_blk == 1'b1) | (outStream_TREADY_int_regslice == 1'b0))) | ((ap_start == 1'b1) & ((outStream_TREADY_int_regslice == 1'b0) | (inStream_TVALID_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_outStream_V_data_V_U_apdone_blk == 1'b1) | (outStream_TREADY_int_regslice == 1'b0))) | ((ap_start == 1'b1) & ((outStream_TREADY_int_regslice == 1'b0) | (inStream_TVALID_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_outStream_V_data_V_U_apdone_blk == 1'b1) | (outStream_TREADY_int_regslice == 1'b0))) | ((ap_start == 1'b1) & ((outStream_TREADY_int_regslice == 1'b0) | (inStream_TVALID_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((outStream_TREADY_int_regslice == 1'b0) | (inStream_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((regslice_both_outStream_V_data_V_U_apdone_blk == 1'b1) | (outStream_TREADY_int_regslice == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign inStream_TREADY = regslice_both_inStream_V_data_V_U_ack_in;

assign outStream_TDATA_int_regslice = {{480'd0}, {sext_ln391_fu_457_p1}};

assign outStream_TVALID = regslice_both_outStream_V_data_V_U_vld_out;

assign p_Result_10_fu_261_p4 = {{inStream_TDATA_int_regslice[383:352]}};

assign p_Result_11_fu_271_p4 = {{inStream_TDATA_int_regslice[415:384]}};

assign p_Result_12_fu_281_p4 = {{inStream_TDATA_int_regslice[447:416]}};

assign p_Result_13_fu_291_p4 = {{inStream_TDATA_int_regslice[479:448]}};

assign p_Result_14_fu_301_p4 = {{inStream_TDATA_int_regslice[511:480]}};

assign p_Result_1_fu_161_p4 = {{inStream_TDATA_int_regslice[63:32]}};

assign p_Result_2_fu_171_p4 = {{inStream_TDATA_int_regslice[95:64]}};

assign p_Result_3_fu_181_p4 = {{inStream_TDATA_int_regslice[127:96]}};

assign p_Result_4_fu_191_p4 = {{inStream_TDATA_int_regslice[159:128]}};

assign p_Result_5_fu_201_p4 = {{inStream_TDATA_int_regslice[191:160]}};

assign p_Result_6_fu_211_p4 = {{inStream_TDATA_int_regslice[223:192]}};

assign p_Result_7_fu_221_p4 = {{inStream_TDATA_int_regslice[255:224]}};

assign p_Result_8_fu_231_p4 = {{inStream_TDATA_int_regslice[287:256]}};

assign p_Result_9_fu_241_p4 = {{inStream_TDATA_int_regslice[319:288]}};

assign p_Result_s_fu_251_p4 = {{inStream_TDATA_int_regslice[351:320]}};

assign select_ln1558_fu_449_p3 = ((tmp_fu_401_p3[0:0] == 1'b1) ? sub_ln1558_1_fu_429_p2 : zext_ln1558_1_fu_445_p1);

assign sext_ln391_fu_457_p1 = $signed(select_ln1558_fu_449_p3);

assign sub_ln1558_1_fu_429_p2 = (29'd0 - zext_ln1558_fu_425_p1);

assign sub_ln1558_fu_409_p2 = (32'd0 - sum_V_1_fu_395_p2);

assign sum_V_1_fu_395_p2 = (add_ln70_13_fu_389_p2 + add_ln70_6_fu_347_p2);

assign sum_V_fu_157_p1 = inStream_TDATA_int_regslice[31:0];

assign tmp_fu_401_p3 = sum_V_1_fu_395_p2[32'd31];

assign trunc_ln1558_1_fu_415_p4 = {{sub_ln1558_fu_409_p2[31:4]}};

assign trunc_ln1558_2_fu_435_p4 = {{sum_V_1_fu_395_p2[31:4]}};

assign zext_ln1558_1_fu_445_p1 = trunc_ln1558_2_fu_435_p4;

assign zext_ln1558_fu_425_p1 = trunc_ln1558_1_fu_415_p4;

endmodule //test
