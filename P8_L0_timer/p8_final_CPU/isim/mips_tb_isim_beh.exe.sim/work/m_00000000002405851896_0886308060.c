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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/works/computer organization/p8/P8_L0_timer/p8_final_CPU/ALU.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};
static int ng9[] = {8, 0};
static int ng10[] = {9, 0};
static int ng11[] = {10, 0};
static int ng12[] = {1, 0, 0, 0};
static int ng13[] = {0, 0, 0, 0};
static int ng14[] = {11, 0};
static int ng15[] = {12, 0};
static int ng16[] = {13, 0};
static int ng17[] = {14, 0};
static int ng18[] = {15, 0};
static int ng19[] = {16, 0};
static int ng20[] = {24, 0};



static void Cont_30_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 4294967295U);
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 4294967295U);
    t14 = (t0 + 4520);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t3, 8);
    xsi_driver_vfirst_trans(t14, 0, 31);
    t19 = (t0 + 4392);
    *((int *)t19) = 1;

LAB1:    return;
}

static void Cont_32_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = (t0 + 4584);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 31U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 4);
    t25 = (t0 + 4408);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Always_33_2(char *t0)
{
    char t7[16];
    char t11[8];
    char t19[16];
    char t23[8];
    char t31[16];
    char t76[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 4424);
    *((int *)t2) = 1;
    t3 = (t0 + 3856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB39;

LAB40:
LAB42:
LAB41:    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB43:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);
    t8 = (t0 + 1048U);
    t9 = *((char **)t8);
    t8 = (t0 + 1048U);
    t10 = *((char **)t8);
    memset(t11, 0, 8);
    t8 = (t11 + 4);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 31);
    t15 = (t14 & 1);
    *((unsigned int *)t11) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 >> 31);
    t18 = (t17 & 1);
    *((unsigned int *)t8) = t18;
    xsi_vlogtype_concat(t7, 33, 33, 2U, t11, 1, t9, 32);
    t20 = (t0 + 1208U);
    t21 = *((char **)t20);
    t20 = (t0 + 1208U);
    t22 = *((char **)t20);
    memset(t23, 0, 8);
    t20 = (t23 + 4);
    t24 = (t22 + 4);
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t23) = t27;
    t28 = *((unsigned int *)t24);
    t29 = (t28 >> 31);
    t30 = (t29 & 1);
    *((unsigned int *)t20) = t30;
    xsi_vlogtype_concat(t19, 33, 33, 2U, t23, 1, t21, 32);
    xsi_vlog_unsigned_add(t31, 33, t7, 33, t19, 33);
    t32 = (t0 + 2408);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 33);
    goto LAB43;

LAB9:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    xsi_vlog_unsigned_add(t7, 33, t4, 32, t8, 32);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 33);
    goto LAB43;

LAB11:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1048U);
    t8 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4);
    t9 = (t8 + 4);
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 31);
    t15 = (t14 & 1);
    *((unsigned int *)t11) = t15;
    t16 = *((unsigned int *)t9);
    t17 = (t16 >> 31);
    t18 = (t17 & 1);
    *((unsigned int *)t3) = t18;
    xsi_vlogtype_concat(t7, 33, 33, 2U, t11, 1, t4, 32);
    t10 = (t0 + 1208U);
    t12 = *((char **)t10);
    t10 = (t0 + 1208U);
    t20 = *((char **)t10);
    memset(t23, 0, 8);
    t10 = (t23 + 4);
    t21 = (t20 + 4);
    t25 = *((unsigned int *)t20);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t23) = t27;
    t28 = *((unsigned int *)t21);
    t29 = (t28 >> 31);
    t30 = (t29 & 1);
    *((unsigned int *)t10) = t30;
    xsi_vlogtype_concat(t19, 33, 33, 2U, t23, 1, t12, 32);
    xsi_vlog_unsigned_minus(t31, 33, t7, 33, t19, 33);
    t22 = (t0 + 2408);
    xsi_vlogvar_assign_value(t22, t31, 0, 0, 33);
    goto LAB43;

