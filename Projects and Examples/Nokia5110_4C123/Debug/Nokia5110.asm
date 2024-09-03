;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.2.2 *
;* Date/Time created: Mon Jun 13 10:13:25 2016                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Nokia5110.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.2.2 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Dropbox\ArmBook\LaunchPad\ValvanoWareTM4C123\Nokia5110_4C123\Debug")
	.sect	".const:ASCII"
	.clink
	.align	1
	.elfsym	ASCII,SYM_SIZE(480)
ASCII:
	.bits	0,8			; ASCII[0][0] @ 0
	.bits	0,8			; ASCII[0][1] @ 8
	.bits	0,8			; ASCII[0][2] @ 16
	.bits	0,8			; ASCII[0][3] @ 24
	.bits	0,8			; ASCII[0][4] @ 32
	.bits	0,8			; ASCII[1][0] @ 40
	.bits	0,8			; ASCII[1][1] @ 48
	.bits	95,8			; ASCII[1][2] @ 56
	.bits	0,8			; ASCII[1][3] @ 64
	.bits	0,8			; ASCII[1][4] @ 72
	.bits	0,8			; ASCII[2][0] @ 80
	.bits	7,8			; ASCII[2][1] @ 88
	.bits	0,8			; ASCII[2][2] @ 96
	.bits	7,8			; ASCII[2][3] @ 104
	.bits	0,8			; ASCII[2][4] @ 112
	.bits	20,8			; ASCII[3][0] @ 120
	.bits	127,8			; ASCII[3][1] @ 128
	.bits	20,8			; ASCII[3][2] @ 136
	.bits	127,8			; ASCII[3][3] @ 144
	.bits	20,8			; ASCII[3][4] @ 152
	.bits	36,8			; ASCII[4][0] @ 160
	.bits	42,8			; ASCII[4][1] @ 168
	.bits	127,8			; ASCII[4][2] @ 176
	.bits	42,8			; ASCII[4][3] @ 184
	.bits	18,8			; ASCII[4][4] @ 192
	.bits	35,8			; ASCII[5][0] @ 200
	.bits	19,8			; ASCII[5][1] @ 208
	.bits	8,8			; ASCII[5][2] @ 216
	.bits	100,8			; ASCII[5][3] @ 224
	.bits	98,8			; ASCII[5][4] @ 232
	.bits	54,8			; ASCII[6][0] @ 240
	.bits	73,8			; ASCII[6][1] @ 248
	.bits	85,8			; ASCII[6][2] @ 256
	.bits	34,8			; ASCII[6][3] @ 264
	.bits	80,8			; ASCII[6][4] @ 272
	.bits	0,8			; ASCII[7][0] @ 280
	.bits	5,8			; ASCII[7][1] @ 288
	.bits	3,8			; ASCII[7][2] @ 296
	.bits	0,8			; ASCII[7][3] @ 304
	.bits	0,8			; ASCII[7][4] @ 312
	.bits	0,8			; ASCII[8][0] @ 320
	.bits	28,8			; ASCII[8][1] @ 328
	.bits	34,8			; ASCII[8][2] @ 336
	.bits	65,8			; ASCII[8][3] @ 344
	.bits	0,8			; ASCII[8][4] @ 352
	.bits	0,8			; ASCII[9][0] @ 360
	.bits	65,8			; ASCII[9][1] @ 368
	.bits	34,8			; ASCII[9][2] @ 376
	.bits	28,8			; ASCII[9][3] @ 384
	.bits	0,8			; ASCII[9][4] @ 392
	.bits	20,8			; ASCII[10][0] @ 400
	.bits	8,8			; ASCII[10][1] @ 408
	.bits	62,8			; ASCII[10][2] @ 416
	.bits	8,8			; ASCII[10][3] @ 424
	.bits	20,8			; ASCII[10][4] @ 432
	.bits	8,8			; ASCII[11][0] @ 440
	.bits	8,8			; ASCII[11][1] @ 448
	.bits	62,8			; ASCII[11][2] @ 456
	.bits	8,8			; ASCII[11][3] @ 464
	.bits	8,8			; ASCII[11][4] @ 472
	.bits	0,8			; ASCII[12][0] @ 480
	.bits	80,8			; ASCII[12][1] @ 488
	.bits	48,8			; ASCII[12][2] @ 496
	.bits	0,8			; ASCII[12][3] @ 504
	.bits	0,8			; ASCII[12][4] @ 512
	.bits	8,8			; ASCII[13][0] @ 520
	.bits	8,8			; ASCII[13][1] @ 528
	.bits	8,8			; ASCII[13][2] @ 536
	.bits	8,8			; ASCII[13][3] @ 544
	.bits	8,8			; ASCII[13][4] @ 552
	.bits	0,8			; ASCII[14][0] @ 560
	.bits	96,8			; ASCII[14][1] @ 568
	.bits	96,8			; ASCII[14][2] @ 576
	.bits	0,8			; ASCII[14][3] @ 584
	.bits	0,8			; ASCII[14][4] @ 592
	.bits	32,8			; ASCII[15][0] @ 600
	.bits	16,8			; ASCII[15][1] @ 608
	.bits	8,8			; ASCII[15][2] @ 616
	.bits	4,8			; ASCII[15][3] @ 624
	.bits	2,8			; ASCII[15][4] @ 632
	.bits	62,8			; ASCII[16][0] @ 640
	.bits	81,8			; ASCII[16][1] @ 648
	.bits	73,8			; ASCII[16][2] @ 656
	.bits	69,8			; ASCII[16][3] @ 664
	.bits	62,8			; ASCII[16][4] @ 672
	.bits	0,8			; ASCII[17][0] @ 680
	.bits	66,8			; ASCII[17][1] @ 688
	.bits	127,8			; ASCII[17][2] @ 696
	.bits	64,8			; ASCII[17][3] @ 704
	.bits	0,8			; ASCII[17][4] @ 712
	.bits	66,8			; ASCII[18][0] @ 720
	.bits	97,8			; ASCII[18][1] @ 728
	.bits	81,8			; ASCII[18][2] @ 736
	.bits	73,8			; ASCII[18][3] @ 744
	.bits	70,8			; ASCII[18][4] @ 752
	.bits	33,8			; ASCII[19][0] @ 760
	.bits	65,8			; ASCII[19][1] @ 768
	.bits	69,8			; ASCII[19][2] @ 776
	.bits	75,8			; ASCII[19][3] @ 784
	.bits	49,8			; ASCII[19][4] @ 792
	.bits	24,8			; ASCII[20][0] @ 800
	.bits	20,8			; ASCII[20][1] @ 808
	.bits	18,8			; ASCII[20][2] @ 816
	.bits	127,8			; ASCII[20][3] @ 824
	.bits	16,8			; ASCII[20][4] @ 832
	.bits	39,8			; ASCII[21][0] @ 840
	.bits	69,8			; ASCII[21][1] @ 848
	.bits	69,8			; ASCII[21][2] @ 856
	.bits	69,8			; ASCII[21][3] @ 864
	.bits	57,8			; ASCII[21][4] @ 872
	.bits	60,8			; ASCII[22][0] @ 880
	.bits	74,8			; ASCII[22][1] @ 888
	.bits	73,8			; ASCII[22][2] @ 896
	.bits	73,8			; ASCII[22][3] @ 904
	.bits	48,8			; ASCII[22][4] @ 912
	.bits	1,8			; ASCII[23][0] @ 920
	.bits	113,8			; ASCII[23][1] @ 928
	.bits	9,8			; ASCII[23][2] @ 936
	.bits	5,8			; ASCII[23][3] @ 944
	.bits	3,8			; ASCII[23][4] @ 952
	.bits	54,8			; ASCII[24][0] @ 960
	.bits	73,8			; ASCII[24][1] @ 968
	.bits	73,8			; ASCII[24][2] @ 976
	.bits	73,8			; ASCII[24][3] @ 984
	.bits	54,8			; ASCII[24][4] @ 992
	.bits	6,8			; ASCII[25][0] @ 1000
	.bits	73,8			; ASCII[25][1] @ 1008
	.bits	73,8			; ASCII[25][2] @ 1016
	.bits	41,8			; ASCII[25][3] @ 1024
	.bits	30,8			; ASCII[25][4] @ 1032
	.bits	0,8			; ASCII[26][0] @ 1040
	.bits	54,8			; ASCII[26][1] @ 1048
	.bits	54,8			; ASCII[26][2] @ 1056
	.bits	0,8			; ASCII[26][3] @ 1064
	.bits	0,8			; ASCII[26][4] @ 1072
	.bits	0,8			; ASCII[27][0] @ 1080
	.bits	86,8			; ASCII[27][1] @ 1088
	.bits	54,8			; ASCII[27][2] @ 1096
	.bits	0,8			; ASCII[27][3] @ 1104
	.bits	0,8			; ASCII[27][4] @ 1112
	.bits	8,8			; ASCII[28][0] @ 1120
	.bits	20,8			; ASCII[28][1] @ 1128
	.bits	34,8			; ASCII[28][2] @ 1136
	.bits	65,8			; ASCII[28][3] @ 1144
	.bits	0,8			; ASCII[28][4] @ 1152
	.bits	20,8			; ASCII[29][0] @ 1160
	.bits	20,8			; ASCII[29][1] @ 1168
	.bits	20,8			; ASCII[29][2] @ 1176
	.bits	20,8			; ASCII[29][3] @ 1184
	.bits	20,8			; ASCII[29][4] @ 1192
	.bits	0,8			; ASCII[30][0] @ 1200
	.bits	65,8			; ASCII[30][1] @ 1208
	.bits	34,8			; ASCII[30][2] @ 1216
	.bits	20,8			; ASCII[30][3] @ 1224
	.bits	8,8			; ASCII[30][4] @ 1232
	.bits	2,8			; ASCII[31][0] @ 1240
	.bits	1,8			; ASCII[31][1] @ 1248
	.bits	81,8			; ASCII[31][2] @ 1256
	.bits	9,8			; ASCII[31][3] @ 1264
	.bits	6,8			; ASCII[31][4] @ 1272
	.bits	50,8			; ASCII[32][0] @ 1280
	.bits	73,8			; ASCII[32][1] @ 1288
	.bits	121,8			; ASCII[32][2] @ 1296
	.bits	65,8			; ASCII[32][3] @ 1304
	.bits	62,8			; ASCII[32][4] @ 1312
	.bits	126,8			; ASCII[33][0] @ 1320
	.bits	17,8			; ASCII[33][1] @ 1328
	.bits	17,8			; ASCII[33][2] @ 1336
	.bits	17,8			; ASCII[33][3] @ 1344
	.bits	126,8			; ASCII[33][4] @ 1352
	.bits	127,8			; ASCII[34][0] @ 1360
	.bits	73,8			; ASCII[34][1] @ 1368
	.bits	73,8			; ASCII[34][2] @ 1376
	.bits	73,8			; ASCII[34][3] @ 1384
	.bits	54,8			; ASCII[34][4] @ 1392
	.bits	62,8			; ASCII[35][0] @ 1400
	.bits	65,8			; ASCII[35][1] @ 1408
	.bits	65,8			; ASCII[35][2] @ 1416
	.bits	65,8			; ASCII[35][3] @ 1424
	.bits	34,8			; ASCII[35][4] @ 1432
	.bits	127,8			; ASCII[36][0] @ 1440
	.bits	65,8			; ASCII[36][1] @ 1448
	.bits	65,8			; ASCII[36][2] @ 1456
	.bits	34,8			; ASCII[36][3] @ 1464
	.bits	28,8			; ASCII[36][4] @ 1472
	.bits	127,8			; ASCII[37][0] @ 1480
	.bits	73,8			; ASCII[37][1] @ 1488
	.bits	73,8			; ASCII[37][2] @ 1496
	.bits	73,8			; ASCII[37][3] @ 1504
	.bits	65,8			; ASCII[37][4] @ 1512
	.bits	127,8			; ASCII[38][0] @ 1520
	.bits	9,8			; ASCII[38][1] @ 1528
	.bits	9,8			; ASCII[38][2] @ 1536
	.bits	9,8			; ASCII[38][3] @ 1544
	.bits	1,8			; ASCII[38][4] @ 1552
	.bits	62,8			; ASCII[39][0] @ 1560
	.bits	65,8			; ASCII[39][1] @ 1568
	.bits	73,8			; ASCII[39][2] @ 1576
	.bits	73,8			; ASCII[39][3] @ 1584
	.bits	122,8			; ASCII[39][4] @ 1592
	.bits	127,8			; ASCII[40][0] @ 1600
	.bits	8,8			; ASCII[40][1] @ 1608
	.bits	8,8			; ASCII[40][2] @ 1616
	.bits	8,8			; ASCII[40][3] @ 1624
	.bits	127,8			; ASCII[40][4] @ 1632
	.bits	0,8			; ASCII[41][0] @ 1640
	.bits	65,8			; ASCII[41][1] @ 1648
	.bits	127,8			; ASCII[41][2] @ 1656
	.bits	65,8			; ASCII[41][3] @ 1664
	.bits	0,8			; ASCII[41][4] @ 1672
	.bits	32,8			; ASCII[42][0] @ 1680
	.bits	64,8			; ASCII[42][1] @ 1688
	.bits	65,8			; ASCII[42][2] @ 1696
	.bits	63,8			; ASCII[42][3] @ 1704
	.bits	1,8			; ASCII[42][4] @ 1712
	.bits	127,8			; ASCII[43][0] @ 1720
	.bits	8,8			; ASCII[43][1] @ 1728
	.bits	20,8			; ASCII[43][2] @ 1736
	.bits	34,8			; ASCII[43][3] @ 1744
	.bits	65,8			; ASCII[43][4] @ 1752
	.bits	127,8			; ASCII[44][0] @ 1760
	.bits	64,8			; ASCII[44][1] @ 1768
	.bits	64,8			; ASCII[44][2] @ 1776
	.bits	64,8			; ASCII[44][3] @ 1784
	.bits	64,8			; ASCII[44][4] @ 1792
	.bits	127,8			; ASCII[45][0] @ 1800
	.bits	2,8			; ASCII[45][1] @ 1808
	.bits	12,8			; ASCII[45][2] @ 1816
	.bits	2,8			; ASCII[45][3] @ 1824
	.bits	127,8			; ASCII[45][4] @ 1832
	.bits	127,8			; ASCII[46][0] @ 1840
	.bits	4,8			; ASCII[46][1] @ 1848
	.bits	8,8			; ASCII[46][2] @ 1856
	.bits	16,8			; ASCII[46][3] @ 1864
	.bits	127,8			; ASCII[46][4] @ 1872
	.bits	62,8			; ASCII[47][0] @ 1880
	.bits	65,8			; ASCII[47][1] @ 1888
	.bits	65,8			; ASCII[47][2] @ 1896
	.bits	65,8			; ASCII[47][3] @ 1904
	.bits	62,8			; ASCII[47][4] @ 1912
	.bits	127,8			; ASCII[48][0] @ 1920
	.bits	9,8			; ASCII[48][1] @ 1928
	.bits	9,8			; ASCII[48][2] @ 1936
	.bits	9,8			; ASCII[48][3] @ 1944
	.bits	6,8			; ASCII[48][4] @ 1952
	.bits	62,8			; ASCII[49][0] @ 1960
	.bits	65,8			; ASCII[49][1] @ 1968
	.bits	81,8			; ASCII[49][2] @ 1976
	.bits	33,8			; ASCII[49][3] @ 1984
	.bits	94,8			; ASCII[49][4] @ 1992
	.bits	127,8			; ASCII[50][0] @ 2000
	.bits	9,8			; ASCII[50][1] @ 2008
	.bits	25,8			; ASCII[50][2] @ 2016
	.bits	41,8			; ASCII[50][3] @ 2024
	.bits	70,8			; ASCII[50][4] @ 2032
	.bits	70,8			; ASCII[51][0] @ 2040
	.bits	73,8			; ASCII[51][1] @ 2048
	.bits	73,8			; ASCII[51][2] @ 2056
	.bits	73,8			; ASCII[51][3] @ 2064
	.bits	49,8			; ASCII[51][4] @ 2072
	.bits	1,8			; ASCII[52][0] @ 2080
	.bits	1,8			; ASCII[52][1] @ 2088
	.bits	127,8			; ASCII[52][2] @ 2096
	.bits	1,8			; ASCII[52][3] @ 2104
	.bits	1,8			; ASCII[52][4] @ 2112
	.bits	63,8			; ASCII[53][0] @ 2120
	.bits	64,8			; ASCII[53][1] @ 2128
	.bits	64,8			; ASCII[53][2] @ 2136
	.bits	64,8			; ASCII[53][3] @ 2144
	.bits	63,8			; ASCII[53][4] @ 2152
	.bits	31,8			; ASCII[54][0] @ 2160
	.bits	32,8			; ASCII[54][1] @ 2168
	.bits	64,8			; ASCII[54][2] @ 2176
	.bits	32,8			; ASCII[54][3] @ 2184
	.bits	31,8			; ASCII[54][4] @ 2192
	.bits	63,8			; ASCII[55][0] @ 2200
	.bits	64,8			; ASCII[55][1] @ 2208
	.bits	56,8			; ASCII[55][2] @ 2216
	.bits	64,8			; ASCII[55][3] @ 2224
	.bits	63,8			; ASCII[55][4] @ 2232
	.bits	99,8			; ASCII[56][0] @ 2240
	.bits	20,8			; ASCII[56][1] @ 2248
	.bits	8,8			; ASCII[56][2] @ 2256
	.bits	20,8			; ASCII[56][3] @ 2264
	.bits	99,8			; ASCII[56][4] @ 2272
	.bits	7,8			; ASCII[57][0] @ 2280
	.bits	8,8			; ASCII[57][1] @ 2288
	.bits	112,8			; ASCII[57][2] @ 2296
	.bits	8,8			; ASCII[57][3] @ 2304
	.bits	7,8			; ASCII[57][4] @ 2312
	.bits	97,8			; ASCII[58][0] @ 2320
	.bits	81,8			; ASCII[58][1] @ 2328
	.bits	73,8			; ASCII[58][2] @ 2336
	.bits	69,8			; ASCII[58][3] @ 2344
	.bits	67,8			; ASCII[58][4] @ 2352
	.bits	0,8			; ASCII[59][0] @ 2360
	.bits	127,8			; ASCII[59][1] @ 2368
	.bits	65,8			; ASCII[59][2] @ 2376
	.bits	65,8			; ASCII[59][3] @ 2384
	.bits	0,8			; ASCII[59][4] @ 2392
	.bits	2,8			; ASCII[60][0] @ 2400
	.bits	4,8			; ASCII[60][1] @ 2408
	.bits	8,8			; ASCII[60][2] @ 2416
	.bits	16,8			; ASCII[60][3] @ 2424
	.bits	32,8			; ASCII[60][4] @ 2432
	.bits	0,8			; ASCII[61][0] @ 2440
	.bits	65,8			; ASCII[61][1] @ 2448
	.bits	65,8			; ASCII[61][2] @ 2456
	.bits	127,8			; ASCII[61][3] @ 2464
	.bits	0,8			; ASCII[61][4] @ 2472
	.bits	4,8			; ASCII[62][0] @ 2480
	.bits	2,8			; ASCII[62][1] @ 2488
	.bits	1,8			; ASCII[62][2] @ 2496
	.bits	2,8			; ASCII[62][3] @ 2504
	.bits	4,8			; ASCII[62][4] @ 2512
	.bits	64,8			; ASCII[63][0] @ 2520
	.bits	64,8			; ASCII[63][1] @ 2528
	.bits	64,8			; ASCII[63][2] @ 2536
	.bits	64,8			; ASCII[63][3] @ 2544
	.bits	64,8			; ASCII[63][4] @ 2552
	.bits	0,8			; ASCII[64][0] @ 2560
	.bits	1,8			; ASCII[64][1] @ 2568
	.bits	2,8			; ASCII[64][2] @ 2576
	.bits	4,8			; ASCII[64][3] @ 2584
	.bits	0,8			; ASCII[64][4] @ 2592
	.bits	32,8			; ASCII[65][0] @ 2600
	.bits	84,8			; ASCII[65][1] @ 2608
	.bits	84,8			; ASCII[65][2] @ 2616
	.bits	84,8			; ASCII[65][3] @ 2624
	.bits	120,8			; ASCII[65][4] @ 2632
	.bits	127,8			; ASCII[66][0] @ 2640
	.bits	72,8			; ASCII[66][1] @ 2648
	.bits	68,8			; ASCII[66][2] @ 2656
	.bits	68,8			; ASCII[66][3] @ 2664
	.bits	56,8			; ASCII[66][4] @ 2672
	.bits	56,8			; ASCII[67][0] @ 2680
	.bits	68,8			; ASCII[67][1] @ 2688
	.bits	68,8			; ASCII[67][2] @ 2696
	.bits	68,8			; ASCII[67][3] @ 2704
	.bits	32,8			; ASCII[67][4] @ 2712
	.bits	56,8			; ASCII[68][0] @ 2720
	.bits	68,8			; ASCII[68][1] @ 2728
	.bits	68,8			; ASCII[68][2] @ 2736
	.bits	72,8			; ASCII[68][3] @ 2744
	.bits	127,8			; ASCII[68][4] @ 2752
	.bits	56,8			; ASCII[69][0] @ 2760
	.bits	84,8			; ASCII[69][1] @ 2768
	.bits	84,8			; ASCII[69][2] @ 2776
	.bits	84,8			; ASCII[69][3] @ 2784
	.bits	24,8			; ASCII[69][4] @ 2792
	.bits	8,8			; ASCII[70][0] @ 2800
	.bits	126,8			; ASCII[70][1] @ 2808
	.bits	9,8			; ASCII[70][2] @ 2816
	.bits	1,8			; ASCII[70][3] @ 2824
	.bits	2,8			; ASCII[70][4] @ 2832
	.bits	12,8			; ASCII[71][0] @ 2840
	.bits	82,8			; ASCII[71][1] @ 2848
	.bits	82,8			; ASCII[71][2] @ 2856
	.bits	82,8			; ASCII[71][3] @ 2864
	.bits	62,8			; ASCII[71][4] @ 2872
	.bits	127,8			; ASCII[72][0] @ 2880
	.bits	8,8			; ASCII[72][1] @ 2888
	.bits	4,8			; ASCII[72][2] @ 2896
	.bits	4,8			; ASCII[72][3] @ 2904
	.bits	120,8			; ASCII[72][4] @ 2912
	.bits	0,8			; ASCII[73][0] @ 2920
	.bits	68,8			; ASCII[73][1] @ 2928
	.bits	125,8			; ASCII[73][2] @ 2936
	.bits	64,8			; ASCII[73][3] @ 2944
	.bits	0,8			; ASCII[73][4] @ 2952
	.bits	32,8			; ASCII[74][0] @ 2960
	.bits	64,8			; ASCII[74][1] @ 2968
	.bits	68,8			; ASCII[74][2] @ 2976
	.bits	61,8			; ASCII[74][3] @ 2984
	.bits	0,8			; ASCII[74][4] @ 2992
	.bits	127,8			; ASCII[75][0] @ 3000
	.bits	16,8			; ASCII[75][1] @ 3008
	.bits	40,8			; ASCII[75][2] @ 3016
	.bits	68,8			; ASCII[75][3] @ 3024
	.bits	0,8			; ASCII[75][4] @ 3032
	.bits	0,8			; ASCII[76][0] @ 3040
	.bits	65,8			; ASCII[76][1] @ 3048
	.bits	127,8			; ASCII[76][2] @ 3056
	.bits	64,8			; ASCII[76][3] @ 3064
	.bits	0,8			; ASCII[76][4] @ 3072
	.bits	124,8			; ASCII[77][0] @ 3080
	.bits	4,8			; ASCII[77][1] @ 3088
	.bits	24,8			; ASCII[77][2] @ 3096
	.bits	4,8			; ASCII[77][3] @ 3104
	.bits	120,8			; ASCII[77][4] @ 3112
	.bits	124,8			; ASCII[78][0] @ 3120
	.bits	8,8			; ASCII[78][1] @ 3128
	.bits	4,8			; ASCII[78][2] @ 3136
	.bits	4,8			; ASCII[78][3] @ 3144
	.bits	120,8			; ASCII[78][4] @ 3152
	.bits	56,8			; ASCII[79][0] @ 3160
	.bits	68,8			; ASCII[79][1] @ 3168
	.bits	68,8			; ASCII[79][2] @ 3176
	.bits	68,8			; ASCII[79][3] @ 3184
	.bits	56,8			; ASCII[79][4] @ 3192
	.bits	124,8			; ASCII[80][0] @ 3200
	.bits	20,8			; ASCII[80][1] @ 3208
	.bits	20,8			; ASCII[80][2] @ 3216
	.bits	20,8			; ASCII[80][3] @ 3224
	.bits	8,8			; ASCII[80][4] @ 3232
	.bits	8,8			; ASCII[81][0] @ 3240
	.bits	20,8			; ASCII[81][1] @ 3248
	.bits	20,8			; ASCII[81][2] @ 3256
	.bits	24,8			; ASCII[81][3] @ 3264
	.bits	124,8			; ASCII[81][4] @ 3272
	.bits	124,8			; ASCII[82][0] @ 3280
	.bits	8,8			; ASCII[82][1] @ 3288
	.bits	4,8			; ASCII[82][2] @ 3296
	.bits	4,8			; ASCII[82][3] @ 3304
	.bits	8,8			; ASCII[82][4] @ 3312
	.bits	72,8			; ASCII[83][0] @ 3320
	.bits	84,8			; ASCII[83][1] @ 3328
	.bits	84,8			; ASCII[83][2] @ 3336
	.bits	84,8			; ASCII[83][3] @ 3344
	.bits	32,8			; ASCII[83][4] @ 3352
	.bits	4,8			; ASCII[84][0] @ 3360
	.bits	63,8			; ASCII[84][1] @ 3368
	.bits	68,8			; ASCII[84][2] @ 3376
	.bits	64,8			; ASCII[84][3] @ 3384
	.bits	32,8			; ASCII[84][4] @ 3392
	.bits	60,8			; ASCII[85][0] @ 3400
	.bits	64,8			; ASCII[85][1] @ 3408
	.bits	64,8			; ASCII[85][2] @ 3416
	.bits	32,8			; ASCII[85][3] @ 3424
	.bits	124,8			; ASCII[85][4] @ 3432
	.bits	28,8			; ASCII[86][0] @ 3440
	.bits	32,8			; ASCII[86][1] @ 3448
	.bits	64,8			; ASCII[86][2] @ 3456
	.bits	32,8			; ASCII[86][3] @ 3464
	.bits	28,8			; ASCII[86][4] @ 3472
	.bits	60,8			; ASCII[87][0] @ 3480
	.bits	64,8			; ASCII[87][1] @ 3488
	.bits	48,8			; ASCII[87][2] @ 3496
	.bits	64,8			; ASCII[87][3] @ 3504
	.bits	60,8			; ASCII[87][4] @ 3512
	.bits	68,8			; ASCII[88][0] @ 3520
	.bits	40,8			; ASCII[88][1] @ 3528
	.bits	16,8			; ASCII[88][2] @ 3536
	.bits	40,8			; ASCII[88][3] @ 3544
	.bits	68,8			; ASCII[88][4] @ 3552
	.bits	12,8			; ASCII[89][0] @ 3560
	.bits	80,8			; ASCII[89][1] @ 3568
	.bits	80,8			; ASCII[89][2] @ 3576
	.bits	80,8			; ASCII[89][3] @ 3584
	.bits	60,8			; ASCII[89][4] @ 3592
	.bits	68,8			; ASCII[90][0] @ 3600
	.bits	100,8			; ASCII[90][1] @ 3608
	.bits	84,8			; ASCII[90][2] @ 3616
	.bits	76,8			; ASCII[90][3] @ 3624
	.bits	68,8			; ASCII[90][4] @ 3632
	.bits	0,8			; ASCII[91][0] @ 3640
	.bits	8,8			; ASCII[91][1] @ 3648
	.bits	54,8			; ASCII[91][2] @ 3656
	.bits	65,8			; ASCII[91][3] @ 3664
	.bits	0,8			; ASCII[91][4] @ 3672
	.bits	0,8			; ASCII[92][0] @ 3680
	.bits	0,8			; ASCII[92][1] @ 3688
	.bits	127,8			; ASCII[92][2] @ 3696
	.bits	0,8			; ASCII[92][3] @ 3704
	.bits	0,8			; ASCII[92][4] @ 3712
	.bits	0,8			; ASCII[93][0] @ 3720
	.bits	65,8			; ASCII[93][1] @ 3728
	.bits	54,8			; ASCII[93][2] @ 3736
	.bits	8,8			; ASCII[93][3] @ 3744
	.bits	0,8			; ASCII[93][4] @ 3752
	.bits	16,8			; ASCII[94][0] @ 3760
	.bits	8,8			; ASCII[94][1] @ 3768
	.bits	8,8			; ASCII[94][2] @ 3776
	.bits	16,8			; ASCII[94][3] @ 3784
	.bits	8,8			; ASCII[94][4] @ 3792
	.bits	31,8			; ASCII[95][0] @ 3800
	.bits	36,8			; ASCII[95][1] @ 3808
	.bits	124,8			; ASCII[95][2] @ 3816
	.bits	36,8			; ASCII[95][3] @ 3824
	.bits	31,8			; ASCII[95][4] @ 3832

