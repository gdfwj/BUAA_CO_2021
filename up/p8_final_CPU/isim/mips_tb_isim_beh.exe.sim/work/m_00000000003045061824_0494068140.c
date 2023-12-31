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
static const char *ng0 = "D:/works/computer organization/p8/up/p8_final_CPU/general_IO.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {32592U, 0U};
static unsigned int ng3[] = {32596U, 0U};
static unsigned int ng4[] = {32600U, 0U};
static unsigned int ng5[] = {32608U, 0U};
static int ng6[] = {0, 0};
static int ng7[] = {31, 0};
static int ng8[] = {24, 0};
static int ng9[] = {23, 0};
static int ng10[] = {16, 0};
static int ng11[] = {15, 0};
static int ng12[] = {8, 0};
static int ng13[] = {7, 0};



static void NetDecl_40_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
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

LAB0:    t1 = (t0 + 4928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 2);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 2);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 1073741823U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 1073741823U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t4, 30, t2, 2);
    t14 = (t0 + 6120);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t3, 8);
    xsi_driver_vfirst_trans(t14, 0, 31U);
    t19 = (t0 + 5992);
    *((int *)t19) = 1;

LAB1:    return;
}

static void Cont_41_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t33[8];
    char t34[8];
    char t53[8];
    char t54[8];
    char t57[8];
    char t84[8];
    char t85[8];
    char t104[8];
    char t105[8];
    char t108[8];
    char t135[8];
    char t136[8];
    char t153[8];
    char t154[8];
    char t157[8];
    char t184[8];
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
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
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
    unsigned int t52;
    char *t55;
    char *t56;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t106;
    char *t107;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t137;
    char *t138;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t155;
    char *t156;
    char *t158;
    char *t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    char *t179;
    char *t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    char *t185;
    char *t186;
    char *t187;
    char *t188;
    char *t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    char *t202;
    char *t203;
    char *t204;
    char *t205;
    char *t206;
    char *t207;
    char *t208;

LAB0:    t1 = (t0 + 5176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3448U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
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

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t49 = *((unsigned int *)t4);
    t50 = (~(t49));
    t51 = *((unsigned int *)t29);
    t52 = (t50 || t51);
    if (t52 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t53, 8);

LAB20:    t203 = (t0 + 6184);
    t204 = (t203 + 56U);
    t205 = *((char **)t204);
    t206 = (t205 + 56U);
    t207 = *((char **)t206);
    memcpy(t207, t3, 8);
    xsi_driver_vfirst_trans(t203, 0, 31);
    t208 = (t0 + 6008);
    *((int *)t208) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t35 = (t0 + 1688U);
    t36 = *((char **)t35);
    t35 = (t0 + 1848U);
    t37 = *((char **)t35);
    t35 = (t0 + 2008U);
    t38 = *((char **)t35);
    t35 = (t0 + 2168U);
    t39 = *((char **)t35);
    xsi_vlogtype_concat(t34, 32, 32, 4U, t39, 8, t38, 8, t37, 8, t36, 8);
    memset(t33, 0, 8);
    t35 = (t33 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t34);
    t42 = (~(t41));
    *((unsigned int *)t33) = t42;
    *((unsigned int *)t35) = 0;
    if (*((unsigned int *)t40) != 0)
        goto LAB22;

LAB21:    t47 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t47 & 4294967295U);
    t48 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t48 & 4294967295U);
    goto LAB13;

LAB14:    t55 = (t0 + 3448U);
    t56 = *((char **)t55);
    t55 = ((char*)((ng3)));
    memset(t57, 0, 8);
    t58 = (t56 + 4);
    t59 = (t55 + 4);
    t60 = *((unsigned int *)t56);
    t61 = *((unsigned int *)t55);
    t62 = (t60 ^ t61);
    t63 = *((unsigned int *)t58);
    t64 = *((unsigned int *)t59);
    t65 = (t63 ^ t64);
    t66 = (t62 | t65);
    t67 = *((unsigned int *)t58);
    t68 = *((unsigned int *)t59);
    t69 = (t67 | t68);
    t70 = (~(t69));
    t71 = (t66 & t70);
    if (t71 != 0)
        goto LAB26;

