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
extern char *IEEE_P_2592010699;
static const char *ng1 = "I:/diplom2017/InterfaceDevice/Control_module.vhd";

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


char *work_a_0612141369_sub_3754466009_3105409471(char *t1, char *t2, unsigned char t3)
{
    char t4[128];
    char t5[8];
    char t9[16];
    char *t0;
    int t6;
    int t7;
    unsigned int t8;
    int t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    t6 = (8 - 1);
    t7 = (0 - t6);
    t8 = (t7 * -1);
    t8 = (t8 + 1);
    t8 = (t8 * 1U);
    t10 = (8 - 1);
    t11 = (t9 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = t10;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - t10);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t4 + 4U);
    t15 = ((IEEE_P_2592010699) + 4024);
    t16 = (t12 + 88U);
    *((char **)t16) = t15;
    t17 = (char *)alloca(t8);
    t18 = (t12 + 56U);
    *((char **)t18) = t17;
    xsi_type_set_default_value(t15, t17, t9);
    t19 = (t12 + 64U);
    *((char **)t19) = t9;
    t20 = (t12 + 80U);
    *((unsigned int *)t20) = t8;
    t21 = (t5 + 4U);
    *((unsigned char *)t21) = t3;
    t22 = (char *)((nl0) + t3);
    goto **((char **)t22);

LAB2:    t11 = (t12 + 56U);
    t15 = *((char **)t11);
    t11 = (t9 + 12U);
    t8 = *((unsigned int *)t11);
    t8 = (t8 * 1U);
    t0 = xsi_get_transient_memory(t8);
    memcpy(t0, t15, t8);
    t16 = (t9 + 0U);
    t6 = *((int *)t16);
    t18 = (t9 + 4U);
    t7 = *((int *)t18);
    t19 = (t9 + 8U);
    t10 = *((int *)t19);
    t20 = (t2 + 0U);
    t22 = (t20 + 0U);
    *((int *)t22) = t6;
    t22 = (t20 + 4U);
    *((int *)t22) = t7;
    t22 = (t20 + 8U);
    *((int *)t22) = t10;
    t13 = (t7 - t6);
    t14 = (t13 * t10);
    t14 = (t14 + 1);
    t22 = (t20 + 12U);
    *((unsigned int *)t22) = t14;

