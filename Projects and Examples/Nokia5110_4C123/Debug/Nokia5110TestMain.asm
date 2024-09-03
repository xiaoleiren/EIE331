;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.2.2 *
;* Date/Time created: Mon Jun 13 10:13:29 2016                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Nokia5110TestMain.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.2.2 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Dropbox\ArmBook\LaunchPad\ValvanoWareTM4C123\Nokia5110_4C123\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_Init")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("Nokia5110_Init")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\Nokia5110.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("Nokia5110_OutChar")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("..\Nokia5110.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$6)
	.dwendtag $C$DW$2


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_OutString")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("Nokia5110_OutString")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("..\Nokia5110.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x65)
	.dwattr $C$DW$4, DW_AT_decl_column(0x06)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$4


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_OutUDec")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("Nokia5110_OutUDec")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("..\Nokia5110.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$6, DW_AT_decl_column(0x06)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_SetCursor")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("Nokia5110_SetCursor")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("..\Nokia5110.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x76)
	.dwattr $C$DW$8, DW_AT_decl_column(0x06)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$30)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$8


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_Clear")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("Nokia5110_Clear")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("..\Nokia5110.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$11, DW_AT_decl_column(0x06)

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("Nokia5110_DrawFullImage")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("Nokia5110_DrawFullImage")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("..\Nokia5110.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x84)
	.dwattr $C$DW$12, DW_AT_decl_column(0x06)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$34)
	.dwendtag $C$DW$12


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("PLL_Init")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("PLL_Init")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("..\PLL.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$14, DW_AT_decl_column(0x06)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$14

	.global	Longhorn
	.sect	".const:.string:Longhorn"
	.clink
	.align	1
	.elfsym	Longhorn,SYM_SIZE(504)
Longhorn:
	.bits	8,8			; Longhorn[0] @ 0
	.bits	8,8			; Longhorn[1] @ 8
	.bits	8,8			; Longhorn[2] @ 16
	.bits	8,8			; Longhorn[3] @ 24
	.bits	8,8			; Longhorn[4] @ 32
	.bits	24,8			; Longhorn[5] @ 40
	.bits	24,8			; Longhorn[6] @ 48
	.bits	24,8			; Longhorn[7] @ 56
	.bits	56,8			; Longhorn[8] @ 64
	.bits	48,8			; Longhorn[9] @ 72
	.bits	48,8			; Longhorn[10] @ 80
	.bits	48,8			; Longhorn[11] @ 88
	.bits	112,8			; Longhorn[12] @ 96
	.bits	240,8			; Longhorn[13] @ 104
	.bits	224,8			; Longhorn[14] @ 112
	.bits	192,8			; Longhorn[15] @ 120
	.bits	192,8			; Longhorn[16] @ 128
	.bits	128,8			; Longhorn[17] @ 136
	.bits	0,8			; Longhorn[18] @ 144
	.bits	0,8			; Longhorn[19] @ 152
	.bits	0,8			; Longhorn[20] @ 160
	.bits	0,8			; Longhorn[21] @ 168
	.bits	0,8			; Longhorn[22] @ 176
	.bits	0,8			; Longhorn[23] @ 184
	.bits	0,8			; Longhorn[24] @ 192
	.bits	0,8			; Longhorn[25] @ 200
	.bits	0,8			; Longhorn[26] @ 208
	.bits	0,8			; Longhorn[27] @ 216
	.bits	0,8			; Longhorn[28] @ 224
	.bits	0,8			; Longhorn[29] @ 232
	.bits	0,8			; Longhorn[30] @ 240
	.bits	0,8			; Longhorn[31] @ 248
	.bits	0,8			; Longhorn[32] @ 256
	.bits	0,8			; Longhorn[33] @ 264
	.bits	0,8			; Longhorn[34] @ 272
	.bits	0,8			; Longhorn[35] @ 280
	.bits	0,8			; Longhorn[36] @ 288
	.bits	0,8			; Longhorn[37] @ 296
	.bits	0,8			; Longhorn[38] @ 304
	.bits	0,8			; Longhorn[39] @ 312
	.bits	0,8			; Longhorn[40] @ 320
	.bits	0,8			; Longhorn[41] @ 328
	.bits	0,8			; Longhorn[42] @ 336
	.bits	0,8			; Longhorn[43] @ 344
	.bits	0,8			; Longhorn[44] @ 352
	.bits	0,8			; Longhorn[45] @ 360
	.bits	0,8			; Longhorn[46] @ 368
	.bits	0,8			; Longhorn[47] @ 376
	.bits	0,8			; Longhorn[48] @ 384
	.bits	0,8			; Longhorn[49] @ 392
	.bits	0,8			; Longhorn[50] @ 400
	.bits	0,8			; Longhorn[51] @ 408
	.bits	0,8			; Longhorn[52] @ 416
	.bits	0,8			; Longhorn[53] @ 424
	.bits	0,8			; Longhorn[54] @ 432
	.bits	0,8			; Longhorn[55] @ 440
	.bits	0,8			; Longhorn[56] @ 448
	.bits	0,8			; Longhorn[57] @ 456
	.bits	0,8			; Longhorn[58] @ 464
	.bits	0,8			; Longhorn[59] @ 472
	.bits	0,8			; Longhorn[60] @ 480
	.bits	0,8			; Longhorn[61] @ 488
	.bits	0,8			; Longhorn[62] @ 496
	.bits	128,8			; Longhorn[63] @ 504
	.bits	192,8			; Longhorn[64] @ 512
	.bits	192,8			; Longhorn[65] @ 520
	.bits	224,8			; Longhorn[66] @ 528
	.bits	224,8			; Longhorn[67] @ 536
	.bits	240,8			; Longhorn[68] @ 544
	.bits	112,8			; Longhorn[69] @ 552
	.bits	112,8			; Longhorn[70] @ 560
	.bits	48,8			; Longhorn[71] @ 568
	.bits	48,8			; Longhorn[72] @ 576
	.bits	24,8			; Longhorn[73] @ 584
	.bits	24,8			; Longhorn[74] @ 592
	.bits	24,8			; Longhorn[75] @ 600
	.bits	24,8			; Longhorn[76] @ 608
	.bits	8,8			; Longhorn[77] @ 616
	.bits	8,8			; Longhorn[78] @ 624
	.bits	8,8			; Longhorn[79] @ 632
	.bits	8,8			; Longhorn[80] @ 640
	.bits	0,8			; Longhorn[81] @ 648
	.bits	0,8			; Longhorn[82] @ 656
	.bits	0,8			; Longhorn[83] @ 664
	.bits	0,8			; Longhorn[84] @ 672
	.bits	0,8			; Longhorn[85] @ 680
	.bits	0,8			; Longhorn[86] @ 688
	.bits	0,8			; Longhorn[87] @ 696
	.bits	0,8			; Longhorn[88] @ 704
	.bits	0,8			; Longhorn[89] @ 712
	.bits	0,8			; Longhorn[90] @ 720
	.bits	0,8			; Longhorn[91] @ 728
	.bits	0,8			; Longhorn[92] @ 736
	.bits	0,8			; Longhorn[93] @ 744
	.bits	0,8			; Longhorn[94] @ 752
	.bits	0,8			; Longhorn[95] @ 760
	.bits	0,8			; Longhorn[96] @ 768
	.bits	0,8			; Longhorn[97] @ 776
	.bits	1,8			; Longhorn[98] @ 784
	.bits	3,8			; Longhorn[99] @ 792
	.bits	3,8			; Longhorn[100] @ 800
	.bits	3,8			; Longhorn[101] @ 808
	.bits	7,8			; Longhorn[102] @ 816
	.bits	15,8			; Longhorn[103] @ 824
	.bits	14,8			; Longhorn[104] @ 832
	.bits	12,8			; Longhorn[105] @ 840
	.bits	28,8			; Longhorn[106] @ 848
	.bits	56,8			; Longhorn[107] @ 856
	.bits	56,8			; Longhorn[108] @ 864
	.bits	184,8			; Longhorn[109] @ 872
	.bits	248,8			; Longhorn[110] @ 880
	.bits	240,8			; Longhorn[111] @ 888
	.bits	240,8			; Longhorn[112] @ 896
	.bits	248,8			; Longhorn[113] @ 904
	.bits	248,8			; Longhorn[114] @ 912
	.bits	248,8			; Longhorn[115] @ 920
	.bits	248,8			; Longhorn[116] @ 928
	.bits	248,8			; Longhorn[117] @ 936
	.bits	248,8			; Longhorn[118] @ 944
	.bits	252,8			; Longhorn[119] @ 952
	.bits	252,8			; Longhorn[120] @ 960
	.bits	248,8			; Longhorn[121] @ 968
	.bits	248,8			; Longhorn[122] @ 976
	.bits	248,8			; Longhorn[123] @ 984
	.bits	248,8			; Longhorn[124] @ 992
	.bits	248,8			; Longhorn[125] @ 1000
	.bits	248,8			; Longhorn[126] @ 1008
	.bits	248,8			; Longhorn[127] @ 1016
	.bits	248,8			; Longhorn[128] @ 1024
	.bits	248,8			; Longhorn[129] @ 1032
	.bits	248,8			; Longhorn[130] @ 1040
	.bits	248,8			; Longhorn[131] @ 1048
	.bits	248,8			; Longhorn[132] @ 1056
	.bits	248,8			; Longhorn[133] @ 1064
	.bits	240,8			; Longhorn[134] @ 1072
	.bits	224,8			; Longhorn[135] @ 1080
	.bits	224,8			; Longhorn[136] @ 1088
	.bits	240,8			; Longhorn[137] @ 1096
	.bits	240,8			; Longhorn[138] @ 1104
	.bits	240,8			; Longhorn[139] @ 1112
	.bits	240,8			; Longhorn[140] @ 1120
	.bits	120,8			; Longhorn[141] @ 1128
	.bits	56,8			; Longhorn[142] @ 1136
	.bits	60,8			; Longhorn[143] @ 1144
	.bits	28,8			; Longhorn[144] @ 1152
	.bits	31,8			; Longhorn[145] @ 1160
	.bits	15,8			; Longhorn[146] @ 1168
	.bits	7,8			; Longhorn[147] @ 1176
	.bits	3,8			; Longhorn[148] @ 1184
	.bits	3,8			; Longhorn[149] @ 1192
	.bits	1,8			; Longhorn[150] @ 1200
	.bits	0,8			; Longhorn[151] @ 1208
	.bits	0,8			; Longhorn[152] @ 1216
	.bits	0,8			; Longhorn[153] @ 1224
	.bits	0,8			; Longhorn[154] @ 1232
	.bits	0,8			; Longhorn[155] @ 1240
	.bits	0,8			; Longhorn[156] @ 1248
	.bits	0,8			; Longhorn[157] @ 1256
	.bits	0,8			; Longhorn[158] @ 1264
	.bits	0,8			; Longhorn[159] @ 1272
	.bits	0,8			; Longhorn[160] @ 1280
	.bits	0,8			; Longhorn[161] @ 1288
	.bits	0,8			; Longhorn[162] @ 1296
	.bits	0,8			; Longhorn[163] @ 1304
	.bits	0,8			; Longhorn[164] @ 1312
	.bits	0,8			; Longhorn[165] @ 1320
	.bits	0,8			; Longhorn[166] @ 1328
	.bits	0,8			; Longhorn[167] @ 1336
	.bits	0,8			; Longhorn[168] @ 1344
	.bits	0,8			; Longhorn[169] @ 1352
	.bits	0,8			; Longhorn[170] @ 1360
	.bits	0,8			; Longhorn[171] @ 1368
	.bits	0,8			; Longhorn[172] @ 1376
	.bits	0,8			; Longhorn[173] @ 1384
	.bits	0,8			; Longhorn[174] @ 1392
	.bits	0,8			; Longhorn[175] @ 1400
	.bits	0,8			; Longhorn[176] @ 1408
	.bits	0,8			; Longhorn[177] @ 1416
	.bits	0,8			; Longhorn[178] @ 1424
	.bits	0,8			; Longhorn[179] @ 1432
	.bits	0,8			; Longhorn[180] @ 1440
	.bits	0,8			; Longhorn[181] @ 1448
	.bits	0,8			; Longhorn[182] @ 1456
	.bits	0,8			; Longhorn[183] @ 1464
	.bits	0,8			; Longhorn[184] @ 1472
	.bits	0,8			; Longhorn[185] @ 1480
	.bits	0,8			; Longhorn[186] @ 1488
	.bits	0,8			; Longhorn[187] @ 1496
	.bits	0,8			; Longhorn[188] @ 1504
	.bits	0,8			; Longhorn[189] @ 1512
	.bits	0,8			; Longhorn[190] @ 1520
	.bits	6,8			; Longhorn[191] @ 1528
	.bits	15,8			; Longhorn[192] @ 1536
	.bits	15,8			; Longhorn[193] @ 1544
	.bits	15,8			; Longhorn[194] @ 1552
	.bits	15,8			; Longhorn[195] @ 1560
	.bits	15,8			; Longhorn[196] @ 1568
	.bits	7,8			; Longhorn[197] @ 1576
	.bits	7,8			; Longhorn[198] @ 1584
	.bits	7,8			; Longhorn[199] @ 1592
	.bits	31,8			; Longhorn[200] @ 1600
	.bits	255,8			; Longhorn[201] @ 1608
	.bits	255,8			; Longhorn[202] @ 1616
	.bits	255,8			; Longhorn[203] @ 1624
	.bits	255,8			; Longhorn[204] @ 1632
	.bits	255,8			; Longhorn[205] @ 1640
	.bits	255,8			; Longhorn[206] @ 1648
	.bits	255,8			; Longhorn[207] @ 1656
	.bits	255,8			; Longhorn[208] @ 1664
	.bits	255,8			; Longhorn[209] @ 1672
	.bits	255,8			; Longhorn[210] @ 1680
	.bits	255,8			; Longhorn[211] @ 1688
	.bits	255,8			; Longhorn[212] @ 1696
	.bits	255,8			; Longhorn[213] @ 1704
	.bits	255,8			; Longhorn[214] @ 1712
	.bits	255,8			; Longhorn[215] @ 1720
	.bits	255,8			; Longhorn[216] @ 1728
	.bits	255,8			; Longhorn[217] @ 1736
	.bits	31,8			; Longhorn[218] @ 1744
	.bits	15,8			; Longhorn[219] @ 1752
	.bits	31,8			; Longhorn[220] @ 1760
	.bits	31,8			; Longhorn[221] @ 1768
	.bits	31,8			; Longhorn[222] @ 1776
	.bits	31,8			; Longhorn[223] @ 1784
	.bits	31,8			; Longhorn[224] @ 1792
	.bits	31,8			; Longhorn[225] @ 1800
	.bits	30,8			; Longhorn[226] @ 1808
	.bits	14,8			; Longhorn[227] @ 1816
	.bits	4,8			; Longhorn[228] @ 1824
	.bits	0,8			; Longhorn[229] @ 1832
	.bits	0,8			; Longhorn[230] @ 1840
	.bits	0,8			; Longhorn[231] @ 1848
	.bits	15,8			; Longhorn[232] @ 1856
	.bits	5,8			; Longhorn[233] @ 1864
	.bits	11,8			; Longhorn[234] @ 1872
	.bits	0,8			; Longhorn[235] @ 1880
	.bits	0,8			; Longhorn[236] @ 1888
	.bits	0,8			; Longhorn[237] @ 1896
	.bits	0,8			; Longhorn[238] @ 1904
	.bits	0,8			; Longhorn[239] @ 1912
	.bits	0,8			; Longhorn[240] @ 1920
	.bits	0,8			; Longhorn[241] @ 1928
	.bits	0,8			; Longhorn[242] @ 1936
	.bits	0,8			; Longhorn[243] @ 1944
	.bits	0,8			; Longhorn[244] @ 1952
	.bits	0,8			; Longhorn[245] @ 1960
	.bits	0,8			; Longhorn[246] @ 1968
	.bits	0,8			; Longhorn[247] @ 1976
	.bits	0,8			; Longhorn[248] @ 1984
	.bits	0,8			; Longhorn[249] @ 1992
	.bits	0,8			; Longhorn[250] @ 2000
	.bits	0,8			; Longhorn[251] @ 2008
	.bits	0,8			; Longhorn[252] @ 2016
	.bits	0,8			; Longhorn[253] @ 2024
	.bits	0,8			; Longhorn[254] @ 2032
	.bits	0,8			; Longhorn[255] @ 2040
	.bits	0,8			; Longhorn[256] @ 2048
	.bits	0,8			; Longhorn[257] @ 2056
	.bits	0,8			; Longhorn[258] @ 2064
	.bits	0,8			; Longhorn[259] @ 2072
	.bits	0,8			; Longhorn[260] @ 2080
	.bits	0,8			; Longhorn[261] @ 2088
	.bits	0,8			; Longhorn[262] @ 2096
	.bits	0,8			; Longhorn[263] @ 2104
	.bits	0,8			; Longhorn[264] @ 2112
	.bits	0,8			; Longhorn[265] @ 2120
	.bits	0,8			; Longhorn[266] @ 2128
	.bits	0,8			; Longhorn[267] @ 2136
	.bits	0,8			; Longhorn[268] @ 2144
	.bits	0,8			; Longhorn[269] @ 2152
	.bits	0,8			; Longhorn[270] @ 2160
	.bits	0,8			; Longhorn[271] @ 2168
	.bits	0,8			; Longhorn[272] @ 2176
	.bits	0,8			; Longhorn[273] @ 2184
	.bits	0,8			; Longhorn[274] @ 2192
	.bits	0,8			; Longhorn[275] @ 2200
	.bits	0,8			; Longhorn[276] @ 2208
	.bits	0,8			; Longhorn[277] @ 2216
	.bits	0,8			; Longhorn[278] @ 2224
	.bits	0,8			; Longhorn[279] @ 2232
	.bits	0,8			; Longhorn[280] @ 2240
	.bits	0,8			; Longhorn[281] @ 2248
	.bits	0,8			; Longhorn[282] @ 2256
	.bits	0,8			; Longhorn[283] @ 2264
	.bits	0,8			; Longhorn[284] @ 2272
	.bits	1,8			; Longhorn[285] @ 2280
	.bits	7,8			; Longhorn[286] @ 2288
	.bits	31,8			; Longhorn[287] @ 2296
	.bits	255,8			; Longhorn[288] @ 2304
	.bits	255,8			; Longhorn[289] @ 2312
	.bits	255,8			; Longhorn[290] @ 2320
	.bits	255,8			; Longhorn[291] @ 2328
	.bits	255,8			; Longhorn[292] @ 2336
	.bits	255,8			; Longhorn[293] @ 2344
	.bits	255,8			; Longhorn[294] @ 2352
	.bits	255,8			; Longhorn[295] @ 2360
	.bits	255,8			; Longhorn[296] @ 2368
	.bits	255,8			; Longhorn[297] @ 2376
	.bits	31,8			; Longhorn[298] @ 2384
	.bits	7,8			; Longhorn[299] @ 2392
	.bits	3,8			; Longhorn[300] @ 2400
	.bits	0,8			; Longhorn[301] @ 2408
	.bits	0,8			; Longhorn[302] @ 2416
	.bits	0,8			; Longhorn[303] @ 2424
	.bits	0,8			; Longhorn[304] @ 2432
	.bits	0,8			; Longhorn[305] @ 2440
	.bits	0,8			; Longhorn[306] @ 2448
	.bits	0,8			; Longhorn[307] @ 2456
	.bits	0,8			; Longhorn[308] @ 2464
	.bits	0,8			; Longhorn[309] @ 2472
	.bits	0,8			; Longhorn[310] @ 2480
	.bits	0,8			; Longhorn[311] @ 2488
	.bits	0,8			; Longhorn[312] @ 2496
	.bits	0,8			; Longhorn[313] @ 2504
	.bits	0,8			; Longhorn[314] @ 2512
	.bits	0,8			; Longhorn[315] @ 2520
	.bits	0,8			; Longhorn[316] @ 2528
	.bits	0,8			; Longhorn[317] @ 2536
	.bits	0,8			; Longhorn[318] @ 2544
	.bits	0,8			; Longhorn[319] @ 2552
	.bits	0,8			; Longhorn[320] @ 2560
	.bits	0,8			; Longhorn[321] @ 2568
	.bits	0,8			; Longhorn[322] @ 2576
	.bits	0,8			; Longhorn[323] @ 2584
	.bits	0,8			; Longhorn[324] @ 2592
	.bits	0,8			; Longhorn[325] @ 2600
	.bits	0,8			; Longhorn[326] @ 2608
	.bits	0,8			; Longhorn[327] @ 2616
	.bits	0,8			; Longhorn[328] @ 2624
	.bits	0,8			; Longhorn[329] @ 2632
	.bits	0,8			; Longhorn[330] @ 2640
	.bits	0,8			; Longhorn[331] @ 2648
	.bits	0,8			; Longhorn[332] @ 2656
	.bits	0,8			; Longhorn[333] @ 2664
	.bits	0,8			; Longhorn[334] @ 2672
	.bits	0,8			; Longhorn[335] @ 2680
	.bits	0,8			; Longhorn[336] @ 2688
	.bits	0,8			; Longhorn[337] @ 2696
	.bits	0,8			; Longhorn[338] @ 2704
	.bits	0,8			; Longhorn[339] @ 2712
	.bits	0,8			; Longhorn[340] @ 2720
	.bits	0,8			; Longhorn[341] @ 2728
	.bits	0,8			; Longhorn[342] @ 2736
	.bits	0,8			; Longhorn[343] @ 2744
	.bits	0,8			; Longhorn[344] @ 2752
	.bits	0,8			; Longhorn[345] @ 2760
	.bits	0,8			; Longhorn[346] @ 2768
	.bits	0,8			; Longhorn[347] @ 2776
	.bits	0,8			; Longhorn[348] @ 2784
	.bits	0,8			; Longhorn[349] @ 2792
	.bits	0,8			; Longhorn[350] @ 2800
	.bits	0,8			; Longhorn[351] @ 2808
	.bits	0,8			; Longhorn[352] @ 2816
	.bits	0,8			; Longhorn[353] @ 2824
	.bits	0,8			; Longhorn[354] @ 2832
	.bits	0,8			; Longhorn[355] @ 2840
	.bits	0,8			; Longhorn[356] @ 2848
	.bits	0,8			; Longhorn[357] @ 2856
	.bits	0,8			; Longhorn[358] @ 2864
	.bits	0,8			; Longhorn[359] @ 2872
	.bits	0,8			; Longhorn[360] @ 2880
	.bits	0,8			; Longhorn[361] @ 2888
	.bits	0,8			; Longhorn[362] @ 2896
	.bits	0,8			; Longhorn[363] @ 2904
	.bits	0,8			; Longhorn[364] @ 2912
	.bits	0,8			; Longhorn[365] @ 2920
	.bits	0,8			; Longhorn[366] @ 2928
	.bits	0,8			; Longhorn[367] @ 2936
	.bits	0,8			; Longhorn[368] @ 2944
	.bits	0,8			; Longhorn[369] @ 2952
	.bits	0,8			; Longhorn[370] @ 2960
	.bits	60,8			; Longhorn[371] @ 2968
	.bits	127,8			; Longhorn[372] @ 2976
	.bits	127,8			; Longhorn[373] @ 2984
	.bits	255,8			; Longhorn[374] @ 2992
	.bits	255,8			; Longhorn[375] @ 3000
	.bits	255,8			; Longhorn[376] @ 3008
	.bits	255,8			; Longhorn[377] @ 3016
	.bits	255,8			; Longhorn[378] @ 3024
	.bits	255,8			; Longhorn[379] @ 3032
	.bits	127,8			; Longhorn[380] @ 3040
	.bits	63,8			; Longhorn[381] @ 3048
	.bits	40,8			; Longhorn[382] @ 3056
	.bits	0,8			; Longhorn[383] @ 3064
	.bits	0,8			; Longhorn[384] @ 3072
	.bits	0,8			; Longhorn[385] @ 3080
	.bits	0,8			; Longhorn[386] @ 3088
	.bits	0,8			; Longhorn[387] @ 3096
	.bits	0,8			; Longhorn[388] @ 3104
	.bits	0,8			; Longhorn[389] @ 3112
	.bits	0,8			; Longhorn[390] @ 3120
	.bits	0,8			; Longhorn[391] @ 3128
	.bits	0,8			; Longhorn[392] @ 3136
	.bits	0,8			; Longhorn[393] @ 3144
	.bits	0,8			; Longhorn[394] @ 3152
	.bits	0,8			; Longhorn[395] @ 3160
	.bits	0,8			; Longhorn[396] @ 3168
	.bits	0,8			; Longhorn[397] @ 3176
	.bits	0,8			; Longhorn[398] @ 3184
	.bits	0,8			; Longhorn[399] @ 3192
	.bits	0,8			; Longhorn[400] @ 3200
	.bits	0,8			; Longhorn[401] @ 3208
	.bits	0,8			; Longhorn[402] @ 3216
	.bits	0,8			; Longhorn[403] @ 3224
	.bits	0,8			; Longhorn[404] @ 3232
	.bits	0,8			; Longhorn[405] @ 3240
	.bits	0,8			; Longhorn[406] @ 3248
	.bits	0,8			; Longhorn[407] @ 3256
	.bits	0,8			; Longhorn[408] @ 3264
	.bits	0,8			; Longhorn[409] @ 3272
	.bits	0,8			; Longhorn[410] @ 3280
	.bits	0,8			; Longhorn[411] @ 3288
	.bits	0,8			; Longhorn[412] @ 3296
	.bits	0,8			; Longhorn[413] @ 3304
	.bits	0,8			; Longhorn[414] @ 3312
	.bits	0,8			; Longhorn[415] @ 3320
	.bits	0,8			; Longhorn[416] @ 3328
	.bits	0,8			; Longhorn[417] @ 3336
	.bits	0,8			; Longhorn[418] @ 3344
	.bits	0,8			; Longhorn[419] @ 3352
	.bits	0,8			; Longhorn[420] @ 3360
	.bits	0,8			; Longhorn[421] @ 3368
	.bits	0,8			; Longhorn[422] @ 3376
	.bits	0,8			; Longhorn[423] @ 3384
	.bits	0,8			; Longhorn[424] @ 3392
	.bits	0,8			; Longhorn[425] @ 3400
	.bits	0,8			; Longhorn[426] @ 3408
	.bits	0,8			; Longhorn[427] @ 3416
	.bits	0,8			; Longhorn[428] @ 3424
	.bits	0,8			; Longhorn[429] @ 3432
	.bits	0,8			; Longhorn[430] @ 3440
	.bits	0,8			; Longhorn[431] @ 3448
	.bits	0,8			; Longhorn[432] @ 3456
	.bits	0,8			; Longhorn[433] @ 3464
	.bits	0,8			; Longhorn[434] @ 3472
	.bits	0,8			; Longhorn[435] @ 3480
	.bits	0,8			; Longhorn[436] @ 3488
	.bits	0,8			; Longhorn[437] @ 3496
	.bits	0,8			; Longhorn[438] @ 3504
	.bits	0,8			; Longhorn[439] @ 3512
	.bits	0,8			; Longhorn[440] @ 3520
	.bits	0,8			; Longhorn[441] @ 3528
	.bits	0,8			; Longhorn[442] @ 3536
	.bits	0,8			; Longhorn[443] @ 3544
	.bits	0,8			; Longhorn[444] @ 3552
	.bits	0,8			; Longhorn[445] @ 3560
	.bits	0,8			; Longhorn[446] @ 3568
	.bits	0,8			; Longhorn[447] @ 3576
	.bits	0,8			; Longhorn[448] @ 3584
	.bits	0,8			; Longhorn[449] @ 3592
	.bits	0,8			; Longhorn[450] @ 3600
	.bits	0,8			; Longhorn[451] @ 3608
	.bits	0,8			; Longhorn[452] @ 3616
	.bits	0,8			; Longhorn[453] @ 3624
	.bits	0,8			; Longhorn[454] @ 3632
	.bits	0,8			; Longhorn[455] @ 3640
	.bits	0,8			; Longhorn[456] @ 3648
	.bits	0,8			; Longhorn[457] @ 3656
	.bits	0,8			; Longhorn[458] @ 3664
	.bits	0,8			; Longhorn[459] @ 3672
	.bits	0,8			; Longhorn[460] @ 3680
	.bits	0,8			; Longhorn[461] @ 3688
	.bits	0,8			; Longhorn[462] @ 3696
	.bits	0,8			; Longhorn[463] @ 3704
	.bits	0,8			; Longhorn[464] @ 3712
	.bits	0,8			; Longhorn[465] @ 3720
	.bits	0,8			; Longhorn[466] @ 3728
	.bits	0,8			; Longhorn[467] @ 3736
	.bits	0,8			; Longhorn[468] @ 3744
	.bits	0,8			; Longhorn[469] @ 3752
	.bits	0,8			; Longhorn[470] @ 3760
	.bits	0,8			; Longhorn[471] @ 3768
	.bits	0,8			; Longhorn[472] @ 3776
	.bits	0,8			; Longhorn[473] @ 3784
	.bits	0,8			; Longhorn[474] @ 3792
	.bits	0,8			; Longhorn[475] @ 3800
	.bits	0,8			; Longhorn[476] @ 3808
	.bits	0,8			; Longhorn[477] @ 3816
	.bits	0,8			; Longhorn[478] @ 3824
	.bits	0,8			; Longhorn[479] @ 3832
	.bits	0,8			; Longhorn[480] @ 3840
	.bits	0,8			; Longhorn[481] @ 3848
	.bits	0,8			; Longhorn[482] @ 3856
	.bits	0,8			; Longhorn[483] @ 3864
	.bits	0,8			; Longhorn[484] @ 3872
	.bits	0,8			; Longhorn[485] @ 3880
	.bits	0,8			; Longhorn[486] @ 3888
	.bits	0,8			; Longhorn[487] @ 3896
	.bits	0,8			; Longhorn[488] @ 3904
	.bits	0,8			; Longhorn[489] @ 3912
	.bits	0,8			; Longhorn[490] @ 3920
	.bits	0,8			; Longhorn[491] @ 3928
	.bits	0,8			; Longhorn[492] @ 3936
	.bits	0,8			; Longhorn[493] @ 3944
	.bits	0,8			; Longhorn[494] @ 3952
	.bits	0,8			; Longhorn[495] @ 3960
	.bits	0,8			; Longhorn[496] @ 3968
	.bits	0,8			; Longhorn[497] @ 3976
	.bits	0,8			; Longhorn[498] @ 3984
	.bits	0,8			; Longhorn[499] @ 3992
	.bits	0,8			; Longhorn[500] @ 4000
	.bits	0,8			; Longhorn[501] @ 4008
	.bits	0,8			; Longhorn[502] @ 4016
	.bits	0,8			; Longhorn[503] @ 4024

$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("Longhorn")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("Longhorn")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr Longhorn]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x50)
	.dwattr $C$DW$16, DW_AT_decl_column(0x0f)
	.global	Longhorn2
	.sect	".const:.string:Longhorn2"
	.clink
	.align	1
	.elfsym	Longhorn2,SYM_SIZE(504)