LAB23:    if (t69 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t57) = 1;

LAB26:    memset(t54, 0, 8);
    t73 = (t57 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t57);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t73) != 0)
        goto LAB29;

LAB30:    t80 = (t54 + 4);
    t81 = *((unsigned int *)t54);
    t82 = *((unsigned int *)t80);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB31;

LAB32:    t100 = *((unsigned int *)t54);
    t101 = (~(t100));
    t102 = *((unsigned int *)t80);
    t103 = (t101 || t102);
    if (t103 > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t80) > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t54) > 0)
        goto LAB37;

LAB38:    memcpy(t53, t104, 8);

LAB39:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t33, 32, t53, 32);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

LAB22:    t43 = *((unsigned int *)t33);
    t44 = *((unsigned int *)t40);
    *((unsigned int *)t33) = (t43 | t44);
    t45 = *((unsigned int *)t35);
    t46 = *((unsigned int *)t40);
    *((unsigned int *)t35) = (t45 | t46);
    goto LAB21;

LAB25:    t72 = (t57 + 4);
    *((unsigned int *)t57) = 1;
    *((unsigned int *)t72) = 1;
    goto LAB26;

LAB27:    *((unsigned int *)t54) = 1;
    goto LAB30;

LAB29:    t79 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t79) = 1;
    goto LAB30;

LAB31:    t86 = (t0 + 2328U);
    t87 = *((char **)t86);
    t86 = (t0 + 2488U);
    t88 = *((char **)t86);
    t86 = (t0 + 2648U);
    t89 = *((char **)t86);
    t86 = (t0 + 2808U);
    t90 = *((char **)t86);
    xsi_vlogtype_concat(t85, 32, 32, 4U, t90, 8, t89, 8, t88, 8, t87, 8);
    memset(t84, 0, 8);
    t86 = (t84 + 4);
    t91 = (t85 + 4);
    t92 = *((unsigned int *)t85);
    t93 = (~(t92));
    *((unsigned int *)t84) = t93;
    *((unsigned int *)t86) = 0;
    if (*((unsigned int *)t91) != 0)
        goto LAB41;

LAB40:    t98 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t98 & 4294967295U);
    t99 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t99 & 4294967295U);
    goto LAB32;

LAB33:    t106 = (t0 + 3448U);
    t107 = *((char **)t106);
    t106 = ((char*)((ng4)));
    memset(t108, 0, 8);
    t109 = (t107 + 4);
    t110 = (t106 + 4);
    t111 = *((unsigned int *)t107);
    t112 = *((unsigned int *)t106);
    t113 = (t111 ^ t112);
    t114 = *((unsigned int *)t109);
    t115 = *((unsigned int *)t110);
    t116 = (t114 ^ t115);
    t117 = (t113 | t116);
    t118 = *((unsigned int *)t109);
    t119 = *((unsigned int *)t110);
    t120 = (t118 | t119);
    t121 = (~(t120));
    t122 = (t117 & t121);
    if (t122 != 0)
        goto LAB45;

LAB42:    if (t120 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t108) = 1;

LAB45:    memset(t105, 0, 8);
    t124 = (t108 + 4);
    t125 = *((unsigned int *)t124);
    t126 = (~(t125));
    t127 = *((unsigned int *)t108);
    t128 = (t127 & t126);
    t129 = (t128 & 1U);
    if (t129 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t124) != 0)
        goto LAB48;

LAB49:    t131 = (t105 + 4);
    t132 = *((unsigned int *)t105);
    t133 = *((unsigned int *)t131);
    t134 = (t132 || t133);
    if (t134 > 0)
        goto LAB50;

