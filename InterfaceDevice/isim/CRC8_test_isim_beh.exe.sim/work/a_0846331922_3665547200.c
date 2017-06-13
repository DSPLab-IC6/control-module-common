/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "I:/diplom2017/InterfaceDevice/CRC8_counter.vhd";
extern char *WORK_P_2297718406;

char *work_p_2297718406_sub_3981253948_689347972(char *, char *, char *, char *);


static void work_a_0846331922_3665547200_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4664U);
    t4 = work_p_2297718406_sub_3981253948_689347972(WORK_P_2297718406, t1, t3, t2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t6 = (t6 * 1U);
    t7 = (8U != t6);
    if (t7 == 1)
        goto LAB2;

LAB3:    t8 = (t0 + 3032);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t8);
    t2 = (t0 + 2952);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(8U, t6, 0);
    goto LAB3;

}


extern void work_a_0846331922_3665547200_init()
{
	static char *pe[] = {(void *)work_a_0846331922_3665547200_p_0};
	xsi_register_didat("work_a_0846331922_3665547200", "isim/CRC8_test_isim_beh.exe.sim/work/a_0846331922_3665547200.didat");
	xsi_register_executes(pe);
}
