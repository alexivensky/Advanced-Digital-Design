#include "hw_conv.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void hw_conv::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void hw_conv::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void hw_conv::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[2];
}

void hw_conv::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void hw_conv::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_0, sin_V_data_V_0_vld_out.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op3112_read_state2.read()));
}

void hw_conv::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = ((esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, sin_V_data_V_0_vld_out.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op3112_read_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state4_io.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state5_io.read())));
}

void hw_conv::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, sin_V_data_V_0_vld_out.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op3112_read_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state4_io.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state5_io.read())));
}

void hw_conv::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = (esl_seteq<1,1,1>(ap_const_logic_0, sin_V_data_V_0_vld_out.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op3112_read_state2.read()));
}

void hw_conv::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void hw_conv::thread_ap_block_state4_io() {
    ap_block_state4_io = (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_logic_0, sout_V_data_V_1_ack_in.read()));
}

void hw_conv::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void hw_conv::thread_ap_block_state5_io() {
    ap_block_state5_io = (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter2_reg.read()) && esl_seteq<1,1,1>(ap_const_logic_0, sout_V_data_V_1_ack_in.read()));
}

void hw_conv::thread_ap_block_state5_pp0_stage0_iter3() {
    ap_block_state5_pp0_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void hw_conv::thread_ap_block_state6() {
    ap_block_state6 = (esl_seteq<1,1,1>(ap_const_logic_0, sout_V_data_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sout_V_keep_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sout_V_strb_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sout_V_user_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sout_V_last_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sout_V_id_V_1_ack_in.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sout_V_dest_V_1_ack_in.read()));
}

void hw_conv::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond1_fu_7341_p2.read())) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void hw_conv::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void hw_conv::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void hw_conv::thread_ap_predicate_op3112_read_state2() {
    ap_predicate_op3112_read_state2 = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_7341_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_12478_p3.read()));
}

void hw_conv::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void hw_conv::thread_exitcond1_fu_7341_p2() {
    exitcond1_fu_7341_p2 = (!i_reg_4252.read().is_01() || !ap_const_lv19_40201.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_4252.read() == ap_const_lv19_40201);
}

void hw_conv::thread_i_1_fu_7347_p2() {
    i_1_fu_7347_p2 = (!i_reg_4252.read().is_01() || !ap_const_lv19_1.is_01())? sc_lv<19>(): (sc_biguint<19>(i_reg_4252.read()) + sc_biguint<19>(ap_const_lv19_1));
}

void hw_conv::thread_icmp_fu_12660_p2() {
    icmp_fu_12660_p2 = (!tmp_4_reg_18903.read().is_01() || !ap_const_lv4_0.is_01())? sc_lv<1>(): (sc_bigint<4>(tmp_4_reg_18903.read()) > sc_bigint<4>(ap_const_lv4_0));
}

void hw_conv::thread_not_tmp_9_fu_12665_p2() {
    not_tmp_9_fu_12665_p2 = (tmp_3_reg_18897.read() ^ ap_const_lv1_1);
}

void hw_conv::thread_p_shl_cast_fu_12562_p1() {
    p_shl_cast_fu_12562_p1 = esl_zext<12,11>(p_shl_fu_12555_p3.read());
}

void hw_conv::thread_p_shl_fu_12555_p3() {
    p_shl_fu_12555_p3 = esl_concat<8,3>(kbuf_1_1_load_reg_18848.read(), ap_const_lv3_0);
}

void hw_conv::thread_phitmp_cast_fu_12670_p3() {
    phitmp_cast_fu_12670_p3 = (!not_tmp_9_fu_12665_p2.read()[0].is_01())? sc_lv<8>(): ((not_tmp_9_fu_12665_p2.read()[0].to_bool())? ap_const_lv8_FF: ap_const_lv8_0);
}

void hw_conv::thread_result_3_1_1_fu_12566_p2() {
    result_3_1_1_fu_12566_p2 = (!result_3_1_cast_fu_12552_p1.read().is_01() || !p_shl_cast_fu_12562_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(result_3_1_cast_fu_12552_p1.read()) - sc_biguint<12>(p_shl_cast_fu_12562_p1.read()));
}