LAB13:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    xsi_vlog_unsigned_minus(t7, 33, t4, 32, t8, 32);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 33);
    goto LAB43;

LAB15:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 2008U);
    t8 = *((char **)t3);
    xsi_vlog_unsigned_lshift(t7, 33, t4, 32, t8, 5);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 33);
    goto LAB43;

LAB17:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 2008U);
    t8 = *((char **)t3);
    xsi_vlog_unsigned_rshift(t7, 33, t4, 32, t8, 5);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 33);
    goto LAB43;

LAB19:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 2008U);
    t8 = *((char **)t3);
    memset(t23, 0, 8);
    xsi_vlog_signed_arith_rshift(t23, 32, t4, 32, t8, 5);
    xsi_vlogtype_sign_extend(t7, 33, t23, 32);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 33);
    goto LAB43;

LAB21:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    t13 = 0;

LAB47:    t14 = (t13 < 1);
    if (t14 == 1)
        goto LAB48;

LAB49:    t13 = 1;

LAB50:    t58 = (t13 < 2);
    if (t58 == 1)
        goto LAB51;

LAB56:    t69 = (t0 + 2408);
    xsi_vlogvar_assign_value(t69, t7, 0, 0, 33);
    goto LAB43;

LAB23:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    t13 = 0;

LAB60:    t14 = (t13 < 1);
    if (t14 == 1)
        goto LAB61;

LAB62:    t13 = 1;

LAB63:    t54 = (t13 < 2);
    if (t54 == 1)
        goto LAB64;

LAB69:    t73 = (t0 + 2408);
    xsi_vlogvar_assign_value(t73, t7, 0, 0, 33);
    goto LAB43;

LAB25:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    t13 = 0;

LAB73:    t14 = (t13 < 1);
    if (t14 == 1)
        goto LAB74;

LAB75:    t13 = 1;

LAB76:    t38 = (t13 < 2);
    if (t38 == 1)
        goto LAB77;

LAB82:    t65 = (t0 + 2408);
    xsi_vlogvar_assign_value(t65, t7, 0, 0, 33);
    goto LAB43;

LAB27:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    memset(t76, 0, 8);
    xsi_vlog_signed_less(t76, 32, t4, 32, t8, 32);
    memset(t11, 0, 8);
    t3 = (t76 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t76);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t3) != 0)
        goto LAB85;

LAB86:    t10 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t10);
    t26 = (t18 || t25);
    if (t26 > 0)
        goto LAB87;

LAB88:    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t10) > 0)
        goto LAB91;

LAB92:    if (*((unsigned int *)t11) > 0)
        goto LAB93;

LAB94:    memcpy(t7, t20, 16);

LAB95:    t21 = (t0 + 2408);
    xsi_vlogvar_assign_value(t21, t7, 0, 0, 33);
    goto LAB43;

LAB29:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    memset(t23, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB97;

LAB96:    t9 = (t8 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB97;

LAB100:    if (*((unsigned int *)t4) < *((unsigned int *)t8))
        goto LAB98;

LAB99:    memset(t11, 0, 8);
    t12 = (t23 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t23);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB101;

LAB102:    if (*((unsigned int *)t12) != 0)
        goto LAB103;

LAB104:    t21 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t21);
    t26 = (t18 || t25);
    if (t26 > 0)
        goto LAB105;

LAB106:    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t21);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB107;

LAB108:    if (*((unsigned int *)t21) > 0)
        goto LAB109;

LAB110:    if (*((unsigned int *)t11) > 0)
        goto LAB111;

LAB112:    memcpy(t7, t24, 16);

LAB113:    t32 = (t0 + 2408);
    xsi_vlogvar_assign_value(t32, t7, 0, 0, 33);
    goto LAB43;

