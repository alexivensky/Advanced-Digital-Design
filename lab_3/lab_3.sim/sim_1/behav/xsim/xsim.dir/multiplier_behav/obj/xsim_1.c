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
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_25(char*, char *);
extern void execute_548(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_33(char*, char *);
extern void execute_41(char*, char *);
extern void execute_49(char*, char *);
extern void execute_57(char*, char *);
extern void execute_65(char*, char *);
extern void execute_73(char*, char *);
extern void execute_81(char*, char *);
extern void execute_89(char*, char *);
extern void execute_97(char*, char *);
extern void execute_105(char*, char *);
extern void execute_113(char*, char *);
extern void execute_121(char*, char *);
extern void execute_129(char*, char *);
extern void execute_137(char*, char *);
extern void execute_145(char*, char *);
extern void execute_153(char*, char *);
extern void execute_161(char*, char *);
extern void execute_169(char*, char *);
extern void execute_177(char*, char *);
extern void execute_185(char*, char *);
extern void execute_193(char*, char *);
extern void execute_201(char*, char *);
extern void execute_209(char*, char *);
extern void execute_217(char*, char *);
extern void execute_225(char*, char *);
extern void execute_233(char*, char *);
extern void execute_241(char*, char *);
extern void execute_249(char*, char *);
extern void execute_257(char*, char *);
extern void execute_265(char*, char *);
extern void execute_273(char*, char *);
extern void execute_281(char*, char *);
extern void execute_289(char*, char *);
extern void execute_297(char*, char *);
extern void execute_305(char*, char *);
extern void execute_313(char*, char *);
extern void execute_321(char*, char *);
extern void execute_329(char*, char *);
extern void execute_337(char*, char *);
extern void execute_345(char*, char *);
extern void execute_353(char*, char *);
extern void execute_361(char*, char *);
extern void execute_369(char*, char *);
extern void execute_377(char*, char *);
extern void execute_385(char*, char *);
extern void execute_393(char*, char *);
extern void execute_401(char*, char *);
extern void execute_409(char*, char *);
extern void execute_417(char*, char *);
extern void execute_425(char*, char *);
extern void execute_433(char*, char *);
extern void execute_441(char*, char *);
extern void execute_449(char*, char *);
extern void execute_457(char*, char *);
extern void execute_465(char*, char *);
extern void execute_473(char*, char *);
extern void execute_481(char*, char *);
extern void execute_489(char*, char *);
extern void execute_497(char*, char *);
extern void execute_505(char*, char *);
extern void execute_513(char*, char *);
extern void execute_521(char*, char *);
extern void execute_529(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_544(char*, char *);
extern void execute_546(char*, char *);
extern void execute_547(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[90] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_22, (funcp)execute_23, (funcp)execute_25, (funcp)execute_548, (funcp)execute_27, (funcp)execute_28, (funcp)execute_30, (funcp)execute_31, (funcp)execute_33, (funcp)execute_41, (funcp)execute_49, (funcp)execute_57, (funcp)execute_65, (funcp)execute_73, (funcp)execute_81, (funcp)execute_89, (funcp)execute_97, (funcp)execute_105, (funcp)execute_113, (funcp)execute_121, (funcp)execute_129, (funcp)execute_137, (funcp)execute_145, (funcp)execute_153, (funcp)execute_161, (funcp)execute_169, (funcp)execute_177, (funcp)execute_185, (funcp)execute_193, (funcp)execute_201, (funcp)execute_209, (funcp)execute_217, (funcp)execute_225, (funcp)execute_233, (funcp)execute_241, (funcp)execute_249, (funcp)execute_257, (funcp)execute_265, (funcp)execute_273, (funcp)execute_281, (funcp)execute_289, (funcp)execute_297, (funcp)execute_305, (funcp)execute_313, (funcp)execute_321, (funcp)execute_329, (funcp)execute_337, (funcp)execute_345, (funcp)execute_353, (funcp)execute_361, (funcp)execute_369, (funcp)execute_377, (funcp)execute_385, (funcp)execute_393, (funcp)execute_401, (funcp)execute_409, (funcp)execute_417, (funcp)execute_425, (funcp)execute_433, (funcp)execute_441, (funcp)execute_449, (funcp)execute_457, (funcp)execute_465, (funcp)execute_473, (funcp)execute_481, (funcp)execute_489, (funcp)execute_497, (funcp)execute_505, (funcp)execute_513, (funcp)execute_521, (funcp)execute_529, (funcp)execute_35, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_544, (funcp)execute_546, (funcp)execute_547, (funcp)vlog_transfunc_eventcallback, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_34};
const int NumRelocateId= 90;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/multiplier_behav/xsim.reloc",  (void **)funcTab, 90);
	iki_vhdl_file_variable_register(dp + 62928);
	iki_vhdl_file_variable_register(dp + 62984);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/multiplier_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/multiplier_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/multiplier_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/multiplier_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/multiplier_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
