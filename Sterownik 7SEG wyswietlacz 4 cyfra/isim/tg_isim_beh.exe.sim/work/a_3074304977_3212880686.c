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
static const char *ng0 = "F:/235816/Lab8/Lab8_1/Lab.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3074304977_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 5217);
    t9 = (t0 + 3496);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB6;

LAB8:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 5188U);
    t8 = (t0 + 5219);
    t10 = (t14 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t15 = (1 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t16;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t2, t8, t14);
    if (t4 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5188U);
    t5 = (t0 + 5223);
    t9 = (t14 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t15 = (1 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t16;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t14);
    if (t3 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5188U);
    t5 = (t0 + 5227);
    t9 = (t14 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t15 = (1 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t16;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t14);
    if (t3 != 0)
        goto LAB15;

LAB16:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 5231);
    t5 = (t0 + 3496);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t5);

LAB11:    goto LAB6;

LAB10:    xsi_set_current_line(34, ng0);
    t11 = (t0 + 5221);
    t13 = (t0 + 3496);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB11;

LAB13:    xsi_set_current_line(36, ng0);
    t10 = (t0 + 5225);
    t12 = (t0 + 3496);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 2U);
    xsi_driver_first_trans_fast(t12);
    goto LAB11;

LAB15:    xsi_set_current_line(38, ng0);
    t10 = (t0 + 5229);
    t12 = (t0 + 3496);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 2U);
    xsi_driver_first_trans_fast(t12);
    goto LAB11;

}

static void work_a_3074304977_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3560);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3416);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3074304977_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3074304977_3212880686_p_0,(void *)work_a_3074304977_3212880686_p_1};
	xsi_register_didat("work_a_3074304977_3212880686", "isim/tg_isim_beh.exe.sim/work/a_3074304977_3212880686.didat");
	xsi_register_executes(pe);
}
