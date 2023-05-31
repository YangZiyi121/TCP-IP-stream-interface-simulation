-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity test is
port (
    ap_local_block : OUT STD_LOGIC;
    ap_local_deadlock : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    inStream_TVALID : IN STD_LOGIC;
    outStream_TREADY : IN STD_LOGIC;
    inStream_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    inStream_TREADY : OUT STD_LOGIC;
    inStream_TKEEP : IN STD_LOGIC_VECTOR (63 downto 0);
    inStream_TSTRB : IN STD_LOGIC_VECTOR (63 downto 0);
    inStream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    outStream_TDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    outStream_TVALID : OUT STD_LOGIC;
    outStream_TKEEP : OUT STD_LOGIC_VECTOR (63 downto 0);
    outStream_TSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
    outStream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of test is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "test_test,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=6.508750,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2,HLS_SYN_LUT=645,HLS_VERSION=2021_2}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_9F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010011111";
    constant ap_const_lv32_A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100000";
    constant ap_const_lv32_BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111111";
    constant ap_const_lv32_C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011000000";
    constant ap_const_lv32_DF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011011111";
    constant ap_const_lv32_E0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011100000";
    constant ap_const_lv32_FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011111111";
    constant ap_const_lv32_100 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000000";
    constant ap_const_lv32_11F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100011111";
    constant ap_const_lv32_120 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100100000";
    constant ap_const_lv32_13F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100111111";
    constant ap_const_lv32_140 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101000000";
    constant ap_const_lv32_15F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101011111";
    constant ap_const_lv32_160 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101100000";
    constant ap_const_lv32_17F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101111111";
    constant ap_const_lv32_180 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110000000";
    constant ap_const_lv32_19F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110011111";
    constant ap_const_lv32_1A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110100000";
    constant ap_const_lv32_1BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110111111";
    constant ap_const_lv32_1C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111000000";
    constant ap_const_lv32_1DF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111011111";
    constant ap_const_lv32_1E0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111100000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv29_0 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000000000000";
    constant ap_const_lv480_lc_1 : STD_LOGIC_VECTOR (479 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal regslice_both_outStream_V_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal inStream_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal outStream_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_Result_12_fu_281_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_13_fu_291_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_11_fu_271_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_10_fu_261_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_1_fu_317_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_fu_311_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_8_fu_231_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_7_fu_221_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_fu_251_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_9_fu_241_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_4_fu_335_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_3_fu_329_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_5_fu_341_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_2_fu_323_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_1_fu_161_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_2_fu_171_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal sum_V_fu_157_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_4_fu_191_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_8_fu_359_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_7_fu_353_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_3_fu_181_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_6_fu_211_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_5_fu_201_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_14_fu_301_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_11_fu_377_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_10_fu_371_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_12_fu_383_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_9_fu_365_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_13_fu_389_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln70_6_fu_347_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sum_V_1_fu_395_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln1558_fu_409_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln1558_1_fu_415_p4 : STD_LOGIC_VECTOR (27 downto 0);
    signal zext_ln1558_fu_425_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal trunc_ln1558_2_fu_435_p4 : STD_LOGIC_VECTOR (27 downto 0);
    signal tmp_fu_401_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln1558_1_fu_429_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal zext_ln1558_1_fu_445_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal select_ln1558_fu_449_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal sext_ln391_fu_457_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_inStream_V_data_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TDATA_int_regslice : STD_LOGIC_VECTOR (511 downto 0);
    signal inStream_TVALID_int_regslice : STD_LOGIC;
    signal inStream_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_inStream_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TKEEP_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal regslice_both_inStream_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TSTRB_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal regslice_both_inStream_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_inStream_V_last_V_U_apdone_blk : STD_LOGIC;
    signal inStream_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_inStream_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_inStream_V_last_V_U_ack_in : STD_LOGIC;
    signal outStream_TDATA_int_regslice : STD_LOGIC_VECTOR (511 downto 0);
    signal outStream_TVALID_int_regslice : STD_LOGIC;
    signal outStream_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_outStream_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_outStream_V_last_V_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component test_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_inStream_V_data_V_U : component test_regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TDATA,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_data_V_U_ack_in,
        data_out => inStream_TDATA_int_regslice,
        vld_out => inStream_TVALID_int_regslice,
        ack_out => inStream_TREADY_int_regslice,
        apdone_blk => regslice_both_inStream_V_data_V_U_apdone_blk);

    regslice_both_inStream_V_keep_V_U : component test_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TKEEP,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_keep_V_U_ack_in,
        data_out => inStream_TKEEP_int_regslice,
        vld_out => regslice_both_inStream_V_keep_V_U_vld_out,
        ack_out => inStream_TREADY_int_regslice,
        apdone_blk => regslice_both_inStream_V_keep_V_U_apdone_blk);

    regslice_both_inStream_V_strb_V_U : component test_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TSTRB,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_strb_V_U_ack_in,
        data_out => inStream_TSTRB_int_regslice,
        vld_out => regslice_both_inStream_V_strb_V_U_vld_out,
        ack_out => inStream_TREADY_int_regslice,
        apdone_blk => regslice_both_inStream_V_strb_V_U_apdone_blk);

    regslice_both_inStream_V_last_V_U : component test_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => inStream_TLAST,
        vld_in => inStream_TVALID,
        ack_in => regslice_both_inStream_V_last_V_U_ack_in,
        data_out => inStream_TLAST_int_regslice,
        vld_out => regslice_both_inStream_V_last_V_U_vld_out,
        ack_out => inStream_TREADY_int_regslice,
        apdone_blk => regslice_both_inStream_V_last_V_U_apdone_blk);

    regslice_both_outStream_V_data_V_U : component test_regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => outStream_TDATA_int_regslice,
        vld_in => outStream_TVALID_int_regslice,
        ack_in => outStream_TREADY_int_regslice,
        data_out => outStream_TDATA,
        vld_out => regslice_both_outStream_V_data_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_data_V_U_apdone_blk);

    regslice_both_outStream_V_keep_V_U : component test_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => ap_const_lv64_0,
        vld_in => outStream_TVALID_int_regslice,
        ack_in => regslice_both_outStream_V_keep_V_U_ack_in_dummy,
        data_out => outStream_TKEEP,
        vld_out => regslice_both_outStream_V_keep_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_keep_V_U_apdone_blk);

    regslice_both_outStream_V_strb_V_U : component test_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => ap_const_lv64_0,
        vld_in => outStream_TVALID_int_regslice,
        ack_in => regslice_both_outStream_V_strb_V_U_ack_in_dummy,
        data_out => outStream_TSTRB,
        vld_out => regslice_both_outStream_V_strb_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_strb_V_U_apdone_blk);

    regslice_both_outStream_V_last_V_U : component test_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => ap_const_lv1_0,
        vld_in => outStream_TVALID_int_regslice,
        ack_in => regslice_both_outStream_V_last_V_U_ack_in_dummy,
        data_out => outStream_TLAST,
        vld_out => regslice_both_outStream_V_last_V_U_vld_out,
        ack_out => outStream_TREADY,
        apdone_blk => regslice_both_outStream_V_last_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln70_10_fu_371_p2 <= std_logic_vector(unsigned(p_Result_3_fu_181_p4) + unsigned(p_Result_6_fu_211_p4));
    add_ln70_11_fu_377_p2 <= std_logic_vector(unsigned(p_Result_5_fu_201_p4) + unsigned(p_Result_14_fu_301_p4));
    add_ln70_12_fu_383_p2 <= std_logic_vector(unsigned(add_ln70_11_fu_377_p2) + unsigned(add_ln70_10_fu_371_p2));
    add_ln70_13_fu_389_p2 <= std_logic_vector(unsigned(add_ln70_12_fu_383_p2) + unsigned(add_ln70_9_fu_365_p2));
    add_ln70_1_fu_317_p2 <= std_logic_vector(unsigned(p_Result_11_fu_271_p4) + unsigned(p_Result_10_fu_261_p4));
    add_ln70_2_fu_323_p2 <= std_logic_vector(unsigned(add_ln70_1_fu_317_p2) + unsigned(add_ln70_fu_311_p2));
    add_ln70_3_fu_329_p2 <= std_logic_vector(unsigned(p_Result_8_fu_231_p4) + unsigned(p_Result_7_fu_221_p4));
    add_ln70_4_fu_335_p2 <= std_logic_vector(unsigned(p_Result_s_fu_251_p4) + unsigned(p_Result_9_fu_241_p4));
    add_ln70_5_fu_341_p2 <= std_logic_vector(unsigned(add_ln70_4_fu_335_p2) + unsigned(add_ln70_3_fu_329_p2));
    add_ln70_6_fu_347_p2 <= std_logic_vector(unsigned(add_ln70_5_fu_341_p2) + unsigned(add_ln70_2_fu_323_p2));
    add_ln70_7_fu_353_p2 <= std_logic_vector(unsigned(p_Result_1_fu_161_p4) + unsigned(p_Result_2_fu_171_p4));
    add_ln70_8_fu_359_p2 <= std_logic_vector(unsigned(sum_V_fu_157_p1) + unsigned(p_Result_4_fu_191_p4));
    add_ln70_9_fu_365_p2 <= std_logic_vector(unsigned(add_ln70_8_fu_359_p2) + unsigned(add_ln70_7_fu_353_p2));
    add_ln70_fu_311_p2 <= std_logic_vector(unsigned(p_Result_12_fu_281_p4) + unsigned(p_Result_13_fu_291_p4));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, regslice_both_outStream_V_data_V_U_apdone_blk, inStream_TVALID_int_regslice, outStream_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or (outStream_TREADY_int_regslice = ap_const_logic_0))) or ((ap_start = ap_const_logic_1) and ((outStream_TREADY_int_regslice = ap_const_logic_0) or (inStream_TVALID_int_regslice = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, regslice_both_outStream_V_data_V_U_apdone_blk, inStream_TVALID_int_regslice, outStream_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or (outStream_TREADY_int_regslice = ap_const_logic_0))) or ((ap_start = ap_const_logic_1) and ((outStream_TREADY_int_regslice = ap_const_logic_0) or (inStream_TVALID_int_regslice = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_enable_reg_pp0_iter1, regslice_both_outStream_V_data_V_U_apdone_blk, inStream_TVALID_int_regslice, outStream_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or (outStream_TREADY_int_regslice = ap_const_logic_0))) or ((ap_start = ap_const_logic_1) and ((outStream_TREADY_int_regslice = ap_const_logic_0) or (inStream_TVALID_int_regslice = ap_const_logic_0))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(inStream_TVALID_int_regslice, outStream_TREADY_int_regslice)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((outStream_TREADY_int_regslice = ap_const_logic_0) or (inStream_TVALID_int_regslice = ap_const_logic_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(regslice_both_outStream_V_data_V_U_apdone_blk, outStream_TREADY_int_regslice)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((regslice_both_outStream_V_data_V_U_apdone_blk = ap_const_logic_1) or (outStream_TREADY_int_regslice = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_local_block <= ap_const_logic_0;
    ap_local_deadlock <= ap_const_logic_0;

    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_start = ap_const_logic_0))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    inStream_TDATA_blk_n_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, inStream_TVALID_int_regslice)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start = ap_const_logic_1))) then 
            inStream_TDATA_blk_n <= inStream_TVALID_int_regslice;
        else 
            inStream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    inStream_TREADY <= regslice_both_inStream_V_data_V_U_ack_in;

    inStream_TREADY_int_regslice_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start = ap_const_logic_1))) then 
            inStream_TREADY_int_regslice <= ap_const_logic_1;
        else 
            inStream_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;


    outStream_TDATA_blk_n_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, outStream_TREADY_int_regslice)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start = ap_const_logic_1)))) then 
            outStream_TDATA_blk_n <= outStream_TREADY_int_regslice;
        else 
            outStream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    outStream_TDATA_int_regslice <= (ap_const_lv480_lc_1 & sext_ln391_fu_457_p1);
    outStream_TVALID <= regslice_both_outStream_V_data_V_U_vld_out;

    outStream_TVALID_int_regslice_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start = ap_const_logic_1))) then 
            outStream_TVALID_int_regslice <= ap_const_logic_1;
        else 
            outStream_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_10_fu_261_p4 <= inStream_TDATA_int_regslice(383 downto 352);
    p_Result_11_fu_271_p4 <= inStream_TDATA_int_regslice(415 downto 384);
    p_Result_12_fu_281_p4 <= inStream_TDATA_int_regslice(447 downto 416);
    p_Result_13_fu_291_p4 <= inStream_TDATA_int_regslice(479 downto 448);
    p_Result_14_fu_301_p4 <= inStream_TDATA_int_regslice(511 downto 480);
    p_Result_1_fu_161_p4 <= inStream_TDATA_int_regslice(63 downto 32);
    p_Result_2_fu_171_p4 <= inStream_TDATA_int_regslice(95 downto 64);
    p_Result_3_fu_181_p4 <= inStream_TDATA_int_regslice(127 downto 96);
    p_Result_4_fu_191_p4 <= inStream_TDATA_int_regslice(159 downto 128);
    p_Result_5_fu_201_p4 <= inStream_TDATA_int_regslice(191 downto 160);
    p_Result_6_fu_211_p4 <= inStream_TDATA_int_regslice(223 downto 192);
    p_Result_7_fu_221_p4 <= inStream_TDATA_int_regslice(255 downto 224);
    p_Result_8_fu_231_p4 <= inStream_TDATA_int_regslice(287 downto 256);
    p_Result_9_fu_241_p4 <= inStream_TDATA_int_regslice(319 downto 288);
    p_Result_s_fu_251_p4 <= inStream_TDATA_int_regslice(351 downto 320);
    select_ln1558_fu_449_p3 <= 
        sub_ln1558_1_fu_429_p2 when (tmp_fu_401_p3(0) = '1') else 
        zext_ln1558_1_fu_445_p1;
        sext_ln391_fu_457_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(select_ln1558_fu_449_p3),32));

    sub_ln1558_1_fu_429_p2 <= std_logic_vector(unsigned(ap_const_lv29_0) - unsigned(zext_ln1558_fu_425_p1));
    sub_ln1558_fu_409_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(sum_V_1_fu_395_p2));
    sum_V_1_fu_395_p2 <= std_logic_vector(unsigned(add_ln70_13_fu_389_p2) + unsigned(add_ln70_6_fu_347_p2));
    sum_V_fu_157_p1 <= inStream_TDATA_int_regslice(32 - 1 downto 0);
    tmp_fu_401_p3 <= sum_V_1_fu_395_p2(31 downto 31);
    trunc_ln1558_1_fu_415_p4 <= sub_ln1558_fu_409_p2(31 downto 4);
    trunc_ln1558_2_fu_435_p4 <= sum_V_1_fu_395_p2(31 downto 4);
    zext_ln1558_1_fu_445_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln1558_2_fu_435_p4),29));
    zext_ln1558_fu_425_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln1558_1_fu_415_p4),29));
end behav;