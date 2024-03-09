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
extern void execute_23(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_36(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_205(char*, char *);
extern void execute_35(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_44(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
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
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_182(char*, char *);
extern void execute_183(char*, char *);
extern void execute_184(char*, char *);
extern void execute_185(char*, char *);
extern void execute_187(char*, char *);
extern void execute_188(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_191(char*, char *);
extern void execute_192(char*, char *);
extern void execute_193(char*, char *);
extern void execute_194(char*, char *);
extern void execute_195(char*, char *);
extern void execute_196(char*, char *);
extern void execute_197(char*, char *);
extern void execute_198(char*, char *);
extern void execute_200(char*, char *);
extern void execute_202(char*, char *);
extern void execute_207(char*, char *);
extern void execute_210(char*, char *);
extern void execute_211(char*, char *);
extern void execute_213(char*, char *);
extern void execute_736(char*, char *);
extern void execute_215(char*, char *);
extern void execute_216(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_221(char*, char *);
extern void execute_229(char*, char *);
extern void execute_237(char*, char *);
extern void execute_245(char*, char *);
extern void execute_253(char*, char *);
extern void execute_261(char*, char *);
extern void execute_269(char*, char *);
extern void execute_277(char*, char *);
extern void execute_285(char*, char *);
extern void execute_293(char*, char *);
extern void execute_301(char*, char *);
extern void execute_309(char*, char *);
extern void execute_317(char*, char *);
extern void execute_325(char*, char *);
extern void execute_333(char*, char *);
extern void execute_341(char*, char *);
extern void execute_349(char*, char *);
extern void execute_357(char*, char *);
extern void execute_365(char*, char *);
extern void execute_373(char*, char *);
extern void execute_381(char*, char *);
extern void execute_389(char*, char *);
extern void execute_397(char*, char *);
extern void execute_405(char*, char *);
extern void execute_413(char*, char *);
extern void execute_421(char*, char *);
extern void execute_429(char*, char *);
extern void execute_437(char*, char *);
extern void execute_445(char*, char *);
extern void execute_453(char*, char *);
extern void execute_461(char*, char *);
extern void execute_469(char*, char *);
extern void execute_477(char*, char *);
extern void execute_485(char*, char *);
extern void execute_493(char*, char *);
extern void execute_501(char*, char *);
extern void execute_509(char*, char *);
extern void execute_517(char*, char *);
extern void execute_525(char*, char *);
extern void execute_533(char*, char *);
extern void execute_541(char*, char *);
extern void execute_549(char*, char *);
extern void execute_557(char*, char *);
extern void execute_565(char*, char *);
extern void execute_573(char*, char *);
extern void execute_581(char*, char *);
extern void execute_589(char*, char *);
extern void execute_597(char*, char *);
extern void execute_605(char*, char *);
extern void execute_613(char*, char *);
extern void execute_621(char*, char *);
extern void execute_629(char*, char *);
extern void execute_637(char*, char *);
extern void execute_645(char*, char *);
extern void execute_653(char*, char *);
extern void execute_661(char*, char *);
extern void execute_669(char*, char *);
extern void execute_677(char*, char *);
extern void execute_685(char*, char *);
extern void execute_693(char*, char *);
extern void execute_701(char*, char *);
extern void execute_709(char*, char *);
extern void execute_717(char*, char *);
extern void execute_223(char*, char *);
extern void execute_224(char*, char *);
extern void execute_225(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_732(char*, char *);
extern void execute_734(char*, char *);
extern void execute_735(char*, char *);
extern void execute_742(char*, char *);
extern void execute_743(char*, char *);
extern void execute_744(char*, char *);
extern void execute_745(char*, char *);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_305(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[210] = {(funcp)execute_23, (funcp)execute_25, (funcp)execute_26, (funcp)execute_28, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_36, (funcp)execute_45, (funcp)execute_46, (funcp)execute_55, (funcp)execute_56, (funcp)execute_205, (funcp)execute_35, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_44, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_86, (funcp)execute_87, (funcp)execute_89, (funcp)execute_90, (funcp)execute_92, (funcp)execute_93, (funcp)execute_95, (funcp)execute_96, (funcp)execute_98, (funcp)execute_99, (funcp)execute_101, (funcp)execute_102, (funcp)execute_104, (funcp)execute_105, (funcp)execute_107, (funcp)execute_108, (funcp)execute_110, (funcp)execute_111, (funcp)execute_113, (funcp)execute_114, (funcp)execute_116, (funcp)execute_117, (funcp)execute_119, (funcp)execute_120, (funcp)execute_122, (funcp)execute_123, (funcp)execute_125, (funcp)execute_126, (funcp)execute_128, (funcp)execute_129, (funcp)execute_131, (funcp)execute_132, (funcp)execute_134, (funcp)execute_135, (funcp)execute_137, (funcp)execute_138, (funcp)execute_140, (funcp)execute_141, (funcp)execute_143, (funcp)execute_144, (funcp)execute_146, (funcp)execute_147, (funcp)execute_149, (funcp)execute_150, (funcp)execute_152, (funcp)execute_153, (funcp)execute_155, (funcp)execute_156, (funcp)execute_158, (funcp)execute_159, (funcp)execute_161, (funcp)execute_162, (funcp)execute_164, (funcp)execute_165, (funcp)execute_167, (funcp)execute_168, (funcp)execute_170, (funcp)execute_171, (funcp)execute_173, (funcp)execute_174, (funcp)execute_176, (funcp)execute_177, (funcp)execute_180, (funcp)execute_181, (funcp)execute_182, (funcp)execute_183, (funcp)execute_184, (funcp)execute_185, (funcp)execute_187, (funcp)execute_188, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_193, (funcp)execute_194, (funcp)execute_195, (funcp)execute_196, (funcp)execute_197, (funcp)execute_198, (funcp)execute_200, (funcp)execute_202, (funcp)execute_207, (funcp)execute_210, (funcp)execute_211, (funcp)execute_213, (funcp)execute_736, (funcp)execute_215, (funcp)execute_216, (funcp)execute_218, (funcp)execute_219, (funcp)execute_221, (funcp)execute_229, (funcp)execute_237, (funcp)execute_245, (funcp)execute_253, (funcp)execute_261, (funcp)execute_269, (funcp)execute_277, (funcp)execute_285, (funcp)execute_293, (funcp)execute_301, (funcp)execute_309, (funcp)execute_317, (funcp)execute_325, (funcp)execute_333, (funcp)execute_341, (funcp)execute_349, (funcp)execute_357, (funcp)execute_365, (funcp)execute_373, (funcp)execute_381, (funcp)execute_389, (funcp)execute_397, (funcp)execute_405, (funcp)execute_413, (funcp)execute_421, (funcp)execute_429, (funcp)execute_437, (funcp)execute_445, (funcp)execute_453, (funcp)execute_461, (funcp)execute_469, (funcp)execute_477, (funcp)execute_485, (funcp)execute_493, (funcp)execute_501, (funcp)execute_509, (funcp)execute_517, (funcp)execute_525, (funcp)execute_533, (funcp)execute_541, (funcp)execute_549, (funcp)execute_557, (funcp)execute_565, (funcp)execute_573, (funcp)execute_581, (funcp)execute_589, (funcp)execute_597, (funcp)execute_605, (funcp)execute_613, (funcp)execute_621, (funcp)execute_629, (funcp)execute_637, (funcp)execute_645, (funcp)execute_653, (funcp)execute_661, (funcp)execute_669, (funcp)execute_677, (funcp)execute_685, (funcp)execute_693, (funcp)execute_701, (funcp)execute_709, (funcp)execute_717, (funcp)execute_223, (funcp)execute_224, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_732, (funcp)execute_734, (funcp)execute_735, (funcp)execute_742, (funcp)execute_743, (funcp)execute_744, (funcp)execute_745, (funcp)transaction_1, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_305};
const int NumRelocateId= 210;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/cpu_tb_behav/xsim.reloc",  (void **)funcTab, 210);
	iki_vhdl_file_variable_register(dp + 85048);
	iki_vhdl_file_variable_register(dp + 85104);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/cpu_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/cpu_tb_behav/xsim.reloc");

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
