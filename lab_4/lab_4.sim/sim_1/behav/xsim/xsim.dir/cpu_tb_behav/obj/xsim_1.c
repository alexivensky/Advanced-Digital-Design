/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_32(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_45(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_214(char*, char *);
extern void execute_44(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_53(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_101(char*, char *);
extern void execute_102(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_110(char*, char *);
extern void execute_111(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_128(char*, char *);
extern void execute_129(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_140(char*, char *);
extern void execute_141(char*, char *);
extern void execute_143(char*, char *);
extern void execute_144(char*, char *);
extern void execute_146(char*, char *);
extern void execute_147(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_158(char*, char *);
extern void execute_159(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_164(char*, char *);
extern void execute_165(char*, char *);
extern void execute_167(char*, char *);
extern void execute_168(char*, char *);
extern void execute_170(char*, char *);
extern void execute_171(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_179(char*, char *);
extern void execute_180(char*, char *);
extern void execute_182(char*, char *);
extern void execute_183(char*, char *);
extern void execute_185(char*, char *);
extern void execute_186(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_191(char*, char *);
extern void execute_192(char*, char *);
extern void execute_193(char*, char *);
extern void execute_194(char*, char *);
extern void execute_196(char*, char *);
extern void execute_197(char*, char *);
extern void execute_198(char*, char *);
extern void execute_199(char*, char *);
extern void execute_200(char*, char *);
extern void execute_201(char*, char *);
extern void execute_202(char*, char *);
extern void execute_203(char*, char *);
extern void execute_204(char*, char *);
extern void execute_205(char*, char *);
extern void execute_206(char*, char *);
extern void execute_207(char*, char *);
extern void execute_209(char*, char *);
extern void execute_211(char*, char *);
extern void execute_216(char*, char *);
extern void execute_219(char*, char *);
extern void execute_220(char*, char *);
extern void execute_222(char*, char *);
extern void execute_745(char*, char *);
extern void execute_224(char*, char *);
extern void execute_225(char*, char *);
extern void execute_227(char*, char *);
extern void execute_228(char*, char *);
extern void execute_230(char*, char *);
extern void execute_238(char*, char *);
extern void execute_246(char*, char *);
extern void execute_254(char*, char *);
extern void execute_262(char*, char *);
extern void execute_270(char*, char *);
extern void execute_278(char*, char *);
extern void execute_286(char*, char *);
extern void execute_294(char*, char *);
extern void execute_302(char*, char *);
extern void execute_310(char*, char *);
extern void execute_318(char*, char *);
extern void execute_326(char*, char *);
extern void execute_334(char*, char *);
extern void execute_342(char*, char *);
extern void execute_350(char*, char *);
extern void execute_358(char*, char *);
extern void execute_366(char*, char *);
extern void execute_374(char*, char *);
extern void execute_382(char*, char *);
extern void execute_390(char*, char *);
extern void execute_398(char*, char *);
extern void execute_406(char*, char *);
extern void execute_414(char*, char *);
extern void execute_422(char*, char *);
extern void execute_430(char*, char *);
extern void execute_438(char*, char *);
extern void execute_446(char*, char *);
extern void execute_454(char*, char *);
extern void execute_462(char*, char *);
extern void execute_470(char*, char *);
extern void execute_478(char*, char *);
extern void execute_486(char*, char *);
extern void execute_494(char*, char *);
extern void execute_502(char*, char *);
extern void execute_510(char*, char *);
extern void execute_518(char*, char *);
extern void execute_526(char*, char *);
extern void execute_534(char*, char *);
extern void execute_542(char*, char *);
extern void execute_550(char*, char *);
extern void execute_558(char*, char *);
extern void execute_566(char*, char *);
extern void execute_574(char*, char *);
extern void execute_582(char*, char *);
extern void execute_590(char*, char *);
extern void execute_598(char*, char *);
extern void execute_606(char*, char *);
extern void execute_614(char*, char *);
extern void execute_622(char*, char *);
extern void execute_630(char*, char *);
extern void execute_638(char*, char *);
extern void execute_646(char*, char *);
extern void execute_654(char*, char *);
extern void execute_662(char*, char *);
extern void execute_670(char*, char *);
extern void execute_678(char*, char *);
extern void execute_686(char*, char *);
extern void execute_694(char*, char *);
extern void execute_702(char*, char *);
extern void execute_710(char*, char *);
extern void execute_718(char*, char *);
extern void execute_726(char*, char *);
extern void execute_232(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_741(char*, char *);
extern void execute_743(char*, char *);
extern void execute_744(char*, char *);
extern void execute_751(char*, char *);
extern void execute_752(char*, char *);
extern void execute_753(char*, char *);
extern void execute_754(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[219] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_32, (funcp)execute_34, (funcp)execute_35, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_45, (funcp)execute_54, (funcp)execute_55, (funcp)execute_64, (funcp)execute_65, (funcp)execute_214, (funcp)execute_44, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_53, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_71, (funcp)execute_72, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_95, (funcp)execute_96, (funcp)execute_98, (funcp)execute_99, (funcp)execute_101, (funcp)execute_102, (funcp)execute_104, (funcp)execute_105, (funcp)execute_107, (funcp)execute_108, (funcp)execute_110, (funcp)execute_111, (funcp)execute_113, (funcp)execute_114, (funcp)execute_116, (funcp)execute_117, (funcp)execute_119, (funcp)execute_120, (funcp)execute_122, (funcp)execute_123, (funcp)execute_125, (funcp)execute_126, (funcp)execute_128, (funcp)execute_129, (funcp)execute_131, (funcp)execute_132, (funcp)execute_134, (funcp)execute_135, (funcp)execute_137, (funcp)execute_138, (funcp)execute_140, (funcp)execute_141, (funcp)execute_143, (funcp)execute_144, (funcp)execute_146, (funcp)execute_147, (funcp)execute_149, (funcp)execute_150, (funcp)execute_152, (funcp)execute_153, (funcp)execute_155, (funcp)execute_156, (funcp)execute_158, (funcp)execute_159, (funcp)execute_161, (funcp)execute_162, (funcp)execute_164, (funcp)execute_165, (funcp)execute_167, (funcp)execute_168, (funcp)execute_170, (funcp)execute_171, (funcp)execute_173, (funcp)execute_174, (funcp)execute_176, (funcp)execute_177, (funcp)execute_179, (funcp)execute_180, (funcp)execute_182, (funcp)execute_183, (funcp)execute_185, (funcp)execute_186, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_193, (funcp)execute_194, (funcp)execute_196, (funcp)execute_197, (funcp)execute_198, (funcp)execute_199, (funcp)execute_200, (funcp)execute_201, (funcp)execute_202, (funcp)execute_203, (funcp)execute_204, (funcp)execute_205, (funcp)execute_206, (funcp)execute_207, (funcp)execute_209, (funcp)execute_211, (funcp)execute_216, (funcp)execute_219, (funcp)execute_220, (funcp)execute_222, (funcp)execute_745, (funcp)execute_224, (funcp)execute_225, (funcp)execute_227, (funcp)execute_228, (funcp)execute_230, (funcp)execute_238, (funcp)execute_246, (funcp)execute_254, (funcp)execute_262, (funcp)execute_270, (funcp)execute_278, (funcp)execute_286, (funcp)execute_294, (funcp)execute_302, (funcp)execute_310, (funcp)execute_318, (funcp)execute_326, (funcp)execute_334, (funcp)execute_342, (funcp)execute_350, (funcp)execute_358, (funcp)execute_366, (funcp)execute_374, (funcp)execute_382, (funcp)execute_390, (funcp)execute_398, (funcp)execute_406, (funcp)execute_414, (funcp)execute_422, (funcp)execute_430, (funcp)execute_438, (funcp)execute_446, (funcp)execute_454, (funcp)execute_462, (funcp)execute_470, (funcp)execute_478, (funcp)execute_486, (funcp)execute_494, (funcp)execute_502, (funcp)execute_510, (funcp)execute_518, (funcp)execute_526, (funcp)execute_534, (funcp)execute_542, (funcp)execute_550, (funcp)execute_558, (funcp)execute_566, (funcp)execute_574, (funcp)execute_582, (funcp)execute_590, (funcp)execute_598, (funcp)execute_606, (funcp)execute_614, (funcp)execute_622, (funcp)execute_630, (funcp)execute_638, (funcp)execute_646, (funcp)execute_654, (funcp)execute_662, (funcp)execute_670, (funcp)execute_678, (funcp)execute_686, (funcp)execute_694, (funcp)execute_702, (funcp)execute_710, (funcp)execute_718, (funcp)execute_726, (funcp)execute_232, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_741, (funcp)execute_743, (funcp)execute_744, (funcp)execute_751, (funcp)execute_752, (funcp)execute_753, (funcp)execute_754, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_33, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_337};
const int NumRelocateId= 219;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/cpu_tb_behav/xsim.reloc",  (void **)funcTab, 219);
	iki_vhdl_file_variable_register(dp + 90384);
	iki_vhdl_file_variable_register(dp + 90440);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/cpu_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/cpu_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/cpu_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/cpu_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/cpu_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
