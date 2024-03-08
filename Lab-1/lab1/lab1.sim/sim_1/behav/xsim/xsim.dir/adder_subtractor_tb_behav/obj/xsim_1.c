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
extern void execute_278(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_24(char*, char *);
extern void execute_32(char*, char *);
extern void execute_40(char*, char *);
extern void execute_48(char*, char *);
extern void execute_56(char*, char *);
extern void execute_64(char*, char *);
extern void execute_72(char*, char *);
extern void execute_80(char*, char *);
extern void execute_88(char*, char *);
extern void execute_96(char*, char *);
extern void execute_104(char*, char *);
extern void execute_112(char*, char *);
extern void execute_120(char*, char *);
extern void execute_128(char*, char *);
extern void execute_136(char*, char *);
extern void execute_144(char*, char *);
extern void execute_152(char*, char *);
extern void execute_160(char*, char *);
extern void execute_168(char*, char *);
extern void execute_176(char*, char *);
extern void execute_184(char*, char *);
extern void execute_192(char*, char *);
extern void execute_200(char*, char *);
extern void execute_208(char*, char *);
extern void execute_216(char*, char *);
extern void execute_224(char*, char *);
extern void execute_232(char*, char *);
extern void execute_240(char*, char *);
extern void execute_248(char*, char *);
extern void execute_256(char*, char *);
extern void execute_264(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[49] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_278, (funcp)execute_21, (funcp)execute_22, (funcp)execute_24, (funcp)execute_32, (funcp)execute_40, (funcp)execute_48, (funcp)execute_56, (funcp)execute_64, (funcp)execute_72, (funcp)execute_80, (funcp)execute_88, (funcp)execute_96, (funcp)execute_104, (funcp)execute_112, (funcp)execute_120, (funcp)execute_128, (funcp)execute_136, (funcp)execute_144, (funcp)execute_152, (funcp)execute_160, (funcp)execute_168, (funcp)execute_176, (funcp)execute_184, (funcp)execute_192, (funcp)execute_200, (funcp)execute_208, (funcp)execute_216, (funcp)execute_224, (funcp)execute_232, (funcp)execute_240, (funcp)execute_248, (funcp)execute_256, (funcp)execute_264, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_30, (funcp)vlog_transfunc_eventcallback, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 49;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/adder_subtractor_tb_behav/xsim.reloc",  (void **)funcTab, 49);
	iki_vhdl_file_variable_register(dp + 33856);
	iki_vhdl_file_variable_register(dp + 33912);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/adder_subtractor_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/adder_subtractor_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
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
    iki_set_sv_type_file_path_name("xsim.dir/adder_subtractor_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/adder_subtractor_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/adder_subtractor_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