LAB51:    t149 = *((unsigned int *)t105);
    t150 = (~(t149));
    t151 = *((unsigned int *)t131);
    t152 = (t150 || t151);
    if (t152 > 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t131) > 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t105) > 0)
        goto LAB56;

LAB57:    memcpy(t104, t153, 8);

LAB58:    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t53, 32, t84, 32, t104, 32);
    goto LAB39;

LAB37:    memcpy(t53, t84, 8);
    goto LAB39;

LAB41:    t94 = *((unsigned int *)t84);
    t95 = *((unsigned int *)t91);
    *((unsigned int *)t84) = (t94 | t95);
    t96 = *((unsigned int *)t86);
    t97 = *((unsigned int *)t91);
    *((unsigned int *)t86) = (t96 | t97);
    goto LAB40;

LAB44:    t123 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t123) = 1;
    goto LAB45;

LAB46:    *((unsigned int *)t105) = 1;
    goto LAB49;

LAB48:    t130 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t130) = 1;
    goto LAB49;

LAB50:    t137 = (t0 + 2968U);
    t138 = *((char **)t137);
    memset(t136, 0, 8);
    t137 = (t136 + 4);
    t139 = (t138 + 4);
    t140 = *((unsigned int *)t138);
    t141 = (~(t140));
    *((unsigned int *)t136) = t141;
    *((unsigned int *)t137) = 0;
    if (*((unsigned int *)t139) != 0)
        goto LAB60;

LAB59:    t146 = *((unsigned int *)t136);
    *((unsigned int *)t136) = (t146 & 255U);
    t147 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t147 & 255U);
    t148 = ((char*)((ng1)));
    xsi_vlogtype_concat(t135, 32, 32, 2U, t148, 24, t136, 8);
    goto LAB51;

LAB52:    t155 = (t0 + 3448U);
    t156 = *((char **)t155);
    t155 = ((char*)((ng5)));
    memset(t157, 0, 8);
    t158 = (t156 + 4);
    t159 = (t155 + 4);
    t160 = *((unsigned int *)t156);
    t161 = *((unsigned int *)t155);
    t162 = (t160 ^ t161);
    t163 = *((unsigned int *)t158);
    t164 = *((unsigned int *)t159);
    t165 = (t163 ^ t164);
    t166 = (t162 | t165);
    t167 = *((unsigned int *)t158);
    t168 = *((unsigned int *)t159);
    t169 = (t167 | t168);
    t170 = (~(t169));
    t171 = (t166 & t170);
    if (t171 != 0)
        goto LAB64;

LAB61:    if (t169 != 0)
        goto LAB63;

LAB62:    *((unsigned int *)t157) = 1;

LAB64:    memset(t154, 0, 8);
    t173 = (t157 + 4);
    t174 = *((unsigned int *)t173);
    t175 = (~(t174));
    t176 = *((unsigned int *)t157);
    t177 = (t176 & t175);
    t178 = (t177 & 1U);
    if (t178 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t173) != 0)
        goto LAB67;

LAB68:    t180 = (t154 + 4);
    t181 = *((unsigned int *)t154);
    t182 = *((unsigned int *)t180);
    t183 = (t181 || t182);
    if (t183 > 0)
        goto LAB69;

LAB70:    t198 = *((unsigned int *)t154);
    t199 = (~(t198));
    t200 = *((unsigned int *)t180);
    t201 = (t199 || t200);
    if (t201 > 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t180) > 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t154) > 0)
        goto LAB75;

LAB76:    memcpy(t153, t202, 8);

LAB77:    goto LAB53;

LAB54:    xsi_vlog_unsigned_bit_combine(t104, 32, t135, 32, t153, 32);
    goto LAB58;

LAB56:    memcpy(t104, t135, 8);
    goto LAB58;

LAB60:    t142 = *((unsigned int *)t136);
    t143 = *((unsigned int *)t139);
    *((unsigned int *)t136) = (t142 | t143);
    t144 = *((unsigned int *)t137);
    t145 = *((unsigned int *)t139);
    *((unsigned int *)t137) = (t144 | t145);
    goto LAB59;