$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("ASCII")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("ASCII")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr ASCII]
	.dwattr $C$DW$1, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x16)
	.global	Screen
Screen:	.usect	".bss:Screen",504,1
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("Screen")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("Screen")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr Screen]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$2, DW_AT_decl_column(0x09)
	.global	Masks
	.sect	".const:.string"
	.align	1
	.elfsym	Masks,SYM_SIZE(8)
Masks:
	.bits	1,8			; Masks[0] @ 0
	.bits	2,8			; Masks[1] @ 8
	.bits	4,8			; Masks[2] @ 16
	.bits	8,8			; Masks[3] @ 24
	.bits	16,8			; Masks[4] @ 32
	.bits	32,8			; Masks[5] @ 40
	.bits	64,8			; Masks[6] @ 48
	.bits	128,8			; Masks[7] @ 56

$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("Masks")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("Masks")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr Masks]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x205)
	.dwattr $C$DW$3, DW_AT_decl_column(0x15)
;	C:\ti\ccsv6\tools\compiler\ti-cgt-arm_5.2.2\bin\armacpia.exe -@C:\\Users\\valvano\\AppData\\Local\\Temp\\0415212 
	.sect	".text"
	.clink
	.thumbfunc lcdwrite
	.thumb

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdwrite")
	.dwattr $C$DW$4, DW_AT_low_pc(lcdwrite)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("lcdwrite")
	.dwattr $C$DW$4, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0xe6)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$4, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$4, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 230,column 61,is_stmt,address lcdwrite,isa 1

	.dwfde $C$DW$CIE, lcdwrite
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_name("type")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("type")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg0]
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("message")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("message")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: lcdwrite                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
lcdwrite:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("type")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("type")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg13 0]
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("message")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("message")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg13 1]
;----------------------------------------------------------------------
; 230 | void static lcdwrite(enum typeOfWrite type, uint8_t message){          
;----------------------------------------------------------------------
        STRB      A2, [SP, #1]          ; [DPU_3_PIPE] |230| 
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |230| 
	.dwpsn	file "../Nokia5110.c",line 231,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 231 | if(type == COMMAND){                                                   
; 232 |                                       // wait until SSI0 not busy/trans
;     | mit FIFO empty                                                         
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |231| 
        CBNZ      A1, ||$C$L3||         ; [] 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |231| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 233,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 233 | while((SSI0_SR_R&SSI_SR_BSY)==SSI_SR_BSY){};                           
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 233
;*   Loop closing brace source line  : 233
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../Nokia5110.c",line 233,column 11,is_stmt,isa 1
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |233| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |233| 
        LSRS      A1, A1, #5            ; [DPU_3_PIPE] |233| 
        BCS       ||$C$L1||             ; [DPU_3_PIPE] |233| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |233| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 234,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 234 | DC = DC_COMMAND;                                                       
;----------------------------------------------------------------------
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |234| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |234| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |234| 
	.dwpsn	file "../Nokia5110.c",line 235,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 235 | SSI0_DR_R = message;                // command out                     
; 236 |                                     // wait until SSI0 not busy/transmi
;     | t FIFO empty                                                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON3           ; [DPU_3_PIPE] |235| 
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |235| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |235| 
	.dwpsn	file "../Nokia5110.c",line 237,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 237 | while((SSI0_SR_R&SSI_SR_BSY)==SSI_SR_BSY){};                           
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 237
;*   Loop closing brace source line  : 237
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../Nokia5110.c",line 237,column 11,is_stmt,isa 1
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |237| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |237| 
        LSRS      A1, A1, #5            ; [DPU_3_PIPE] |237| 
        BCS       ||$C$L2||             ; [DPU_3_PIPE] |237| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |237| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 238,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 238 | } else{                                                                
;----------------------------------------------------------------------
        B         ||$C$L4||             ; [DPU_3_PIPE] |238| 
        ; BRANCH OCCURS {||$C$L4||}      ; [] |238| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L3||
;*
;*   Loop source line                : 239
;*   Loop closing brace source line  : 239
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../Nokia5110.c",line 239,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
; 239 | while((SSI0_SR_R&SSI_SR_TNF)==0){}; // wait until transmit FIFO not ful
;     | l                                                                      
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |239| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |239| 
        LSRS      A1, A1, #2            ; [DPU_3_PIPE] |239| 
        BCC       ||$C$L3||             ; [DPU_3_PIPE] |239| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |239| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 240,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 240 | DC = DC_DATA;                                                          
;----------------------------------------------------------------------
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |240| 
        MOVS      A1, #64               ; [DPU_3_PIPE] |240| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |240| 
	.dwpsn	file "../Nokia5110.c",line 241,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 241 | SSI0_DR_R = message;                // data out                        
;----------------------------------------------------------------------
        LDR       A2, $C$CON3           ; [DPU_3_PIPE] |241| 
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |241| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |241| 
	.dwpsn	file "../Nokia5110.c",line 243,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0xf3)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.thumbfunc lcddatawrite
	.thumb

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("lcddatawrite")
	.dwattr $C$DW$10, DW_AT_low_pc(lcddatawrite)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("lcddatawrite")
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0xf4)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$10, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$10, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 244,column 39,is_stmt,address lcddatawrite,isa 1

	.dwfde $C$DW$CIE, lcddatawrite
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: lcddatawrite                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,SP,SR                                         *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
lcddatawrite:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 244 | void static lcddatawrite(uint8_t data){                                
;----------------------------------------------------------------------
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |244| 
	.dwpsn	file "../Nokia5110.c",line 245,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 245 | while((SSI0_SR_R&0x00000002)==0){}; // wait until transmit FIFO not ful
;     | l                                                                      
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L5||
;*
;*   Loop source line                : 245
;*   Loop closing brace source line  : 245
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../Nokia5110.c",line 245,column 9,is_stmt,isa 1
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |245| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |245| 
        LSRS      A1, A1, #2            ; [DPU_3_PIPE] |245| 
        BCC       ||$C$L5||             ; [DPU_3_PIPE] |245| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |245| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 246,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 246 | DC = DC_DATA;                                                          
;----------------------------------------------------------------------
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |246| 
        MOVS      A1, #64               ; [DPU_3_PIPE] |246| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |246| 
	.dwpsn	file "../Nokia5110.c",line 247,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 247 | SSI0_DR_R = data;                // data out                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON3           ; [DPU_3_PIPE] |247| 
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |247| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |247| 
	.dwpsn	file "../Nokia5110.c",line 248,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0xf8)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.thumbfunc Nokia5110_Init
	.thumb
	.global	Nokia5110_Init

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_Init")
	.dwattr $C$DW$14, DW_AT_low_pc(Nokia5110_Init)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("Nokia5110_Init")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x103)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x103)
	.dwattr $C$DW$14, DW_AT_decl_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 259,column 26,is_stmt,address Nokia5110_Init,isa 1

	.dwfde $C$DW$CIE, Nokia5110_Init