LAB31:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t8 = *((char **)t3);
    xsi_vlog_unsigned_lshift(t7, 33, t4, 32, t8, 5);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 33);
    goto LAB43;

LAB33:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t8 = *((char **)t3);
    xsi_vlog_unsigned_rshift(t7, 33, t4, 32, t8, 5);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 33);
    goto LAB43;

LAB35:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t8 = *((char **)t3);
    memset(t23, 0, 8);
    xsi_vlog_signed_arith_rshift(t23, 32, t4, 32, t8, 5);
    xsi_vlogtype_sign_extend(t7, 33, t23, 32);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t7, 0, 0, 33);
    goto LAB43;

LAB37:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng19)));
    xsi_vlog_unsigned_lshift(t7, 33, t4, 32, t3, 32);
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 33);
    goto LAB43;

LAB39:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t8 = *((char **)t3);
    t13 = 0;

LAB117:    t14 = (t13 < 1);
    if (t14 == 1)
        goto LAB118;

LAB119:    t13 = 1;

LAB120:    t54 = (t13 < 2);
    if (t54 == 1)
        goto LAB121;

LAB126:    xsi_vlogtype_unsigned_bit_neg(t7, 33, t19, 33);
    t73 = (t0 + 2408);
    xsi_vlogvar_assign_value(t73, t7, 0, 0, 33);
    goto LAB43;

LAB44:    t36 = (t13 * 8);
    t37 = *((unsigned int *)t10);
    t38 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t37 | t38);
    t22 = (t4 + t36);
    t39 = (t36 + 4);
    t24 = (t4 + t39);
    t32 = (t8 + t36);
    t40 = (t36 + 4);
    t41 = (t8 + t40);
    t42 = *((unsigned int *)t22);
    t43 = (~(t42));
    t44 = *((unsigned int *)t24);
    t45 = (~(t44));
    t46 = *((unsigned int *)t32);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t54 & t52);
    t55 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t55 & t53);
    t56 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t56 & t52);
    t57 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t57 & t53);

LAB46:    t13 = (t13 + 1);
    goto LAB47;

LAB45:    goto LAB46;

LAB48:    t15 = (t13 * 8);
    t3 = (t4 + t15);
    t9 = (t8 + t15);
    t10 = (t7 + t15);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t9);
    t18 = (t16 & t17);
    *((unsigned int *)t10) = t18;
    t25 = (t13 * 8);
    t26 = (t25 + 4);
    t12 = (t4 + t26);
    t27 = (t25 + 4);
    t20 = (t8 + t27);
    t28 = (t25 + 4);
    t21 = (t7 + t28);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t20);
    t33 = (t29 | t30);
    *((unsigned int *)t21) = t33;
    t34 = *((unsigned int *)t21);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB44;
    else
        goto LAB45;

LAB51:    t59 = (t13 * 8);
    t60 = (t7 + t59);
    *((unsigned int *)t60) = 0;
    t61 = (t59 + 4);
    t62 = (t7 + t61);
    *((unsigned int *)t62) = 0;
    t63 = (t13 < 1);
    if (t63 == 1)
        goto LAB52;

LAB54:    t66 = (t13 < 1);
    if (t66 == 1)
        goto LAB53;

LAB55:    t13 = (t13 + 1);
    goto LAB50;

LAB52:    t64 = (t59 + 4);
    t65 = (t4 + t64);
    *((unsigned int *)t60) = *((unsigned int *)t65);
    *((unsigned int *)t62) = *((unsigned int *)t65);
    goto LAB55;

LAB53:    t67 = (t59 + 4);
    t68 = (t8 + t67);
    *((unsigned int *)t60) = *((unsigned int *)t68);
    *((unsigned int *)t62) = *((unsigned int *)t68);
    goto LAB55;