LAB63:    t172 = (t157 + 4);
    *((unsigned int *)t157) = 1;
    *((unsigned int *)t172) = 1;
    goto LAB64;

LAB65:    *((unsigned int *)t154) = 1;
    goto LAB68;

LAB67:    t179 = (t154 + 4);
    *((unsigned int *)t154) = 1;
    *((unsigned int *)t179) = 1;
    goto LAB68;

LAB69:    t185 = (t0 + 3848);
    t186 = (t185 + 56U);
    t187 = *((char **)t186);
    memset(t184, 0, 8);
    t188 = (t184 + 4);
    t189 = (t187 + 4);
    t190 = *((unsigned int *)t187);
    t191 = (~(t190));
    *((unsigned int *)t184) = t191;
    *((unsigned int *)t188) = 0;
    if (*((unsigned int *)t189) != 0)
        goto LAB79;

LAB78:    t196 = *((unsigned int *)t184);
    *((unsigned int *)t184) = (t196 & 4294967295U);
    t197 = *((unsigned int *)t188);
    *((unsigned int *)t188) = (t197 & 4294967295U);
    goto LAB70;

LAB71:    t202 = ((char*)((ng6)));
    goto LAB72;

LAB73:    xsi_vlog_unsigned_bit_combine(t153, 32, t184, 32, t202, 32);
    goto LAB77;

LAB75:    memcpy(t153, t184, 8);
    goto LAB77;

LAB79:    t192 = *((unsigned int *)t184);
    t193 = *((unsigned int *)t189);
    *((unsigned int *)t184) = (t192 | t193);
    t194 = *((unsigned int *)t188);
    t195 = *((unsigned int *)t189);
    *((unsigned int *)t188) = (t194 | t195);
    goto LAB78;

}

static void Always_46_2(char *t0)
{
    char t8[8];
    char t20[8];
    char t21[8];
    char t40[8];
    char t41[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
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
    char *t22;
    unsigned int t23;
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
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t49;
    int t50;
    char *t51;
    unsigned int t52;
    int t53;
    int t54;
    char *t55;
    unsigned int t56;
    int t57;
    int t58;
    unsigned int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    int t64;

LAB0:    t1 = (t0 + 5424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 6024);
    *((int *)t2) = 1;
    t3 = (t0 + 5456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 3848);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 4008);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 3);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 3);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t8 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t8);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 2);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 2);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t8 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t8);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB13;

LAB14:
LAB15:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t8 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t8);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t8 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t8);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB27;

LAB28:
LAB29:    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    memset(t21, 0, 8);
    t6 = (t21 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t7);
    t24 = (t23 >> 24);
    *((unsigned int *)t21) = t24;
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 24);
    *((unsigned int *)t6) = t26;
    t27 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t27 & 255U);
    t28 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t28 & 255U);
    memset(t20, 0, 8);
    t29 = (t20 + 4);
    t30 = (t21 + 4);
    t31 = *((unsigned int *)t21);
    t32 = (~(t31));
    *((unsigned int *)t20) = t32;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB10;