void hw_conv::thread_result_3_1_cast_fu_12552_p1() {
    result_3_1_cast_fu_12552_p1 = esl_zext<12,10>(result_3_1_reg_18883.read());
}

void hw_conv::thread_result_3_1_fu_12531_p2() {
    result_3_1_fu_12531_p2 = (!tmp1_cast_fu_12517_p1.read().is_01() || !tmp2_cast_fu_12527_p1.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp1_cast_fu_12517_p1.read()) + sc_biguint<10>(tmp2_cast_fu_12527_p1.read()));
}

void hw_conv::thread_result_fu_12615_p2() {
    result_fu_12615_p2 = (!tmp5_fu_12589_p2.read().is_01() || !tmp6_cast_fu_12611_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp5_fu_12589_p2.read()) + sc_biguint<12>(tmp6_cast_fu_12611_p1.read()));
}

void hw_conv::thread_sin_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_7341_p2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_12478_p3.read()))) {
        sin_TDATA_blk_n = sin_V_data_V_0_state.read()[0];
    } else {
        sin_TDATA_blk_n = ap_const_logic_1;
    }
}

void hw_conv::thread_sin_TREADY() {
    sin_TREADY = sin_V_dest_V_0_state.read()[1];
}

void hw_conv::thread_sin_V_data_V_0_ack_in() {
    sin_V_data_V_0_ack_in = sin_V_data_V_0_state.read()[1];
}

void hw_conv::thread_sin_V_data_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op3112_read_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sin_V_data_V_0_ack_out = ap_const_logic_1;
    } else {
        sin_V_data_V_0_ack_out = ap_const_logic_0;
    }
}

void hw_conv::thread_sin_V_data_V_0_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, sin_V_data_V_0_sel.read())) {
        sin_V_data_V_0_data_out = sin_V_data_V_0_payload_B.read();
    } else {
        sin_V_data_V_0_data_out = sin_V_data_V_0_payload_A.read();
    }
}

void hw_conv::thread_sin_V_data_V_0_load_A() {
    sin_V_data_V_0_load_A = (sin_V_data_V_0_state_cmp_full.read() & ~sin_V_data_V_0_sel_wr.read());
}

void hw_conv::thread_sin_V_data_V_0_load_B() {
    sin_V_data_V_0_load_B = (sin_V_data_V_0_sel_wr.read() & sin_V_data_V_0_state_cmp_full.read());
}

void hw_conv::thread_sin_V_data_V_0_sel() {
    sin_V_data_V_0_sel = sin_V_data_V_0_sel_rd.read();
}

void hw_conv::thread_sin_V_data_V_0_state_cmp_full() {
    sin_V_data_V_0_state_cmp_full =  (sc_logic) ((!sin_V_data_V_0_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(sin_V_data_V_0_state.read() != ap_const_lv2_1))[0];
}

void hw_conv::thread_sin_V_data_V_0_vld_in() {
    sin_V_data_V_0_vld_in = sin_TVALID.read();
}

void hw_conv::thread_sin_V_data_V_0_vld_out() {
    sin_V_data_V_0_vld_out = sin_V_data_V_0_state.read()[0];
}

void hw_conv::thread_sin_V_dest_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op3112_read_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sin_V_dest_V_0_ack_out = ap_const_logic_1;
    } else {
        sin_V_dest_V_0_ack_out = ap_const_logic_0;
    }
}

void hw_conv::thread_sin_V_dest_V_0_vld_in() {
    sin_V_dest_V_0_vld_in = sin_TVALID.read();
}

void hw_conv::thread_sout_TDATA() {
    sout_TDATA = sout_V_data_V_1_data_out.read();
}

void hw_conv::thread_sout_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter2_reg.read())))) {
        sout_TDATA_blk_n = sout_V_data_V_1_state.read()[1];
    } else {
        sout_TDATA_blk_n = ap_const_logic_1;
    }
}

void hw_conv::thread_sout_TDEST() {
    sout_TDEST = sout_V_dest_V_1_data_out.read();
}

void hw_conv::thread_sout_TID() {
    sout_TID = sout_V_id_V_1_data_out.read();
}

void hw_conv::thread_sout_TKEEP() {
    sout_TKEEP = sout_V_keep_V_1_data_out.read();
}