Longhorn2:
	.bits	8,8			; Longhorn2[0] @ 0
	.bits	8,8			; Longhorn2[1] @ 8
	.bits	8,8			; Longhorn2[2] @ 16
	.bits	8,8			; Longhorn2[3] @ 24
	.bits	8,8			; Longhorn2[4] @ 32
	.bits	24,8			; Longhorn2[5] @ 40
	.bits	24,8			; Longhorn2[6] @ 48
	.bits	24,8			; Longhorn2[7] @ 56
	.bits	56,8			; Longhorn2[8] @ 64
	.bits	48,8			; Longhorn2[9] @ 72
	.bits	48,8			; Longhorn2[10] @ 80
	.bits	48,8			; Longhorn2[11] @ 88
	.bits	112,8			; Longhorn2[12] @ 96
	.bits	240,8			; Longhorn2[13] @ 104
	.bits	224,8			; Longhorn2[14] @ 112
	.bits	192,8			; Longhorn2[15] @ 120
	.bits	192,8			; Longhorn2[16] @ 128
	.bits	128,8			; Longhorn2[17] @ 136
	.bits	0,8			; Longhorn2[18] @ 144
	.bits	0,8			; Longhorn2[19] @ 152
	.bits	0,8			; Longhorn2[20] @ 160
	.bits	0,8			; Longhorn2[21] @ 168
	.bits	0,8			; Longhorn2[22] @ 176
	.bits	0,8			; Longhorn2[23] @ 184
	.bits	0,8			; Longhorn2[24] @ 192
	.bits	0,8			; Longhorn2[25] @ 200
	.bits	0,8			; Longhorn2[26] @ 208
	.bits	0,8			; Longhorn2[27] @ 216
	.bits	0,8			; Longhorn2[28] @ 224
	.bits	0,8			; Longhorn2[29] @ 232
	.bits	0,8			; Longhorn2[30] @ 240
	.bits	0,8			; Longhorn2[31] @ 248
	.bits	0,8			; Longhorn2[32] @ 256
	.bits	0,8			; Longhorn2[33] @ 264
	.bits	0,8			; Longhorn2[34] @ 272
	.bits	0,8			; Longhorn2[35] @ 280
	.bits	0,8			; Longhorn2[36] @ 288
	.bits	0,8			; Longhorn2[37] @ 296
	.bits	0,8			; Longhorn2[38] @ 304
	.bits	0,8			; Longhorn2[39] @ 312
	.bits	0,8			; Longhorn2[40] @ 320
	.bits	0,8			; Longhorn2[41] @ 328
	.bits	0,8			; Longhorn2[42] @ 336
	.bits	0,8			; Longhorn2[43] @ 344
	.bits	0,8			; Longhorn2[44] @ 352
	.bits	0,8			; Longhorn2[45] @ 360
	.bits	0,8			; Longhorn2[46] @ 368
	.bits	0,8			; Longhorn2[47] @ 376
	.bits	0,8			; Longhorn2[48] @ 384
	.bits	0,8			; Longhorn2[49] @ 392
	.bits	0,8			; Longhorn2[50] @ 400
	.bits	0,8			; Longhorn2[51] @ 408
	.bits	0,8			; Longhorn2[52] @ 416
	.bits	0,8			; Longhorn2[53] @ 424
	.bits	0,8			; Longhorn2[54] @ 432
	.bits	0,8			; Longhorn2[55] @ 440
	.bits	0,8			; Longhorn2[56] @ 448
	.bits	0,8			; Longhorn2[57] @ 456
	.bits	0,8			; Longhorn2[58] @ 464
	.bits	0,8			; Longhorn2[59] @ 472
	.bits	0,8			; Longhorn2[60] @ 480
	.bits	0,8			; Longhorn2[61] @ 488
	.bits	0,8			; Longhorn2[62] @ 496
	.bits	128,8			; Longhorn2[63] @ 504
	.bits	192,8			; Longhorn2[64] @ 512
	.bits	192,8			; Longhorn2[65] @ 520
	.bits	224,8			; Longhorn2[66] @ 528
	.bits	224,8			; Longhorn2[67] @ 536
	.bits	240,8			; Longhorn2[68] @ 544
	.bits	112,8			; Longhorn2[69] @ 552
	.bits	112,8			; Longhorn2[70] @ 560
	.bits	48,8			; Longhorn2[71] @ 568
	.bits	48,8			; Longhorn2[72] @ 576
	.bits	24,8			; Longhorn2[73] @ 584
	.bits	24,8			; Longhorn2[74] @ 592
	.bits	24,8			; Longhorn2[75] @ 600
	.bits	24,8			; Longhorn2[76] @ 608
	.bits	8,8			; Longhorn2[77] @ 616
	.bits	8,8			; Longhorn2[78] @ 624
	.bits	8,8			; Longhorn2[79] @ 632
	.bits	8,8			; Longhorn2[80] @ 640
	.bits	0,8			; Longhorn2[81] @ 648
	.bits	0,8			; Longhorn2[82] @ 656
	.bits	0,8			; Longhorn2[83] @ 664
	.bits	240,8			; Longhorn2[84] @ 672
	.bits	8,8			; Longhorn2[85] @ 680
	.bits	4,8			; Longhorn2[86] @ 688
	.bits	36,8			; Longhorn2[87] @ 696
	.bits	36,8			; Longhorn2[88] @ 704
	.bits	228,8			; Longhorn2[89] @ 712
	.bits	36,8			; Longhorn2[90] @ 720
	.bits	36,8			; Longhorn2[91] @ 728
	.bits	4,8			; Longhorn2[92] @ 736
	.bits	4,8			; Longhorn2[93] @ 744
	.bits	4,8			; Longhorn2[94] @ 752
	.bits	4,8			; Longhorn2[95] @ 760
	.bits	4,8			; Longhorn2[96] @ 768
	.bits	8,8			; Longhorn2[97] @ 776
	.bits	241,8			; Longhorn2[98] @ 784
	.bits	3,8			; Longhorn2[99] @ 792
	.bits	3,8			; Longhorn2[100] @ 800
	.bits	3,8			; Longhorn2[101] @ 808
	.bits	7,8			; Longhorn2[102] @ 816
	.bits	15,8			; Longhorn2[103] @ 824
	.bits	14,8			; Longhorn2[104] @ 832
	.bits	12,8			; Longhorn2[105] @ 840
	.bits	28,8			; Longhorn2[106] @ 848
	.bits	56,8			; Longhorn2[107] @ 856
	.bits	56,8			; Longhorn2[108] @ 864
	.bits	184,8			; Longhorn2[109] @ 872
	.bits	248,8			; Longhorn2[110] @ 880
	.bits	240,8			; Longhorn2[111] @ 888
	.bits	240,8			; Longhorn2[112] @ 896
	.bits	248,8			; Longhorn2[113] @ 904
	.bits	248,8			; Longhorn2[114] @ 912
	.bits	248,8			; Longhorn2[115] @ 920
	.bits	248,8			; Longhorn2[116] @ 928
	.bits	248,8			; Longhorn2[117] @ 936
	.bits	248,8			; Longhorn2[118] @ 944
	.bits	252,8			; Longhorn2[119] @ 952
	.bits	252,8			; Longhorn2[120] @ 960
	.bits	248,8			; Longhorn2[121] @ 968
	.bits	248,8			; Longhorn2[122] @ 976
	.bits	248,8			; Longhorn2[123] @ 984
	.bits	248,8			; Longhorn2[124] @ 992
	.bits	248,8			; Longhorn2[125] @ 1000
	.bits	248,8			; Longhorn2[126] @ 1008
	.bits	248,8			; Longhorn2[127] @ 1016
	.bits	248,8			; Longhorn2[128] @ 1024
	.bits	248,8			; Longhorn2[129] @ 1032
	.bits	248,8			; Longhorn2[130] @ 1040
	.bits	248,8			; Longhorn2[131] @ 1048
	.bits	248,8			; Longhorn2[132] @ 1056
	.bits	248,8			; Longhorn2[133] @ 1064
	.bits	240,8			; Longhorn2[134] @ 1072
	.bits	224,8			; Longhorn2[135] @ 1080
	.bits	224,8			; Longhorn2[136] @ 1088
	.bits	240,8			; Longhorn2[137] @ 1096
	.bits	240,8			; Longhorn2[138] @ 1104
	.bits	240,8			; Longhorn2[139] @ 1112
	.bits	240,8			; Longhorn2[140] @ 1120
	.bits	120,8			; Longhorn2[141] @ 1128
	.bits	56,8			; Longhorn2[142] @ 1136
	.bits	60,8			; Longhorn2[143] @ 1144
	.bits	28,8			; Longhorn2[144] @ 1152
	.bits	31,8			; Longhorn2[145] @ 1160
	.bits	15,8			; Longhorn2[146] @ 1168
	.bits	7,8			; Longhorn2[147] @ 1176
	.bits	3,8			; Longhorn2[148] @ 1184
	.bits	3,8			; Longhorn2[149] @ 1192
	.bits	1,8			; Longhorn2[150] @ 1200
	.bits	0,8			; Longhorn2[151] @ 1208
	.bits	0,8			; Longhorn2[152] @ 1216
	.bits	0,8			; Longhorn2[153] @ 1224
	.bits	0,8			; Longhorn2[154] @ 1232
	.bits	0,8			; Longhorn2[155] @ 1240
	.bits	0,8			; Longhorn2[156] @ 1248
	.bits	0,8			; Longhorn2[157] @ 1256
	.bits	0,8			; Longhorn2[158] @ 1264
	.bits	0,8			; Longhorn2[159] @ 1272
	.bits	0,8			; Longhorn2[160] @ 1280
	.bits	0,8			; Longhorn2[161] @ 1288
	.bits	0,8			; Longhorn2[162] @ 1296
	.bits	0,8			; Longhorn2[163] @ 1304
	.bits	0,8			; Longhorn2[164] @ 1312
	.bits	0,8			; Longhorn2[165] @ 1320
	.bits	0,8			; Longhorn2[166] @ 1328
	.bits	0,8			; Longhorn2[167] @ 1336
	.bits	255,8			; Longhorn2[168] @ 1344
	.bits	0,8			; Longhorn2[169] @ 1352
	.bits	0,8			; Longhorn2[170] @ 1360
	.bits	4,8			; Longhorn2[171] @ 1368
	.bits	4,8			; Longhorn2[172] @ 1376
	.bits	7,8			; Longhorn2[173] @ 1384
	.bits	132,8			; Longhorn2[174] @ 1392
	.bits	68,8			; Longhorn2[175] @ 1400
	.bits	64,8			; Longhorn2[176] @ 1408
	.bits	128,8			; Longhorn2[177] @ 1416
	.bits	64,8			; Longhorn2[178] @ 1424
	.bits	64,8			; Longhorn2[179] @ 1432
	.bits	128,8			; Longhorn2[180] @ 1440
	.bits	0,8			; Longhorn2[181] @ 1448
	.bits	0,8			; Longhorn2[182] @ 1456
	.bits	1,8			; Longhorn2[183] @ 1464
	.bits	2,8			; Longhorn2[184] @ 1472
	.bits	252,8			; Longhorn2[185] @ 1480
	.bits	0,8			; Longhorn2[186] @ 1488
	.bits	0,8			; Longhorn2[187] @ 1496
	.bits	0,8			; Longhorn2[188] @ 1504
	.bits	0,8			; Longhorn2[189] @ 1512
	.bits	0,8			; Longhorn2[190] @ 1520
	.bits	6,8			; Longhorn2[191] @ 1528
	.bits	15,8			; Longhorn2[192] @ 1536
	.bits	15,8			; Longhorn2[193] @ 1544
	.bits	15,8			; Longhorn2[194] @ 1552
	.bits	15,8			; Longhorn2[195] @ 1560
	.bits	15,8			; Longhorn2[196] @ 1568
	.bits	7,8			; Longhorn2[197] @ 1576
	.bits	7,8			; Longhorn2[198] @ 1584
	.bits	7,8			; Longhorn2[199] @ 1592
	.bits	31,8			; Longhorn2[200] @ 1600
	.bits	255,8			; Longhorn2[201] @ 1608
	.bits	255,8			; Longhorn2[202] @ 1616
	.bits	255,8			; Longhorn2[203] @ 1624
	.bits	255,8			; Longhorn2[204] @ 1632
	.bits	255,8			; Longhorn2[205] @ 1640
	.bits	255,8			; Longhorn2[206] @ 1648
	.bits	255,8			; Longhorn2[207] @ 1656
	.bits	255,8			; Longhorn2[208] @ 1664
	.bits	255,8			; Longhorn2[209] @ 1672
	.bits	255,8			; Longhorn2[210] @ 1680
	.bits	255,8			; Longhorn2[211] @ 1688
	.bits	255,8			; Longhorn2[212] @ 1696
	.bits	255,8			; Longhorn2[213] @ 1704
	.bits	255,8			; Longhorn2[214] @ 1712
	.bits	255,8			; Longhorn2[215] @ 1720
	.bits	255,8			; Longhorn2[216] @ 1728
	.bits	255,8			; Longhorn2[217] @ 1736
	.bits	31,8			; Longhorn2[218] @ 1744
	.bits	15,8			; Longhorn2[219] @ 1752
	.bits	31,8			; Longhorn2[220] @ 1760
	.bits	31,8			; Longhorn2[221] @ 1768
	.bits	31,8			; Longhorn2[222] @ 1776
	.bits	31,8			; Longhorn2[223] @ 1784
	.bits	31,8			; Longhorn2[224] @ 1792
	.bits	31,8			; Longhorn2[225] @ 1800
	.bits	30,8			; Longhorn2[226] @ 1808
	.bits	14,8			; Longhorn2[227] @ 1816
	.bits	4,8			; Longhorn2[228] @ 1824
	.bits	0,8			; Longhorn2[229] @ 1832
	.bits	0,8			; Longhorn2[230] @ 1840
	.bits	0,8			; Longhorn2[231] @ 1848
	.bits	15,8			; Longhorn2[232] @ 1856
	.bits	5,8			; Longhorn2[233] @ 1864
	.bits	11,8			; Longhorn2[234] @ 1872
	.bits	0,8			; Longhorn2[235] @ 1880
	.bits	0,8			; Longhorn2[236] @ 1888
	.bits	0,8			; Longhorn2[237] @ 1896
	.bits	0,8			; Longhorn2[238] @ 1904
	.bits	0,8			; Longhorn2[239] @ 1912
	.bits	0,8			; Longhorn2[240] @ 1920
	.bits	0,8			; Longhorn2[241] @ 1928
	.bits	0,8			; Longhorn2[242] @ 1936
	.bits	0,8			; Longhorn2[243] @ 1944
	.bits	0,8			; Longhorn2[244] @ 1952
	.bits	0,8			; Longhorn2[245] @ 1960
	.bits	0,8			; Longhorn2[246] @ 1968
	.bits	0,8			; Longhorn2[247] @ 1976
	.bits	0,8			; Longhorn2[248] @ 1984
	.bits	0,8			; Longhorn2[249] @ 1992
	.bits	0,8			; Longhorn2[250] @ 2000
	.bits	0,8			; Longhorn2[251] @ 2008
	.bits	255,8			; Longhorn2[252] @ 2016
	.bits	0,8			; Longhorn2[253] @ 2024
	.bits	0,8			; Longhorn2[254] @ 2032
	.bits	0,8			; Longhorn2[255] @ 2040
	.bits	0,8			; Longhorn2[256] @ 2048
	.bits	0,8			; Longhorn2[257] @ 2056
	.bits	1,8			; Longhorn2[258] @ 2064
	.bits	2,8			; Longhorn2[259] @ 2072
	.bits	132,8			; Longhorn2[260] @ 2080
	.bits	136,8			; Longhorn2[261] @ 2088
	.bits	132,8			; Longhorn2[262] @ 2096
	.bits	2,8			; Longhorn2[263] @ 2104
	.bits	1,8			; Longhorn2[264] @ 2112
	.bits	0,8			; Longhorn2[265] @ 2120
	.bits	0,8			; Longhorn2[266] @ 2128
	.bits	128,8			; Longhorn2[267] @ 2136
	.bits	0,8			; Longhorn2[268] @ 2144
	.bits	0,8			; Longhorn2[269] @ 2152
	.bits	1,8			; Longhorn2[270] @ 2160
	.bits	130,8			; Longhorn2[271] @ 2168
	.bits	132,8			; Longhorn2[272] @ 2176
	.bits	132,8			; Longhorn2[273] @ 2184
	.bits	132,8			; Longhorn2[274] @ 2192
	.bits	4,8			; Longhorn2[275] @ 2200
	.bits	4,8			; Longhorn2[276] @ 2208
	.bits	132,8			; Longhorn2[277] @ 2216
	.bits	4,8			; Longhorn2[278] @ 2224
	.bits	4,8			; Longhorn2[279] @ 2232
	.bits	132,8			; Longhorn2[280] @ 2240
	.bits	8,8			; Longhorn2[281] @ 2248
	.bits	16,8			; Longhorn2[282] @ 2256
	.bits	224,8			; Longhorn2[283] @ 2264
	.bits	0,8			; Longhorn2[284] @ 2272
	.bits	1,8			; Longhorn2[285] @ 2280
	.bits	7,8			; Longhorn2[286] @ 2288
	.bits	31,8			; Longhorn2[287] @ 2296
	.bits	255,8			; Longhorn2[288] @ 2304
	.bits	255,8			; Longhorn2[289] @ 2312
	.bits	255,8			; Longhorn2[290] @ 2320
	.bits	255,8			; Longhorn2[291] @ 2328
	.bits	255,8			; Longhorn2[292] @ 2336
	.bits	255,8			; Longhorn2[293] @ 2344
	.bits	255,8			; Longhorn2[294] @ 2352
	.bits	255,8			; Longhorn2[295] @ 2360
	.bits	255,8			; Longhorn2[296] @ 2368
	.bits	255,8			; Longhorn2[297] @ 2376
	.bits	31,8			; Longhorn2[298] @ 2384
	.bits	7,8			; Longhorn2[299] @ 2392
	.bits	3,8			; Longhorn2[300] @ 2400
	.bits	0,8			; Longhorn2[301] @ 2408
	.bits	0,8			; Longhorn2[302] @ 2416
	.bits	0,8			; Longhorn2[303] @ 2424
	.bits	0,8			; Longhorn2[304] @ 2432
	.bits	0,8			; Longhorn2[305] @ 2440
	.bits	0,8			; Longhorn2[306] @ 2448
	.bits	0,8			; Longhorn2[307] @ 2456
	.bits	0,8			; Longhorn2[308] @ 2464
	.bits	0,8			; Longhorn2[309] @ 2472
	.bits	0,8			; Longhorn2[310] @ 2480
	.bits	0,8			; Longhorn2[311] @ 2488
	.bits	0,8			; Longhorn2[312] @ 2496
	.bits	0,8			; Longhorn2[313] @ 2504
	.bits	0,8			; Longhorn2[314] @ 2512
	.bits	0,8			; Longhorn2[315] @ 2520
	.bits	0,8			; Longhorn2[316] @ 2528
	.bits	0,8			; Longhorn2[317] @ 2536
	.bits	0,8			; Longhorn2[318] @ 2544
	.bits	0,8			; Longhorn2[319] @ 2552
	.bits	0,8			; Longhorn2[320] @ 2560
	.bits	0,8			; Longhorn2[321] @ 2568
	.bits	0,8			; Longhorn2[322] @ 2576
	.bits	0,8			; Longhorn2[323] @ 2584
	.bits	0,8			; Longhorn2[324] @ 2592
	.bits	0,8			; Longhorn2[325] @ 2600
	.bits	0,8			; Longhorn2[326] @ 2608
	.bits	0,8			; Longhorn2[327] @ 2616
	.bits	0,8			; Longhorn2[328] @ 2624
	.bits	0,8			; Longhorn2[329] @ 2632
	.bits	0,8			; Longhorn2[330] @ 2640
	.bits	0,8			; Longhorn2[331] @ 2648
	.bits	0,8			; Longhorn2[332] @ 2656
	.bits	0,8			; Longhorn2[333] @ 2664
	.bits	0,8			; Longhorn2[334] @ 2672
	.bits	0,8			; Longhorn2[335] @ 2680
	.bits	15,8			; Longhorn2[336] @ 2688
	.bits	16,8			; Longhorn2[337] @ 2696
	.bits	32,8			; Longhorn2[338] @ 2704
	.bits	64,8			; Longhorn2[339] @ 2712
	.bits	128,8			; Longhorn2[340] @ 2720
	.bits	128,8			; Longhorn2[341] @ 2728
	.bits	128,8			; Longhorn2[342] @ 2736
	.bits	128,8			; Longhorn2[343] @ 2744
	.bits	136,8			; Longhorn2[344] @ 2752
	.bits	136,8			; Longhorn2[345] @ 2760
	.bits	138,8			; Longhorn2[346] @ 2768
	.bits	133,8			; Longhorn2[347] @ 2776
	.bits	128,8			; Longhorn2[348] @ 2784
	.bits	128,8			; Longhorn2[349] @ 2792
	.bits	137,8			; Longhorn2[350] @ 2800
	.bits	143,8			; Longhorn2[351] @ 2808
	.bits	136,8			; Longhorn2[352] @ 2816
	.bits	128,8			; Longhorn2[353] @ 2824
	.bits	128,8			; Longhorn2[354] @ 2832
	.bits	131,8			; Longhorn2[355] @ 2840
	.bits	130,8			; Longhorn2[356] @ 2848
	.bits	130,8			; Longhorn2[357] @ 2856
	.bits	143,8			; Longhorn2[358] @ 2864
	.bits	128,8			; Longhorn2[359] @ 2872
	.bits	128,8			; Longhorn2[360] @ 2880
	.bits	143,8			; Longhorn2[361] @ 2888
	.bits	130,8			; Longhorn2[362] @ 2896
	.bits	133,8			; Longhorn2[363] @ 2904
	.bits	136,8			; Longhorn2[364] @ 2912
	.bits	128,8			; Longhorn2[365] @ 2920
	.bits	128,8			; Longhorn2[366] @ 2928
	.bits	143,8			; Longhorn2[367] @ 2936
	.bits	80,8			; Longhorn2[368] @ 2944
	.bits	32,8			; Longhorn2[369] @ 2952
	.bits	0,8			; Longhorn2[370] @ 2960
	.bits	60,8			; Longhorn2[371] @ 2968
	.bits	127,8			; Longhorn2[372] @ 2976
	.bits	127,8			; Longhorn2[373] @ 2984
	.bits	255,8			; Longhorn2[374] @ 2992
	.bits	255,8			; Longhorn2[375] @ 3000
	.bits	255,8			; Longhorn2[376] @ 3008
	.bits	255,8			; Longhorn2[377] @ 3016
	.bits	255,8			; Longhorn2[378] @ 3024
	.bits	255,8			; Longhorn2[379] @ 3032
	.bits	127,8			; Longhorn2[380] @ 3040
	.bits	63,8			; Longhorn2[381] @ 3048
	.bits	40,8			; Longhorn2[382] @ 3056
	.bits	0,8			; Longhorn2[383] @ 3064
	.bits	0,8			; Longhorn2[384] @ 3072
	.bits	0,8			; Longhorn2[385] @ 3080
	.bits	0,8			; Longhorn2[386] @ 3088
	.bits	0,8			; Longhorn2[387] @ 3096
	.bits	0,8			; Longhorn2[388] @ 3104
	.bits	0,8			; Longhorn2[389] @ 3112
	.bits	0,8			; Longhorn2[390] @ 3120
	.bits	0,8			; Longhorn2[391] @ 3128
	.bits	0,8			; Longhorn2[392] @ 3136
	.bits	0,8			; Longhorn2[393] @ 3144
	.bits	0,8			; Longhorn2[394] @ 3152
	.bits	0,8			; Longhorn2[395] @ 3160
	.bits	0,8			; Longhorn2[396] @ 3168
	.bits	0,8			; Longhorn2[397] @ 3176
	.bits	0,8			; Longhorn2[398] @ 3184
	.bits	0,8			; Longhorn2[399] @ 3192
	.bits	0,8			; Longhorn2[400] @ 3200
	.bits	0,8			; Longhorn2[401] @ 3208
	.bits	0,8			; Longhorn2[402] @ 3216
	.bits	0,8			; Longhorn2[403] @ 3224
	.bits	0,8			; Longhorn2[404] @ 3232
	.bits	0,8			; Longhorn2[405] @ 3240
	.bits	0,8			; Longhorn2[406] @ 3248
	.bits	0,8			; Longhorn2[407] @ 3256
	.bits	0,8			; Longhorn2[408] @ 3264
	.bits	0,8			; Longhorn2[409] @ 3272
	.bits	0,8			; Longhorn2[410] @ 3280
	.bits	0,8			; Longhorn2[411] @ 3288
	.bits	0,8			; Longhorn2[412] @ 3296
	.bits	0,8			; Longhorn2[413] @ 3304
	.bits	0,8			; Longhorn2[414] @ 3312
	.bits	0,8			; Longhorn2[415] @ 3320
	.bits	0,8			; Longhorn2[416] @ 3328
	.bits	0,8			; Longhorn2[417] @ 3336
	.bits	0,8			; Longhorn2[418] @ 3344
	.bits	0,8			; Longhorn2[419] @ 3352
	.bits	0,8			; Longhorn2[420] @ 3360
	.bits	0,8			; Longhorn2[421] @ 3368
	.bits	0,8			; Longhorn2[422] @ 3376
	.bits	0,8			; Longhorn2[423] @ 3384
	.bits	0,8			; Longhorn2[424] @ 3392
	.bits	0,8			; Longhorn2[425] @ 3400
	.bits	0,8			; Longhorn2[426] @ 3408
	.bits	0,8			; Longhorn2[427] @ 3416
	.bits	0,8			; Longhorn2[428] @ 3424
	.bits	0,8			; Longhorn2[429] @ 3432
	.bits	0,8			; Longhorn2[430] @ 3440
	.bits	0,8			; Longhorn2[431] @ 3448
	.bits	0,8			; Longhorn2[432] @ 3456
	.bits	0,8			; Longhorn2[433] @ 3464
	.bits	0,8			; Longhorn2[434] @ 3472
	.bits	0,8			; Longhorn2[435] @ 3480
	.bits	0,8			; Longhorn2[436] @ 3488
	.bits	0,8			; Longhorn2[437] @ 3496
	.bits	0,8			; Longhorn2[438] @ 3504
	.bits	0,8			; Longhorn2[439] @ 3512
	.bits	0,8			; Longhorn2[440] @ 3520
	.bits	0,8			; Longhorn2[441] @ 3528
	.bits	0,8			; Longhorn2[442] @ 3536
	.bits	0,8			; Longhorn2[443] @ 3544
	.bits	0,8			; Longhorn2[444] @ 3552
	.bits	0,8			; Longhorn2[445] @ 3560
	.bits	0,8			; Longhorn2[446] @ 3568
	.bits	0,8			; Longhorn2[447] @ 3576
	.bits	0,8			; Longhorn2[448] @ 3584
	.bits	0,8			; Longhorn2[449] @ 3592
	.bits	0,8			; Longhorn2[450] @ 3600
	.bits	0,8			; Longhorn2[451] @ 3608
	.bits	0,8			; Longhorn2[452] @ 3616
	.bits	0,8			; Longhorn2[453] @ 3624
	.bits	0,8			; Longhorn2[454] @ 3632
	.bits	0,8			; Longhorn2[455] @ 3640
	.bits	0,8			; Longhorn2[456] @ 3648
	.bits	0,8			; Longhorn2[457] @ 3656
	.bits	0,8			; Longhorn2[458] @ 3664
	.bits	0,8			; Longhorn2[459] @ 3672
	.bits	0,8			; Longhorn2[460] @ 3680
	.bits	0,8			; Longhorn2[461] @ 3688
	.bits	0,8			; Longhorn2[462] @ 3696
	.bits	0,8			; Longhorn2[463] @ 3704
	.bits	0,8			; Longhorn2[464] @ 3712
	.bits	0,8			; Longhorn2[465] @ 3720
	.bits	0,8			; Longhorn2[466] @ 3728
	.bits	0,8			; Longhorn2[467] @ 3736
	.bits	0,8			; Longhorn2[468] @ 3744
	.bits	0,8			; Longhorn2[469] @ 3752
	.bits	0,8			; Longhorn2[470] @ 3760
	.bits	0,8			; Longhorn2[471] @ 3768
	.bits	0,8			; Longhorn2[472] @ 3776
	.bits	0,8			; Longhorn2[473] @ 3784
	.bits	0,8			; Longhorn2[474] @ 3792
	.bits	0,8			; Longhorn2[475] @ 3800
	.bits	0,8			; Longhorn2[476] @ 3808
	.bits	0,8			; Longhorn2[477] @ 3816
	.bits	0,8			; Longhorn2[478] @ 3824
	.bits	0,8			; Longhorn2[479] @ 3832
	.bits	0,8			; Longhorn2[480] @ 3840
	.bits	0,8			; Longhorn2[481] @ 3848
	.bits	0,8			; Longhorn2[482] @ 3856
	.bits	0,8			; Longhorn2[483] @ 3864
	.bits	0,8			; Longhorn2[484] @ 3872
	.bits	0,8			; Longhorn2[485] @ 3880
	.bits	0,8			; Longhorn2[486] @ 3888
	.bits	0,8			; Longhorn2[487] @ 3896
	.bits	0,8			; Longhorn2[488] @ 3904
	.bits	0,8			; Longhorn2[489] @ 3912
	.bits	0,8			; Longhorn2[490] @ 3920
	.bits	0,8			; Longhorn2[491] @ 3928
	.bits	0,8			; Longhorn2[492] @ 3936
	.bits	0,8			; Longhorn2[493] @ 3944
	.bits	0,8			; Longhorn2[494] @ 3952
	.bits	0,8			; Longhorn2[495] @ 3960
	.bits	0,8			; Longhorn2[496] @ 3968
	.bits	0,8			; Longhorn2[497] @ 3976
	.bits	0,8			; Longhorn2[498] @ 3984
	.bits	0,8			; Longhorn2[499] @ 3992
	.bits	0,8			; Longhorn2[500] @ 4000
	.bits	0,8			; Longhorn2[501] @ 4008
	.bits	0,8			; Longhorn2[502] @ 4016
	.bits	0,8			; Longhorn2[503] @ 4024