;----------------------------------------------------------------------
; 259 | void Nokia5110_Init(void){                                             
; 260 | volatile uint32_t delay;                                               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_Init                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
Nokia5110_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("delay")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("delay")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../Nokia5110.c",line 261,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 261 | SYSCTL_RCGCSSI_R |= 0x01;             // activate SSI0                 
;----------------------------------------------------------------------
        LDR       A2, $C$CON4           ; [DPU_3_PIPE] |261| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |261| 
        ORR       A1, A1, #1            ; [DPU_3_PIPE] |261| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |261| 
	.dwpsn	file "../Nokia5110.c",line 262,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 262 | SYSCTL_RCGCGPIO_R |= 0x01;            // activate port A               
;----------------------------------------------------------------------
        LDR       A2, $C$CON5           ; [DPU_3_PIPE] |262| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |262| 
        ORR       A1, A1, #1            ; [DPU_3_PIPE] |262| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |262| 
	.dwpsn	file "../Nokia5110.c",line 263,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 263 | delay = SYSCTL_RCGC2_R;               // allow time to finish activatin
;     | g                                                                      
;----------------------------------------------------------------------
        LDR       A1, $C$CON6           ; [DPU_3_PIPE] |263| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |263| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |263| 
	.dwpsn	file "../Nokia5110.c",line 264,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 264 | GPIO_PORTA_DIR_R |= 0xC0;             // make PA6,7 out                
;----------------------------------------------------------------------
        LDR       A2, $C$CON7           ; [DPU_3_PIPE] |264| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |264| 
        ORR       A1, A1, #192          ; [DPU_3_PIPE] |264| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |264| 
	.dwpsn	file "../Nokia5110.c",line 265,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 265 | GPIO_PORTA_AFSEL_R |= 0x2C;           // enable alt funct on PA2,3,5   
;----------------------------------------------------------------------
        LDR       A2, $C$CON8           ; [DPU_3_PIPE] |265| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |265| 
        ORR       A1, A1, #44           ; [DPU_3_PIPE] |265| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |265| 
	.dwpsn	file "../Nokia5110.c",line 266,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 266 | GPIO_PORTA_AFSEL_R &= ~0xC0;          // disable alt funct on PA6,7    
;----------------------------------------------------------------------
        LDR       A2, $C$CON8           ; [DPU_3_PIPE] |266| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |266| 
        BIC       A1, A1, #192          ; [DPU_3_PIPE] |266| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |266| 
	.dwpsn	file "../Nokia5110.c",line 267,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 267 | GPIO_PORTA_DEN_R |= 0xEC;             // enable digital I/O on PA2,3,5,
;     | 6,7                                                                    
; 268 |                                       // configure PA2,3,5 as SSI      
;----------------------------------------------------------------------
        LDR       A2, $C$CON9           ; [DPU_3_PIPE] |267| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |267| 
        ORR       A1, A1, #236          ; [DPU_3_PIPE] |267| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |267| 
	.dwpsn	file "../Nokia5110.c",line 269,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 269 | GPIO_PORTA_PCTL_R = (GPIO_PORTA_PCTL_R&0xFF0F00FF)+0x00202200;         
; 270 |                                       // configure PA6,7 as GPIO       
;----------------------------------------------------------------------
        LDR       A2, $C$CON10          ; [DPU_3_PIPE] |269| 
        LDR       A1, $C$CON12          ; [DPU_3_PIPE] |269| 
        LDR       A3, $C$CON10          ; [DPU_3_PIPE] |269| 
        LDR       A4, [A2, #0]          ; [DPU_3_PIPE] |269| 
        LDR       A2, $C$CON11          ; [DPU_3_PIPE] |269| 
        ANDS      A1, A1, A4            ; [DPU_3_PIPE] |269| 
        ADDS      A2, A2, A1            ; [DPU_3_PIPE] |269| 
        STR       A2, [A3, #0]          ; [DPU_3_PIPE] |269| 
	.dwpsn	file "../Nokia5110.c",line 271,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 271 | GPIO_PORTA_PCTL_R = (GPIO_PORTA_PCTL_R&0x00FFFFFF)+0x00000000;         
;----------------------------------------------------------------------
        LDR       A1, $C$CON10          ; [DPU_3_PIPE] |271| 
        LDR       A2, $C$CON10          ; [DPU_3_PIPE] |271| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |271| 
        BIC       A1, A1, #-16777216    ; [DPU_3_PIPE] |271| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |271| 
	.dwpsn	file "../Nokia5110.c",line 272,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 272 | GPIO_PORTA_AMSEL_R &= ~0xEC;          // disable analog functionality o
;     | n PA2,3,5,6,7                                                          
;----------------------------------------------------------------------
        LDR       A2, $C$CON13          ; [DPU_3_PIPE] |272| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |272| 
        BIC       A1, A1, #236          ; [DPU_3_PIPE] |272| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |272| 
	.dwpsn	file "../Nokia5110.c",line 273,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 273 | SSI0_CR1_R &= ~SSI_CR1_SSE;           // disable SSI                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |273| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |273| 
        BIC       A1, A1, #2            ; [DPU_3_PIPE] |273| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |273| 
	.dwpsn	file "../Nokia5110.c",line 274,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 274 | SSI0_CR1_R &= ~SSI_CR1_MS;            // master mode                   
; 275 |                                       // configure for system clock/PLL
;     |  baud clock source                                                     
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |274| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |274| 
        BIC       A1, A1, #4            ; [DPU_3_PIPE] |274| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |274| 
	.dwpsn	file "../Nokia5110.c",line 276,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 276 | SSI0_CC_R = (SSI0_CC_R&~SSI_CC_CS_M)+SSI_CC_CS_SYSPLL;                 
; 277 |                                       // clock divider for 3.33 MHz SSI
;     | Clk (80 MHz PLL/24)                                                    
; 278 |                                       // SysClk/(CPSDVSR*(1+SCR))      
; 279 |                                       // 80/(24*(1+0)) = 3.33 MHz (slow
;     | er than 4 MHz)                                                         
;----------------------------------------------------------------------
        LDR       A1, $C$CON15          ; [DPU_3_PIPE] |276| 
        LDR       A2, $C$CON15          ; [DPU_3_PIPE] |276| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |276| 
        BIC       A1, A1, #15           ; [DPU_3_PIPE] |276| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |276| 
	.dwpsn	file "../Nokia5110.c",line 280,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 280 | SSI0_CPSR_R = (SSI0_CPSR_R&~SSI_CPSR_CPSDVSR_M)+24; // must be even num
;     | ber                                                                    
;----------------------------------------------------------------------
        LDR       A1, $C$CON16          ; [DPU_3_PIPE] |280| 
        LDR       A2, $C$CON16          ; [DPU_3_PIPE] |280| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |280| 
        BIC       A1, A1, #255          ; [DPU_3_PIPE] |280| 
        ADDS      A1, A1, #24           ; [DPU_3_PIPE] |280| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |280| 
	.dwpsn	file "../Nokia5110.c",line 281,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 281 | SSI0_CR0_R &= ~(SSI_CR0_SCR_M |       // SCR = 0 (3.33 Mbps data rate) 
; 282 |                 SSI_CR0_SPH |         // SPH = 0                       
; 283 |                 SSI_CR0_SPO);         // SPO = 0                       
; 284 |                                       // FRF = Freescale format        
;----------------------------------------------------------------------
        LDR       A2, $C$CON17          ; [DPU_3_PIPE] |281| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |281| 
        BFC       A1, #6, #10           ; [DPU_3_PIPE] |281| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |281| 
	.dwpsn	file "../Nokia5110.c",line 285,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 285 | SSI0_CR0_R = (SSI0_CR0_R&~SSI_CR0_FRF_M)+SSI_CR0_FRF_MOTO;             
; 286 |                                       // DSS = 8-bit data              
;----------------------------------------------------------------------
        LDR       A1, $C$CON17          ; [DPU_3_PIPE] |285| 
        LDR       A2, $C$CON17          ; [DPU_3_PIPE] |285| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |285| 
        BIC       A1, A1, #48           ; [DPU_3_PIPE] |285| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |285| 
	.dwpsn	file "../Nokia5110.c",line 287,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 287 | SSI0_CR0_R = (SSI0_CR0_R&~SSI_CR0_DSS_M)+SSI_CR0_DSS_8;                
;----------------------------------------------------------------------
        LDR       A1, $C$CON17          ; [DPU_3_PIPE] |287| 
        LDR       A2, $C$CON17          ; [DPU_3_PIPE] |287| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |287| 
        BIC       A1, A1, #15           ; [DPU_3_PIPE] |287| 
        ADDS      A1, A1, #7            ; [DPU_3_PIPE] |287| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |287| 
	.dwpsn	file "../Nokia5110.c",line 288,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 288 | SSI0_CR1_R |= SSI_CR1_SSE;            // enable SSI                    
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |288| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |288| 
        ORR       A1, A1, #2            ; [DPU_3_PIPE] |288| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |288| 
	.dwpsn	file "../Nokia5110.c",line 290,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 290 | RESET = RESET_LOW;                    // reset the LCD to a known state
;----------------------------------------------------------------------
        LDR       A2, $C$CON18          ; [DPU_3_PIPE] |290| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |290| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |290| 
	.dwpsn	file "../Nokia5110.c",line 291,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 291 | for(delay=0; delay<10; delay=delay+1);// delay minimum 100 ns          
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |291| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |291| 
	.dwpsn	file "../Nokia5110.c",line 291,column 16,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |291| 
        CMP       A1, #10               ; [DPU_3_PIPE] |291| 
        BCS       ||$C$L7||             ; [DPU_3_PIPE] |291| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |291| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L6||
;*
;*   Loop source line                : 291
;*   Loop closing brace source line  : 291
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../Nokia5110.c",line 291,column 26,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |291| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |291| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |291| 
	.dwpsn	file "../Nokia5110.c",line 291,column 16,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |291| 
        CMP       A1, #10               ; [DPU_3_PIPE] |291| 
        BCC       ||$C$L6||             ; [DPU_3_PIPE] |291| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |291| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
	.dwpsn	file "../Nokia5110.c",line 292,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 292 | RESET = RESET_HIGH;                   // negative logic                
;----------------------------------------------------------------------
        LDR       A2, $C$CON18          ; [DPU_3_PIPE] |292| 
        MOVS      A1, #128              ; [DPU_3_PIPE] |292| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |292| 
	.dwpsn	file "../Nokia5110.c",line 294,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 294 | lcdwrite(COMMAND, 0x21);              // chip active; horizontal addres
;     | sing mode (V = 0); use extended instruction set (H = 1)                
; 295 |                                       // set LCD Vop (contrast), which
;     | may require some tweaking:                                             
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |294| 
        MOVS      A2, #33               ; [DPU_3_PIPE] |294| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("lcdwrite")
	.dwattr $C$DW$16, DW_AT_TI_call
        BL        lcdwrite              ; [DPU_3_PIPE] |294| 
        ; CALL OCCURS {lcdwrite }        ; [] |294| 
	.dwpsn	file "../Nokia5110.c",line 296,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 296 | lcdwrite(COMMAND, CONTRAST);          // try 0xB1 (for 3.3V red SparkFu
;     | n), 0xB8 (for 3.3V blue SparkFun), 0xBF if your display is too dark, or
;     |  0x80 to 0xFF if experimenting                                         
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |296| 
        MOVS      A2, #191              ; [DPU_3_PIPE] |296| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("lcdwrite")
	.dwattr $C$DW$17, DW_AT_TI_call
        BL        lcdwrite              ; [DPU_3_PIPE] |296| 
        ; CALL OCCURS {lcdwrite }        ; [] |296| 
	.dwpsn	file "../Nokia5110.c",line 297,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 297 | lcdwrite(COMMAND, 0x04);              // set temp coefficient          
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |297| 
        MOVS      A2, #4                ; [DPU_3_PIPE] |297| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("lcdwrite")
	.dwattr $C$DW$18, DW_AT_TI_call
        BL        lcdwrite              ; [DPU_3_PIPE] |297| 
        ; CALL OCCURS {lcdwrite }        ; [] |297| 
	.dwpsn	file "../Nokia5110.c",line 298,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 298 | lcdwrite(COMMAND, 0x14);              // LCD bias mode 1:48: try 0x13 o
;     | r 0x14                                                                 
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |298| 
        MOVS      A2, #20               ; [DPU_3_PIPE] |298| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("lcdwrite")
	.dwattr $C$DW$19, DW_AT_TI_call
        BL        lcdwrite              ; [DPU_3_PIPE] |298| 
        ; CALL OCCURS {lcdwrite }        ; [] |298| 
	.dwpsn	file "../Nokia5110.c",line 300,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 300 | lcdwrite(COMMAND, 0x20);              // we must send 0x20 before modif
;     | ying the display control mode                                          
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |300| 
        MOVS      A2, #32               ; [DPU_3_PIPE] |300| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("lcdwrite")
	.dwattr $C$DW$20, DW_AT_TI_call
        BL        lcdwrite              ; [DPU_3_PIPE] |300| 
        ; CALL OCCURS {lcdwrite }        ; [] |300| 
	.dwpsn	file "../Nokia5110.c",line 301,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 301 | lcdwrite(COMMAND, 0x0C);              // set display control to normal
;     | mode: 0x0D for inverse                                                 
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |301| 
        MOVS      A2, #12               ; [DPU_3_PIPE] |301| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("lcdwrite")
	.dwattr $C$DW$21, DW_AT_TI_call
        BL        lcdwrite              ; [DPU_3_PIPE] |301| 
        ; CALL OCCURS {lcdwrite }        ; [] |301| 
	.dwpsn	file "../Nokia5110.c",line 302,column 1,is_stmt,isa 1
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x12e)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.thumbfunc Nokia5110_OutChar
	.thumb
	.global	Nokia5110_OutChar

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$23, DW_AT_low_pc(Nokia5110_OutChar)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("Nokia5110_OutChar")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x13c)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$23, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$23, DW_AT_decl_column(0x06)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../Nokia5110.c",line 316,column 34,is_stmt,address Nokia5110_OutChar,isa 1

	.dwfde $C$DW$CIE, Nokia5110_OutChar
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_OutChar                                          *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                  *
;*****************************************************************************
Nokia5110_OutChar:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg13 0]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg13 4]
;----------------------------------------------------------------------
; 316 | void Nokia5110_OutChar(char data){int i;                               
;----------------------------------------------------------------------
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |316| 
	.dwpsn	file "../Nokia5110.c",line 317,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 317 | lcddatawrite(0x00);        // blank vertical line padding              
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |317| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("lcddatawrite")
	.dwattr $C$DW$27, DW_AT_TI_call
        BL        lcddatawrite          ; [DPU_3_PIPE] |317| 
        ; CALL OCCURS {lcddatawrite }    ; [] |317| 
	.dwpsn	file "../Nokia5110.c",line 318,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 318 | for(i=0; i<5; i=i+1){                                                  
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |318| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |318| 
	.dwpsn	file "../Nokia5110.c",line 318,column 12,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |318| 
        CMP       A1, #5                ; [DPU_3_PIPE] |318| 
        BGE       ||$C$L9||             ; [DPU_3_PIPE] |318| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |318| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L8||
;*
;*   Loop source line                : 318
;*   Loop closing brace source line  : 320
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L8||:    
	.dwpsn	file "../Nokia5110.c",line 319,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 319 | lcddatawrite(ASCII[data - 0x20][i]);                                   
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |319| 
        LDR       A2, $C$CON19          ; [DPU_3_PIPE] |319| 
        LDR       A3, [SP, #4]          ; [DPU_3_PIPE] |319| 
        ADD       A1, A1, A1, LSL #2    ; [DPU_3_PIPE] |319| 
        SUBS      A1, A1, #160          ; [DPU_3_PIPE] |319| 
        ADDS      A2, A2, A1            ; [DPU_3_PIPE] |319| 
        LDRB      A1, [A3, +A2]         ; [DPU_3_PIPE] |319| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("lcddatawrite")
	.dwattr $C$DW$28, DW_AT_TI_call
        BL        lcddatawrite          ; [DPU_3_PIPE] |319| 
        ; CALL OCCURS {lcddatawrite }    ; [] |319| 
	.dwpsn	file "../Nokia5110.c",line 318,column 17,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |318| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |318| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |318| 
	.dwpsn	file "../Nokia5110.c",line 318,column 12,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |318| 
        CMP       A1, #5                ; [DPU_3_PIPE] |318| 
        BLT       ||$C$L8||             ; [DPU_3_PIPE] |318| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |318| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "../Nokia5110.c",line 321,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 321 | lcddatawrite(0x00);        // blank vertical line padding              
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |321| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("lcddatawrite")
	.dwattr $C$DW$29, DW_AT_TI_call
        BL        lcddatawrite          ; [DPU_3_PIPE] |321| 
        ; CALL OCCURS {lcddatawrite }    ; [] |321| 
	.dwpsn	file "../Nokia5110.c",line 322,column 1,is_stmt,isa 1
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return
        POP       {A2, A3, A4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x142)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.clink
	.thumbfunc Nokia5110_OutString
	.thumb
	.global	Nokia5110_OutString

$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_OutString")
	.dwattr $C$DW$31, DW_AT_low_pc(Nokia5110_OutString)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("Nokia5110_OutString")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x14b)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$31, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$31, DW_AT_decl_column(0x06)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 331,column 36,is_stmt,address Nokia5110_OutString,isa 1

	.dwfde $C$DW$CIE, Nokia5110_OutString
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("ptr")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_OutString                                        *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
Nokia5110_OutString:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("ptr")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("ptr")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 331 | void Nokia5110_OutString(char *ptr){                                   
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |331| 
	.dwpsn	file "../Nokia5110.c",line 332,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 332 | while(*ptr){                                                           
;----------------------------------------------------------------------
        B         ||$C$L11||            ; [DPU_3_PIPE] |332| 
        ; BRANCH OCCURS {||$C$L11||}     ; [] |332| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../Nokia5110.c",line 333,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 333 | Nokia5110_OutChar((unsigned char)*ptr);                                
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |333| 
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |333| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$34, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |333| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |333| 
	.dwpsn	file "../Nokia5110.c",line 334,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 334 | ptr = ptr + 1;                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |334| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |334| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |334| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L11||
;* --------------------------------------------------------------------------*
||$C$L11||:    
	.dwpsn	file "../Nokia5110.c",line 332,column 3,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |332| 
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |332| 
        CMP       A1, #0                ; [DPU_3_PIPE] |332| 
        BNE       ||$C$L10||            ; [DPU_3_PIPE] |332| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |332| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 336,column 1,is_stmt,isa 1
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x150)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	1073774604,32
	.align	4
||$C$CON2||:	.bits	1073758464,32
	.align	4
||$C$CON3||:	.bits	1073774600,32
	.sect	".text"
	.clink
	.thumbfunc Nokia5110_OutUDec
	.thumb
	.global	Nokia5110_OutUDec

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_OutUDec")
	.dwattr $C$DW$36, DW_AT_low_pc(Nokia5110_OutUDec)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("Nokia5110_OutUDec")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x158)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$36, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x158)
	.dwattr $C$DW$36, DW_AT_decl_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 344,column 35,is_stmt,address Nokia5110_OutUDec,isa 1

	.dwfde $C$DW$CIE, Nokia5110_OutUDec
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_OutUDec                                          *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
Nokia5110_OutUDec:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 344 | void Nokia5110_OutUDec(uint16_t n){                                    
;----------------------------------------------------------------------
        STRH      A1, [SP, #0]          ; [DPU_3_PIPE] |344| 
	.dwpsn	file "../Nokia5110.c",line 345,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 345 | if(n < 10){                                                            
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |345| 
        CMP       A1, #10               ; [DPU_3_PIPE] |345| 
        BGE       ||$C$L12||            ; [DPU_3_PIPE] |345| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |345| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 346,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 346 | Nokia5110_OutString("    ");                                           
;----------------------------------------------------------------------
        ADR       A1, $C$SL1            ; [DPU_3_PIPE] |346| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("Nokia5110_OutString")
	.dwattr $C$DW$39, DW_AT_TI_call
        BL        Nokia5110_OutString   ; [DPU_3_PIPE] |346| 
        ; CALL OCCURS {Nokia5110_OutString }  ; [] |346| 
	.dwpsn	file "../Nokia5110.c",line 347,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 347 | Nokia5110_OutChar(n+'0'); /* n is between 0 and 9 */                   
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |347| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |347| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |347| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$40, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |347| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |347| 
	.dwpsn	file "../Nokia5110.c",line 348,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 348 | } else if(n<100){                                                      
;----------------------------------------------------------------------
        B         ||$C$L16||            ; [DPU_3_PIPE] |348| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |348| 
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../Nokia5110.c",line 348,column 10,is_stmt,isa 1
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |348| 
        CMP       A1, #100              ; [DPU_3_PIPE] |348| 
        BGE       ||$C$L13||            ; [DPU_3_PIPE] |348| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |348| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 349,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 349 | Nokia5110_OutString("   ");                                            
;----------------------------------------------------------------------
        ADR       A1, $C$SL2            ; [DPU_3_PIPE] |349| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("Nokia5110_OutString")
	.dwattr $C$DW$41, DW_AT_TI_call
        BL        Nokia5110_OutString   ; [DPU_3_PIPE] |349| 
        ; CALL OCCURS {Nokia5110_OutString }  ; [] |349| 
	.dwpsn	file "../Nokia5110.c",line 350,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 350 | Nokia5110_OutChar(n/10+'0'); /* tens digit */                          
;----------------------------------------------------------------------
        LDRH      A2, [SP, #0]          ; [DPU_3_PIPE] |350| 
        MOVS      A1, #10               ; [DPU_3_PIPE] |350| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |350| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |350| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |350| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$42, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |350| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |350| 
	.dwpsn	file "../Nokia5110.c",line 351,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 351 | Nokia5110_OutChar(n%10+'0'); /* ones digit */                          
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |351| 
        MOVS      A3, #10               ; [DPU_3_PIPE] |351| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |351| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |351| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |351| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |351| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |351| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$43, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |351| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |351| 
	.dwpsn	file "../Nokia5110.c",line 352,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 352 | } else if(n<1000){                                                     
;----------------------------------------------------------------------
        B         ||$C$L16||            ; [DPU_3_PIPE] |352| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |352| 
;* --------------------------------------------------------------------------*
||$C$L13||:    
	.dwpsn	file "../Nokia5110.c",line 352,column 10,is_stmt,isa 1
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |352| 
        CMP       A1, #1000             ; [DPU_3_PIPE] |352| 
        BGE       ||$C$L14||            ; [DPU_3_PIPE] |352| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |352| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 353,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 353 | Nokia5110_OutString("  ");                                             
;----------------------------------------------------------------------
        ADR       A1, $C$SL3            ; [DPU_3_PIPE] |353| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("Nokia5110_OutString")
	.dwattr $C$DW$44, DW_AT_TI_call
        BL        Nokia5110_OutString   ; [DPU_3_PIPE] |353| 
        ; CALL OCCURS {Nokia5110_OutString }  ; [] |353| 
	.dwpsn	file "../Nokia5110.c",line 354,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 354 | Nokia5110_OutChar(n/100+'0'); /* hundreds digit */                     
;----------------------------------------------------------------------
        LDRH      A2, [SP, #0]          ; [DPU_3_PIPE] |354| 
        MOVS      A1, #100              ; [DPU_3_PIPE] |354| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |354| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |354| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |354| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$45, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |354| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |354| 
	.dwpsn	file "../Nokia5110.c",line 355,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 355 | n = n%100;                                                             
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |355| 
        MOVS      A3, #100              ; [DPU_3_PIPE] |355| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |355| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |355| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |355| 
        STRH      A1, [SP, #0]          ; [DPU_3_PIPE] |355| 
	.dwpsn	file "../Nokia5110.c",line 356,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 356 | Nokia5110_OutChar(n/10+'0'); /* tens digit */                          
;----------------------------------------------------------------------
        LDRH      A2, [SP, #0]          ; [DPU_3_PIPE] |356| 
        MOVS      A1, #10               ; [DPU_3_PIPE] |356| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |356| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |356| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |356| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$46, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |356| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |356| 
	.dwpsn	file "../Nokia5110.c",line 357,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 357 | Nokia5110_OutChar(n%10+'0'); /* ones digit */                          
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |357| 
        MOVS      A3, #10               ; [DPU_3_PIPE] |357| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |357| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |357| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |357| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |357| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |357| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$47, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |357| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |357| 
	.dwpsn	file "../Nokia5110.c",line 358,column 3,is_stmt,isa 1
        B         ||$C$L16||            ; [DPU_3_PIPE] |358| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |358| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
	.dwpsn	file "../Nokia5110.c",line 359,column 8,is_stmt,isa 1
;----------------------------------------------------------------------
; 359 | else if(n<10000){                                                      
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |359| 
        MOV       A2, #10000            ; [DPU_3_PIPE] |359| 
        CMP       A2, A1                ; [DPU_3_PIPE] |359| 
        BLE       ||$C$L15||            ; [DPU_3_PIPE] |359| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |359| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 360,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 360 | Nokia5110_OutChar(' ');                                                
;----------------------------------------------------------------------
        MOVS      A1, #32               ; [DPU_3_PIPE] |360| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$48, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |360| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |360| 
	.dwpsn	file "../Nokia5110.c",line 361,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 361 | Nokia5110_OutChar(n/1000+'0'); /* thousands digit */                   
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |361| 
        MOV       A2, #1000             ; [DPU_3_PIPE] |361| 
        UDIV      A1, A1, A2            ; [DPU_3_PIPE] |361| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |361| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |361| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$49, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |361| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |361| 
	.dwpsn	file "../Nokia5110.c",line 362,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 362 | n = n%1000;                                                            
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |362| 
        MOV       A3, #1000             ; [DPU_3_PIPE] |362| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |362| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |362| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |362| 
        STRH      A1, [SP, #0]          ; [DPU_3_PIPE] |362| 
	.dwpsn	file "../Nokia5110.c",line 363,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 363 | Nokia5110_OutChar(n/100+'0'); /* hundreds digit */                     
;----------------------------------------------------------------------
        LDRH      A2, [SP, #0]          ; [DPU_3_PIPE] |363| 
        MOVS      A1, #100              ; [DPU_3_PIPE] |363| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |363| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |363| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |363| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$50, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |363| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |363| 
	.dwpsn	file "../Nokia5110.c",line 364,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 364 | n = n%100;                                                             
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |364| 
        MOVS      A3, #100              ; [DPU_3_PIPE] |364| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |364| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |364| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |364| 
        STRH      A1, [SP, #0]          ; [DPU_3_PIPE] |364| 
	.dwpsn	file "../Nokia5110.c",line 365,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 365 | Nokia5110_OutChar(n/10+'0'); /* tens digit */                          
;----------------------------------------------------------------------
        LDRH      A2, [SP, #0]          ; [DPU_3_PIPE] |365| 
        MOVS      A1, #10               ; [DPU_3_PIPE] |365| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |365| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |365| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |365| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$51, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |365| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |365| 
	.dwpsn	file "../Nokia5110.c",line 366,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 366 | Nokia5110_OutChar(n%10+'0'); /* ones digit */                          
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |366| 
        MOVS      A3, #10               ; [DPU_3_PIPE] |366| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |366| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |366| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |366| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |366| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |366| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$52, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |366| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |366| 
	.dwpsn	file "../Nokia5110.c",line 367,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 368 | else {                                                                 
;----------------------------------------------------------------------
        B         ||$C$L16||            ; [DPU_3_PIPE] |367| 
        ; BRANCH OCCURS {||$C$L16||}     ; [] |367| 
;* --------------------------------------------------------------------------*
||$C$L15||:    
	.dwpsn	file "../Nokia5110.c",line 369,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 369 | Nokia5110_OutChar(n/10000+'0'); /* ten-thousands digit */              
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |369| 
        MOV       A2, #10000            ; [DPU_3_PIPE] |369| 
        UDIV      A1, A1, A2            ; [DPU_3_PIPE] |369| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |369| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |369| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$53, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |369| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |369| 
	.dwpsn	file "../Nokia5110.c",line 370,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 370 | n = n%10000;                                                           
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |370| 
        MOV       A3, #10000            ; [DPU_3_PIPE] |370| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |370| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |370| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |370| 
        STRH      A1, [SP, #0]          ; [DPU_3_PIPE] |370| 
	.dwpsn	file "../Nokia5110.c",line 371,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 371 | Nokia5110_OutChar(n/1000+'0'); /* thousands digit */                   
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |371| 
        MOV       A2, #1000             ; [DPU_3_PIPE] |371| 
        UDIV      A1, A1, A2            ; [DPU_3_PIPE] |371| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |371| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |371| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$54, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |371| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |371| 
	.dwpsn	file "../Nokia5110.c",line 372,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 372 | n = n%1000;                                                            
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |372| 
        MOV       A3, #1000             ; [DPU_3_PIPE] |372| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |372| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |372| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |372| 
        STRH      A1, [SP, #0]          ; [DPU_3_PIPE] |372| 
	.dwpsn	file "../Nokia5110.c",line 373,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 373 | Nokia5110_OutChar(n/100+'0'); /* hundreds digit */                     
;----------------------------------------------------------------------
        LDRH      A2, [SP, #0]          ; [DPU_3_PIPE] |373| 
        MOVS      A1, #100              ; [DPU_3_PIPE] |373| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |373| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |373| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |373| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$55, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |373| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |373| 
	.dwpsn	file "../Nokia5110.c",line 374,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 374 | n = n%100;                                                             
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |374| 
        MOVS      A3, #100              ; [DPU_3_PIPE] |374| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |374| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |374| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |374| 
        STRH      A1, [SP, #0]          ; [DPU_3_PIPE] |374| 
	.dwpsn	file "../Nokia5110.c",line 375,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 375 | Nokia5110_OutChar(n/10+'0'); /* tens digit */                          
;----------------------------------------------------------------------
        LDRH      A2, [SP, #0]          ; [DPU_3_PIPE] |375| 
        MOVS      A1, #10               ; [DPU_3_PIPE] |375| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |375| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |375| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |375| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$56, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |375| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |375| 
	.dwpsn	file "../Nokia5110.c",line 376,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 376 | Nokia5110_OutChar(n%10+'0'); /* ones digit */                          
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |376| 
        MOVS      A3, #10               ; [DPU_3_PIPE] |376| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |376| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |376| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |376| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |376| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |376| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$57, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |376| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |376| 
	.dwpsn	file "../Nokia5110.c",line 378,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L16||:    
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$36, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x17a)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON4||:	.bits	1074783772,32
	.align	4
||$C$CON5||:	.bits	1074783752,32
	.align	4
||$C$CON6||:	.bits	1074782472,32
	.align	4
||$C$CON7||:	.bits	1073759232,32
	.align	4
||$C$CON8||:	.bits	1073759264,32
	.align	4
||$C$CON9||:	.bits	1073759516,32
	.align	4
||$C$CON10||:	.bits	1073759532,32
	.align	4
||$C$CON11||:	.bits	2105856,32
	.align	4
||$C$CON12||:	.bits	-15793921,32
	.align	4
||$C$CON13||:	.bits	1073759528,32
	.align	4
||$C$CON14||:	.bits	1073774596,32
	.sect	".text"
	.clink
	.thumbfunc Nokia5110_SetCursor
	.thumb
	.global	Nokia5110_SetCursor

$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_SetCursor")
	.dwattr $C$DW$59, DW_AT_low_pc(Nokia5110_SetCursor)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("Nokia5110_SetCursor")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x183)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$59, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0x183)
	.dwattr $C$DW$59, DW_AT_decl_column(0x06)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 387,column 53,is_stmt,address Nokia5110_SetCursor,isa 1

	.dwfde $C$DW$CIE, Nokia5110_SetCursor
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newX")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("newX")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg0]
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newY")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("newY")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_SetCursor                                        *
;*                                                                           *
;*   Regs Modified     : A1,A2,A4,SP,LR,SR,FPEXC,FPSCR                       *
;*   Regs Used         : A1,A2,A4,SP,LR,SR,FPEXC,FPSCR                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
Nokia5110_SetCursor:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("newX")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("newX")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg13 0]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("newY")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("newY")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg13 1]
;----------------------------------------------------------------------
; 387 | void Nokia5110_SetCursor(uint8_t newX, uint8_t newY){                  
;----------------------------------------------------------------------
        STRB      A2, [SP, #1]          ; [DPU_3_PIPE] |387| 
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |387| 
	.dwpsn	file "../Nokia5110.c",line 388,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 388 | if((newX > 11) || (newY > 5)){        // bad input                     
; 389 |   return;                             // do nothing                    
; 391 | // multiply newX by 7 because each character is 7 columns wide         
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |388| 
        CMP       A1, #11               ; [DPU_3_PIPE] |388| 
        BGT       ||$C$L18||            ; [DPU_3_PIPE] |388| 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |388| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |388| 
        CMP       A1, #5                ; [DPU_3_PIPE] |388| 
        BLE       ||$C$L17||            ; [DPU_3_PIPE] |388| 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |388| 
;* --------------------------------------------------------------------------*
        B         ||$C$L18||            ; [DPU_3_PIPE] |388| 
        ; BRANCH OCCURS {||$C$L18||}     ; [] |388| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
||$C$L17||:    
	.dwpsn	file "../Nokia5110.c",line 392,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 392 | lcdwrite(COMMAND, 0x80|(newX*7));     // setting bit 7 updates X-positi
;     | on                                                                     
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |392| 
        RSB       A1, A1, A1, LSL #3    ; [DPU_3_PIPE] |392| 
        ORR       A1, A1, #128          ; [DPU_3_PIPE] |392| 
        UXTB      A2, A1                ; [DPU_3_PIPE] |392| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |392| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("lcdwrite")
	.dwattr $C$DW$64, DW_AT_TI_call
        BL        lcdwrite              ; [DPU_3_PIPE] |392| 
        ; CALL OCCURS {lcdwrite }        ; [] |392| 
	.dwpsn	file "../Nokia5110.c",line 393,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 393 | lcdwrite(COMMAND, 0x40|newY);         // setting bit 6 updates Y-positi
;     | on                                                                     
;----------------------------------------------------------------------
        LDRB      A2, [SP, #1]          ; [DPU_3_PIPE] |393| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |393| 
        ORR       A2, A2, #64           ; [DPU_3_PIPE] |393| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("lcdwrite")
	.dwattr $C$DW$65, DW_AT_TI_call
        BL        lcdwrite              ; [DPU_3_PIPE] |393| 
        ; CALL OCCURS {lcdwrite }        ; [] |393| 
	.dwpsn	file "../Nokia5110.c",line 394,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L18||:    
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x18a)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON15||:	.bits	1073778632,32
	.align	4
||$C$CON16||:	.bits	1073774608,32
	.align	4
||$C$CON17||:	.bits	1073774592,32
	.sect	".text"
	.clink
	.thumbfunc Nokia5110_Clear
	.thumb
	.global	Nokia5110_Clear

$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_Clear")
	.dwattr $C$DW$67, DW_AT_low_pc(Nokia5110_Clear)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("Nokia5110_Clear")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x191)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$67, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$67, DW_AT_decl_line(0x191)
	.dwattr $C$DW$67, DW_AT_decl_column(0x06)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 401,column 27,is_stmt,address Nokia5110_Clear,isa 1

	.dwfde $C$DW$CIE, Nokia5110_Clear
;----------------------------------------------------------------------
; 401 | void Nokia5110_Clear(void){                                            
; 402 | int i;                                                                 
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_Clear                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A4,SP,LR,SR,FPEXC,FPSCR                       *
;*   Regs Used         : A1,A2,A4,SP,LR,SR,FPEXC,FPSCR                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
Nokia5110_Clear:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../Nokia5110.c",line 403,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 403 | for(i=0; i<(MAX_X*MAX_Y/8); i=i+1){                                    
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |403| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |403| 
	.dwpsn	file "../Nokia5110.c",line 403,column 12,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |403| 
        CMP       A1, #504              ; [DPU_3_PIPE] |403| 
        BGE       ||$C$L20||            ; [DPU_3_PIPE] |403| 
        ; BRANCHCC OCCURS {||$C$L20||}   ; [] |403| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L19||
;*
;*   Loop source line                : 403
;*   Loop closing brace source line  : 405
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L19||:    
	.dwpsn	file "../Nokia5110.c",line 404,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 404 | lcddatawrite(0x00);                                                    
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |404| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("lcddatawrite")
	.dwattr $C$DW$69, DW_AT_TI_call
        BL        lcddatawrite          ; [DPU_3_PIPE] |404| 
        ; CALL OCCURS {lcddatawrite }    ; [] |404| 
	.dwpsn	file "../Nokia5110.c",line 403,column 31,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |403| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |403| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |403| 
	.dwpsn	file "../Nokia5110.c",line 403,column 12,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |403| 
        CMP       A1, #504              ; [DPU_3_PIPE] |403| 
        BLT       ||$C$L19||            ; [DPU_3_PIPE] |403| 
        ; BRANCHCC OCCURS {||$C$L19||}   ; [] |403| 
;* --------------------------------------------------------------------------*
||$C$L20||:    
	.dwpsn	file "../Nokia5110.c",line 406,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 406 | Nokia5110_SetCursor(0, 0);                                             
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |406| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |406| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("Nokia5110_SetCursor")
	.dwattr $C$DW$70, DW_AT_TI_call
        BL        Nokia5110_SetCursor   ; [DPU_3_PIPE] |406| 
        ; CALL OCCURS {Nokia5110_SetCursor }  ; [] |406| 
	.dwpsn	file "../Nokia5110.c",line 407,column 1,is_stmt,isa 1
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x197)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON18||:	.bits	1073758720,32
	.sect	".text"
	.clink
	.thumbfunc Nokia5110_DrawFullImage
	.thumb
	.global	Nokia5110_DrawFullImage

$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_DrawFullImage")
	.dwattr $C$DW$72, DW_AT_low_pc(Nokia5110_DrawFullImage)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("Nokia5110_DrawFullImage")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x19e)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$72, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$72, DW_AT_decl_column(0x06)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../Nokia5110.c",line 414,column 49,is_stmt,address Nokia5110_DrawFullImage,isa 1

	.dwfde $C$DW$CIE, Nokia5110_DrawFullImage
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("ptr")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_DrawFullImage                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                  *
;*****************************************************************************
Nokia5110_DrawFullImage:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("ptr")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("ptr")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg13 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg13 4]
;----------------------------------------------------------------------
; 414 | void Nokia5110_DrawFullImage(const uint8_t *ptr){                      
; 415 | int i;                                                                 
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |414| 
	.dwpsn	file "../Nokia5110.c",line 416,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 416 | Nokia5110_SetCursor(0, 0);                                             
;----------------------------------------------------------------------
        MOVS      A2, #0                ; [DPU_3_PIPE] |416| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |416| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("Nokia5110_SetCursor")
	.dwattr $C$DW$76, DW_AT_TI_call
        BL        Nokia5110_SetCursor   ; [DPU_3_PIPE] |416| 
        ; CALL OCCURS {Nokia5110_SetCursor }  ; [] |416| 
	.dwpsn	file "../Nokia5110.c",line 417,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 417 | for(i=0; i<(MAX_X*MAX_Y/8); i=i+1){                                    
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |417| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |417| 
	.dwpsn	file "../Nokia5110.c",line 417,column 12,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |417| 
        CMP       A1, #504              ; [DPU_3_PIPE] |417| 
        BGE       ||$C$L22||            ; [DPU_3_PIPE] |417| 
        ; BRANCHCC OCCURS {||$C$L22||}   ; [] |417| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L21||
;*
;*   Loop source line                : 417
;*   Loop closing brace source line  : 419
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L21||:    
	.dwpsn	file "../Nokia5110.c",line 418,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 418 | lcddatawrite(ptr[i]);                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |418| 
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |418| 
        LDRB      A1, [A2, +A1]         ; [DPU_3_PIPE] |418| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("lcddatawrite")
	.dwattr $C$DW$77, DW_AT_TI_call
        BL        lcddatawrite          ; [DPU_3_PIPE] |418| 
        ; CALL OCCURS {lcddatawrite }    ; [] |418| 
	.dwpsn	file "../Nokia5110.c",line 417,column 31,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |417| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |417| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |417| 
	.dwpsn	file "../Nokia5110.c",line 417,column 12,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |417| 
        CMP       A1, #504              ; [DPU_3_PIPE] |417| 
        BLT       ||$C$L21||            ; [DPU_3_PIPE] |417| 
        ; BRANCHCC OCCURS {||$C$L21||}   ; [] |417| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 420,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L22||:    
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return
        POP       {A2, A3, A4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x1a4)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$SL1||:	.string	"    ",0
	.align	4
||$C$SL2||:	.string	"   ",0
	.align	4
||$C$SL3||:	.string	"  ",0
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON19||:	.bits	ASCII,32
	.sect	".text"
	.clink
	.thumbfunc Nokia5110_PrintBMP
	.thumb
	.global	Nokia5110_PrintBMP

$C$DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_PrintBMP")
	.dwattr $C$DW$79, DW_AT_low_pc(Nokia5110_PrintBMP)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("Nokia5110_PrintBMP")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x1bd)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$79, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$79, DW_AT_decl_column(0x06)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "../Nokia5110.c",line 445,column 91,is_stmt,address Nokia5110_PrintBMP,isa 1

	.dwfde $C$DW$CIE, Nokia5110_PrintBMP
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("xpos")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("xpos")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ypos")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("ypos")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg1]
$C$DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("ptr")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg2]
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("threshold")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("threshold")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg3]

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_PrintBMP                                         *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,SR                                   *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR                                *
;*   Local Frame Size  : 0 Args + 36 Auto + 0 Save = 36 byte                 *
;*****************************************************************************
Nokia5110_PrintBMP:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #40           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 40
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("xpos")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("xpos")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg13 0]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("ypos")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("ypos")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg13 1]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("ptr")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("ptr")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg13 4]
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("threshold")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("threshold")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg13 8]
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("width")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("width")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg13 12]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("height")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("height")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg13 16]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg13 20]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("j")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg13 24]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("screenx")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("screenx")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg13 28]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("screeny")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("screeny")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg13 30]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("mask")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg13 32]
;----------------------------------------------------------------------
; 445 | void Nokia5110_PrintBMP(uint8_t xpos, uint8_t ypos, const uint8_t *ptr,
;     |  uint8_t threshold){                                                   
;----------------------------------------------------------------------
        STRB      A4, [SP, #8]          ; [DPU_3_PIPE] |445| 
        STR       A3, [SP, #4]          ; [DPU_3_PIPE] |445| 
        STRB      A2, [SP, #1]          ; [DPU_3_PIPE] |445| 
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |445| 
	.dwpsn	file "../Nokia5110.c",line 446,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
; 446 | int32_t width = ptr[18], height = ptr[22], i, j;                       
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |446| 
        LDRB      A1, [A1, #18]         ; [DPU_3_PIPE] |446| 
        STR       A1, [SP, #12]         ; [DPU_3_PIPE] |446| 
	.dwpsn	file "../Nokia5110.c",line 446,column 35,is_stmt,isa 1
;----------------------------------------------------------------------
; 447 | uint16_t screenx, screeny;                                             
; 448 | uint8_t mask;                                                          
; 449 | // check for clipping                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |446| 
        LDRB      A1, [A1, #22]         ; [DPU_3_PIPE] |446| 
        STR       A1, [SP, #16]         ; [DPU_3_PIPE] |446| 
	.dwpsn	file "../Nokia5110.c",line 450,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 450 | if((height <= 0) ||              // bitmap is unexpectedly encoded in t
;     | op-to-bottom pixel order                                               
; 451 |    ((width%2) != 0) ||           // must be even number of columns     
; 452 |    ((xpos + width) > SCREENW) || // right side cut off                 
; 453 |    (ypos < (height - 1)) ||      // top cut off                        
; 454 |    (ypos > SCREENH))           { // bottom cut off                     
; 455 |   return;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #16]         ; [DPU_3_PIPE] |450| 
        CMP       A1, #0                ; [DPU_3_PIPE] |450| 
        BLE       ||$C$L39||            ; [DPU_3_PIPE] |450| 
        ; BRANCHCC OCCURS {||$C$L39||}   ; [] |450| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #12]         ; [DPU_3_PIPE] |450| 
        ADD       A2, A1, A1, LSR #31   ; [DPU_3_PIPE] |450| 
        BIC       A2, A2, #1            ; [DPU_3_PIPE] |450| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |450| 
        BNE       ||$C$L39||            ; [DPU_3_PIPE] |450| 
        ; BRANCHCC OCCURS {||$C$L39||}   ; [] |450| 
;* --------------------------------------------------------------------------*
        LDRB      A2, [SP, #0]          ; [DPU_3_PIPE] |450| 
        LDR       A1, [SP, #12]         ; [DPU_3_PIPE] |450| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |450| 
        CMP       A1, #84               ; [DPU_3_PIPE] |450| 
        BGT       ||$C$L39||            ; [DPU_3_PIPE] |450| 
        ; BRANCHCC OCCURS {||$C$L39||}   ; [] |450| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #16]         ; [DPU_3_PIPE] |450| 
        LDRB      A2, [SP, #1]          ; [DPU_3_PIPE] |450| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |450| 
        CMP       A1, A2                ; [DPU_3_PIPE] |450| 
        BGT       ||$C$L39||            ; [DPU_3_PIPE] |450| 
        ; BRANCHCC OCCURS {||$C$L39||}   ; [] |450| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |450| 
        CMP       A1, #48               ; [DPU_3_PIPE] |450| 
        BLE       ||$C$L23||            ; [DPU_3_PIPE] |450| 
        ; BRANCHCC OCCURS {||$C$L23||}   ; [] |450| 
;* --------------------------------------------------------------------------*
        B         ||$C$L39||            ; [DPU_3_PIPE] |450| 
        ; BRANCH OCCURS {||$C$L39||}     ; [] |450| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
||$C$L23||:    
	.dwpsn	file "../Nokia5110.c",line 457,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 457 | if(threshold > 14){                                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |457| 
        CMP       A1, #14               ; [DPU_3_PIPE] |457| 
        BLE       ||$C$L24||            ; [DPU_3_PIPE] |457| 
        ; BRANCHCC OCCURS {||$C$L24||}   ; [] |457| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 458,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 458 | threshold = 14;             // only full 'on' turns pixel on           
; 460 | // bitmaps are encoded backwards, so start at the bottom left corner of
;     |  the image                                                             
;----------------------------------------------------------------------
        MOVS      A1, #14               ; [DPU_3_PIPE] |458| 
        STRB      A1, [SP, #8]          ; [DPU_3_PIPE] |458| 
;* --------------------------------------------------------------------------*
||$C$L24||:    
	.dwpsn	file "../Nokia5110.c",line 461,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 461 | screeny = ypos/8;                                                      
;----------------------------------------------------------------------
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |461| 
        ASRS      A2, A1, #2            ; [DPU_3_PIPE] |461| 
        ADD       A1, A1, A2, LSR #29   ; [DPU_3_PIPE] |461| 
        ASRS      A1, A1, #3            ; [DPU_3_PIPE] |461| 
        STRH      A1, [SP, #30]         ; [DPU_3_PIPE] |461| 
	.dwpsn	file "../Nokia5110.c",line 462,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 462 | screenx = xpos + SCREENW*screeny;                                      
;----------------------------------------------------------------------
        LDRB      A2, [SP, #0]          ; [DPU_3_PIPE] |462| 
        LDRH      A3, [SP, #30]         ; [DPU_3_PIPE] |462| 
        MOVS      A1, #84               ; [DPU_3_PIPE] |462| 
        MLA       A1, A1, A3, A2        ; [DPU_3_PIPE] |462| 
        STRH      A1, [SP, #28]         ; [DPU_3_PIPE] |462| 
	.dwpsn	file "../Nokia5110.c",line 463,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 463 | mask = ypos%8;                // row 0 to 7                            
;----------------------------------------------------------------------
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |463| 
        ASRS      A2, A1, #2            ; [DPU_3_PIPE] |463| 
        ADD       A2, A1, A2, LSR #29   ; [DPU_3_PIPE] |463| 
        BIC       A2, A2, #7            ; [DPU_3_PIPE] |463| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |463| 
        STRB      A1, [SP, #32]         ; [DPU_3_PIPE] |463| 
	.dwpsn	file "../Nokia5110.c",line 464,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 464 | mask = 0x01<<mask;            // now stores a mask 0x01 to 0x80        
;----------------------------------------------------------------------
        LDRB      A2, [SP, #32]         ; [DPU_3_PIPE] |464| 
        MOVS      A1, #1                ; [DPU_3_PIPE] |464| 
        LSLS      A1, A1, A2            ; [DPU_3_PIPE] |464| 
        STRB      A1, [SP, #32]         ; [DPU_3_PIPE] |464| 
	.dwpsn	file "../Nokia5110.c",line 465,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 465 | j = ptr[10];                  // byte 10 contains the offset where imag
;     | e data can be found                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |465| 
        LDRB      A1, [A1, #10]         ; [DPU_3_PIPE] |465| 
        STR       A1, [SP, #24]         ; [DPU_3_PIPE] |465| 
	.dwpsn	file "../Nokia5110.c",line 466,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 466 | for(i=1; i<=(width*height/2); i=i+1){                                  
; 467 |   // the left pixel is in the upper 4 bits                             
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_3_PIPE] |466| 
        STR       A1, [SP, #20]         ; [DPU_3_PIPE] |466| 
        B         ||$C$L38||            ; [DPU_3_PIPE] |466| 
        ; BRANCH OCCURS {||$C$L38||}     ; [] |466| 
;* --------------------------------------------------------------------------*
||$C$L25||:    
	.dwpsn	file "../Nokia5110.c",line 468,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 468 | if(((ptr[j]>>4)&0xF) > threshold){                                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |468| 
        LDR       A2, [SP, #24]         ; [DPU_3_PIPE] |468| 
        LDRB      A2, [A2, +A1]         ; [DPU_3_PIPE] |468| 
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |468| 
        UBFX      A2, A2, #4, #4        ; [DPU_3_PIPE] |468| 
        CMP       A1, A2                ; [DPU_3_PIPE] |468| 
        BGE       ||$C$L26||            ; [DPU_3_PIPE] |468| 
        ; BRANCHCC OCCURS {||$C$L26||}   ; [] |468| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 469,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 469 | Screen[screenx] |= mask;                                               
;----------------------------------------------------------------------
        LDRH      A2, [SP, #28]         ; [DPU_3_PIPE] |469| 
        LDR       A3, $C$CON20          ; [DPU_3_PIPE] |469| 
        LDRB      A1, [SP, #32]         ; [DPU_3_PIPE] |469| 
        LDRB      A4, [A2, +A3]         ; [DPU_3_PIPE] |469| 
        ORRS      A1, A1, A4            ; [DPU_3_PIPE] |469| 
        STRB      A1, [A2, +A3]         ; [DPU_3_PIPE] |469| 
	.dwpsn	file "../Nokia5110.c",line 470,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 470 | } else{                                                                
;----------------------------------------------------------------------
        B         ||$C$L27||            ; [DPU_3_PIPE] |470| 
        ; BRANCH OCCURS {||$C$L27||}     ; [] |470| 
;* --------------------------------------------------------------------------*
||$C$L26||:    
	.dwpsn	file "../Nokia5110.c",line 471,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 471 | Screen[screenx] &= ~mask;                                              
;----------------------------------------------------------------------
        LDRH      A2, [SP, #28]         ; [DPU_3_PIPE] |471| 
        LDR       A3, $C$CON20          ; [DPU_3_PIPE] |471| 
        LDRB      A4, [SP, #32]         ; [DPU_3_PIPE] |471| 
        LDRB      A1, [A2, +A3]         ; [DPU_3_PIPE] |471| 
        BICS      A1, A1, A4            ; [DPU_3_PIPE] |471| 
        STRB      A1, [A2, +A3]         ; [DPU_3_PIPE] |471| 
;* --------------------------------------------------------------------------*
||$C$L27||:    
	.dwpsn	file "../Nokia5110.c",line 473,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 473 | screenx = screenx + 1;                                                 
; 474 | // the right pixel is in the lower 4 bits                              
;----------------------------------------------------------------------
        LDRH      A1, [SP, #28]         ; [DPU_3_PIPE] |473| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |473| 
        STRH      A1, [SP, #28]         ; [DPU_3_PIPE] |473| 
	.dwpsn	file "../Nokia5110.c",line 475,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 475 | if((ptr[j]&0xF) > threshold){                                          
;----------------------------------------------------------------------
        LDR       A2, [SP, #24]         ; [DPU_3_PIPE] |475| 
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |475| 
        LDRB      A1, [A2, +A1]         ; [DPU_3_PIPE] |475| 
        LDRB      A2, [SP, #8]          ; [DPU_3_PIPE] |475| 
        AND       A1, A1, #15           ; [DPU_3_PIPE] |475| 
        CMP       A2, A1                ; [DPU_3_PIPE] |475| 
        BGE       ||$C$L28||            ; [DPU_3_PIPE] |475| 
        ; BRANCHCC OCCURS {||$C$L28||}   ; [] |475| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 476,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 476 | Screen[screenx] |= mask;                                               
;----------------------------------------------------------------------
        LDRH      A2, [SP, #28]         ; [DPU_3_PIPE] |476| 
        LDR       A3, $C$CON20          ; [DPU_3_PIPE] |476| 
        LDRB      A1, [SP, #32]         ; [DPU_3_PIPE] |476| 
        LDRB      A4, [A2, +A3]         ; [DPU_3_PIPE] |476| 
        ORRS      A1, A1, A4            ; [DPU_3_PIPE] |476| 
        STRB      A1, [A2, +A3]         ; [DPU_3_PIPE] |476| 
	.dwpsn	file "../Nokia5110.c",line 477,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 477 | } else{                                                                
;----------------------------------------------------------------------
        B         ||$C$L29||            ; [DPU_3_PIPE] |477| 
        ; BRANCH OCCURS {||$C$L29||}     ; [] |477| 
;* --------------------------------------------------------------------------*
||$C$L28||:    
	.dwpsn	file "../Nokia5110.c",line 478,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 478 | Screen[screenx] &= ~mask;                                              
;----------------------------------------------------------------------
        LDRH      A2, [SP, #28]         ; [DPU_3_PIPE] |478| 
        LDR       A3, $C$CON20          ; [DPU_3_PIPE] |478| 
        LDRB      A4, [SP, #32]         ; [DPU_3_PIPE] |478| 
        LDRB      A1, [A2, +A3]         ; [DPU_3_PIPE] |478| 
        BICS      A1, A1, A4            ; [DPU_3_PIPE] |478| 
        STRB      A1, [A2, +A3]         ; [DPU_3_PIPE] |478| 
;* --------------------------------------------------------------------------*
||$C$L29||:    
	.dwpsn	file "../Nokia5110.c",line 480,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 480 | screenx = screenx + 1;                                                 
;----------------------------------------------------------------------
        LDRH      A1, [SP, #28]         ; [DPU_3_PIPE] |480| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |480| 
        STRH      A1, [SP, #28]         ; [DPU_3_PIPE] |480| 
	.dwpsn	file "../Nokia5110.c",line 481,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 481 | j = j + 1;                                                             
;----------------------------------------------------------------------
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |481| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |481| 
        STR       A1, [SP, #24]         ; [DPU_3_PIPE] |481| 
	.dwpsn	file "../Nokia5110.c",line 482,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 482 | if((i%(width/2)) == 0){     // at the end of a row                     
;----------------------------------------------------------------------
        LDR       A2, [SP, #12]         ; [DPU_3_PIPE] |482| 
        LDR       A1, [SP, #20]         ; [DPU_3_PIPE] |482| 
        ADD       A2, A2, A2, LSR #31   ; [DPU_3_PIPE] |482| 
        ASRS      A3, A2, #1            ; [DPU_3_PIPE] |482| 
        SDIV      A2, A1, A3            ; [DPU_3_PIPE] |482| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |482| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |482| 
        BNE       ||$C$L37||            ; [DPU_3_PIPE] |482| 
        ; BRANCHCC OCCURS {||$C$L37||}   ; [] |482| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 483,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 483 | if(mask > 0x01){                                                       
;----------------------------------------------------------------------
        LDRB      A1, [SP, #32]         ; [DPU_3_PIPE] |483| 
        CMP       A1, #1                ; [DPU_3_PIPE] |483| 
        BLE       ||$C$L30||            ; [DPU_3_PIPE] |483| 
        ; BRANCHCC OCCURS {||$C$L30||}   ; [] |483| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 484,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 484 | mask = mask>>1;                                                        
;----------------------------------------------------------------------
        LDRB      A1, [SP, #32]         ; [DPU_3_PIPE] |484| 
        ASRS      A1, A1, #1            ; [DPU_3_PIPE] |484| 
        STRB      A1, [SP, #32]         ; [DPU_3_PIPE] |484| 
	.dwpsn	file "../Nokia5110.c",line 485,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 485 | } else{                                                                
;----------------------------------------------------------------------
        B         ||$C$L31||            ; [DPU_3_PIPE] |485| 
        ; BRANCH OCCURS {||$C$L31||}     ; [] |485| 
;* --------------------------------------------------------------------------*
||$C$L30||:    
	.dwpsn	file "../Nokia5110.c",line 486,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 486 | mask = 0x80;                                                           
;----------------------------------------------------------------------
        MOVS      A1, #128              ; [DPU_3_PIPE] |486| 
        STRB      A1, [SP, #32]         ; [DPU_3_PIPE] |486| 
	.dwpsn	file "../Nokia5110.c",line 487,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 487 | screeny = screeny - 1;                                                 
;----------------------------------------------------------------------
        LDRH      A1, [SP, #30]         ; [DPU_3_PIPE] |487| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |487| 
        STRH      A1, [SP, #30]         ; [DPU_3_PIPE] |487| 
;* --------------------------------------------------------------------------*
||$C$L31||:    
	.dwpsn	file "../Nokia5110.c",line 489,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 489 | screenx = xpos + SCREENW*screeny;                                      
; 490 | // bitmaps are 32-bit word aligned                                     
;----------------------------------------------------------------------
        LDRH      A3, [SP, #30]         ; [DPU_3_PIPE] |489| 
        LDRB      A2, [SP, #0]          ; [DPU_3_PIPE] |489| 
        MOVS      A1, #84               ; [DPU_3_PIPE] |489| 
        MLA       A1, A1, A3, A2        ; [DPU_3_PIPE] |489| 
        STRH      A1, [SP, #28]         ; [DPU_3_PIPE] |489| 
	.dwpsn	file "../Nokia5110.c",line 491,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 491 | switch((width/2)%4){      // skip any padding                          
;----------------------------------------------------------------------
        B         ||$C$L36||            ; [DPU_3_PIPE] |491| 
        ; BRANCH OCCURS {||$C$L36||}     ; [] |491| 
;* --------------------------------------------------------------------------*
||$C$L32||:    
	.dwpsn	file "../Nokia5110.c",line 492,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
; 492 | case 0: j = j + 0; break;                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |492| 
        STR       A1, [SP, #24]         ; [DPU_3_PIPE] |492| 
	.dwpsn	file "../Nokia5110.c",line 492,column 28,is_stmt,isa 1
        B         ||$C$L37||            ; [DPU_3_PIPE] |492| 
        ; BRANCH OCCURS {||$C$L37||}     ; [] |492| 
;* --------------------------------------------------------------------------*
||$C$L33||:    
	.dwpsn	file "../Nokia5110.c",line 493,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
; 493 | case 1: j = j + 3; break;                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |493| 
        ADDS      A1, A1, #3            ; [DPU_3_PIPE] |493| 
        STR       A1, [SP, #24]         ; [DPU_3_PIPE] |493| 
	.dwpsn	file "../Nokia5110.c",line 493,column 28,is_stmt,isa 1
        B         ||$C$L37||            ; [DPU_3_PIPE] |493| 
        ; BRANCH OCCURS {||$C$L37||}     ; [] |493| 
;* --------------------------------------------------------------------------*
||$C$L34||:    
	.dwpsn	file "../Nokia5110.c",line 494,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
; 494 | case 2: j = j + 2; break;                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |494| 
        ADDS      A1, A1, #2            ; [DPU_3_PIPE] |494| 
        STR       A1, [SP, #24]         ; [DPU_3_PIPE] |494| 
	.dwpsn	file "../Nokia5110.c",line 494,column 28,is_stmt,isa 1
        B         ||$C$L37||            ; [DPU_3_PIPE] |494| 
        ; BRANCH OCCURS {||$C$L37||}     ; [] |494| 
;* --------------------------------------------------------------------------*
||$C$L35||:    
	.dwpsn	file "../Nokia5110.c",line 495,column 17,is_stmt,isa 1
;----------------------------------------------------------------------
; 495 | case 3: j = j + 1; break;                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |495| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |495| 
        STR       A1, [SP, #24]         ; [DPU_3_PIPE] |495| 
	.dwpsn	file "../Nokia5110.c",line 495,column 28,is_stmt,isa 1
        B         ||$C$L37||            ; [DPU_3_PIPE] |495| 
        ; BRANCH OCCURS {||$C$L37||}     ; [] |495| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
||$C$L36||:    
	.dwpsn	file "../Nokia5110.c",line 491,column 7,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_3_PIPE] |491| 
        ADD       A1, A1, A1, LSR #31   ; [DPU_3_PIPE] |491| 
        ASRS      A1, A1, #1            ; [DPU_3_PIPE] |491| 
        ASRS      A2, A1, #1            ; [DPU_3_PIPE] |491| 
        ADD       A2, A1, A2, LSR #30   ; [DPU_3_PIPE] |491| 
        BIC       A2, A2, #3            ; [DPU_3_PIPE] |491| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |491| 
        BEQ       ||$C$L32||            ; [DPU_3_PIPE] |491| 
        ; BRANCHCC OCCURS {||$C$L32||}   ; [] |491| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |491| 
        BEQ       ||$C$L33||            ; [DPU_3_PIPE] |491| 
        ; BRANCHCC OCCURS {||$C$L33||}   ; [] |491| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |491| 
        BEQ       ||$C$L34||            ; [DPU_3_PIPE] |491| 
        ; BRANCHCC OCCURS {||$C$L34||}   ; [] |491| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |491| 
        BEQ       ||$C$L35||            ; [DPU_3_PIPE] |491| 
        ; BRANCHCC OCCURS {||$C$L35||}   ; [] |491| 
;* --------------------------------------------------------------------------*
||$C$L37||:    
	.dwpsn	file "../Nokia5110.c",line 466,column 33,is_stmt,isa 1
        LDR       A1, [SP, #20]         ; [DPU_3_PIPE] |466| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |466| 
        STR       A1, [SP, #20]         ; [DPU_3_PIPE] |466| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L38||
;* --------------------------------------------------------------------------*
||$C$L38||:    
	.dwpsn	file "../Nokia5110.c",line 466,column 12,is_stmt,isa 1
        LDR       A2, [SP, #12]         ; [DPU_3_PIPE] |466| 
        LDR       A1, [SP, #16]         ; [DPU_3_PIPE] |466| 
        LDR       A3, [SP, #20]         ; [DPU_3_PIPE] |466| 
        MULS      A1, A1, A2            ; [DPU_3_PIPE] |466| 
        ADD       A1, A1, A1, LSR #31   ; [DPU_3_PIPE] |466| 
        CMP       A3, A1, ASR #1        ; [DPU_3_PIPE] |466| 
        BLE       ||$C$L25||            ; [DPU_3_PIPE] |466| 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |466| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 499,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L39||:    
        ADD       SP, SP, #40           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x1f3)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text"
	.clink
	.thumbfunc Nokia5110_ClearBuffer
	.thumb
	.global	Nokia5110_ClearBuffer

$C$DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_ClearBuffer")
	.dwattr $C$DW$96, DW_AT_low_pc(Nokia5110_ClearBuffer)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("Nokia5110_ClearBuffer")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0x1f6)
	.dwattr $C$DW$96, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$96, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$96, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$96, DW_AT_decl_column(0x06)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 502,column 33,is_stmt,address Nokia5110_ClearBuffer,isa 1

	.dwfde $C$DW$CIE, Nokia5110_ClearBuffer
;----------------------------------------------------------------------
; 502 | void Nokia5110_ClearBuffer(void){int i;                                
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_ClearBuffer                                      *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Nokia5110_ClearBuffer:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../Nokia5110.c",line 503,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 503 | for(i=0; i<SCREENW*SCREENH/8; i=i+1){                                  
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |503| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |503| 
	.dwpsn	file "../Nokia5110.c",line 503,column 12,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |503| 
        CMP       A1, #504              ; [DPU_3_PIPE] |503| 
        BGE       ||$C$L41||            ; [DPU_3_PIPE] |503| 
        ; BRANCHCC OCCURS {||$C$L41||}   ; [] |503| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L40||
;*
;*   Loop source line                : 503
;*   Loop closing brace source line  : 505
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L40||:    
	.dwpsn	file "../Nokia5110.c",line 504,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 504 | Screen[i] = 0;              // clear buffer                            
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |504| 
        LDR       A3, $C$CON20          ; [DPU_3_PIPE] |504| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |504| 
        STRB      A2, [A3, +A1]         ; [DPU_3_PIPE] |504| 
	.dwpsn	file "../Nokia5110.c",line 503,column 33,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |503| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |503| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |503| 
	.dwpsn	file "../Nokia5110.c",line 503,column 12,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |503| 
        CMP       A1, #504              ; [DPU_3_PIPE] |503| 
        BLT       ||$C$L40||            ; [DPU_3_PIPE] |503| 
        ; BRANCHCC OCCURS {||$C$L40||}   ; [] |503| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Nokia5110.c",line 506,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L41||:    
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$96, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x1fa)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text"
	.clink
	.thumbfunc Nokia5110_DisplayBuffer
	.thumb
	.global	Nokia5110_DisplayBuffer

$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_DisplayBuffer")
	.dwattr $C$DW$99, DW_AT_low_pc(Nokia5110_DisplayBuffer)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("Nokia5110_DisplayBuffer")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x201)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0x201)
	.dwattr $C$DW$99, DW_AT_decl_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110.c",line 513,column 35,is_stmt,address Nokia5110_DisplayBuffer,isa 1

	.dwfde $C$DW$CIE, Nokia5110_DisplayBuffer
;----------------------------------------------------------------------
; 513 | void Nokia5110_DisplayBuffer(void){                                    
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_DisplayBuffer                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
Nokia5110_DisplayBuffer:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../Nokia5110.c",line 514,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 514 | Nokia5110_DrawFullImage(Screen);                                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON20          ; [DPU_3_PIPE] |514| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("Nokia5110_DrawFullImage")
	.dwattr $C$DW$100, DW_AT_TI_call
        BL        Nokia5110_DrawFullImage ; [DPU_3_PIPE] |514| 
        ; CALL OCCURS {Nokia5110_DrawFullImage }  ; [] |514| 
	.dwpsn	file "../Nokia5110.c",line 515,column 1,is_stmt,isa 1
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$99, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x203)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.clink
	.thumbfunc Nokia5110_ClrPxl
	.thumb
	.global	Nokia5110_ClrPxl

$C$DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_ClrPxl")
	.dwattr $C$DW$102, DW_AT_low_pc(Nokia5110_ClrPxl)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("Nokia5110_ClrPxl")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x20b)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$102, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0x20b)
	.dwattr $C$DW$102, DW_AT_decl_column(0x06)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../Nokia5110.c",line 523,column 46,is_stmt,address Nokia5110_ClrPxl,isa 1

	.dwfde $C$DW$CIE, Nokia5110_ClrPxl
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg0]
$C$DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("j")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("j")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_ClrPxl                                           *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,SP,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,SP,LR,SR                          *
;*   Local Frame Size  : 0 Args + 8 Auto + 12 Save = 20 byte                 *
;*****************************************************************************
Nokia5110_ClrPxl:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, V1, V2, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 5, -8
	.dwcfi	save_reg_to_mem, 4, -12
	.dwcfi	save_reg_to_mem, 3, -16
	.dwcfi	save_reg_to_mem, 2, -20
	.dwcfi	save_reg_to_mem, 1, -24
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg13 0]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("j")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_breg13 4]
;----------------------------------------------------------------------
; 523 | void Nokia5110_ClrPxl(uint32_t i, uint32_t j){                         
;----------------------------------------------------------------------
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |523| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |523| 
	.dwpsn	file "../Nokia5110.c",line 524,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 524 | Screen[84*(i>>3) + j] &= ~Masks[i&0x07];                               
;----------------------------------------------------------------------
        LDR       A4, $C$CON21          ; [DPU_3_PIPE] |524| 
        LDR       A2, $C$CON20          ; [DPU_3_PIPE] |524| 
        LDR       A3, [SP, #0]          ; [DPU_3_PIPE] |524| 
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |524| 
        LDR       V2, [SP, #4]          ; [DPU_3_PIPE] |524| 
        MOVS      V1, #84               ; [DPU_3_PIPE] |524| 
        LSRS      A3, A3, #3            ; [DPU_3_PIPE] |524| 
        AND       A1, A1, #7            ; [DPU_3_PIPE] |524| 
        MLA       A3, V1, A3, V2        ; [DPU_3_PIPE] |524| 
        LDRB      A4, [A4, +A1]         ; [DPU_3_PIPE] |524| 
        LDRB      A1, [A3, +A2]         ; [DPU_3_PIPE] |524| 
        BICS      A1, A1, A4            ; [DPU_3_PIPE] |524| 
        STRB      A1, [A3, +A2]         ; [DPU_3_PIPE] |524| 
	.dwpsn	file "../Nokia5110.c",line 525,column 1,is_stmt,isa 1
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return
        POP       {A2, A3, A4, V1, V2, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$102, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x20d)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

	.sect	".text"
	.clink
	.thumbfunc Nokia5110_SetPxl
	.thumb
	.global	Nokia5110_SetPxl

$C$DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_SetPxl")
	.dwattr $C$DW$108, DW_AT_low_pc(Nokia5110_SetPxl)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("Nokia5110_SetPxl")
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_TI_begin_file("../Nokia5110.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x213)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$108, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$108, DW_AT_decl_line(0x213)
	.dwattr $C$DW$108, DW_AT_decl_column(0x06)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../Nokia5110.c",line 531,column 46,is_stmt,address Nokia5110_SetPxl,isa 1

	.dwfde $C$DW$CIE, Nokia5110_SetPxl
$C$DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg0]
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("j")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("j")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: Nokia5110_SetPxl                                           *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,SP,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,SP,LR,SR                          *
;*   Local Frame Size  : 0 Args + 8 Auto + 12 Save = 20 byte                 *
;*****************************************************************************
Nokia5110_SetPxl:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, V1, V2, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 5, -8
	.dwcfi	save_reg_to_mem, 4, -12
	.dwcfi	save_reg_to_mem, 3, -16
	.dwcfi	save_reg_to_mem, 2, -20
	.dwcfi	save_reg_to_mem, 1, -24
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg13 0]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("j")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg13 4]
;----------------------------------------------------------------------
; 531 | void Nokia5110_SetPxl(uint32_t i, uint32_t j){                         
;----------------------------------------------------------------------
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |531| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |531| 
	.dwpsn	file "../Nokia5110.c",line 532,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 532 | Screen[84*(i>>3) + j] |= Masks[i&0x07];                                
;----------------------------------------------------------------------
        LDR       A4, $C$CON21          ; [DPU_3_PIPE] |532| 
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |532| 
        LDR       A2, $C$CON20          ; [DPU_3_PIPE] |532| 
        LDR       A3, [SP, #0]          ; [DPU_3_PIPE] |532| 
        LDR       V2, [SP, #4]          ; [DPU_3_PIPE] |532| 
        AND       A1, A1, #7            ; [DPU_3_PIPE] |532| 
        LDRB      A1, [A4, +A1]         ; [DPU_3_PIPE] |532| 
        MOVS      V1, #84               ; [DPU_3_PIPE] |532| 
        LSRS      A3, A3, #3            ; [DPU_3_PIPE] |532| 
        MLA       A3, V1, A3, V2        ; [DPU_3_PIPE] |532| 
        LDRB      A4, [A3, +A2]         ; [DPU_3_PIPE] |532| 
        ORRS      A1, A1, A4            ; [DPU_3_PIPE] |532| 
        STRB      A1, [A3, +A2]         ; [DPU_3_PIPE] |532| 
	.dwpsn	file "../Nokia5110.c",line 533,column 1,is_stmt,isa 1
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return
        POP       {A2, A3, A4, V1, V2, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$108, DW_AT_TI_end_file("../Nokia5110.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0x215)
	.dwattr $C$DW$108, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$108

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON20||:	.bits	Screen,32
	.align	4
||$C$CON21||:	.bits	Masks,32

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(5)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x1d)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$45	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$6)

$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x08)
$C$DW$114	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$114, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$46

$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x1c)

$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x1f8)
$C$DW$115	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$115, DW_AT_upper_bound(0x1f7)
	.dwendtag $C$DW$T$48

$C$DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$20)
$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)

$C$DW$T$50	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x05)
$C$DW$116	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$116, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x1e0)
$C$DW$117	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$117, DW_AT_upper_bound(0x5f)
$C$DW$118	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$118, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$51

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x1d)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x1c)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x1d)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x17)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x17)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x17)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x17)
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1c)
$C$DW$T$63	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$41)
$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x16)
$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x16)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x16)
$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x16)
$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x1a)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x21)
$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x17)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x17)
$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x20)
$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x16)
$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x16)
$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x20)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x20)
$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x215)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x01)

$C$DW$T$19	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$19, DW_AT_name("typeOfWrite")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$119	.dwtag  DW_TAG_enumerator, DW_AT_name("COMMAND"), DW_AT_const_value(0x00)
	.dwattr $C$DW$119, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$119, DW_AT_decl_line(0x66)
	.dwattr $C$DW$119, DW_AT_decl_column(0x03)
$C$DW$120	.dwtag  DW_TAG_enumerator, DW_AT_name("DATA"), DW_AT_const_value(0x01)
	.dwattr $C$DW$120, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$120, DW_AT_decl_line(0x67)
	.dwattr $C$DW$120, DW_AT_decl_column(0x03)
	.dwendtag $C$DW$T$19

	.dwattr $C$DW$T$19, DW_AT_decl_file("../Nokia5110.c")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x06)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 14
	.dwcfi	undefined, 7
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	same_value, 80
	.dwcfi	same_value, 81
	.dwcfi	same_value, 82
	.dwcfi	same_value, 83
	.dwcfi	same_value, 84
	.dwcfi	same_value, 85
	.dwcfi	same_value, 86
	.dwcfi	same_value, 87
	.dwcfi	same_value, 88
	.dwcfi	same_value, 89
	.dwcfi	same_value, 90
	.dwcfi	same_value, 91
	.dwcfi	same_value, 92
	.dwcfi	same_value, 93
	.dwcfi	same_value, 94
	.dwcfi	same_value, 95
	.dwendentry
	.dwendtag $C$DW$CU