void hw_conv::thread_sout_TLAST() {
    sout_TLAST = sout_V_last_V_1_data_out.read();
}

void hw_conv::thread_sout_TSTRB() {
    sout_TSTRB = sout_V_strb_V_1_data_out.read();
}

void hw_conv::thread_sout_TUSER() {
    sout_TUSER = sout_V_user_V_1_data_out.read();
}

void hw_conv::thread_sout_TVALID() {
    sout_TVALID = sout_V_dest_V_1_state.read()[0];
}

void hw_conv::thread_sout_V_data_V_1_ack_in() {
    sout_V_data_V_1_ack_in = sout_V_data_V_1_state.read()[1];
}

void hw_conv::thread_sout_V_data_V_1_ack_out() {
    sout_V_data_V_1_ack_out = sout_TREADY.read();
}

void hw_conv::thread_sout_V_data_V_1_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, sout_V_data_V_1_sel.read())) {
        sout_V_data_V_1_data_out = sout_V_data_V_1_payload_B.read();
    } else {
        sout_V_data_V_1_data_out = sout_V_data_V_1_payload_A.read();
    }
}

void hw_conv::thread_sout_V_data_V_1_load_A() {
    sout_V_data_V_1_load_A = (sout_V_data_V_1_state_cmp_full.read() & ~sout_V_data_V_1_sel_wr.read());
}

void hw_conv::thread_sout_V_data_V_1_load_B() {
    sout_V_data_V_1_load_B = (sout_V_data_V_1_sel_wr.read() & sout_V_data_V_1_state_cmp_full.read());
}

void hw_conv::thread_sout_V_data_V_1_sel() {
    sout_V_data_V_1_sel = sout_V_data_V_1_sel_rd.read();
}

void hw_conv::thread_sout_V_data_V_1_state_cmp_full() {
    sout_V_data_V_1_state_cmp_full =  (sc_logic) ((!sout_V_data_V_1_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(sout_V_data_V_1_state.read() != ap_const_lv2_1))[0];
}

void hw_conv::thread_sout_V_data_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sout_V_data_V_1_vld_in = ap_const_logic_1;
    } else {
        sout_V_data_V_1_vld_in = ap_const_logic_0;
    }
}

void hw_conv::thread_sout_V_data_V_1_vld_out() {
    sout_V_data_V_1_vld_out = sout_V_data_V_1_state.read()[0];
}

void hw_conv::thread_sout_V_dest_V_1_ack_in() {
    sout_V_dest_V_1_ack_in = sout_V_dest_V_1_state.read()[1];
}

void hw_conv::thread_sout_V_dest_V_1_ack_out() {
    sout_V_dest_V_1_ack_out = sout_TREADY.read();
}

void hw_conv::thread_sout_V_dest_V_1_data_out() {
    sout_V_dest_V_1_data_out = ap_const_lv1_0;
}

void hw_conv::thread_sout_V_dest_V_1_sel() {
    sout_V_dest_V_1_sel = sout_V_dest_V_1_sel_rd.read();
}

void hw_conv::thread_sout_V_dest_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sout_V_dest_V_1_vld_in = ap_const_logic_1;
    } else {
        sout_V_dest_V_1_vld_in = ap_const_logic_0;
    }
}

void hw_conv::thread_sout_V_dest_V_1_vld_out() {
    sout_V_dest_V_1_vld_out = sout_V_dest_V_1_state.read()[0];
}

void hw_conv::thread_sout_V_id_V_1_ack_in() {
    sout_V_id_V_1_ack_in = sout_V_id_V_1_state.read()[1];
}

void hw_conv::thread_sout_V_id_V_1_ack_out() {
    sout_V_id_V_1_ack_out = sout_TREADY.read();
}

void hw_conv::thread_sout_V_id_V_1_data_out() {
    sout_V_id_V_1_data_out = ap_const_lv1_0;
}

void hw_conv::thread_sout_V_id_V_1_sel() {
    sout_V_id_V_1_sel = sout_V_id_V_1_sel_rd.read();
}

void hw_conv::thread_sout_V_id_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sout_V_id_V_1_vld_in = ap_const_logic_1;
    } else {
        sout_V_id_V_1_vld_in = ap_const_logic_0;
    }
}

