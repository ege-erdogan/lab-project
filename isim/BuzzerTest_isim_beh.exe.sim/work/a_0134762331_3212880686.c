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
static const char *ng0 = "G:/My Drive/ELEC/project/LabProject/BuzzerInterface.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0134762331_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4288);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 4656);
    t4 = (t1 + 56U);
    t8 = *((char **)t4);
    t11 = (t8 + 56U);
    t18 = *((char **)t11);
    memcpy(t18, t3, 14U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4464);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 2312U);
    t8 = *((char **)t3);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB11;

LAB12:    t7 = (unsigned char)0;

LAB13:    if (t7 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4528);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (13 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4400);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (13 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4592);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (12 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 0U, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (11 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 1U, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (10 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 2U, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (9 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 3U, 1, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (8 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 4U, 1, 0LL);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (7 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 5U, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (6 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 6U, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (5 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 7U, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (4 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 8U, 1, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (3 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 9U, 1, 0LL);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (2 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 10U, 1, 0LL);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (1 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 11U, 1, 0LL);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t12 = (0 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4656);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t2;
    xsi_driver_first_trans_delta(t4, 12U, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4656);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 13U, 1, 0LL);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(54, ng0);
    t18 = (t0 + 4400);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4464);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4528);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB11:    t3 = (t0 + 1832U);
    t11 = *((char **)t3);
    t12 = (13 - 13);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t3 = (t11 + t15);
    t16 = *((unsigned char *)t3);
    t17 = (t16 == (unsigned char)2);
    t7 = t17;
    goto LAB13;

}

static void work_a_0134762331_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(83, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4720);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 14U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4304);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0134762331_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4784);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4320);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0134762331_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0134762331_3212880686_p_0,(void *)work_a_0134762331_3212880686_p_1,(void *)work_a_0134762331_3212880686_p_2};
	xsi_register_didat("work_a_0134762331_3212880686", "isim/BuzzerTest_isim_beh.exe.sim/work/a_0134762331_3212880686.didat");
	xsi_register_executes(pe);
}
