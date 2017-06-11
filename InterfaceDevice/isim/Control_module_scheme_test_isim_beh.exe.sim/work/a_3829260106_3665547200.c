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
static const char *ng0 = "I:/diplom2017/InterfaceDevice/spi_slave.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_3829260106_3665547200_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5808);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t9 = (t0 + 5696);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3829260106_3665547200_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, (unsigned char)2, (unsigned char)2);
    t2 = (t0 + 5872);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t1;
    xsi_driver_first_trans_fast(t2);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3829260106_3665547200_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t13);
    t11 = (t0 + 5936);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast(t11);

LAB2:    t19 = (t0 + 5712);
    *((int *)t19) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t1 = (t0 + 5936);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3829260106_3665547200_p_3(char *t0)
{
    char t15[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 6064);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB21;

LAB23:
LAB22:
LAB3:    t1 = (t0 + 5728);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2592U);
    t5 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2592U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t6 = (t0 + 2792U);
    t7 = *((char **)t6);
    t8 = (7 - 1);
    t9 = (7 - t8);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t6 = (t7 + t11);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t16 = ((IEEE_P_2592010699) + 4024);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 6;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t20 = (0 - 6);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t12 = xsi_base_array_concat(t12, t15, t16, (char)97, t6, t17, (char)99, t14, (char)101);
    t21 = (7U + 1U);
    t22 = (8U != t21);
    if (t22 == 1)
        goto LAB8;

LAB9:    t19 = (t0 + 6000);
    t23 = (t19 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t12, 8U);
    xsi_driver_first_trans_fast(t19);
    goto LAB6;

LAB8:    xsi_size_not_matching(8U, t21, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2952U);
    t6 = *((char **)t2);
    t8 = (7 - 7);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t2 = (t6 + t11);
    t4 = *((unsigned char *)t2);
    t7 = (t0 + 6064);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t16 = (t13 + 56U);
    t18 = *((char **)t16);
    *((unsigned char *)t18) = t4;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t8 = (7 - 1);
    t9 = (7 - t8);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t6 = (t0 + 2952U);
    t7 = *((char **)t6);
    t20 = (7 - 7);
    t21 = (t20 * -1);
    t27 = (1U * t21);
    t28 = (0 + t27);
    t6 = (t7 + t28);
    t3 = *((unsigned char *)t6);
    t13 = ((IEEE_P_2592010699) + 4024);
    t16 = (t17 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 6;
    t18 = (t16 + 4U);
    *((int *)t18) = 0;
    t18 = (t16 + 8U);
    *((int *)t18) = -1;
    t29 = (0 - 6);
    t30 = (t29 * -1);
    t30 = (t30 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t30;
    t12 = xsi_base_array_concat(t12, t15, t13, (char)97, t1, t17, (char)99, t3, (char)101);
    t30 = (7U + 1U);
    t4 = (8U != t30);
    if (t4 == 1)
        goto LAB13;

LAB14:    t18 = (t0 + 6128);
    t19 = (t18 + 56U);
    t23 = *((char **)t19);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t12, 8U);
    xsi_driver_first_trans_delta(t18, 0U, 8U, 0LL);
    goto LAB11;

LAB13:    xsi_size_not_matching(8U, t30, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(72, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t6 = t1;
    memset(t6, (unsigned char)2, 8U);
    t7 = (t0 + 6128);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t16 = (t13 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t1, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(73, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t6 = (t0 + 6000);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(74, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t6 = (t0 + 6192);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB16;

LAB18:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t1 = (t0 + 6128);
    t7 = (t1 + 56U);
    t12 = *((char **)t7);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    memcpy(t16, t6, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB19;

LAB21:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2792U);
    t6 = *((char **)t1);
    t1 = (t0 + 6192);
    t7 = (t1 + 56U);
    t12 = *((char **)t7);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    memcpy(t16, t6, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB22;

}


extern void work_a_3829260106_3665547200_init()
{
	static char *pe[] = {(void *)work_a_3829260106_3665547200_p_0,(void *)work_a_3829260106_3665547200_p_1,(void *)work_a_3829260106_3665547200_p_2,(void *)work_a_3829260106_3665547200_p_3};
	xsi_register_didat("work_a_3829260106_3665547200", "isim/Control_module_scheme_test_isim_beh.exe.sim/work/a_3829260106_3665547200.didat");
	xsi_register_executes(pe);
}