void hw_conv::thread_sout_V_id_V_1_vld_out() {
    sout_V_id_V_1_vld_out = sout_V_id_V_1_state.read()[0];
}

void hw_conv::thread_sout_V_keep_V_1_ack_in() {
    sout_V_keep_V_1_ack_in = sout_V_keep_V_1_state.read()[1];
}

void hw_conv::thread_sout_V_keep_V_1_ack_out() {
    sout_V_keep_V_1_ack_out = sout_TREADY.read();
}

void hw_conv::thread_sout_V_keep_V_1_data_out() {
    sout_V_keep_V_1_data_out = ap_const_lv1_1;
}

void hw_conv::thread_sout_V_keep_V_1_sel() {
    sout_V_keep_V_1_sel = sout_V_keep_V_1_sel_rd.read();
}

void hw_conv::thread_sout_V_keep_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sout_V_keep_V_1_vld_in = ap_const_logic_1;
    } else {
        sout_V_keep_V_1_vld_in = ap_const_logic_0;
    }
}

void hw_conv::thread_sout_V_keep_V_1_vld_out() {
    sout_V_keep_V_1_vld_out = sout_V_keep_V_1_state.read()[0];
}

void hw_conv::thread_sout_V_last_V_1_ack_in() {
    sout_V_last_V_1_ack_in = sout_V_last_V_1_state.read()[1];
}

void hw_conv::thread_sout_V_last_V_1_ack_out() {
    sout_V_last_V_1_ack_out = sout_TREADY.read();
}

void hw_conv::thread_sout_V_last_V_1_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, sout_V_last_V_1_sel.read())) {
        sout_V_last_V_1_data_out = sout_V_last_V_1_payload_B.read();
    } else {
        sout_V_last_V_1_data_out = sout_V_last_V_1_payload_A.read();
    }
}

void hw_conv::thread_sout_V_last_V_1_load_A() {
    sout_V_last_V_1_load_A = (sout_V_last_V_1_state_cmp_full.read() & ~sout_V_last_V_1_sel_wr.read());
}

void hw_conv::thread_sout_V_last_V_1_load_B() {
    sout_V_last_V_1_load_B = (sout_V_last_V_1_sel_wr.read() & sout_V_last_V_1_state_cmp_full.read());
}

void hw_conv::thread_sout_V_last_V_1_sel() {
    sout_V_last_V_1_sel = sout_V_last_V_1_sel_rd.read();
}

void hw_conv::thread_sout_V_last_V_1_state_cmp_full() {
    sout_V_last_V_1_state_cmp_full =  (sc_logic) ((!sout_V_last_V_1_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(sout_V_last_V_1_state.read() != ap_const_lv2_1))[0];
}

void hw_conv::thread_sout_V_last_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sout_V_last_V_1_vld_in = ap_const_logic_1;
    } else {
        sout_V_last_V_1_vld_in = ap_const_logic_0;
    }
}

void hw_conv::thread_sout_V_last_V_1_vld_out() {
    sout_V_last_V_1_vld_out = sout_V_last_V_1_state.read()[0];
}

void hw_conv::thread_sout_V_strb_V_1_ack_in() {
    sout_V_strb_V_1_ack_in = sout_V_strb_V_1_state.read()[1];
}

void hw_conv::thread_sout_V_strb_V_1_ack_out() {
    sout_V_strb_V_1_ack_out = sout_TREADY.read();
}

void hw_conv::thread_sout_V_strb_V_1_data_out() {
    sout_V_strb_V_1_data_out = ap_const_lv1_0;
}

void hw_conv::thread_sout_V_strb_V_1_sel() {
    sout_V_strb_V_1_sel = sout_V_strb_V_1_sel_rd.read();
}

void hw_conv::thread_sout_V_strb_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sout_V_strb_V_1_vld_in = ap_const_logic_1;
    } else {
        sout_V_strb_V_1_vld_in = ap_const_logic_0;
    }
}

void hw_conv::thread_sout_V_strb_V_1_vld_out() {
    sout_V_strb_V_1_vld_out = sout_V_strb_V_1_state.read()[0];
}