LAB57:    t36 = (t13 * 8);
    t37 = *((unsigned int *)t10);
    t38 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t37 | t38);
    t22 = (t4 + t36);
    t39 = (t36 + 4);
    t24 = (t4 + t39);
    t32 = (t8 + t36);
    t40 = (t36 + 4);
    t41 = (t8 + t40);
    t42 = *((unsigned int *)t24);
    t43 = (~(t42));
    t44 = *((unsigned int *)t22);
    t50 = (t44 & t43);
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t32);
    t51 = (t47 & t46);
    t48 = (~(t50));
    t49 = (~(t51));
    t52 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t52 & t48);
    t53 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t53 & t49);

LAB59:    t13 = (t13 + 1);
    goto LAB60;

LAB58:    goto LAB59;

LAB61:    t15 = (t13 * 8);
    t3 = (t4 + t15);
    t9 = (t8 + t15);
    t10 = (t7 + t15);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t9);
    t18 = (t16 | t17);
    *((unsigned int *)t10) = t18;
    t25 = (t13 * 8);
    t26 = (t25 + 4);
    t12 = (t4 + t26);
    t27 = (t25 + 4);
    t20 = (t8 + t27);
    t28 = (t25 + 4);
    t21 = (t7 + t28);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t20);
    t33 = (t29 | t30);
    *((unsigned int *)t21) = t33;
    t34 = *((unsigned int *)t21);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB57;
    else
        goto LAB58;

LAB64:    t55 = (t13 * 8);
    t60 = (t7 + t55);
    *((unsigned int *)t60) = 0;
    t56 = (t55 + 4);
    t62 = (t7 + t56);
    *((unsigned int *)t62) = 0;
    t57 = (t13 < 1);
    if (t57 == 1)
        goto LAB65;

LAB67:    t64 = (t13 < 1);
    if (t64 == 1)
        goto LAB66;

LAB68:    t13 = (t13 + 1);
    goto LAB63;

LAB65:    t65 = (t4 + t55);
    t58 = (t55 + 4);
    t68 = (t4 + t58);
    t59 = *((unsigned int *)t65);
    t61 = *((unsigned int *)t68);
    t63 = (t59 | t61);
    *((unsigned int *)t60) = t63;
    *((unsigned int *)t62) = *((unsigned int *)t68);
    goto LAB68;

LAB66:    t69 = (t8 + t55);
    t66 = (t55 + 4);
    t70 = (t8 + t66);
    t67 = *((unsigned int *)t69);
    t71 = *((unsigned int *)t70);
    t72 = (t67 | t71);
    *((unsigned int *)t60) = t72;
    *((unsigned int *)t62) = *((unsigned int *)t70);
    goto LAB68;

LAB70:    t36 = *((unsigned int *)t10);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t36 | t37);

LAB72:    t13 = (t13 + 1);
    goto LAB73;

LAB71:    goto LAB72;

LAB74:    t15 = (t13 * 8);
    t3 = (t4 + t15);
    t9 = (t8 + t15);
    t10 = (t7 + t15);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t9);
    t18 = (t16 ^ t17);
    *((unsigned int *)t10) = t18;
    t25 = (t13 * 8);
    t26 = (t25 + 4);
    t12 = (t4 + t26);
    t27 = (t25 + 4);
    t20 = (t8 + t27);
    t28 = (t25 + 4);
    t21 = (t7 + t28);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t20);
    t33 = (t29 | t30);
    *((unsigned int *)t21) = t33;
    t34 = *((unsigned int *)t21);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB70;
    else
        goto LAB71;

LAB77:    t39 = (t13 * 8);
    t22 = (t7 + t39);
    *((unsigned int *)t22) = 0;
    t40 = (t39 + 4);
    t24 = (t7 + t40);
    *((unsigned int *)t24) = 0;
    t42 = (t13 < 1);
    if (t42 == 1)
        goto LAB78;

LAB80:    t47 = (t13 < 1);
    if (t47 == 1)
        goto LAB79;

LAB81:    t13 = (t13 + 1);
    goto LAB76;