LAB9:    t37 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t37 & 255U);
    t38 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t38 & 255U);
    t39 = (t0 + 4008);
    t43 = (t0 + 4008);
    t44 = (t43 + 72U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng7)));
    t47 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t40, t41, t42, ((int*)(t45)), 2, t46, 32, 1, t47, 32, 1);
    t48 = (t40 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (!(t49));
    t51 = (t41 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (!(t52));
    t54 = (t50 && t53);
    t55 = (t42 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (!(t56));
    t58 = (t54 && t57);
    if (t58 == 1)
        goto LAB11;

LAB12:    goto LAB8;

LAB10:    t33 = *((unsigned int *)t20);
    t34 = *((unsigned int *)t30);
    *((unsigned int *)t20) = (t33 | t34);
    t35 = *((unsigned int *)t29);
    t36 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t35 | t36);
    goto LAB9;

LAB11:    t59 = *((unsigned int *)t42);
    t60 = (t59 + 0);
    t61 = *((unsigned int *)t40);
    t62 = *((unsigned int *)t41);
    t63 = (t61 - t62);
    t64 = (t63 + 1);
    xsi_vlogvar_assign_value(t39, t20, t60, *((unsigned int *)t41), t64);
    goto LAB12;

LAB13:    xsi_set_current_line(49, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    memset(t21, 0, 8);
    t6 = (t21 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t7);
    t24 = (t23 >> 16);
    *((unsigned int *)t21) = t24;
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 16);
    *((unsigned int *)t6) = t26;
    t27 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t27 & 255U);
    t28 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t28 & 255U);
    memset(t20, 0, 8);
    t29 = (t20 + 4);
    t30 = (t21 + 4);
    t31 = *((unsigned int *)t21);
    t32 = (~(t31));
    *((unsigned int *)t20) = t32;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB17;

LAB16:    t37 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t37 & 255U);
    t38 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t38 & 255U);
    t39 = (t0 + 4008);
    t43 = (t0 + 4008);
    t44 = (t43 + 72U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng9)));
    t47 = ((char*)((ng10)));
    xsi_vlog_convert_partindices(t40, t41, t42, ((int*)(t45)), 2, t46, 32, 1, t47, 32, 1);
    t48 = (t40 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (!(t49));
    t51 = (t41 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (!(t52));
    t54 = (t50 && t53);
    t55 = (t42 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (!(t56));
    t58 = (t54 && t57);
    if (t58 == 1)
        goto LAB18;

LAB19:    goto LAB15;

LAB17:    t33 = *((unsigned int *)t20);
    t34 = *((unsigned int *)t30);
    *((unsigned int *)t20) = (t33 | t34);
    t35 = *((unsigned int *)t29);
    t36 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t35 | t36);
    goto LAB16;

LAB18:    t59 = *((unsigned int *)t42);
    t60 = (t59 + 0);
    t61 = *((unsigned int *)t40);
    t62 = *((unsigned int *)t41);
    t63 = (t61 - t62);
    t64 = (t63 + 1);
    xsi_vlogvar_assign_value(t39, t20, t60, *((unsigned int *)t41), t64);
    goto LAB19;

LAB20:    xsi_set_current_line(50, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    memset(t21, 0, 8);
    t6 = (t21 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t7);
    t24 = (t23 >> 8);
    *((unsigned int *)t21) = t24;
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 8);
    *((unsigned int *)t6) = t26;
    t27 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t27 & 255U);
    t28 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t28 & 255U);
    memset(t20, 0, 8);
    t29 = (t20 + 4);
    t30 = (t21 + 4);
    t31 = *((unsigned int *)t21);
    t32 = (~(t31));
    *((unsigned int *)t20) = t32;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB24;

LAB23:    t37 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t37 & 255U);
    t38 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t38 & 255U);
    t39 = (t0 + 4008);
    t43 = (t0 + 4008);
    t44 = (t43 + 72U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng11)));
    t47 = ((char*)((ng12)));
    xsi_vlog_convert_partindices(t40, t41, t42, ((int*)(t45)), 2, t46, 32, 1, t47, 32, 1);
    t48 = (t40 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (!(t49));
    t51 = (t41 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (!(t52));
    t54 = (t50 && t53);
    t55 = (t42 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (!(t56));
    t58 = (t54 && t57);
    if (t58 == 1)
        goto LAB25;

LAB26:    goto LAB22;

LAB24:    t33 = *((unsigned int *)t20);
    t34 = *((unsigned int *)t30);
    *((unsigned int *)t20) = (t33 | t34);
    t35 = *((unsigned int *)t29);
    t36 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t35 | t36);
    goto LAB23;

LAB25:    t59 = *((unsigned int *)t42);
    t60 = (t59 + 0);
    t61 = *((unsigned int *)t40);
    t62 = *((unsigned int *)t41);
    t63 = (t61 - t62);
    t64 = (t63 + 1);
    xsi_vlogvar_assign_value(t39, t20, t60, *((unsigned int *)t41), t64);
    goto LAB26;

LAB27:    xsi_set_current_line(51, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    memset(t21, 0, 8);
    t6 = (t21 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t7);
    t24 = (t23 >> 0);
    *((unsigned int *)t21) = t24;
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 0);
    *((unsigned int *)t6) = t26;
    t27 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t27 & 255U);
    t28 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t28 & 255U);
    memset(t20, 0, 8);
    t29 = (t20 + 4);
    t30 = (t21 + 4);
    t31 = *((unsigned int *)t21);
    t32 = (~(t31));
    *((unsigned int *)t20) = t32;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB31;