void hw_conv::thread_sout_V_user_V_1_ack_in() {
    sout_V_user_V_1_ack_in = sout_V_user_V_1_state.read()[1];
}

void hw_conv::thread_sout_V_user_V_1_ack_out() {
    sout_V_user_V_1_ack_out = sout_TREADY.read();
}

void hw_conv::thread_sout_V_user_V_1_data_out() {
    sout_V_user_V_1_data_out = ap_const_lv1_0;
}

void hw_conv::thread_sout_V_user_V_1_sel() {
    sout_V_user_V_1_sel = sout_V_user_V_1_sel_rd.read();
}

void hw_conv::thread_sout_V_user_V_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_s_reg_18888_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        sout_V_user_V_1_vld_in = ap_const_logic_1;
    } else {
        sout_V_user_V_1_vld_in = ap_const_logic_0;
    }
}

void hw_conv::thread_sout_V_user_V_1_vld_out() {
    sout_V_user_V_1_vld_out = sout_V_user_V_1_state.read()[0];
}

void hw_conv::thread_tmp1_cast_fu_12517_p1() {
    tmp1_cast_fu_12517_p1 = esl_zext<10,9>(tmp1_fu_12511_p2.read());
}

void hw_conv::thread_tmp1_fu_12511_p2() {
    tmp1_fu_12511_p2 = (!tmp_12_cast_fu_12495_p1.read().is_01() || !tmp_12_0_1_cast_fu_12499_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_12_cast_fu_12495_p1.read()) + sc_biguint<9>(tmp_12_0_1_cast_fu_12499_p1.read()));
}

void hw_conv::thread_tmp2_cast_fu_12527_p1() {
    tmp2_cast_fu_12527_p1 = esl_zext<10,9>(tmp2_fu_12521_p2.read());
}

void hw_conv::thread_tmp2_fu_12521_p2() {
    tmp2_fu_12521_p2 = (!tmp_12_1_cast_fu_12507_p1.read().is_01() || !tmp_12_0_2_cast_fu_12503_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_12_1_cast_fu_12507_p1.read()) + sc_biguint<9>(tmp_12_0_2_cast_fu_12503_p1.read()));
}

void hw_conv::thread_tmp3_fu_12644_p2() {
    tmp3_fu_12644_p2 = (!kbuf_2_1_fu_4200.read().is_01() || !kbuf_2_1_1_reg_18865.read().is_01())? sc_lv<8>(): (sc_biguint<8>(kbuf_2_1_fu_4200.read()) + sc_biguint<8>(kbuf_2_1_1_reg_18865.read()));
}

void hw_conv::thread_tmp5_fu_12589_p2() {
    tmp5_fu_12589_p2 = (!tmp_12_2_cast_fu_12579_p1.read().is_01() || !result_3_1_1_fu_12566_p2.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_12_2_cast_fu_12579_p1.read()) + sc_biguint<12>(result_3_1_1_fu_12566_p2.read()));
}

void hw_conv::thread_tmp6_cast_fu_12611_p1() {
    tmp6_cast_fu_12611_p1 = esl_zext<12,10>(tmp6_fu_12605_p2.read());
}

void hw_conv::thread_tmp6_fu_12605_p2() {
    tmp6_fu_12605_p2 = (!tmp_12_2_1_cast_fu_12582_p1.read().is_01() || !tmp7_cast_fu_12601_p1.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_12_2_1_cast_fu_12582_p1.read()) + sc_biguint<10>(tmp7_cast_fu_12601_p1.read()));
}

void hw_conv::thread_tmp7_cast_fu_12601_p1() {
    tmp7_cast_fu_12601_p1 = esl_zext<10,9>(tmp7_fu_12595_p2.read());
}

void hw_conv::thread_tmp7_fu_12595_p2() {
    tmp7_fu_12595_p2 = (!tmp_12_2_2_cast_fu_12585_p1.read().is_01() || !tmp_12_1_2_cast_fu_12572_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_12_2_2_cast_fu_12585_p1.read()) + sc_biguint<9>(tmp_12_1_2_cast_fu_12572_p1.read()));
}