LAB78:    t32 = (t4 + t39);
    t43 = (t39 + 4);
    t41 = (t4 + t43);
    t44 = *((unsigned int *)t32);
    t45 = *((unsigned int *)t41);
    t46 = (t44 | t45);
    *((unsigned int *)t22) = t46;
    *((unsigned int *)t24) = *((unsigned int *)t41);
    goto LAB81;

LAB79:    t60 = (t8 + t39);
    t48 = (t39 + 4);
    t62 = (t8 + t48);
    t49 = *((unsigned int *)t60);
    t52 = *((unsigned int *)t62);
    t53 = (t49 | t52);
    *((unsigned int *)t22) = t53;
    *((unsigned int *)t24) = *((unsigned int *)t62);
    goto LAB81;

LAB83:    *((unsigned int *)t11) = 1;
    goto LAB86;

LAB85:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB86;

LAB87:    t12 = ((char*)((ng12)));
    goto LAB88;

LAB89:    t20 = ((char*)((ng13)));
    goto LAB90;

LAB91:    xsi_vlog_unsigned_bit_combine(t7, 33, t12, 33, t20, 33);
    goto LAB95;

LAB93:    memcpy(t7, t12, 16);
    goto LAB95;

LAB97:    t10 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB99;

LAB98:    *((unsigned int *)t23) = 1;
    goto LAB99;

LAB101:    *((unsigned int *)t11) = 1;
    goto LAB104;

LAB103:    t20 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB104;

LAB105:    t22 = ((char*)((ng12)));
    goto LAB106;

LAB107:    t24 = ((char*)((ng13)));
    goto LAB108;

LAB109:    xsi_vlog_unsigned_bit_combine(t7, 33, t22, 33, t24, 33);
    goto LAB113;

LAB111:    memcpy(t7, t22, 16);
    goto LAB113;

LAB114:    t36 = (t13 * 8);
    t37 = *((unsigned int *)t10);
    t38 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t37 | t38);
    t22 = (t4 + t36);
    t39 = (t36 + 4);
    t24 = (t4 + t39);
    t32 = (t8 + t36);
    t40 = (t36 + 4);
    t41 = (t8 + t40);
    t42 = *((unsigned int *)t24);
    t43 = (~(t42));
    t44 = *((unsigned int *)t22);
    t50 = (t44 & t43);
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t32);
    t51 = (t47 & t46);
    t48 = (~(t50));
    t49 = (~(t51));
    t52 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t52 & t48);
    t53 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t53 & t49);

LAB116:    t13 = (t13 + 1);
    goto LAB117;

LAB115:    goto LAB116;

LAB118:    t15 = (t13 * 8);
    t3 = (t4 + t15);
    t9 = (t8 + t15);
    t10 = (t19 + t15);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t9);
    t18 = (t16 | t17);
    *((unsigned int *)t10) = t18;
    t25 = (t13 * 8);
    t26 = (t25 + 4);
    t12 = (t4 + t26);
    t27 = (t25 + 4);
    t20 = (t8 + t27);
    t28 = (t25 + 4);
    t21 = (t19 + t28);
    t29 = *((unsigned int *)t12);
    t30 = *((unsigned int *)t20);
    t33 = (t29 | t30);
    *((unsigned int *)t21) = t33;
    t34 = *((unsigned int *)t21);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB114;
    else
        goto LAB115;

LAB121:    t55 = (t13 * 8);
    t60 = (t19 + t55);
    *((unsigned int *)t60) = 0;
    t56 = (t55 + 4);
    t62 = (t19 + t56);
    *((unsigned int *)t62) = 0;
    t57 = (t13 < 1);
    if (t57 == 1)
        goto LAB122;

LAB124:    t64 = (t13 < 1);
    if (t64 == 1)
        goto LAB123;

LAB125:    t13 = (t13 + 1);
    goto LAB120;