LAB30:    t37 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t37 & 255U);
    t38 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t38 & 255U);
    t39 = (t0 + 4008);
    t43 = (t0 + 4008);
    t44 = (t43 + 72U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng13)));
    t47 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t40, t41, t42, ((int*)(t45)), 2, t46, 32, 1, t47, 32, 1);
    t48 = (t40 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (!(t49));
    t51 = (t41 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (!(t52));
    t54 = (t50 && t53);
    t55 = (t42 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (!(t56));
    t58 = (t54 && t57);
    if (t58 == 1)
        goto LAB32;

LAB33:    goto LAB29;

LAB31:    t33 = *((unsigned int *)t20);
    t34 = *((unsigned int *)t30);
    *((unsigned int *)t20) = (t33 | t34);
    t35 = *((unsigned int *)t29);
    t36 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t35 | t36);
    goto LAB30;

LAB32:    t59 = *((unsigned int *)t42);
    t60 = (t59 + 0);
    t61 = *((unsigned int *)t40);
    t62 = *((unsigned int *)t41);
    t63 = (t61 - t62);
    t64 = (t63 + 1);
    xsi_vlogvar_assign_value(t39, t20, t60, *((unsigned int *)t41), t64);
    goto LAB33;

}

static void Always_53_3(char *t0)
{
    char t11[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;

LAB0:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 6040);
    *((int *)t2) = 1;
    t3 = (t0 + 5704);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);

LAB5:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 3128U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 15U);
    if (t10 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t2) != 0)
        goto LAB13;

LAB14:    t5 = (t11 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(54, ng0);
    t12 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t13 = (t11 + 4);
    t14 = (t12 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (~(t15));
    *((unsigned int *)t11) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB10;

LAB9:    t21 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t21 & 4294967295U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 4294967295U);
    t23 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t23, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB10:    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t11) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB9;

LAB11:    *((unsigned int *)t11) = 1;
    goto LAB14;

LAB13:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(55, ng0);
    t12 = (t0 + 4008);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t25 = (t14 + 4);
    t20 = *((unsigned int *)t14);
    t21 = (~(t20));
    *((unsigned int *)t24) = t21;
    *((unsigned int *)t23) = 0;
    if (*((unsigned int *)t25) != 0)
        goto LAB19;

LAB18:    t29 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t29 & 4294967295U);
    t30 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t30 & 4294967295U);
    t31 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t31, t24, 0, 0, 32, 0LL);
    goto LAB17;

LAB19:    t22 = *((unsigned int *)t24);
    t26 = *((unsigned int *)t25);
    *((unsigned int *)t24) = (t22 | t26);
    t27 = *((unsigned int *)t23);
    t28 = *((unsigned int *)t25);
    *((unsigned int *)t23) = (t27 | t28);
    goto LAB18;

}


extern void work_m_00000000003045061824_0494068140_init()
{
	static char *pe[] = {(void *)NetDecl_40_0,(void *)Cont_41_1,(void *)Always_46_2,(void *)Always_53_3};
	xsi_register_didat("work_m_00000000003045061824_0494068140", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000003045061824_0494068140.didat");
	xsi_register_executes(pe);
}