LAB1:    return t0;
LAB3:    t23 = (t1 + 15112);
    t25 = (t12 + 56U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    memcpy(t25, t23, 8U);
    goto LAB2;

LAB4:    t11 = (t1 + 15120);
    t16 = (t12 + 56U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    memcpy(t16, t11, 8U);
    goto LAB2;

LAB5:    t11 = (t1 + 15128);
    t16 = (t12 + 56U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    memcpy(t16, t11, 8U);
    goto LAB2;

LAB6:    t11 = (t1 + 15136);
    t16 = (t12 + 56U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    memcpy(t16, t11, 8U);
    goto LAB2;

LAB7:    t11 = (t1 + 15144);
    t16 = (t12 + 56U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    memcpy(t16, t11, 8U);
    goto LAB2;

LAB8:    t11 = (t1 + 15152);
    t16 = (t12 + 56U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    memcpy(t16, t11, 8U);
    goto LAB2;

LAB9:    t11 = (t1 + 15160);
    t16 = (t12 + 56U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    memcpy(t16, t11, 8U);
    goto LAB2;

LAB10:    t11 = (t1 + 15168);
    t16 = (t12 + 56U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    memcpy(t16, t11, 8U);
    goto LAB2;

LAB11:;
}

unsigned char work_a_0612141369_sub_2159786027_3105409471(char *t1, char *t2)
{
    char t3[128];
    char t4[24];
    char t5[16];
    char t12[8];
    unsigned char t0;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t28;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t3 + 4U);
    t10 = (t1 + 10248);
    t11 = (t7 + 88U);
    *((char **)t11) = t10;
    t13 = (t7 + 56U);
    *((char **)t13) = t12;
    xsi_type_set_default_value(t10, t12, 0);
    t14 = (t7 + 80U);
    *((unsigned int *)t14) = 1U;
    t15 = (t4 + 4U);
    t16 = (t2 != 0);
    if (t16 == 1)
        goto LAB3;

LAB2:    t17 = (t4 + 12U);
    *((char **)t17) = t5;
    t18 = (t1 + 15176);
    t20 = xsi_mem_cmp(t18, t2, 8U);
    if (t20 == 1)
        goto LAB5;

LAB9:    t21 = (t1 + 15184);
    t23 = xsi_mem_cmp(t21, t2, 8U);
    if (t23 == 1)
        goto LAB6;

LAB10:    t24 = (t1 + 15192);
    t26 = xsi_mem_cmp(t24, t2, 8U);
    if (t26 == 1)
        goto LAB7;

LAB11:
LAB8:    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((unsigned char *)t6) = (unsigned char)4;

LAB4:    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t16 = *((unsigned char *)t10);
    t0 = t16;

LAB1:    return t0;
LAB3:    *((char **)t15) = t2;
    goto LAB2;

LAB5:    t27 = (t7 + 56U);
    t28 = *((char **)t27);
    t27 = (t28 + 0);
    *((unsigned char *)t27) = (unsigned char)1;
    goto LAB4;

LAB6:    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((unsigned char *)t6) = (unsigned char)2;
    goto LAB4;

LAB7:    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((unsigned char *)t6) = (unsigned char)3;
    goto LAB4;

LAB12:;
LAB13:;
}

static void work_a_0612141369_3665547200_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(135, ng1);

LAB3:    t1 = (t0 + 9128);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0612141369_3665547200_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(136, ng1);

LAB3:    t1 = (t0 + 9192);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0612141369_3665547200_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(138, ng1);

LAB3:    t1 = (t0 + 9256);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0612141369_3665547200_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(139, ng1);

LAB3:    t1 = (t0 + 9320);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0612141369_3665547200_p_4(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(141, ng1);

LAB3:    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = work_a_0612141369_sub_3754466009_3105409471(t0, t1, t4);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t6 = (t6 * 1U);
    t7 = (8U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 9384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 9032);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t6, 0);
    goto LAB6;

}

static void work_a_0612141369_3665547200_p_5(char *t0)
{
    char t19[16];
    char t20[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB9, &&LAB9, &&LAB9, &&LAB9, &&LAB9, &&LAB8};
    static char *nl1[] = {&&LAB15, &&LAB16, &&LAB17, &&LAB18, &&LAB14};
    static char *nl2[] = {&&LAB23, &&LAB21, &&LAB20, &&LAB22};
    static char *nl3[] = {&&LAB74, &&LAB72, &&LAB73, &&LAB74, &&LAB74, &&LAB74, &&LAB74, &&LAB74};

LAB0:    xsi_set_current_line(149, ng1);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2432U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB69;

LAB70:
LAB3:    t1 = (t0 + 9048);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(150, ng1);
    t3 = (t0 + 6368U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 6368U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((int *)t3) = t6;
    xsi_set_current_line(153, ng1);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(157, ng1);
    t4 = (t0 + 6368U);
    t7 = *((char **)t4);
    t5 = *((int *)t7);
    t8 = (t5 == 1);
    if (t8 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB5;

LAB7:    xsi_set_current_line(187, ng1);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl2) + t2);
    goto **((char **)t1);

LAB8:    xsi_set_current_line(246, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(249, ng1);
    goto LAB5;

LAB10:    xsi_set_current_line(158, ng1);
    t4 = (t0 + 1032U);
    t9 = *((char **)t4);
    t10 = work_a_0612141369_sub_2159786027_3105409471(t0, t9);
    t4 = (t0 + 6248U);
    t11 = *((char **)t4);
    t4 = (t11 + 0);
    *((unsigned char *)t4) = t10;
    xsi_set_current_line(160, ng1);
    t1 = (t0 + 6248U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl1) + t2);
    goto **((char **)t1);

LAB13:    goto LAB11;

LAB14:    xsi_set_current_line(162, ng1);
    t4 = (t0 + 9448);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(163, ng1);
    t1 = (t0 + 9512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB15:    xsi_set_current_line(166, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(167, ng1);
    t1 = (t0 + 9512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB16:    xsi_set_current_line(170, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(171, ng1);
    t1 = (t0 + 9512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB17:    xsi_set_current_line(174, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(175, ng1);
    t1 = (t0 + 9512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB18:    xsi_set_current_line(178, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(179, ng1);
    t1 = (t0 + 9512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB19:    goto LAB5;

LAB20:    xsi_set_current_line(189, ng1);
    t4 = (t0 + 6368U);
    t7 = *((char **)t4);
    t5 = *((int *)t7);
    t8 = (t5 == 2);
    if (t8 != 0)
        goto LAB24;

LAB26:
LAB25:    xsi_set_current_line(193, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 3);
    if (t2 != 0)
        goto LAB27;

LAB29:
LAB28:    xsi_set_current_line(197, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 > 3);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = (unsigned char)0;

LAB35:    if (t2 != 0)
        goto LAB30;

LAB32:
LAB31:    xsi_set_current_line(201, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 8);
    if (t2 != 0)
        goto LAB38;

LAB40:
LAB39:    goto LAB19;

LAB21:    xsi_set_current_line(209, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 2);
    if (t2 != 0)
        goto LAB41;

LAB43:
LAB42:    xsi_set_current_line(213, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 3);
    if (t2 != 0)
        goto LAB44;

LAB46:
LAB45:    xsi_set_current_line(217, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 > 3);
    if (t8 == 1)
        goto LAB50;

LAB51:    t2 = (unsigned char)0;

LAB52:    if (t2 != 0)
        goto LAB47;

LAB49:
LAB48:    xsi_set_current_line(221, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 8);
    if (t2 != 0)
        goto LAB55;

LAB57:
LAB56:    goto LAB19;

LAB22:    xsi_set_current_line(229, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 > 3);
    if (t8 == 1)
        goto LAB61;

LAB62:    t2 = (unsigned char)0;

LAB63:    if (t2 != 0)
        goto LAB58;

LAB60:
LAB59:    xsi_set_current_line(234, ng1);
    t1 = (t0 + 6368U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 8);
    if (t2 != 0)
        goto LAB66;

LAB68:
LAB67:    goto LAB19;

LAB23:    xsi_set_current_line(241, ng1);
    goto LAB19;

LAB24:    xsi_set_current_line(190, ng1);
    t4 = (t0 + 1032U);
    t9 = *((char **)t4);
    t4 = (t0 + 9576);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB25;

LAB27:    xsi_set_current_line(194, ng1);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 9640);
    t7 = (t1 + 56U);
    t9 = *((char **)t7);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB28;

LAB30:    xsi_set_current_line(198, ng1);
    t1 = (t0 + 4712U);
    t7 = *((char **)t1);
    t15 = (31 - 8);
    t16 = (31 - t15);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t7 + t18);
    t9 = (t0 + 1032U);
    t11 = *((char **)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t20 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 23;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t21 = (0 - 23);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t22;
    t14 = (t0 + 14672U);
    t9 = xsi_base_array_concat(t9, t19, t12, (char)97, t1, t20, (char)97, t11, t14, (char)101);
    t22 = (24U + 8U);
    t23 = (32U != t22);
    if (t23 == 1)
        goto LAB36;

LAB37:    t24 = (t0 + 9704);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t9, 32U);
    xsi_driver_first_trans_fast(t24);
    goto LAB31;

LAB33:    t1 = (t0 + 6368U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t10 = (t6 < 8);
    t2 = t10;
    goto LAB35;

LAB36:    xsi_size_not_matching(32U, t22, 0);
    goto LAB37;

LAB38:    xsi_set_current_line(202, ng1);
    t1 = (t0 + 6368U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(204, ng1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 9768);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(205, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB39;

LAB41:    xsi_set_current_line(210, ng1);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 9576);
    t7 = (t1 + 56U);
    t9 = *((char **)t7);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB42;

LAB44:    xsi_set_current_line(214, ng1);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 9640);
    t7 = (t1 + 56U);
    t9 = *((char **)t7);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB45;

LAB47:    xsi_set_current_line(218, ng1);
    t1 = (t0 + 4712U);
    t7 = *((char **)t1);
    t15 = (31 - 8);
    t16 = (31 - t15);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t7 + t18);
    t9 = (t0 + 1032U);
    t11 = *((char **)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t20 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 23;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t21 = (0 - 23);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t22;
    t14 = (t0 + 14672U);
    t9 = xsi_base_array_concat(t9, t19, t12, (char)97, t1, t20, (char)97, t11, t14, (char)101);
    t22 = (24U + 8U);
    t23 = (32U != t22);
    if (t23 == 1)
        goto LAB53;

LAB54:    t24 = (t0 + 9704);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t9, 32U);
    xsi_driver_first_trans_fast(t24);
    goto LAB48;

LAB50:    t1 = (t0 + 6368U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t10 = (t6 < 8);
    t2 = t10;
    goto LAB52;

LAB53:    xsi_size_not_matching(32U, t22, 0);
    goto LAB54;

LAB55:    xsi_set_current_line(222, ng1);
    t1 = (t0 + 6368U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(224, ng1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 9768);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(225, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB56;

LAB58:    xsi_set_current_line(230, ng1);
    t1 = (t0 + 4872U);
    t7 = *((char **)t1);
    t16 = (31 - 31);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t7 + t18);
    t9 = (t0 + 9832);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(231, ng1);
    t1 = (t0 + 4872U);
    t3 = *((char **)t1);
    t5 = (31 - 8);
    t16 = (31 - t5);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t3 + t18);
    t4 = (t0 + 6488U);
    t7 = *((char **)t4);
    t9 = ((IEEE_P_2592010699) + 4024);
    t11 = (t20 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 23;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t6 = (0 - 23);
    t22 = (t6 * -1);
    t22 = (t22 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t22;
    t12 = (t0 + 14880U);
    t4 = xsi_base_array_concat(t4, t19, t9, (char)97, t1, t20, (char)97, t7, t12, (char)101);
    t22 = (24U + 8U);
    t2 = (32U != t22);
    if (t2 == 1)
        goto LAB64;

LAB65:    t13 = (t0 + 9896);
    t14 = (t13 + 56U);
    t24 = *((char **)t14);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t4, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB59;

LAB61:    t1 = (t0 + 6368U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t10 = (t6 < 8);
    t2 = t10;
    goto LAB63;

LAB64:    xsi_size_not_matching(32U, t22, 0);
    goto LAB65;

LAB66:    xsi_set_current_line(235, ng1);
    t1 = (t0 + 6368U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(237, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(238, ng1);
    t1 = (t0 + 9512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB67;

LAB69:    xsi_set_current_line(253, ng1);
    t3 = (t0 + 3752U);
    t4 = *((char **)t3);
    t8 = *((unsigned char *)t4);
    t3 = (char *)((nl3) + t8);
    goto **((char **)t3);

LAB71:    goto LAB3;

LAB72:    xsi_set_current_line(255, ng1);
    t7 = (t0 + 9448);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t7);
    goto LAB71;

LAB73:    xsi_set_current_line(257, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB71;

LAB74:    xsi_set_current_line(260, ng1);
    t1 = (t0 + 9448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB71;

}


extern void work_a_0612141369_3665547200_init()
{
	static char *pe[] = {(void *)work_a_0612141369_3665547200_p_0,(void *)work_a_0612141369_3665547200_p_1,(void *)work_a_0612141369_3665547200_p_2,(void *)work_a_0612141369_3665547200_p_3,(void *)work_a_0612141369_3665547200_p_4,(void *)work_a_0612141369_3665547200_p_5};
	static char *se[] = {(void *)work_a_0612141369_sub_3754466009_3105409471,(void *)work_a_0612141369_sub_2159786027_3105409471};
	xsi_register_didat("work_a_0612141369_3665547200", "isim/Control_module_scheme_test_isim_beh.exe.sim/work/a_0612141369_3665547200.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