LAB122:    t65 = (t4 + t55);
    t58 = (t55 + 4);
    t68 = (t4 + t58);
    t59 = *((unsigned int *)t65);
    t61 = *((unsigned int *)t68);
    t63 = (t59 | t61);
    *((unsigned int *)t60) = t63;
    *((unsigned int *)t62) = *((unsigned int *)t68);
    goto LAB125;

LAB123:    t69 = (t8 + t55);
    t66 = (t55 + 4);
    t70 = (t8 + t66);
    t67 = *((unsigned int *)t69);
    t71 = *((unsigned int *)t70);
    t72 = (t67 | t71);
    *((unsigned int *)t60) = t72;
    *((unsigned int *)t62) = *((unsigned int *)t70);
    goto LAB125;

}

static void Cont_56_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t22[8];
    char t37[8];
    char t53[8];
    char t61[8];
    char t100[8];
    char t104[8];
    char t116[8];
    char t126[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t101;
    char *t102;
    char *t103;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    char *t115;
    char *t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    char *t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    char *t156;
    char *t157;
    char *t158;
    char *t159;
    char *t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    unsigned int t168;
    unsigned int t169;
    char *t170;

LAB0:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    memcpy(t61, t22, 8);

LAB14:    memset(t4, 0, 8);
    t89 = (t61 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t61);
    t93 = (t92 & t91);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t89) != 0)
        goto LAB28;

LAB29:    t96 = (t4 + 4);
    t97 = *((unsigned int *)t4);
    t98 = *((unsigned int *)t96);
    t99 = (t97 || t98);
    if (t99 > 0)
        goto LAB30;

LAB31:    t152 = *((unsigned int *)t4);
    t153 = (~(t152));
    t154 = *((unsigned int *)t96);
    t155 = (t153 || t154);
    if (t155 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t96) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t4) > 0)
        goto LAB36;

LAB37:    memcpy(t3, t156, 8);

LAB38:    t157 = (t0 + 4648);
    t158 = (t157 + 56U);
    t159 = *((char **)t158);
    t160 = (t159 + 56U);
    t161 = *((char **)t160);
    memset(t161, 0, 8);
    t162 = 1U;
    t163 = t162;
    t164 = (t3 + 4);
    t165 = *((unsigned int *)t3);
    t162 = (t162 & t165);
    t166 = *((unsigned int *)t164);
    t163 = (t163 & t166);
    t167 = (t161 + 4);
    t168 = *((unsigned int *)t161);
    *((unsigned int *)t161) = (t168 | t162);
    t169 = *((unsigned int *)t167);
    *((unsigned int *)t167) = (t169 | t163);
    xsi_driver_vfirst_trans(t157, 0, 0);
    t170 = (t0 + 4440);
    *((int *)t170) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t35 = (t0 + 1528U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng3)));
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = (t35 + 4);
    t40 = *((unsigned int *)t36);
    t41 = *((unsigned int *)t35);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t38);
    t44 = *((unsigned int *)t39);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t38);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB18;

LAB15:    if (t49 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t37) = 1;

LAB18:    memset(t53, 0, 8);
    t54 = (t37 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t37);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t54) != 0)
        goto LAB21;

LAB22:    t62 = *((unsigned int *)t22);
    t63 = *((unsigned int *)t53);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t65 = (t22 + 4);
    t66 = (t53 + 4);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t65);
    t69 = *((unsigned int *)t66);
    t70 = (t68 | t69);
    *((unsigned int *)t67) = t70;
    t71 = *((unsigned int *)t67);
    t72 = (t71 != 0);
    if (t72 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB14;

LAB17:    t52 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t53) = 1;
    goto LAB22;

LAB21:    t60 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB22;

