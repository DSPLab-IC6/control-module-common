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
extern char *STD_STANDARD;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);


char *work_p_2297718406_sub_3981253948_689347972(char *t1, char *t2, char *t3, char *t4)
{
    char t5[488];
    char t6[24];
    char t11[16];
    char t31[8];
    char t37[8];
    char t40[16];
    char t46[8];
    char t58[16];
    char t59[16];
    char *t0;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int t25;
    int t26;
    int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    int t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned char t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned char t57;
    unsigned int t60;
    int t61;
    int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    int t66;
    int t67;
    int t68;

LAB0:    t7 = (t4 + 0U);
    t8 = *((int *)t7);
    t9 = (0 - t8);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t10 = (t10 * 1U);
    t12 = (t4 + 0U);
    t13 = *((int *)t12);
    t14 = (t11 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = t13;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - t13);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t15 = (t5 + 4U);
    t18 = ((IEEE_P_2592010699) + 4024);
    t19 = (t15 + 88U);
    *((char **)t19) = t18;
    t20 = (char *)alloca(t10);
    t21 = (t15 + 56U);
    *((char **)t21) = t20;
    xsi_type_set_default_value(t18, t20, t11);
    t22 = (t15 + 64U);
    *((char **)t22) = t11;
    t23 = (t15 + 80U);
    *((unsigned int *)t23) = t10;
    t24 = (t11 + 0U);
    t25 = *((int *)t24);
    t26 = (t25 + 1);
    t27 = (t26 + 8);
    t28 = (t5 + 124U);
    t29 = ((STD_STANDARD) + 384);
    t30 = (t28 + 88U);
    *((char **)t30) = t29;
    t32 = (t28 + 56U);
    *((char **)t32) = t31;
    *((int *)t31) = t27;
    t33 = (t28 + 80U);
    *((unsigned int *)t33) = 4U;
    t34 = (t5 + 244U);
    t35 = ((IEEE_P_2592010699) + 3320);
    t36 = (t34 + 88U);
    *((char **)t36) = t35;
    t38 = (t34 + 56U);
    *((char **)t38) = t37;
    xsi_type_set_default_value(t35, t37, 0);
    t39 = (t34 + 80U);
    *((unsigned int *)t39) = 1U;
    t41 = (t40 + 0U);
    t42 = (t41 + 0U);
    *((int *)t42) = 7;
    t42 = (t41 + 4U);
    *((int *)t42) = 0;
    t42 = (t41 + 8U);
    *((int *)t42) = -1;
    t43 = (0 - 7);
    t17 = (t43 * -1);
    t17 = (t17 + 1);
    t42 = (t41 + 12U);
    *((unsigned int *)t42) = t17;
    t42 = (t5 + 364U);
    t44 = ((IEEE_P_2592010699) + 4024);
    t45 = (t42 + 88U);
    *((char **)t45) = t44;
    t47 = (t42 + 56U);
    *((char **)t47) = t46;
    xsi_type_set_default_value(t44, t46, t40);
    t48 = (t42 + 64U);
    *((char **)t48) = t40;
    t49 = (t42 + 80U);
    *((unsigned int *)t49) = 8U;
    t50 = (t6 + 4U);
    t51 = (t3 != 0);
    if (t51 == 1)
        goto LAB3;

LAB2:    t52 = (t6 + 12U);
    *((char **)t52) = t4;
    t53 = (t15 + 56U);
    t54 = *((char **)t53);
    t53 = (t54 + 0);
    t55 = (t4 + 12U);
    t17 = *((unsigned int *)t55);
    t17 = (t17 * 1U);
    memcpy(t53, t3, t17);

LAB4:    t7 = (t28 + 56U);
    t12 = *((char **)t7);
    t8 = *((int *)t12);
    t51 = (t8 > 8);
    if (t51 != 0)
        goto LAB5;

LAB7:    t7 = (t15 + 56U);
    t12 = *((char **)t7);
    t7 = (t11 + 0U);
    t8 = *((int *)t7);
    t14 = (t11 + 0U);
    t9 = *((int *)t14);
    t10 = (t8 - t9);
    t18 = (t11 + 0U);
    t13 = *((int *)t18);
    t16 = (t13 - 7);
    t19 = (t11 + 4U);
    t25 = *((int *)t19);
    t21 = (t11 + 8U);
    t26 = *((int *)t21);
    xsi_vhdl_check_range_of_slice(t8, t25, t26, t9, t16, -1);
    t17 = (t10 * 1U);
    t56 = (0 + t17);
    t22 = (t12 + t56);
    t23 = (t11 + 0U);
    t27 = *((int *)t23);
    t24 = (t11 + 0U);
    t43 = *((int *)t24);
    t61 = (t43 - 7);
    t62 = (t61 - t27);
    t60 = (t62 * -1);
    t60 = (t60 + 1);
    t64 = (1U * t60);
    t0 = xsi_get_transient_memory(t64);
    memcpy(t0, t22, t64);
    t29 = (t11 + 0U);
    t63 = *((int *)t29);
    t30 = (t11 + 0U);
    t66 = *((int *)t30);
    t67 = (t66 - 7);
    t32 = (t2 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = t63;
    t33 = (t32 + 4U);
    *((int *)t33) = t67;
    t33 = (t32 + 8U);
    *((int *)t33) = -1;
    t68 = (t67 - t63);
    t65 = (t68 * -1);
    t65 = (t65 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t65;

LAB1:    return t0;
LAB3:    *((char **)t50) = t3;
    goto LAB2;

LAB5:    t7 = (t15 + 56U);
    t14 = *((char **)t7);
    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t18 = (t11 + 0U);
    t13 = *((int *)t18);
    t19 = (t11 + 8U);
    t16 = *((int *)t19);
    t25 = (t9 - t13);
    t10 = (t25 * t16);
    t17 = (1U * t10);
    t56 = (0 + t17);
    t21 = (t14 + t56);
    t57 = *((unsigned char *)t21);
    t22 = (t34 + 56U);
    t23 = *((char **)t22);
    t22 = (t23 + 0);
    *((unsigned char *)t22) = t57;
    t7 = (t15 + 56U);
    t12 = *((char **)t7);
    t7 = (t11 + 0U);
    t8 = *((int *)t7);
    t14 = (t11 + 0U);
    t9 = *((int *)t14);
    t13 = (t9 - 1);
    t10 = (t8 - t13);
    t18 = (t11 + 4U);
    t16 = *((int *)t18);
    t19 = (t11 + 8U);
    t25 = *((int *)t19);
    xsi_vhdl_check_range_of_slice(t8, t16, t25, t13, 0, -1);
    t17 = (t10 * 1U);
    t56 = (0 + t17);
    t21 = (t12 + t56);
    t23 = ((IEEE_P_2592010699) + 4024);
    t24 = (t11 + 0U);
    t26 = *((int *)t24);
    t27 = (t26 - 1);
    t29 = (t59 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = t27;
    t30 = (t29 + 4U);
    *((int *)t30) = 0;
    t30 = (t29 + 8U);
    *((int *)t30) = -1;
    t43 = (0 - t27);
    t60 = (t43 * -1);
    t60 = (t60 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t60;
    t22 = xsi_base_array_concat(t22, t58, t23, (char)97, t21, t59, (char)99, (unsigned char)2, (char)101);
    t30 = (t15 + 56U);
    t32 = *((char **)t30);
    t30 = (t32 + 0);
    t33 = (t11 + 0U);
    t61 = *((int *)t33);
    t62 = (t61 - 1);
    t63 = (0 - t62);
    t60 = (t63 * -1);
    t60 = (t60 + 1);
    t64 = (1U * t60);
    t65 = (t64 + 1U);
    memcpy(t30, t22, t65);
    t7 = (t28 + 56U);
    t12 = *((char **)t7);
    t8 = *((int *)t12);
    t9 = (t8 - 1);
    t7 = (t28 + 56U);
    t14 = *((char **)t7);
    t7 = (t14 + 0);
    *((int *)t7) = t9;
    t7 = (t34 + 56U);
    t12 = *((char **)t7);
    t51 = *((unsigned char *)t12);
    t57 = (t51 == (unsigned char)3);
    if (t57 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB4;

LAB6:;
LAB8:    t7 = (t15 + 56U);
    t14 = *((char **)t7);
    t7 = (t11 + 0U);
    t8 = *((int *)t7);
    t18 = (t11 + 0U);
    t9 = *((int *)t18);
    t10 = (t8 - t9);
    t19 = (t11 + 0U);
    t13 = *((int *)t19);
    t16 = (t13 - 7);
    t21 = (t11 + 4U);
    t25 = *((int *)t21);
    t22 = (t11 + 8U);
    t26 = *((int *)t22);
    xsi_vhdl_check_range_of_slice(t8, t25, t26, t9, t16, -1);
    t17 = (t10 * 1U);
    t56 = (0 + t17);
    t23 = (t14 + t56);
    t24 = (t42 + 56U);
    t29 = *((char **)t24);
    t24 = (t29 + 0);
    t30 = (t11 + 0U);
    t27 = *((int *)t30);
    t32 = (t11 + 0U);
    t43 = *((int *)t32);
    t61 = (t43 - 7);
    t62 = (t61 - t27);
    t60 = (t62 * -1);
    t60 = (t60 + 1);
    t64 = (1U * t60);
    memcpy(t24, t23, t64);
    t7 = (t42 + 56U);
    t12 = *((char **)t7);
    t7 = (t1 + 1168U);
    t14 = *((char **)t7);
    t7 = (t1 + 3584U);
    t18 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t58, t12, t40, t14, t7);
    t19 = (t15 + 56U);
    t21 = *((char **)t19);
    t19 = (t11 + 0U);
    t8 = *((int *)t19);
    t22 = (t11 + 0U);
    t9 = *((int *)t22);
    t10 = (t8 - t9);
    t23 = (t11 + 0U);
    t13 = *((int *)t23);
    t16 = (t13 - 7);
    t24 = (t11 + 4U);
    t25 = *((int *)t24);
    t29 = (t11 + 8U);
    t26 = *((int *)t29);
    xsi_vhdl_check_range_of_slice(t8, t25, t26, t9, t16, -1);
    t17 = (t10 * 1U);
    t56 = (0 + t17);
    t30 = (t21 + t56);
    t32 = (t58 + 12U);
    t60 = *((unsigned int *)t32);
    t64 = (1U * t60);
    memcpy(t30, t18, t64);
    goto LAB9;

LAB11:;
}


extern void work_p_2297718406_init()
{
	static char *se[] = {(void *)work_p_2297718406_sub_3981253948_689347972};
	xsi_register_didat("work_p_2297718406", "isim/CRC8_test_isim_beh.exe.sim/work/p_2297718406.didat");
	xsi_register_subprogram_executes(se);
}