$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("Longhorn2")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("Longhorn2")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr Longhorn2]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x78)
	.dwattr $C$DW$17, DW_AT_decl_column(0x0f)
;	C:\ti\ccsv6\tools\compiler\ti-cgt-arm_5.2.2\bin\armacpia.exe -@C:\\Users\\valvano\\AppData\\Local\\Temp\\0368012 
	.sect	".text"
	.clink
	.thumbfunc Delay
	.thumb
	.global	Delay

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("Delay")
	.dwattr $C$DW$18, DW_AT_low_pc(Delay)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("Delay")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_TI_begin_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x3f)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$18, DW_AT_decl_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$18, DW_AT_decl_column(0x07)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110TestMain.c",line 63,column 30,is_stmt,address Delay,isa 1

	.dwfde $C$DW$CIE, Delay
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ulCount")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("ulCount")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: Delay                                                      *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : A1,SP,LR                                            *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Delay:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("ulCount")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("ulCount")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
;  63 | void Delay(uint32_t ulCount){                                          
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |63| 
	.dwpsn	file "../Nokia5110TestMain.c",line 64,column 2,is_stmt,isa 1
;----------------------------------------------------------------------
;  64 | __asm ( "loop    subs    r0, #1\n"                                     
;  65 |                 "    bne     loop\n");                                 
;----------------------------------------------------------------------
loop    subs    r0, #1
    bne     loop
	.dwpsn	file "../Nokia5110TestMain.c",line 66,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$18, DW_AT_TI_end_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x42)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.clink
	.thumbfunc main
	.thumb
	.global	main

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$22, DW_AT_low_pc(main)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x9f)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$22, DW_AT_decl_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$22, DW_AT_decl_column(0x05)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Nokia5110TestMain.c",line 159,column 15,is_stmt,address main,isa 1

	.dwfde $C$DW$CIE, main
