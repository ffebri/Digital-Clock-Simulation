                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Jan 22 22:32:32 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module Digital_Clock
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _tampilkan_seven_segment
                                     14 	.globl _ambil_data
                                     15 	.globl _delay
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _FL
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _A
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _data1
                                    114 	.globl _x
                                    115 	.globl _data_temp
                                    116 	.globl _jam2
                                    117 	.globl _jam1
                                    118 	.globl _menit2
                                    119 	.globl _menit1
                                    120 	.globl _detik2
                                    121 	.globl _detik1
                                    122 	.globl _milsec2
                                    123 	.globl _milsec1
                                    124 	.globl _angka
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000E0   150 _A	=	0x00e0
                           0000F0   151 _B	=	0x00f0
                                    152 ;--------------------------------------------------------
                                    153 ; special function bits
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _P0_0	=	0x0080
                           000081   158 _P0_1	=	0x0081
                           000082   159 _P0_2	=	0x0082
                           000083   160 _P0_3	=	0x0083
                           000084   161 _P0_4	=	0x0084
                           000085   162 _P0_5	=	0x0085
                           000086   163 _P0_6	=	0x0086
                           000087   164 _P0_7	=	0x0087
                           000088   165 _IT0	=	0x0088
                           000089   166 _IE0	=	0x0089
                           00008A   167 _IT1	=	0x008a
                           00008B   168 _IE1	=	0x008b
                           00008C   169 _TR0	=	0x008c
                           00008D   170 _TF0	=	0x008d
                           00008E   171 _TR1	=	0x008e
                           00008F   172 _TF1	=	0x008f
                           000090   173 _P1_0	=	0x0090
                           000091   174 _P1_1	=	0x0091
                           000092   175 _P1_2	=	0x0092
                           000093   176 _P1_3	=	0x0093
                           000094   177 _P1_4	=	0x0094
                           000095   178 _P1_5	=	0x0095
                           000096   179 _P1_6	=	0x0096
                           000097   180 _P1_7	=	0x0097
                           000098   181 _RI	=	0x0098
                           000099   182 _TI	=	0x0099
                           00009A   183 _RB8	=	0x009a
                           00009B   184 _TB8	=	0x009b
                           00009C   185 _REN	=	0x009c
                           00009D   186 _SM2	=	0x009d
                           00009E   187 _SM1	=	0x009e
                           00009F   188 _SM0	=	0x009f
                           0000A0   189 _P2_0	=	0x00a0
                           0000A1   190 _P2_1	=	0x00a1
                           0000A2   191 _P2_2	=	0x00a2
                           0000A3   192 _P2_3	=	0x00a3
                           0000A4   193 _P2_4	=	0x00a4
                           0000A5   194 _P2_5	=	0x00a5
                           0000A6   195 _P2_6	=	0x00a6
                           0000A7   196 _P2_7	=	0x00a7
                           0000A8   197 _EX0	=	0x00a8
                           0000A9   198 _ET0	=	0x00a9
                           0000AA   199 _EX1	=	0x00aa
                           0000AB   200 _ET1	=	0x00ab
                           0000AC   201 _ES	=	0x00ac
                           0000AF   202 _EA	=	0x00af
                           0000B0   203 _P3_0	=	0x00b0
                           0000B1   204 _P3_1	=	0x00b1
                           0000B2   205 _P3_2	=	0x00b2
                           0000B3   206 _P3_3	=	0x00b3
                           0000B4   207 _P3_4	=	0x00b4
                           0000B5   208 _P3_5	=	0x00b5
                           0000B6   209 _P3_6	=	0x00b6
                           0000B7   210 _P3_7	=	0x00b7
                           0000B0   211 _RXD	=	0x00b0
                           0000B1   212 _TXD	=	0x00b1
                           0000B2   213 _INT0	=	0x00b2
                           0000B3   214 _INT1	=	0x00b3
                           0000B4   215 _T0	=	0x00b4
                           0000B5   216 _T1	=	0x00b5
                           0000B6   217 _WR	=	0x00b6
                           0000B7   218 _RD	=	0x00b7
                           0000B8   219 _PX0	=	0x00b8
                           0000B9   220 _PT0	=	0x00b9
                           0000BA   221 _PX1	=	0x00ba
                           0000BB   222 _PT1	=	0x00bb
                           0000BC   223 _PS	=	0x00bc
                           0000D0   224 _P	=	0x00d0
                           0000D1   225 _FL	=	0x00d1
                           0000D2   226 _OV	=	0x00d2
                           0000D3   227 _RS0	=	0x00d3
                           0000D4   228 _RS1	=	0x00d4
                           0000D5   229 _F0	=	0x00d5
                           0000D6   230 _AC	=	0x00d6
                           0000D7   231 _CY	=	0x00d7
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable register banks
                                    234 ;--------------------------------------------------------
                                    235 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        236 	.ds 8
                                    237 ;--------------------------------------------------------
                                    238 ; internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area DSEG    (DATA)
      000008                        241 _angka::
      000008                        242 	.ds 10
      000012                        243 _milsec1::
      000012                        244 	.ds 2
      000014                        245 _milsec2::
      000014                        246 	.ds 2
      000016                        247 _detik1::
      000016                        248 	.ds 2
      000018                        249 _detik2::
      000018                        250 	.ds 2
      00001A                        251 _menit1::
      00001A                        252 	.ds 2
      00001C                        253 _menit2::
      00001C                        254 	.ds 2
      00001E                        255 _jam1::
      00001E                        256 	.ds 2
      000020                        257 _jam2::
      000020                        258 	.ds 2
      000022                        259 _data_temp::
      000022                        260 	.ds 2
      000024                        261 _x::
      000024                        262 	.ds 2
      000026                        263 _data1::
      000026                        264 	.ds 2
                                    265 ;--------------------------------------------------------
                                    266 ; overlayable items in internal ram 
                                    267 ;--------------------------------------------------------
                                    268 	.area	OSEG    (OVR,DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; Stack segment in internal ram 
                                    271 ;--------------------------------------------------------
                                    272 	.area	SSEG
      00002C                        273 __start__stack:
      00002C                        274 	.ds	1
                                    275 
                                    276 ;--------------------------------------------------------
                                    277 ; indirectly addressable internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area ISEG    (DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area IABS    (ABS,DATA)
                                    284 	.area IABS    (ABS,DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; bit data
                                    287 ;--------------------------------------------------------
                                    288 	.area BSEG    (BIT)
                                    289 ;--------------------------------------------------------
                                    290 ; paged external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area PSEG    (PAG,XDATA)
                                    293 ;--------------------------------------------------------
                                    294 ; external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area XSEG    (XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; absolute external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XABS    (ABS,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; external initialized ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XISEG   (XDATA)
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT0 (CODE)
                                    307 	.area GSINIT1 (CODE)
                                    308 	.area GSINIT2 (CODE)
                                    309 	.area GSINIT3 (CODE)
                                    310 	.area GSINIT4 (CODE)
                                    311 	.area GSINIT5 (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area CSEG    (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; interrupt vector 
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
      000000                        319 __interrupt_vect:
      000000 02 00 06         [24]  320 	ljmp	__sdcc_gsinit_startup
                                    321 ;--------------------------------------------------------
                                    322 ; global & static initialisations
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 	.globl __sdcc_gsinit_startup
                                    329 	.globl __sdcc_program_startup
                                    330 	.globl __start__stack
                                    331 	.globl __mcs51_genXINIT
                                    332 	.globl __mcs51_genXRAMCLEAR
                                    333 	.globl __mcs51_genRAMCLEAR
                                    334 ;	Digital_Clock.c:3: unsigned char angka[10]= {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
      00005F 75 08 3F         [24]  335 	mov	_angka,#0x3F
      000062 75 09 06         [24]  336 	mov	(_angka + 0x0001),#0x06
      000065 75 0A 5B         [24]  337 	mov	(_angka + 0x0002),#0x5B
      000068 75 0B 4F         [24]  338 	mov	(_angka + 0x0003),#0x4F
      00006B 75 0C 66         [24]  339 	mov	(_angka + 0x0004),#0x66
      00006E 75 0D 6D         [24]  340 	mov	(_angka + 0x0005),#0x6D
      000071 75 0E 7D         [24]  341 	mov	(_angka + 0x0006),#0x7D
      000074 75 0F 07         [24]  342 	mov	(_angka + 0x0007),#0x07
      000077 75 10 7F         [24]  343 	mov	(_angka + 0x0008),#0x7F
      00007A 75 11 6F         [24]  344 	mov	(_angka + 0x0009),#0x6F
                                    345 	.area GSFINAL (CODE)
      00007D 02 00 03         [24]  346 	ljmp	__sdcc_program_startup
                                    347 ;--------------------------------------------------------
                                    348 ; Home
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area HOME    (CODE)
      000003                        352 __sdcc_program_startup:
      000003 02 04 1A         [24]  353 	ljmp	_main
                                    354 ;	return from main will return to caller
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'delay'
                                    361 ;------------------------------------------------------------
                                    362 ;n                         Allocated to registers r6 r7 
                                    363 ;i                         Allocated to registers r4 r5 
                                    364 ;j                         Allocated to registers r2 r3 
                                    365 ;------------------------------------------------------------
                                    366 ;	Digital_Clock.c:6: void delay(int n)
                                    367 ;	-----------------------------------------
                                    368 ;	 function delay
                                    369 ;	-----------------------------------------
      000080                        370 _delay:
                           000007   371 	ar7 = 0x07
                           000006   372 	ar6 = 0x06
                           000005   373 	ar5 = 0x05
                           000004   374 	ar4 = 0x04
                           000003   375 	ar3 = 0x03
                           000002   376 	ar2 = 0x02
                           000001   377 	ar1 = 0x01
                           000000   378 	ar0 = 0x00
      000080 AE 82            [24]  379 	mov	r6,dpl
      000082 AF 83            [24]  380 	mov	r7,dph
                                    381 ;	Digital_Clock.c:9: for(i=0;i<n;i++)
      000084 7C 00            [12]  382 	mov	r4,#0x00
      000086 7D 00            [12]  383 	mov	r5,#0x00
      000088                        384 00107$:
      000088 C3               [12]  385 	clr	c
      000089 EC               [12]  386 	mov	a,r4
      00008A 9E               [12]  387 	subb	a,r6
      00008B ED               [12]  388 	mov	a,r5
      00008C 64 80            [12]  389 	xrl	a,#0x80
      00008E 8F F0            [24]  390 	mov	b,r7
      000090 63 F0 80         [24]  391 	xrl	b,#0x80
      000093 95 F0            [12]  392 	subb	a,b
      000095 50 14            [24]  393 	jnc	00109$
                                    394 ;	Digital_Clock.c:10: for(j=0;j<135;j++);
      000097 7A 87            [12]  395 	mov	r2,#0x87
      000099 7B 00            [12]  396 	mov	r3,#0x00
      00009B                        397 00105$:
      00009B 1A               [12]  398 	dec	r2
      00009C BA FF 01         [24]  399 	cjne	r2,#0xFF,00126$
      00009F 1B               [12]  400 	dec	r3
      0000A0                        401 00126$:
      0000A0 EA               [12]  402 	mov	a,r2
      0000A1 4B               [12]  403 	orl	a,r3
      0000A2 70 F7            [24]  404 	jnz	00105$
                                    405 ;	Digital_Clock.c:9: for(i=0;i<n;i++)
      0000A4 0C               [12]  406 	inc	r4
      0000A5 BC 00 E0         [24]  407 	cjne	r4,#0x00,00107$
      0000A8 0D               [12]  408 	inc	r5
      0000A9 80 DD            [24]  409 	sjmp	00107$
      0000AB                        410 00109$:
      0000AB 22               [24]  411 	ret
                                    412 ;------------------------------------------------------------
                                    413 ;Allocation info for local variables in function 'ambil_data'
                                    414 ;------------------------------------------------------------
                                    415 ;	Digital_Clock.c:13: void ambil_data()
                                    416 ;	-----------------------------------------
                                    417 ;	 function ambil_data
                                    418 ;	-----------------------------------------
      0000AC                        419 _ambil_data:
                                    420 ;	Digital_Clock.c:15: data_temp=data1;
      0000AC 85 26 22         [24]  421 	mov	_data_temp,_data1
      0000AF 85 27 23         [24]  422 	mov	(_data_temp + 1),(_data1 + 1)
                                    423 ;	Digital_Clock.c:16: milsec1=(data_temp/10)%10;
      0000B2 75 28 0A         [24]  424 	mov	__divsint_PARM_2,#0x0A
      0000B5 75 29 00         [24]  425 	mov	(__divsint_PARM_2 + 1),#0x00
      0000B8 85 22 82         [24]  426 	mov	dpl,_data_temp
      0000BB 85 23 83         [24]  427 	mov	dph,(_data_temp + 1)
      0000BE 12 06 5C         [24]  428 	lcall	__divsint
      0000C1 75 28 0A         [24]  429 	mov	__modsint_PARM_2,#0x0A
      0000C4 75 29 00         [24]  430 	mov	(__modsint_PARM_2 + 1),#0x00
      0000C7 12 06 26         [24]  431 	lcall	__modsint
      0000CA 85 82 12         [24]  432 	mov	_milsec1,dpl
      0000CD 85 83 13         [24]  433 	mov	(_milsec1 + 1),dph
                                    434 ;	Digital_Clock.c:17: milsec2=(data_temp/100)%10;
      0000D0 75 28 64         [24]  435 	mov	__divsint_PARM_2,#0x64
      0000D3 75 29 00         [24]  436 	mov	(__divsint_PARM_2 + 1),#0x00
      0000D6 85 22 82         [24]  437 	mov	dpl,_data_temp
      0000D9 85 23 83         [24]  438 	mov	dph,(_data_temp + 1)
      0000DC 12 06 5C         [24]  439 	lcall	__divsint
      0000DF 75 28 0A         [24]  440 	mov	__modsint_PARM_2,#0x0A
      0000E2 75 29 00         [24]  441 	mov	(__modsint_PARM_2 + 1),#0x00
      0000E5 12 06 26         [24]  442 	lcall	__modsint
      0000E8 85 82 14         [24]  443 	mov	_milsec2,dpl
      0000EB 85 83 15         [24]  444 	mov	(_milsec2 + 1),dph
                                    445 ;	Digital_Clock.c:18: detik1=(data_temp/1000)%10;
      0000EE 75 28 E8         [24]  446 	mov	__divsint_PARM_2,#0xE8
      0000F1 75 29 03         [24]  447 	mov	(__divsint_PARM_2 + 1),#0x03
      0000F4 85 22 82         [24]  448 	mov	dpl,_data_temp
      0000F7 85 23 83         [24]  449 	mov	dph,(_data_temp + 1)
      0000FA 12 06 5C         [24]  450 	lcall	__divsint
      0000FD 75 28 0A         [24]  451 	mov	__modsint_PARM_2,#0x0A
      000100 75 29 00         [24]  452 	mov	(__modsint_PARM_2 + 1),#0x00
      000103 12 06 26         [24]  453 	lcall	__modsint
      000106 85 82 16         [24]  454 	mov	_detik1,dpl
      000109 85 83 17         [24]  455 	mov	(_detik1 + 1),dph
                                    456 ;	Digital_Clock.c:19: detik2=(data_temp/10000)%10;
      00010C 75 28 10         [24]  457 	mov	__divsint_PARM_2,#0x10
      00010F 75 29 27         [24]  458 	mov	(__divsint_PARM_2 + 1),#0x27
      000112 85 22 82         [24]  459 	mov	dpl,_data_temp
      000115 85 23 83         [24]  460 	mov	dph,(_data_temp + 1)
      000118 12 06 5C         [24]  461 	lcall	__divsint
      00011B 75 28 0A         [24]  462 	mov	__modsint_PARM_2,#0x0A
      00011E 75 29 00         [24]  463 	mov	(__modsint_PARM_2 + 1),#0x00
      000121 12 06 26         [24]  464 	lcall	__modsint
      000124 85 82 18         [24]  465 	mov	_detik2,dpl
      000127 85 83 19         [24]  466 	mov	(_detik2 + 1),dph
                                    467 ;	Digital_Clock.c:20: menit1=(data_temp/100000)%10;
      00012A AC 22            [24]  468 	mov	r4,_data_temp
      00012C E5 23            [12]  469 	mov	a,(_data_temp + 1)
      00012E FD               [12]  470 	mov	r5,a
      00012F 33               [12]  471 	rlc	a
      000130 95 E0            [12]  472 	subb	a,acc
      000132 FE               [12]  473 	mov	r6,a
      000133 FF               [12]  474 	mov	r7,a
      000134 75 28 A0         [24]  475 	mov	__divslong_PARM_2,#0xA0
      000137 75 29 86         [24]  476 	mov	(__divslong_PARM_2 + 1),#0x86
      00013A 75 2A 01         [24]  477 	mov	(__divslong_PARM_2 + 2),#0x01
      00013D 75 2B 00         [24]  478 	mov	(__divslong_PARM_2 + 3),#0x00
      000140 8C 82            [24]  479 	mov	dpl,r4
      000142 8D 83            [24]  480 	mov	dph,r5
      000144 8E F0            [24]  481 	mov	b,r6
      000146 EF               [12]  482 	mov	a,r7
      000147 C0 07            [24]  483 	push	ar7
      000149 C0 06            [24]  484 	push	ar6
      00014B C0 05            [24]  485 	push	ar5
      00014D C0 04            [24]  486 	push	ar4
      00014F 12 05 D4         [24]  487 	lcall	__divslong
      000152 A8 82            [24]  488 	mov	r0,dpl
      000154 A9 83            [24]  489 	mov	r1,dph
      000156 AA F0            [24]  490 	mov	r2,b
      000158 FB               [12]  491 	mov	r3,a
      000159 75 28 0A         [24]  492 	mov	__modslong_PARM_2,#0x0A
      00015C E4               [12]  493 	clr	a
      00015D F5 29            [12]  494 	mov	(__modslong_PARM_2 + 1),a
      00015F F5 2A            [12]  495 	mov	(__modslong_PARM_2 + 2),a
      000161 F5 2B            [12]  496 	mov	(__modslong_PARM_2 + 3),a
      000163 88 82            [24]  497 	mov	dpl,r0
      000165 89 83            [24]  498 	mov	dph,r1
      000167 8A F0            [24]  499 	mov	b,r2
      000169 EB               [12]  500 	mov	a,r3
      00016A 12 05 85         [24]  501 	lcall	__modslong
      00016D A8 82            [24]  502 	mov	r0,dpl
      00016F A9 83            [24]  503 	mov	r1,dph
      000171 D0 04            [24]  504 	pop	ar4
      000173 D0 05            [24]  505 	pop	ar5
      000175 D0 06            [24]  506 	pop	ar6
      000177 D0 07            [24]  507 	pop	ar7
      000179 88 1A            [24]  508 	mov	_menit1,r0
      00017B 89 1B            [24]  509 	mov	(_menit1 + 1),r1
                                    510 ;	Digital_Clock.c:21: menit2=(data_temp/1000000)%10;
      00017D 75 28 40         [24]  511 	mov	__divslong_PARM_2,#0x40
      000180 75 29 42         [24]  512 	mov	(__divslong_PARM_2 + 1),#0x42
      000183 75 2A 0F         [24]  513 	mov	(__divslong_PARM_2 + 2),#0x0F
      000186 75 2B 00         [24]  514 	mov	(__divslong_PARM_2 + 3),#0x00
      000189 8C 82            [24]  515 	mov	dpl,r4
      00018B 8D 83            [24]  516 	mov	dph,r5
      00018D 8E F0            [24]  517 	mov	b,r6
      00018F EF               [12]  518 	mov	a,r7
      000190 C0 07            [24]  519 	push	ar7
      000192 C0 06            [24]  520 	push	ar6
      000194 C0 05            [24]  521 	push	ar5
      000196 C0 04            [24]  522 	push	ar4
      000198 12 05 D4         [24]  523 	lcall	__divslong
      00019B A8 82            [24]  524 	mov	r0,dpl
      00019D A9 83            [24]  525 	mov	r1,dph
      00019F AA F0            [24]  526 	mov	r2,b
      0001A1 FB               [12]  527 	mov	r3,a
      0001A2 75 28 0A         [24]  528 	mov	__modslong_PARM_2,#0x0A
      0001A5 E4               [12]  529 	clr	a
      0001A6 F5 29            [12]  530 	mov	(__modslong_PARM_2 + 1),a
      0001A8 F5 2A            [12]  531 	mov	(__modslong_PARM_2 + 2),a
      0001AA F5 2B            [12]  532 	mov	(__modslong_PARM_2 + 3),a
      0001AC 88 82            [24]  533 	mov	dpl,r0
      0001AE 89 83            [24]  534 	mov	dph,r1
      0001B0 8A F0            [24]  535 	mov	b,r2
      0001B2 EB               [12]  536 	mov	a,r3
      0001B3 12 05 85         [24]  537 	lcall	__modslong
      0001B6 A8 82            [24]  538 	mov	r0,dpl
      0001B8 A9 83            [24]  539 	mov	r1,dph
      0001BA D0 04            [24]  540 	pop	ar4
      0001BC D0 05            [24]  541 	pop	ar5
      0001BE D0 06            [24]  542 	pop	ar6
      0001C0 D0 07            [24]  543 	pop	ar7
      0001C2 88 1C            [24]  544 	mov	_menit2,r0
      0001C4 89 1D            [24]  545 	mov	(_menit2 + 1),r1
                                    546 ;	Digital_Clock.c:22: jam1=(data_temp/10000000)%10;
      0001C6 75 28 80         [24]  547 	mov	__divslong_PARM_2,#0x80
      0001C9 75 29 96         [24]  548 	mov	(__divslong_PARM_2 + 1),#0x96
      0001CC 75 2A 98         [24]  549 	mov	(__divslong_PARM_2 + 2),#0x98
      0001CF 75 2B 00         [24]  550 	mov	(__divslong_PARM_2 + 3),#0x00
      0001D2 8C 82            [24]  551 	mov	dpl,r4
      0001D4 8D 83            [24]  552 	mov	dph,r5
      0001D6 8E F0            [24]  553 	mov	b,r6
      0001D8 EF               [12]  554 	mov	a,r7
      0001D9 C0 07            [24]  555 	push	ar7
      0001DB C0 06            [24]  556 	push	ar6
      0001DD C0 05            [24]  557 	push	ar5
      0001DF C0 04            [24]  558 	push	ar4
      0001E1 12 05 D4         [24]  559 	lcall	__divslong
      0001E4 A8 82            [24]  560 	mov	r0,dpl
      0001E6 A9 83            [24]  561 	mov	r1,dph
      0001E8 AA F0            [24]  562 	mov	r2,b
      0001EA FB               [12]  563 	mov	r3,a
      0001EB 75 28 0A         [24]  564 	mov	__modslong_PARM_2,#0x0A
      0001EE E4               [12]  565 	clr	a
      0001EF F5 29            [12]  566 	mov	(__modslong_PARM_2 + 1),a
      0001F1 F5 2A            [12]  567 	mov	(__modslong_PARM_2 + 2),a
      0001F3 F5 2B            [12]  568 	mov	(__modslong_PARM_2 + 3),a
      0001F5 88 82            [24]  569 	mov	dpl,r0
      0001F7 89 83            [24]  570 	mov	dph,r1
      0001F9 8A F0            [24]  571 	mov	b,r2
      0001FB EB               [12]  572 	mov	a,r3
      0001FC 12 05 85         [24]  573 	lcall	__modslong
      0001FF A8 82            [24]  574 	mov	r0,dpl
      000201 A9 83            [24]  575 	mov	r1,dph
      000203 D0 04            [24]  576 	pop	ar4
      000205 D0 05            [24]  577 	pop	ar5
      000207 D0 06            [24]  578 	pop	ar6
      000209 D0 07            [24]  579 	pop	ar7
      00020B 88 1E            [24]  580 	mov	_jam1,r0
      00020D 89 1F            [24]  581 	mov	(_jam1 + 1),r1
                                    582 ;	Digital_Clock.c:23: jam2=(data_temp/100000000)%10;
      00020F 75 28 00         [24]  583 	mov	__divslong_PARM_2,#0x00
      000212 75 29 E1         [24]  584 	mov	(__divslong_PARM_2 + 1),#0xE1
      000215 75 2A F5         [24]  585 	mov	(__divslong_PARM_2 + 2),#0xF5
      000218 75 2B 05         [24]  586 	mov	(__divslong_PARM_2 + 3),#0x05
      00021B 8C 82            [24]  587 	mov	dpl,r4
      00021D 8D 83            [24]  588 	mov	dph,r5
      00021F 8E F0            [24]  589 	mov	b,r6
      000221 EF               [12]  590 	mov	a,r7
      000222 12 05 D4         [24]  591 	lcall	__divslong
      000225 AC 82            [24]  592 	mov	r4,dpl
      000227 AD 83            [24]  593 	mov	r5,dph
      000229 AE F0            [24]  594 	mov	r6,b
      00022B FF               [12]  595 	mov	r7,a
      00022C 75 28 0A         [24]  596 	mov	__modslong_PARM_2,#0x0A
      00022F E4               [12]  597 	clr	a
      000230 F5 29            [12]  598 	mov	(__modslong_PARM_2 + 1),a
      000232 F5 2A            [12]  599 	mov	(__modslong_PARM_2 + 2),a
      000234 F5 2B            [12]  600 	mov	(__modslong_PARM_2 + 3),a
      000236 8C 82            [24]  601 	mov	dpl,r4
      000238 8D 83            [24]  602 	mov	dph,r5
      00023A 8E F0            [24]  603 	mov	b,r6
      00023C EF               [12]  604 	mov	a,r7
      00023D 12 05 85         [24]  605 	lcall	__modslong
      000240 AC 82            [24]  606 	mov	r4,dpl
      000242 AD 83            [24]  607 	mov	r5,dph
      000244 8C 20            [24]  608 	mov	_jam2,r4
      000246 8D 21            [24]  609 	mov	(_jam2 + 1),r5
      000248 22               [24]  610 	ret
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'tampilkan_seven_segment'
                                    613 ;------------------------------------------------------------
                                    614 ;	Digital_Clock.c:26: void tampilkan_seven_segment()
                                    615 ;	-----------------------------------------
                                    616 ;	 function tampilkan_seven_segment
                                    617 ;	-----------------------------------------
      000249                        618 _tampilkan_seven_segment:
                                    619 ;	Digital_Clock.c:28: for(jam2=0;jam2<3;jam2++)
      000249 E4               [12]  620 	clr	a
      00024A F5 20            [12]  621 	mov	_jam2,a
      00024C F5 21            [12]  622 	mov	(_jam2 + 1),a
      00024E                        623 00123$:
                                    624 ;	Digital_Clock.c:30: for(jam1=0;jam1<5;jam1++)
      00024E E4               [12]  625 	clr	a
      00024F F5 1E            [12]  626 	mov	_jam1,a
      000251 F5 1F            [12]  627 	mov	(_jam1 + 1),a
      000253                        628 00121$:
                                    629 ;	Digital_Clock.c:32: for(menit2=0;menit2<6;menit2++)
      000253 E4               [12]  630 	clr	a
      000254 F5 1C            [12]  631 	mov	_menit2,a
      000256 F5 1D            [12]  632 	mov	(_menit2 + 1),a
      000258                        633 00119$:
                                    634 ;	Digital_Clock.c:34: for(menit1=0;menit1<10;menit1++)
      000258 E4               [12]  635 	clr	a
      000259 F5 1A            [12]  636 	mov	_menit1,a
      00025B F5 1B            [12]  637 	mov	(_menit1 + 1),a
      00025D                        638 00117$:
                                    639 ;	Digital_Clock.c:36: for(detik2=0;detik2<6;detik2++)
      00025D E4               [12]  640 	clr	a
      00025E F5 18            [12]  641 	mov	_detik2,a
      000260 F5 19            [12]  642 	mov	(_detik2 + 1),a
      000262                        643 00115$:
                                    644 ;	Digital_Clock.c:38: for(detik1=0;detik1<10;detik1++)
      000262 E4               [12]  645 	clr	a
      000263 F5 16            [12]  646 	mov	_detik1,a
      000265 F5 17            [12]  647 	mov	(_detik1 + 1),a
      000267                        648 00113$:
                                    649 ;	Digital_Clock.c:40: for(milsec2=0;milsec2<10;milsec2++)
      000267 E4               [12]  650 	clr	a
      000268 F5 14            [12]  651 	mov	_milsec2,a
      00026A F5 15            [12]  652 	mov	(_milsec2 + 1),a
      00026C                        653 00111$:
                                    654 ;	Digital_Clock.c:42: for(milsec1=0;milsec1<10;milsec1++)
      00026C E4               [12]  655 	clr	a
      00026D F5 12            [12]  656 	mov	_milsec1,a
      00026F F5 13            [12]  657 	mov	(_milsec1 + 1),a
      000271                        658 00109$:
                                    659 ;	Digital_Clock.c:45: P0_0=0;
      000271 C2 80            [12]  660 	clr	_P0_0
                                    661 ;	Digital_Clock.c:46: P0_1=1;
      000273 D2 81            [12]  662 	setb	_P0_1
                                    663 ;	Digital_Clock.c:47: P0_2=1;
      000275 D2 82            [12]  664 	setb	_P0_2
                                    665 ;	Digital_Clock.c:48: P0_3=1;
      000277 D2 83            [12]  666 	setb	_P0_3
                                    667 ;	Digital_Clock.c:49: P0_4=1;
      000279 D2 84            [12]  668 	setb	_P0_4
                                    669 ;	Digital_Clock.c:50: P0_5=1;
      00027B D2 85            [12]  670 	setb	_P0_5
                                    671 ;	Digital_Clock.c:51: P0_6=1;
      00027D D2 86            [12]  672 	setb	_P0_6
                                    673 ;	Digital_Clock.c:52: P0_7=1;
      00027F D2 87            [12]  674 	setb	_P0_7
                                    675 ;	Digital_Clock.c:53: P3=angka[milsec1];
      000281 E5 12            [12]  676 	mov	a,_milsec1
      000283 24 08            [12]  677 	add	a,#_angka
      000285 F9               [12]  678 	mov	r1,a
      000286 87 B0            [24]  679 	mov	_P3,@r1
                                    680 ;	Digital_Clock.c:54: delay(1);
      000288 90 00 01         [24]  681 	mov	dptr,#0x0001
      00028B 12 00 80         [24]  682 	lcall	_delay
                                    683 ;	Digital_Clock.c:56: P0_0=1;
      00028E D2 80            [12]  684 	setb	_P0_0
                                    685 ;	Digital_Clock.c:57: P0_1=0;
      000290 C2 81            [12]  686 	clr	_P0_1
                                    687 ;	Digital_Clock.c:58: P0_2=1;
      000292 D2 82            [12]  688 	setb	_P0_2
                                    689 ;	Digital_Clock.c:59: P0_3=1;
      000294 D2 83            [12]  690 	setb	_P0_3
                                    691 ;	Digital_Clock.c:60: P0_4=1;
      000296 D2 84            [12]  692 	setb	_P0_4
                                    693 ;	Digital_Clock.c:61: P0_5=1;
      000298 D2 85            [12]  694 	setb	_P0_5
                                    695 ;	Digital_Clock.c:62: P0_6=1;
      00029A D2 86            [12]  696 	setb	_P0_6
                                    697 ;	Digital_Clock.c:63: P0_7=1;
      00029C D2 87            [12]  698 	setb	_P0_7
                                    699 ;	Digital_Clock.c:64: P3=angka[milsec2];
      00029E E5 14            [12]  700 	mov	a,_milsec2
      0002A0 24 08            [12]  701 	add	a,#_angka
      0002A2 F9               [12]  702 	mov	r1,a
      0002A3 87 B0            [24]  703 	mov	_P3,@r1
                                    704 ;	Digital_Clock.c:65: delay(1);
      0002A5 90 00 01         [24]  705 	mov	dptr,#0x0001
      0002A8 12 00 80         [24]  706 	lcall	_delay
                                    707 ;	Digital_Clock.c:67: P0_0=1;
      0002AB D2 80            [12]  708 	setb	_P0_0
                                    709 ;	Digital_Clock.c:68: P0_1=1;
      0002AD D2 81            [12]  710 	setb	_P0_1
                                    711 ;	Digital_Clock.c:69: P0_2=0;
      0002AF C2 82            [12]  712 	clr	_P0_2
                                    713 ;	Digital_Clock.c:70: P0_3=1;
      0002B1 D2 83            [12]  714 	setb	_P0_3
                                    715 ;	Digital_Clock.c:71: P0_4=1;
      0002B3 D2 84            [12]  716 	setb	_P0_4
                                    717 ;	Digital_Clock.c:72: P0_5=1;
      0002B5 D2 85            [12]  718 	setb	_P0_5
                                    719 ;	Digital_Clock.c:73: P0_6=1;
      0002B7 D2 86            [12]  720 	setb	_P0_6
                                    721 ;	Digital_Clock.c:74: P0_7=1;
      0002B9 D2 87            [12]  722 	setb	_P0_7
                                    723 ;	Digital_Clock.c:75: P3=angka[detik1];
      0002BB E5 16            [12]  724 	mov	a,_detik1
      0002BD 24 08            [12]  725 	add	a,#_angka
      0002BF F9               [12]  726 	mov	r1,a
      0002C0 87 B0            [24]  727 	mov	_P3,@r1
                                    728 ;	Digital_Clock.c:76: delay(1);
      0002C2 90 00 01         [24]  729 	mov	dptr,#0x0001
      0002C5 12 00 80         [24]  730 	lcall	_delay
                                    731 ;	Digital_Clock.c:78: P0_0=1;
      0002C8 D2 80            [12]  732 	setb	_P0_0
                                    733 ;	Digital_Clock.c:79: P0_1=1;
      0002CA D2 81            [12]  734 	setb	_P0_1
                                    735 ;	Digital_Clock.c:80: P0_2=1;
      0002CC D2 82            [12]  736 	setb	_P0_2
                                    737 ;	Digital_Clock.c:81: P0_3=0;
      0002CE C2 83            [12]  738 	clr	_P0_3
                                    739 ;	Digital_Clock.c:82: P0_4=1;
      0002D0 D2 84            [12]  740 	setb	_P0_4
                                    741 ;	Digital_Clock.c:83: P0_5=1;
      0002D2 D2 85            [12]  742 	setb	_P0_5
                                    743 ;	Digital_Clock.c:84: P0_6=1;
      0002D4 D2 86            [12]  744 	setb	_P0_6
                                    745 ;	Digital_Clock.c:85: P0_7=1;
      0002D6 D2 87            [12]  746 	setb	_P0_7
                                    747 ;	Digital_Clock.c:86: P3=angka[detik2];
      0002D8 E5 18            [12]  748 	mov	a,_detik2
      0002DA 24 08            [12]  749 	add	a,#_angka
      0002DC F9               [12]  750 	mov	r1,a
      0002DD 87 B0            [24]  751 	mov	_P3,@r1
                                    752 ;	Digital_Clock.c:87: delay(1);
      0002DF 90 00 01         [24]  753 	mov	dptr,#0x0001
      0002E2 12 00 80         [24]  754 	lcall	_delay
                                    755 ;	Digital_Clock.c:89: P0_0=0;
      0002E5 C2 80            [12]  756 	clr	_P0_0
                                    757 ;	Digital_Clock.c:90: P0_1=1;
      0002E7 D2 81            [12]  758 	setb	_P0_1
                                    759 ;	Digital_Clock.c:91: P0_2=1;
      0002E9 D2 82            [12]  760 	setb	_P0_2
                                    761 ;	Digital_Clock.c:92: P0_3=1;
      0002EB D2 83            [12]  762 	setb	_P0_3
                                    763 ;	Digital_Clock.c:93: P0_4=0;
      0002ED C2 84            [12]  764 	clr	_P0_4
                                    765 ;	Digital_Clock.c:94: P0_5=1;
      0002EF D2 85            [12]  766 	setb	_P0_5
                                    767 ;	Digital_Clock.c:95: P0_6=1;
      0002F1 D2 86            [12]  768 	setb	_P0_6
                                    769 ;	Digital_Clock.c:96: P0_7=1;
      0002F3 D2 87            [12]  770 	setb	_P0_7
                                    771 ;	Digital_Clock.c:97: P3=angka[menit1];
      0002F5 E5 1A            [12]  772 	mov	a,_menit1
      0002F7 24 08            [12]  773 	add	a,#_angka
      0002F9 F9               [12]  774 	mov	r1,a
      0002FA 87 B0            [24]  775 	mov	_P3,@r1
                                    776 ;	Digital_Clock.c:98: delay(1);
      0002FC 90 00 01         [24]  777 	mov	dptr,#0x0001
      0002FF 12 00 80         [24]  778 	lcall	_delay
                                    779 ;	Digital_Clock.c:100: P0_0=0;
      000302 C2 80            [12]  780 	clr	_P0_0
                                    781 ;	Digital_Clock.c:101: P0_1=1;
      000304 D2 81            [12]  782 	setb	_P0_1
                                    783 ;	Digital_Clock.c:102: P0_2=1;
      000306 D2 82            [12]  784 	setb	_P0_2
                                    785 ;	Digital_Clock.c:103: P0_3=1;
      000308 D2 83            [12]  786 	setb	_P0_3
                                    787 ;	Digital_Clock.c:104: P0_4=1;
      00030A D2 84            [12]  788 	setb	_P0_4
                                    789 ;	Digital_Clock.c:105: P0_5=0;
      00030C C2 85            [12]  790 	clr	_P0_5
                                    791 ;	Digital_Clock.c:106: P0_6=1;
      00030E D2 86            [12]  792 	setb	_P0_6
                                    793 ;	Digital_Clock.c:107: P0_7=1;
      000310 D2 87            [12]  794 	setb	_P0_7
                                    795 ;	Digital_Clock.c:108: P3=angka[menit2];
      000312 E5 1C            [12]  796 	mov	a,_menit2
      000314 24 08            [12]  797 	add	a,#_angka
      000316 F9               [12]  798 	mov	r1,a
      000317 87 B0            [24]  799 	mov	_P3,@r1
                                    800 ;	Digital_Clock.c:109: delay(1);
      000319 90 00 01         [24]  801 	mov	dptr,#0x0001
      00031C 12 00 80         [24]  802 	lcall	_delay
                                    803 ;	Digital_Clock.c:111: P0_0=0;
      00031F C2 80            [12]  804 	clr	_P0_0
                                    805 ;	Digital_Clock.c:112: P0_1=1;
      000321 D2 81            [12]  806 	setb	_P0_1
                                    807 ;	Digital_Clock.c:113: P0_2=1;
      000323 D2 82            [12]  808 	setb	_P0_2
                                    809 ;	Digital_Clock.c:114: P0_3=1;
      000325 D2 83            [12]  810 	setb	_P0_3
                                    811 ;	Digital_Clock.c:115: P0_4=1;
      000327 D2 84            [12]  812 	setb	_P0_4
                                    813 ;	Digital_Clock.c:116: P0_5=1;
      000329 D2 85            [12]  814 	setb	_P0_5
                                    815 ;	Digital_Clock.c:117: P0_6=0;
      00032B C2 86            [12]  816 	clr	_P0_6
                                    817 ;	Digital_Clock.c:118: P0_7=1;
      00032D D2 87            [12]  818 	setb	_P0_7
                                    819 ;	Digital_Clock.c:119: P3=angka[jam1];
      00032F E5 1E            [12]  820 	mov	a,_jam1
      000331 24 08            [12]  821 	add	a,#_angka
      000333 F9               [12]  822 	mov	r1,a
      000334 87 B0            [24]  823 	mov	_P3,@r1
                                    824 ;	Digital_Clock.c:120: delay(1);
      000336 90 00 01         [24]  825 	mov	dptr,#0x0001
      000339 12 00 80         [24]  826 	lcall	_delay
                                    827 ;	Digital_Clock.c:122: P0_0=0;
      00033C C2 80            [12]  828 	clr	_P0_0
                                    829 ;	Digital_Clock.c:123: P0_1=1;
      00033E D2 81            [12]  830 	setb	_P0_1
                                    831 ;	Digital_Clock.c:124: P0_2=1;
      000340 D2 82            [12]  832 	setb	_P0_2
                                    833 ;	Digital_Clock.c:125: P0_3=1;
      000342 D2 83            [12]  834 	setb	_P0_3
                                    835 ;	Digital_Clock.c:126: P0_4=1;
      000344 D2 84            [12]  836 	setb	_P0_4
                                    837 ;	Digital_Clock.c:127: P0_5=1;
      000346 D2 85            [12]  838 	setb	_P0_5
                                    839 ;	Digital_Clock.c:128: P0_6=1;
      000348 D2 86            [12]  840 	setb	_P0_6
                                    841 ;	Digital_Clock.c:129: P0_7=0;
      00034A C2 87            [12]  842 	clr	_P0_7
                                    843 ;	Digital_Clock.c:130: P3=angka[jam2];
      00034C E5 20            [12]  844 	mov	a,_jam2
      00034E 24 08            [12]  845 	add	a,#_angka
      000350 F9               [12]  846 	mov	r1,a
      000351 87 B0            [24]  847 	mov	_P3,@r1
                                    848 ;	Digital_Clock.c:131: delay(1);
      000353 90 00 01         [24]  849 	mov	dptr,#0x0001
      000356 12 00 80         [24]  850 	lcall	_delay
                                    851 ;	Digital_Clock.c:42: for(milsec1=0;milsec1<10;milsec1++)
      000359 05 12            [12]  852 	inc	_milsec1
      00035B E4               [12]  853 	clr	a
      00035C B5 12 02         [24]  854 	cjne	a,_milsec1,00172$
      00035F 05 13            [12]  855 	inc	(_milsec1 + 1)
      000361                        856 00172$:
      000361 C3               [12]  857 	clr	c
      000362 E5 12            [12]  858 	mov	a,_milsec1
      000364 94 0A            [12]  859 	subb	a,#0x0A
      000366 E5 13            [12]  860 	mov	a,(_milsec1 + 1)
      000368 64 80            [12]  861 	xrl	a,#0x80
      00036A 94 80            [12]  862 	subb	a,#0x80
      00036C 50 03            [24]  863 	jnc	00173$
      00036E 02 02 71         [24]  864 	ljmp	00109$
      000371                        865 00173$:
                                    866 ;	Digital_Clock.c:40: for(milsec2=0;milsec2<10;milsec2++)
      000371 05 14            [12]  867 	inc	_milsec2
      000373 E4               [12]  868 	clr	a
      000374 B5 14 02         [24]  869 	cjne	a,_milsec2,00174$
      000377 05 15            [12]  870 	inc	(_milsec2 + 1)
      000379                        871 00174$:
      000379 C3               [12]  872 	clr	c
      00037A E5 14            [12]  873 	mov	a,_milsec2
      00037C 94 0A            [12]  874 	subb	a,#0x0A
      00037E E5 15            [12]  875 	mov	a,(_milsec2 + 1)
      000380 64 80            [12]  876 	xrl	a,#0x80
      000382 94 80            [12]  877 	subb	a,#0x80
      000384 50 03            [24]  878 	jnc	00175$
      000386 02 02 6C         [24]  879 	ljmp	00111$
      000389                        880 00175$:
                                    881 ;	Digital_Clock.c:38: for(detik1=0;detik1<10;detik1++)
      000389 05 16            [12]  882 	inc	_detik1
      00038B E4               [12]  883 	clr	a
      00038C B5 16 02         [24]  884 	cjne	a,_detik1,00176$
      00038F 05 17            [12]  885 	inc	(_detik1 + 1)
      000391                        886 00176$:
      000391 C3               [12]  887 	clr	c
      000392 E5 16            [12]  888 	mov	a,_detik1
      000394 94 0A            [12]  889 	subb	a,#0x0A
      000396 E5 17            [12]  890 	mov	a,(_detik1 + 1)
      000398 64 80            [12]  891 	xrl	a,#0x80
      00039A 94 80            [12]  892 	subb	a,#0x80
      00039C 50 03            [24]  893 	jnc	00177$
      00039E 02 02 67         [24]  894 	ljmp	00113$
      0003A1                        895 00177$:
                                    896 ;	Digital_Clock.c:36: for(detik2=0;detik2<6;detik2++)
      0003A1 05 18            [12]  897 	inc	_detik2
      0003A3 E4               [12]  898 	clr	a
      0003A4 B5 18 02         [24]  899 	cjne	a,_detik2,00178$
      0003A7 05 19            [12]  900 	inc	(_detik2 + 1)
      0003A9                        901 00178$:
      0003A9 C3               [12]  902 	clr	c
      0003AA E5 18            [12]  903 	mov	a,_detik2
      0003AC 94 06            [12]  904 	subb	a,#0x06
      0003AE E5 19            [12]  905 	mov	a,(_detik2 + 1)
      0003B0 64 80            [12]  906 	xrl	a,#0x80
      0003B2 94 80            [12]  907 	subb	a,#0x80
      0003B4 50 03            [24]  908 	jnc	00179$
      0003B6 02 02 62         [24]  909 	ljmp	00115$
      0003B9                        910 00179$:
                                    911 ;	Digital_Clock.c:34: for(menit1=0;menit1<10;menit1++)
      0003B9 05 1A            [12]  912 	inc	_menit1
      0003BB E4               [12]  913 	clr	a
      0003BC B5 1A 02         [24]  914 	cjne	a,_menit1,00180$
      0003BF 05 1B            [12]  915 	inc	(_menit1 + 1)
      0003C1                        916 00180$:
      0003C1 C3               [12]  917 	clr	c
      0003C2 E5 1A            [12]  918 	mov	a,_menit1
      0003C4 94 0A            [12]  919 	subb	a,#0x0A
      0003C6 E5 1B            [12]  920 	mov	a,(_menit1 + 1)
      0003C8 64 80            [12]  921 	xrl	a,#0x80
      0003CA 94 80            [12]  922 	subb	a,#0x80
      0003CC 50 03            [24]  923 	jnc	00181$
      0003CE 02 02 5D         [24]  924 	ljmp	00117$
      0003D1                        925 00181$:
                                    926 ;	Digital_Clock.c:32: for(menit2=0;menit2<6;menit2++)
      0003D1 05 1C            [12]  927 	inc	_menit2
      0003D3 E4               [12]  928 	clr	a
      0003D4 B5 1C 02         [24]  929 	cjne	a,_menit2,00182$
      0003D7 05 1D            [12]  930 	inc	(_menit2 + 1)
      0003D9                        931 00182$:
      0003D9 C3               [12]  932 	clr	c
      0003DA E5 1C            [12]  933 	mov	a,_menit2
      0003DC 94 06            [12]  934 	subb	a,#0x06
      0003DE E5 1D            [12]  935 	mov	a,(_menit2 + 1)
      0003E0 64 80            [12]  936 	xrl	a,#0x80
      0003E2 94 80            [12]  937 	subb	a,#0x80
      0003E4 50 03            [24]  938 	jnc	00183$
      0003E6 02 02 58         [24]  939 	ljmp	00119$
      0003E9                        940 00183$:
                                    941 ;	Digital_Clock.c:30: for(jam1=0;jam1<5;jam1++)
      0003E9 05 1E            [12]  942 	inc	_jam1
      0003EB E4               [12]  943 	clr	a
      0003EC B5 1E 02         [24]  944 	cjne	a,_jam1,00184$
      0003EF 05 1F            [12]  945 	inc	(_jam1 + 1)
      0003F1                        946 00184$:
      0003F1 C3               [12]  947 	clr	c
      0003F2 E5 1E            [12]  948 	mov	a,_jam1
      0003F4 94 05            [12]  949 	subb	a,#0x05
      0003F6 E5 1F            [12]  950 	mov	a,(_jam1 + 1)
      0003F8 64 80            [12]  951 	xrl	a,#0x80
      0003FA 94 80            [12]  952 	subb	a,#0x80
      0003FC 50 03            [24]  953 	jnc	00185$
      0003FE 02 02 53         [24]  954 	ljmp	00121$
      000401                        955 00185$:
                                    956 ;	Digital_Clock.c:28: for(jam2=0;jam2<3;jam2++)
      000401 05 20            [12]  957 	inc	_jam2
      000403 E4               [12]  958 	clr	a
      000404 B5 20 02         [24]  959 	cjne	a,_jam2,00186$
      000407 05 21            [12]  960 	inc	(_jam2 + 1)
      000409                        961 00186$:
      000409 C3               [12]  962 	clr	c
      00040A E5 20            [12]  963 	mov	a,_jam2
      00040C 94 03            [12]  964 	subb	a,#0x03
      00040E E5 21            [12]  965 	mov	a,(_jam2 + 1)
      000410 64 80            [12]  966 	xrl	a,#0x80
      000412 94 80            [12]  967 	subb	a,#0x80
      000414 50 03            [24]  968 	jnc	00187$
      000416 02 02 4E         [24]  969 	ljmp	00123$
      000419                        970 00187$:
      000419 22               [24]  971 	ret
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function 'main'
                                    974 ;------------------------------------------------------------
                                    975 ;	Digital_Clock.c:143: void main(void)
                                    976 ;	-----------------------------------------
                                    977 ;	 function main
                                    978 ;	-----------------------------------------
      00041A                        979 _main:
                                    980 ;	Digital_Clock.c:145: data1=0;
      00041A E4               [12]  981 	clr	a
      00041B F5 26            [12]  982 	mov	_data1,a
      00041D F5 27            [12]  983 	mov	(_data1 + 1),a
                                    984 ;	Digital_Clock.c:146: while (1)
      00041F                        985 00102$:
                                    986 ;	Digital_Clock.c:148: ambil_data();
      00041F 12 00 AC         [24]  987 	lcall	_ambil_data
                                    988 ;	Digital_Clock.c:149: tampilkan_seven_segment();
      000422 12 02 49         [24]  989 	lcall	_tampilkan_seven_segment
      000425 80 F8            [24]  990 	sjmp	00102$
                                    991 	.area CSEG    (CODE)
                                    992 	.area CONST   (CODE)
                                    993 	.area XINIT   (CODE)
                                    994 	.area CABS    (ABS,CODE)