void hw_conv::thread_tmp8_fu_12639_p2() {
    tmp8_fu_12639_p2 = (!kbuf_1_2_load_reg_18859.read().is_01() || !tmp_2_fu_12575_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(kbuf_1_2_load_reg_18859.read()) + sc_biguint<8>(tmp_2_fu_12575_p1.read()));
}

void hw_conv::thread_tmp9_fu_12649_p2() {
    tmp9_fu_12649_p2 = (!kbuf_2_0_load_reg_18853.read().is_01() || !tmp3_fu_12644_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(kbuf_2_0_load_reg_18853.read()) + sc_biguint<8>(tmp3_fu_12644_p2.read()));
}

void hw_conv::thread_tmp_12_0_1_cast_fu_12499_p1() {
    tmp_12_0_1_cast_fu_12499_p1 = esl_zext<9,8>(kbuf_0_1_fu_108.read());
}

void hw_conv::thread_tmp_12_0_2_cast_fu_12503_p1() {
    tmp_12_0_2_cast_fu_12503_p1 = esl_zext<9,8>(kbuf_0_2_fu_132.read());
}

void hw_conv::thread_tmp_12_1_2_cast_fu_12572_p1() {
    tmp_12_1_2_cast_fu_12572_p1 = esl_zext<9,8>(kbuf_1_2_load_reg_18859.read());
}

void hw_conv::thread_tmp_12_1_cast_fu_12507_p1() {
    tmp_12_1_cast_fu_12507_p1 = esl_zext<9,8>(kbuf_1_0_fu_116.read());
}

void hw_conv::thread_tmp_12_2_1_cast_fu_12582_p1() {
    tmp_12_2_1_cast_fu_12582_p1 = esl_zext<10,8>(kbuf_2_1_1_reg_18865.read());
}

void hw_conv::thread_tmp_12_2_2_cast_fu_12585_p1() {
    tmp_12_2_2_cast_fu_12585_p1 = esl_zext<9,8>(kbuf_2_1_fu_4200.read());
}

void hw_conv::thread_tmp_12_2_cast_fu_12579_p1() {
    tmp_12_2_cast_fu_12579_p1 = esl_zext<12,8>(kbuf_2_0_load_reg_18853.read());
}

void hw_conv::thread_tmp_12_cast_fu_12495_p1() {
    tmp_12_cast_fu_12495_p1 = esl_zext<9,8>(kbuf_0_0_fu_104.read());
}

void hw_conv::thread_tmp_2_fu_12575_p1() {
    tmp_2_fu_12575_p1 = result_3_1_1_fu_12566_p2.read().range(8-1, 0);
}

void hw_conv::thread_tmp_5_fu_12678_p2() {
    tmp_5_fu_12678_p2 = (tmp_3_reg_18897.read() | icmp_fu_12660_p2.read());
}

void hw_conv::thread_tmp_8_fu_12654_p2() {
    tmp_8_fu_12654_p2 = (!tmp8_fu_12639_p2.read().is_01() || !tmp9_fu_12649_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp8_fu_12639_p2.read()) + sc_biguint<8>(tmp9_fu_12649_p2.read()));
}

void hw_conv::thread_tmp_V_fu_12683_p3() {
    tmp_V_fu_12683_p3 = (!tmp_5_fu_12678_p2.read()[0].is_01())? sc_lv<8>(): ((tmp_5_fu_12678_p2.read()[0].to_bool())? phitmp_cast_fu_12670_p3.read(): tmp_8_reg_18908.read());
}

void hw_conv::thread_tmp_fu_12478_p3() {
    tmp_fu_12478_p3 = i_reg_4252.read().range(18, 18);
}

void hw_conv::thread_tmp_last_V_fu_12543_p2() {
    tmp_last_V_fu_12543_p2 = (!i_reg_4252.read().is_01() || !ap_const_lv19_40200.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_4252.read() == ap_const_lv19_40200);
}

void hw_conv::thread_tmp_s_fu_12537_p2() {
    tmp_s_fu_12537_p2 = (!i_reg_4252.read().is_01() || !ap_const_lv19_200.is_01())? sc_lv<1>(): (sc_biguint<19>(i_reg_4252.read()) > sc_biguint<19>(ap_const_lv19_200));
}

}

