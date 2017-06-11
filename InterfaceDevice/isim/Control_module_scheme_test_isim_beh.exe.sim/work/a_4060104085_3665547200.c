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
static const char *ng0 = "I:/diplom2017/InterfaceDevice/SPI_master.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4060104085_3665547200_p_0(char *t0)
{
    char t20[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    unsigned char t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    static char *nl0[] = {&&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6512);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 10816U);
    t8 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t2, t1);
    t4 = (t0 + 6576);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = t8;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)2);
    if (t10 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6432);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 6640);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 6704);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = xsi_get_transient_memory(15U);
    memset(t1, 0, 15U);
    t2 = t1;
    memset(t2, (unsigned char)3, 15U);
    t4 = (t0 + 6768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 15U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(77, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)3, 8U);
    t4 = (t0 + 6832);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(78, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)3, 8U);
    t4 = (t0 + 6896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(79, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t4 = (t0 + 6960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 7024);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t2 = (char *)((nl0) + t10);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(85, ng0);
    t5 = (t0 + 6640);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 6704);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(87, ng0);
    t1 = xsi_get_transient_memory(15U);
    memset(t1, 0, 15U);
    t2 = t1;
    memset(t2, (unsigned char)3, 15U);
    t4 = (t0 + 6768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 15U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)3);
    if (t10 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 7024);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB7;

LAB9:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 6640);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t12 = (t8 - 14);
    t13 = (t12 * -1);
    t14 = (1 * t13);
    t15 = (0U + t14);
    t1 = (t0 + 6768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, t15, 1, 0LL);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t3 = (t8 == t12);
    if (t3 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t12 = (t8 + 1);
    t1 = (t0 + 7216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t12;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(146, ng0);
    t1 = (t0 + 7024);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB20:    goto LAB7;

LAB10:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 6640);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t3 = (t8 < 15);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 7088);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);

LAB14:    xsi_set_current_line(98, ng0);
    t3 = (1 == 0);
    if (t3 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 7152);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 7216);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 1;
    xsi_driver_first_trans_fast(t1);

LAB17:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 7280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(107, ng0);
    t3 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, (unsigned char)2);
    t1 = (t0 + 7344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6896);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 7408);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 7024);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 4232U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t1 = (t0 + 7088);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = t12;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 7152);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 7216);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 7216);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = 1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t12 = (t8 + 1);
    t1 = (t0 + 7408);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t12;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 7344);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)3);
    if (t10 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t8 = (7 - 1);
    t13 = (7 - t8);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t3 = *((unsigned char *)t5);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t21 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 6;
    t9 = (t7 + 4U);
    *((int *)t9) = 0;
    t9 = (t7 + 8U);
    *((int *)t9) = -1;
    t12 = (0 - 6);
    t17 = (t12 * -1);
    t17 = (t17 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t17;
    t4 = xsi_base_array_concat(t4, t20, t6, (char)97, t1, t21, (char)99, t3, (char)101);
    t17 = (7U + 1U);
    t10 = (8U != t17);
    if (t10 == 1)
        goto LAB27;

LAB28:    t9 = (t0 + 6832);
    t11 = (t9 + 56U);
    t24 = *((char **)t11);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t4, 8U);
    xsi_driver_first_trans_fast(t9);

LAB23:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t12 = (8 * 2);
    t3 = (t8 < t12);
    if (t3 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(138, ng0);
    t1 = (t0 + 6640);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(139, ng0);
    t1 = (t0 + 6704);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(140, ng0);
    t1 = xsi_get_transient_memory(15U);
    memset(t1, 0, 15U);
    t2 = t1;
    memset(t2, (unsigned char)3, 15U);
    t4 = (t0 + 6768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 15U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(141, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 6960);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(142, ng0);
    t1 = (t0 + 7024);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB30:    goto LAB20;

LAB22:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 4072U);
    t4 = *((char **)t1);
    t8 = (7 - 7);
    t13 = (t8 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t4 + t15);
    t16 = *((unsigned char *)t1);
    t5 = (t0 + 6704);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t16;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t8 = (7 - 1);
    t13 = (7 - t8);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t4 = (t0 + 4072U);
    t5 = *((char **)t4);
    t12 = (7 - 7);
    t17 = (t12 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t4 = (t5 + t19);
    t3 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t21 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 6;
    t11 = (t9 + 4U);
    *((int *)t11) = 0;
    t11 = (t9 + 8U);
    *((int *)t11) = -1;
    t22 = (0 - 6);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t23;
    t6 = xsi_base_array_concat(t6, t20, t7, (char)97, t1, t21, (char)99, t3, (char)101);
    t23 = (7U + 1U);
    t10 = (8U != t23);
    if (t10 == 1)
        goto LAB25;

LAB26:    t11 = (t0 + 6896);
    t24 = (t11 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t6, 8U);
    xsi_driver_first_trans_delta(t11, 0U, 8U, 0LL);
    goto LAB23;

LAB25:    xsi_size_not_matching(8U, t23, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(8U, t17, 0);
    goto LAB28;

LAB29:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t10 = *((unsigned char *)t4);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t1 = (t0 + 7280);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t16;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 7024);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB30;

}


extern void work_a_4060104085_3665547200_init()
{
	static char *pe[] = {(void *)work_a_4060104085_3665547200_p_0};
	xsi_register_didat("work_a_4060104085_3665547200", "isim/Control_module_scheme_test_isim_beh.exe.sim/work/a_4060104085_3665547200.didat");
	xsi_register_executes(pe);
}