LAB23:    t73 = *((unsigned int *)t61);
    t74 = *((unsigned int *)t67);
    *((unsigned int *)t61) = (t73 | t74);
    t75 = (t22 + 4);
    t76 = (t53 + 4);
    t77 = *((unsigned int *)t75);
    t78 = (~(t77));
    t79 = *((unsigned int *)t22);
    t80 = (t79 & t78);
    t81 = *((unsigned int *)t76);
    t82 = (~(t81));
    t83 = *((unsigned int *)t53);
    t84 = (t83 & t82);
    t85 = (~(t80));
    t86 = (~(t84));
    t87 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t87 & t85);
    t88 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t88 & t86);
    goto LAB25;

LAB26:    *((unsigned int *)t4) = 1;
    goto LAB29;

LAB28:    t95 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t95) = 1;
    goto LAB29;

LAB30:    t101 = (t0 + 2408);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    memset(t104, 0, 8);
    t105 = (t104 + 4);
    t106 = (t103 + 4);
    t107 = *((unsigned int *)t103);
    t108 = (t107 >> 31);
    t109 = (t108 & 1);
    *((unsigned int *)t104) = t109;
    t110 = *((unsigned int *)t106);
    t111 = (t110 >> 31);
    t112 = (t111 & 1);
    *((unsigned int *)t105) = t112;
    t113 = (t0 + 2408);
    t114 = (t113 + 56U);
    t115 = *((char **)t114);
    memset(t116, 0, 8);
    t117 = (t116 + 4);
    t118 = (t115 + 8);
    t119 = (t115 + 12);
    t120 = *((unsigned int *)t118);
    t121 = (t120 >> 0);
    t122 = (t121 & 1);
    *((unsigned int *)t116) = t122;
    t123 = *((unsigned int *)t119);
    t124 = (t123 >> 0);
    t125 = (t124 & 1);
    *((unsigned int *)t117) = t125;
    memset(t126, 0, 8);
    t127 = (t104 + 4);
    t128 = (t116 + 4);
    t129 = *((unsigned int *)t104);
    t130 = *((unsigned int *)t116);
    t131 = (t129 ^ t130);
    t132 = *((unsigned int *)t127);
    t133 = *((unsigned int *)t128);
    t134 = (t132 ^ t133);
    t135 = (t131 | t134);
    t136 = *((unsigned int *)t127);
    t137 = *((unsigned int *)t128);
    t138 = (t136 | t137);
    t139 = (~(t138));
    t140 = (t135 & t139);
    if (t140 != 0)
        goto LAB42;

LAB39:    if (t138 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t126) = 1;

LAB42:    memset(t100, 0, 8);
    t142 = (t100 + 4);
    t143 = (t126 + 4);
    t144 = *((unsigned int *)t126);
    t145 = (~(t144));
    *((unsigned int *)t100) = t145;
    *((unsigned int *)t142) = 0;
    if (*((unsigned int *)t143) != 0)
        goto LAB44;

LAB43:    t150 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t150 & 4294967295U);
    t151 = *((unsigned int *)t142);
    *((unsigned int *)t142) = (t151 & 4294967295U);
    goto LAB31;

LAB32:    t156 = ((char*)((ng1)));
    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t3, 32, t100, 32, t156, 32);
    goto LAB38;

LAB36:    memcpy(t3, t100, 8);
    goto LAB38;

LAB41:    t141 = (t126 + 4);
    *((unsigned int *)t126) = 1;
    *((unsigned int *)t141) = 1;
    goto LAB42;

LAB44:    t146 = *((unsigned int *)t100);
    t147 = *((unsigned int *)t143);
    *((unsigned int *)t100) = (t146 | t147);
    t148 = *((unsigned int *)t142);
    t149 = *((unsigned int *)t143);
    *((unsigned int *)t142) = (t148 | t149);
    goto LAB43;

}


extern void work_m_00000000002405851896_0886308060_init()
{
	static char *pe[] = {(void *)Cont_30_0,(void *)Cont_32_1,(void *)Always_33_2,(void *)Cont_56_3};
	xsi_register_didat("work_m_00000000002405851896_0886308060", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000002405851896_0886308060.didat");
	xsi_register_executes(pe);
}