;----------------------------------------------------------------------
; 159 | int main(void){                                                        
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../Nokia5110TestMain.c",line 160,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
; 160 | uint32_t count = 0;                                                    
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |160| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |160| 
	.dwpsn	file "../Nokia5110TestMain.c",line 161,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 161 | PLL_Init(Bus80MHz);                   // set system clock to 50 MHz    
;----------------------------------------------------------------------
        MOVS      A1, #4                ; [DPU_3_PIPE] |161| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("PLL_Init")
	.dwattr $C$DW$24, DW_AT_TI_call
        BL        PLL_Init              ; [DPU_3_PIPE] |161| 
        ; CALL OCCURS {PLL_Init }        ; [] |161| 
	.dwpsn	file "../Nokia5110TestMain.c",line 162,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 162 | Nokia5110_Init();                                                      
;----------------------------------------------------------------------
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("Nokia5110_Init")
	.dwattr $C$DW$25, DW_AT_TI_call
        BL        Nokia5110_Init        ; [DPU_3_PIPE] |162| 
        ; CALL OCCURS {Nokia5110_Init }  ; [] |162| 
	.dwpsn	file "../Nokia5110TestMain.c",line 163,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 163 | for(count=0; count<5; count=count+1){                                  
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |163| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |163| 
	.dwpsn	file "../Nokia5110TestMain.c",line 163,column 16,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |163| 
        CMP       A1, #5                ; [DPU_3_PIPE] |163| 
        BCS       ||$C$L2||             ; [DPU_3_PIPE] |163| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |163| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 163
;*   Loop closing brace source line  : 168
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../Nokia5110TestMain.c",line 164,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 164 | Nokia5110_DrawFullImage(Longhorn);                                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |164| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("Nokia5110_DrawFullImage")
	.dwattr $C$DW$26, DW_AT_TI_call
        BL        Nokia5110_DrawFullImage ; [DPU_3_PIPE] |164| 
        ; CALL OCCURS {Nokia5110_DrawFullImage }  ; [] |164| 
	.dwpsn	file "../Nokia5110TestMain.c",line 165,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 165 | Delay(16666667);                    // delay ~1 sec at 50 MHz          
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |165| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("Delay")
	.dwattr $C$DW$27, DW_AT_TI_call
        BL        Delay                 ; [DPU_3_PIPE] |165| 
        ; CALL OCCURS {Delay }           ; [] |165| 
	.dwpsn	file "../Nokia5110TestMain.c",line 166,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 166 | Nokia5110_DrawFullImage(Longhorn2);                                    
;----------------------------------------------------------------------
        LDR       A1, $C$CON3           ; [DPU_3_PIPE] |166| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("Nokia5110_DrawFullImage")
	.dwattr $C$DW$28, DW_AT_TI_call
        BL        Nokia5110_DrawFullImage ; [DPU_3_PIPE] |166| 
        ; CALL OCCURS {Nokia5110_DrawFullImage }  ; [] |166| 
	.dwpsn	file "../Nokia5110TestMain.c",line 167,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 167 | Delay(16666667);                    // delay ~1 sec at 50 MHz          
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |167| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("Delay")
	.dwattr $C$DW$29, DW_AT_TI_call
        BL        Delay                 ; [DPU_3_PIPE] |167| 
        ; CALL OCCURS {Delay }           ; [] |167| 
	.dwpsn	file "../Nokia5110TestMain.c",line 163,column 25,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |163| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |163| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |163| 
	.dwpsn	file "../Nokia5110TestMain.c",line 163,column 16,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |163| 
        CMP       A1, #5                ; [DPU_3_PIPE] |163| 
        BCC       ||$C$L1||             ; [DPU_3_PIPE] |163| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |163| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../Nokia5110TestMain.c",line 169,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 169 | count = 0;                                                             
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |169| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |169| 
	.dwpsn	file "../Nokia5110TestMain.c",line 170,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 170 | Nokia5110_Clear();                                                     
;----------------------------------------------------------------------
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("Nokia5110_Clear")
	.dwattr $C$DW$30, DW_AT_TI_call
        BL        Nokia5110_Clear       ; [DPU_3_PIPE] |170| 
        ; CALL OCCURS {Nokia5110_Clear }  ; [] |170| 
	.dwpsn	file "../Nokia5110TestMain.c",line 171,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 171 | Nokia5110_OutString("************* LCD Test *************Letter: Num:--
;     | ----- ---- ");                                                         
;----------------------------------------------------------------------
        ADR       A1, $C$SL1            ; [DPU_3_PIPE] |171| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("Nokia5110_OutString")
	.dwattr $C$DW$31, DW_AT_TI_call
        BL        Nokia5110_OutString   ; [DPU_3_PIPE] |171| 
        ; CALL OCCURS {Nokia5110_OutString }  ; [] |171| 
	.dwpsn	file "../Nokia5110TestMain.c",line 172,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 172 | Nokia5110_OutChar(127);               // print UT sign                 
;----------------------------------------------------------------------
        MOVS      A1, #127              ; [DPU_3_PIPE] |172| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$32, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |172| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |172| 
	.dwpsn	file "../Nokia5110TestMain.c",line 173,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 173 | while(1){                                                              
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L3||
;*
;*   Loop source line                : 173
;*   Loop closing brace source line  : 180
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../Nokia5110TestMain.c",line 174,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 174 | Nokia5110_SetCursor(5, 5);          // five leading spaces, bottom row 
;----------------------------------------------------------------------
        MOVS      A1, #5                ; [DPU_3_PIPE] |174| 
        MOVS      A2, #5                ; [DPU_3_PIPE] |174| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("Nokia5110_SetCursor")
	.dwattr $C$DW$33, DW_AT_TI_call
        BL        Nokia5110_SetCursor   ; [DPU_3_PIPE] |174| 
        ; CALL OCCURS {Nokia5110_SetCursor }  ; [] |174| 
	.dwpsn	file "../Nokia5110TestMain.c",line 175,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 175 | Nokia5110_OutChar((count%26)+'A');                                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |175| 
        MOVS      A3, #26               ; [DPU_3_PIPE] |175| 
        UDIV      A2, A1, A3            ; [DPU_3_PIPE] |175| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |175| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |175| 
        ADDS      A1, A1, #65           ; [DPU_3_PIPE] |175| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |175| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$34, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |175| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |175| 
	.dwpsn	file "../Nokia5110TestMain.c",line 176,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 176 | Nokia5110_OutChar(' ');                                                
;----------------------------------------------------------------------
        MOVS      A1, #32               ; [DPU_3_PIPE] |176| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("Nokia5110_OutChar")
	.dwattr $C$DW$35, DW_AT_TI_call
        BL        Nokia5110_OutChar     ; [DPU_3_PIPE] |176| 
        ; CALL OCCURS {Nokia5110_OutChar }  ; [] |176| 
	.dwpsn	file "../Nokia5110TestMain.c",line 177,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 177 | Nokia5110_OutUDec(count);                                              
;----------------------------------------------------------------------
        LDRH      A1, [SP, #0]          ; [DPU_3_PIPE] |177| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("Nokia5110_OutUDec")
	.dwattr $C$DW$36, DW_AT_TI_call
        BL        Nokia5110_OutUDec     ; [DPU_3_PIPE] |177| 
        ; CALL OCCURS {Nokia5110_OutUDec }  ; [] |177| 
	.dwpsn	file "../Nokia5110TestMain.c",line 178,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 178 | Delay(8333333);                     // delay ~0.5 sec at 50 MHz        
;----------------------------------------------------------------------
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |178| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("Delay")
	.dwattr $C$DW$37, DW_AT_TI_call
        BL        Delay                 ; [DPU_3_PIPE] |178| 
        ; CALL OCCURS {Delay }           ; [] |178| 
	.dwpsn	file "../Nokia5110TestMain.c",line 179,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 179 | count = count + 1;                                                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |179| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |179| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |179| 
	.dwpsn	file "../Nokia5110TestMain.c",line 173,column 9,is_stmt,isa 1
        B         ||$C$L3||             ; [DPU_3_PIPE] |173| 
        ; BRANCH OCCURS {||$C$L3||}      ; [] |173| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$22, DW_AT_TI_end_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0xb5)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$SL1||:	.string	"************* LCD Test *************Letter: Num:------- ---"
	.string	"- ",0
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	Longhorn,32
	.align	4
||$C$CON2||:	.bits	16666667,32
	.align	4
||$C$CON3||:	.bits	Longhorn2,32
	.align	4
||$C$CON4||:	.bits	8333333,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	Nokia5110_Init
	.global	Nokia5110_OutChar
	.global	Nokia5110_OutString
	.global	Nokia5110_OutUDec
	.global	Nokia5110_SetCursor
	.global	Nokia5110_Clear
	.global	Nokia5110_DrawFullImage
	.global	PLL_Init

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(0)
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
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x1d)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x1c)
$C$DW$T$33	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$30)
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)

$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x1f8)
$C$DW$38	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$38, DW_AT_upper_bound(0x1f7)
	.dwendtag $C$DW$T$42

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x1d)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x1d)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x17)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x17)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x17)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x17)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x1c)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x16)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x16)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x16)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x16)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x1a)
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
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x21)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x17)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x17)
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x20)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x16)
$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x16)
$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.2/include/stdint.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x20)
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
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x20)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("../Nokia5110TestMain.c")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x01)
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

