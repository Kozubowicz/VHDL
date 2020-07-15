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
static const char *ng0 = "F:/235816/Lab8/Lab8_1/ANN.vhd";



static void work_a_0465608322_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    unsigned char t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned char t37;
    char *t38;
    char *t39;
    unsigned char t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned char t47;
    unsigned char t48;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned char t55;
    char *t56;
    char *t57;
    unsigned char t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned char t65;
    unsigned char t66;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;

LAB0:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4395);
    t5 = 1;
    if (2U == 2U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 4401);
    t23 = 1;
    if (2U == 2U)
        goto LAB19;

LAB20:    t23 = 0;

LAB21:    if (t23 == 1)
        goto LAB16;

LAB17:    t19 = (unsigned char)0;

LAB18:    if (t19 != 0)
        goto LAB14;

LAB15:    t38 = (t0 + 1192U);
    t39 = *((char **)t38);
    t38 = (t0 + 4407);
    t41 = 1;
    if (2U == 2U)
        goto LAB30;

LAB31:    t41 = 0;

LAB32:    if (t41 == 1)
        goto LAB27;

LAB28:    t37 = (unsigned char)0;

LAB29:    if (t37 != 0)
        goto LAB25;

LAB26:    t56 = (t0 + 1192U);
    t57 = *((char **)t56);
    t56 = (t0 + 4413);
    t59 = 1;
    if (2U == 2U)
        goto LAB41;

LAB42:    t59 = 0;

LAB43:    if (t59 == 1)
        goto LAB38;

LAB39:    t55 = (unsigned char)0;

LAB40:    if (t55 != 0)
        goto LAB36;

LAB37:
LAB47:    t73 = (t0 + 4419);
    t75 = (t0 + 2912);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memcpy(t79, t73, 4U);
    xsi_driver_first_trans_fast_port(t75);

LAB2:    t80 = (t0 + 2832);
    *((int *)t80) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 4397);
    t14 = (t0 + 2912);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 4U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB5:    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t1 = t12;
    goto LAB7;

LAB8:    t6 = 0;

LAB11:    if (t6 < 2U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t7 = (t3 + t6);
    t8 = (t2 + t6);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB9;

LAB13:    t6 = (t6 + 1);
    goto LAB11;

LAB14:    t27 = (t0 + 4403);
    t32 = (t0 + 2912);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t27, 4U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB2;

LAB16:    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t30 = (t29 == (unsigned char)3);
    t19 = t30;
    goto LAB18;

LAB19:    t24 = 0;

LAB22:    if (t24 < 2U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t25 = (t21 + t24);
    t26 = (t20 + t24);
    if (*((unsigned char *)t25) != *((unsigned char *)t26))
        goto LAB20;

LAB24:    t24 = (t24 + 1);
    goto LAB22;

LAB25:    t45 = (t0 + 4409);
    t50 = (t0 + 2912);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t45, 4U);
    xsi_driver_first_trans_fast_port(t50);
    goto LAB2;

LAB27:    t45 = (t0 + 1032U);
    t46 = *((char **)t45);
    t47 = *((unsigned char *)t46);
    t48 = (t47 == (unsigned char)3);
    t37 = t48;
    goto LAB29;

LAB30:    t42 = 0;

LAB33:    if (t42 < 2U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t43 = (t39 + t42);
    t44 = (t38 + t42);
    if (*((unsigned char *)t43) != *((unsigned char *)t44))
        goto LAB31;

LAB35:    t42 = (t42 + 1);
    goto LAB33;

LAB36:    t63 = (t0 + 4415);
    t68 = (t0 + 2912);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    memcpy(t72, t63, 4U);
    xsi_driver_first_trans_fast_port(t68);
    goto LAB2;

LAB38:    t63 = (t0 + 1032U);
    t64 = *((char **)t63);
    t65 = *((unsigned char *)t64);
    t66 = (t65 == (unsigned char)3);
    t55 = t66;
    goto LAB40;

LAB41:    t60 = 0;

LAB44:    if (t60 < 2U)
        goto LAB45;
    else
        goto LAB43;

LAB45:    t61 = (t57 + t60);
    t62 = (t56 + t60);
    if (*((unsigned char *)t61) != *((unsigned char *)t62))
        goto LAB42;

LAB46:    t60 = (t60 + 1);
    goto LAB44;

LAB48:    goto LAB2;

}


extern void work_a_0465608322_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0465608322_3212880686_p_0};
	xsi_register_didat("work_a_0465608322_3212880686", "isim/tg_isim_beh.exe.sim/work/a_0465608322_3212880686.didat");
	xsi_register_executes(pe);
}
