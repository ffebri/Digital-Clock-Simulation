;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Jan 22 22:32:32 2015
;--------------------------------------------------------
	.module Digital_Clock
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _tampilkan_seven_segment
	.globl _ambil_data
	.globl _delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _data1
	.globl _x
	.globl _data_temp
	.globl _jam2
	.globl _jam1
	.globl _menit2
	.globl _menit1
	.globl _detik2
	.globl _detik1
	.globl _milsec2
	.globl _milsec1
	.globl _angka
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_angka::
	.ds 10
_milsec1::
	.ds 2
_milsec2::
	.ds 2
_detik1::
	.ds 2
_detik2::
	.ds 2
_menit1::
	.ds 2
_menit2::
	.ds 2
_jam1::
	.ds 2
_jam2::
	.ds 2
_data_temp::
	.ds 2
_x::
	.ds 2
_data1::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	Digital_Clock.c:3: unsigned char angka[10]= {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
	mov	_angka,#0x3F
	mov	(_angka + 0x0001),#0x06
	mov	(_angka + 0x0002),#0x5B
	mov	(_angka + 0x0003),#0x4F
	mov	(_angka + 0x0004),#0x66
	mov	(_angka + 0x0005),#0x6D
	mov	(_angka + 0x0006),#0x7D
	mov	(_angka + 0x0007),#0x07
	mov	(_angka + 0x0008),#0x7F
	mov	(_angka + 0x0009),#0x6F
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	Digital_Clock.c:6: void delay(int n)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	Digital_Clock.c:9: for(i=0;i<n;i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	Digital_Clock.c:10: for(j=0;j<135;j++);
	mov	r2,#0x87
	mov	r3,#0x00
00105$:
	dec	r2
	cjne	r2,#0xFF,00126$
	dec	r3
00126$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	Digital_Clock.c:9: for(i=0;i<n;i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ambil_data'
;------------------------------------------------------------
;	Digital_Clock.c:13: void ambil_data()
;	-----------------------------------------
;	 function ambil_data
;	-----------------------------------------
_ambil_data:
;	Digital_Clock.c:15: data_temp=data1;
	mov	_data_temp,_data1
	mov	(_data_temp + 1),(_data1 + 1)
;	Digital_Clock.c:16: milsec1=(data_temp/10)%10;
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_data_temp
	mov	dph,(_data_temp + 1)
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	_milsec1,dpl
	mov	(_milsec1 + 1),dph
;	Digital_Clock.c:17: milsec2=(data_temp/100)%10;
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_data_temp
	mov	dph,(_data_temp + 1)
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	_milsec2,dpl
	mov	(_milsec2 + 1),dph
;	Digital_Clock.c:18: detik1=(data_temp/1000)%10;
	mov	__divsint_PARM_2,#0xE8
	mov	(__divsint_PARM_2 + 1),#0x03
	mov	dpl,_data_temp
	mov	dph,(_data_temp + 1)
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	_detik1,dpl
	mov	(_detik1 + 1),dph
;	Digital_Clock.c:19: detik2=(data_temp/10000)%10;
	mov	__divsint_PARM_2,#0x10
	mov	(__divsint_PARM_2 + 1),#0x27
	mov	dpl,_data_temp
	mov	dph,(_data_temp + 1)
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	_detik2,dpl
	mov	(_detik2 + 1),dph
;	Digital_Clock.c:20: menit1=(data_temp/100000)%10;
	mov	r4,_data_temp
	mov	a,(_data_temp + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	__divslong_PARM_2,#0xA0
	mov	(__divslong_PARM_2 + 1),#0x86
	mov	(__divslong_PARM_2 + 2),#0x01
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divslong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	__modslong_PARM_2,#0x0A
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__modslong
	mov	r0,dpl
	mov	r1,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_menit1,r0
	mov	(_menit1 + 1),r1
;	Digital_Clock.c:21: menit2=(data_temp/1000000)%10;
	mov	__divslong_PARM_2,#0x40
	mov	(__divslong_PARM_2 + 1),#0x42
	mov	(__divslong_PARM_2 + 2),#0x0F
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divslong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	__modslong_PARM_2,#0x0A
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__modslong
	mov	r0,dpl
	mov	r1,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_menit2,r0
	mov	(_menit2 + 1),r1
;	Digital_Clock.c:22: jam1=(data_temp/10000000)%10;
	mov	__divslong_PARM_2,#0x80
	mov	(__divslong_PARM_2 + 1),#0x96
	mov	(__divslong_PARM_2 + 2),#0x98
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divslong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	__modslong_PARM_2,#0x0A
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__modslong
	mov	r0,dpl
	mov	r1,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_jam1,r0
	mov	(_jam1 + 1),r1
;	Digital_Clock.c:23: jam2=(data_temp/100000000)%10;
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0xE1
	mov	(__divslong_PARM_2 + 2),#0xF5
	mov	(__divslong_PARM_2 + 3),#0x05
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	__modslong_PARM_2,#0x0A
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modslong
	mov	r4,dpl
	mov	r5,dph
	mov	_jam2,r4
	mov	(_jam2 + 1),r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tampilkan_seven_segment'
;------------------------------------------------------------
;	Digital_Clock.c:26: void tampilkan_seven_segment()
;	-----------------------------------------
;	 function tampilkan_seven_segment
;	-----------------------------------------
_tampilkan_seven_segment:
;	Digital_Clock.c:28: for(jam2=0;jam2<3;jam2++)
	clr	a
	mov	_jam2,a
	mov	(_jam2 + 1),a
00123$:
;	Digital_Clock.c:30: for(jam1=0;jam1<5;jam1++)
	clr	a
	mov	_jam1,a
	mov	(_jam1 + 1),a
00121$:
;	Digital_Clock.c:32: for(menit2=0;menit2<6;menit2++)
	clr	a
	mov	_menit2,a
	mov	(_menit2 + 1),a
00119$:
;	Digital_Clock.c:34: for(menit1=0;menit1<10;menit1++)
	clr	a
	mov	_menit1,a
	mov	(_menit1 + 1),a
00117$:
;	Digital_Clock.c:36: for(detik2=0;detik2<6;detik2++)
	clr	a
	mov	_detik2,a
	mov	(_detik2 + 1),a
00115$:
;	Digital_Clock.c:38: for(detik1=0;detik1<10;detik1++)
	clr	a
	mov	_detik1,a
	mov	(_detik1 + 1),a
00113$:
;	Digital_Clock.c:40: for(milsec2=0;milsec2<10;milsec2++)
	clr	a
	mov	_milsec2,a
	mov	(_milsec2 + 1),a
00111$:
;	Digital_Clock.c:42: for(milsec1=0;milsec1<10;milsec1++)
	clr	a
	mov	_milsec1,a
	mov	(_milsec1 + 1),a
00109$:
;	Digital_Clock.c:45: P0_0=0;
	clr	_P0_0
;	Digital_Clock.c:46: P0_1=1;
	setb	_P0_1
;	Digital_Clock.c:47: P0_2=1;
	setb	_P0_2
;	Digital_Clock.c:48: P0_3=1;
	setb	_P0_3
;	Digital_Clock.c:49: P0_4=1;
	setb	_P0_4
;	Digital_Clock.c:50: P0_5=1;
	setb	_P0_5
;	Digital_Clock.c:51: P0_6=1;
	setb	_P0_6
;	Digital_Clock.c:52: P0_7=1;
	setb	_P0_7
;	Digital_Clock.c:53: P3=angka[milsec1];
	mov	a,_milsec1
	add	a,#_angka
	mov	r1,a
	mov	_P3,@r1
;	Digital_Clock.c:54: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	Digital_Clock.c:56: P0_0=1;
	setb	_P0_0
;	Digital_Clock.c:57: P0_1=0;
	clr	_P0_1
;	Digital_Clock.c:58: P0_2=1;
	setb	_P0_2
;	Digital_Clock.c:59: P0_3=1;
	setb	_P0_3
;	Digital_Clock.c:60: P0_4=1;
	setb	_P0_4
;	Digital_Clock.c:61: P0_5=1;
	setb	_P0_5
;	Digital_Clock.c:62: P0_6=1;
	setb	_P0_6
;	Digital_Clock.c:63: P0_7=1;
	setb	_P0_7
;	Digital_Clock.c:64: P3=angka[milsec2];
	mov	a,_milsec2
	add	a,#_angka
	mov	r1,a
	mov	_P3,@r1
;	Digital_Clock.c:65: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	Digital_Clock.c:67: P0_0=1;
	setb	_P0_0
;	Digital_Clock.c:68: P0_1=1;
	setb	_P0_1
;	Digital_Clock.c:69: P0_2=0;
	clr	_P0_2
;	Digital_Clock.c:70: P0_3=1;
	setb	_P0_3
;	Digital_Clock.c:71: P0_4=1;
	setb	_P0_4
;	Digital_Clock.c:72: P0_5=1;
	setb	_P0_5
;	Digital_Clock.c:73: P0_6=1;
	setb	_P0_6
;	Digital_Clock.c:74: P0_7=1;
	setb	_P0_7
;	Digital_Clock.c:75: P3=angka[detik1];
	mov	a,_detik1
	add	a,#_angka
	mov	r1,a
	mov	_P3,@r1
;	Digital_Clock.c:76: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	Digital_Clock.c:78: P0_0=1;
	setb	_P0_0
;	Digital_Clock.c:79: P0_1=1;
	setb	_P0_1
;	Digital_Clock.c:80: P0_2=1;
	setb	_P0_2
;	Digital_Clock.c:81: P0_3=0;
	clr	_P0_3
;	Digital_Clock.c:82: P0_4=1;
	setb	_P0_4
;	Digital_Clock.c:83: P0_5=1;
	setb	_P0_5
;	Digital_Clock.c:84: P0_6=1;
	setb	_P0_6
;	Digital_Clock.c:85: P0_7=1;
	setb	_P0_7
;	Digital_Clock.c:86: P3=angka[detik2];
	mov	a,_detik2
	add	a,#_angka
	mov	r1,a
	mov	_P3,@r1
;	Digital_Clock.c:87: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	Digital_Clock.c:89: P0_0=0;
	clr	_P0_0
;	Digital_Clock.c:90: P0_1=1;
	setb	_P0_1
;	Digital_Clock.c:91: P0_2=1;
	setb	_P0_2
;	Digital_Clock.c:92: P0_3=1;
	setb	_P0_3
;	Digital_Clock.c:93: P0_4=0;
	clr	_P0_4
;	Digital_Clock.c:94: P0_5=1;
	setb	_P0_5
;	Digital_Clock.c:95: P0_6=1;
	setb	_P0_6
;	Digital_Clock.c:96: P0_7=1;
	setb	_P0_7
;	Digital_Clock.c:97: P3=angka[menit1];
	mov	a,_menit1
	add	a,#_angka
	mov	r1,a
	mov	_P3,@r1
;	Digital_Clock.c:98: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	Digital_Clock.c:100: P0_0=0;
	clr	_P0_0
;	Digital_Clock.c:101: P0_1=1;
	setb	_P0_1
;	Digital_Clock.c:102: P0_2=1;
	setb	_P0_2
;	Digital_Clock.c:103: P0_3=1;
	setb	_P0_3
;	Digital_Clock.c:104: P0_4=1;
	setb	_P0_4
;	Digital_Clock.c:105: P0_5=0;
	clr	_P0_5
;	Digital_Clock.c:106: P0_6=1;
	setb	_P0_6
;	Digital_Clock.c:107: P0_7=1;
	setb	_P0_7
;	Digital_Clock.c:108: P3=angka[menit2];
	mov	a,_menit2
	add	a,#_angka
	mov	r1,a
	mov	_P3,@r1
;	Digital_Clock.c:109: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	Digital_Clock.c:111: P0_0=0;
	clr	_P0_0
;	Digital_Clock.c:112: P0_1=1;
	setb	_P0_1
;	Digital_Clock.c:113: P0_2=1;
	setb	_P0_2
;	Digital_Clock.c:114: P0_3=1;
	setb	_P0_3
;	Digital_Clock.c:115: P0_4=1;
	setb	_P0_4
;	Digital_Clock.c:116: P0_5=1;
	setb	_P0_5
;	Digital_Clock.c:117: P0_6=0;
	clr	_P0_6
;	Digital_Clock.c:118: P0_7=1;
	setb	_P0_7
;	Digital_Clock.c:119: P3=angka[jam1];
	mov	a,_jam1
	add	a,#_angka
	mov	r1,a
	mov	_P3,@r1
;	Digital_Clock.c:120: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	Digital_Clock.c:122: P0_0=0;
	clr	_P0_0
;	Digital_Clock.c:123: P0_1=1;
	setb	_P0_1
;	Digital_Clock.c:124: P0_2=1;
	setb	_P0_2
;	Digital_Clock.c:125: P0_3=1;
	setb	_P0_3
;	Digital_Clock.c:126: P0_4=1;
	setb	_P0_4
;	Digital_Clock.c:127: P0_5=1;
	setb	_P0_5
;	Digital_Clock.c:128: P0_6=1;
	setb	_P0_6
;	Digital_Clock.c:129: P0_7=0;
	clr	_P0_7
;	Digital_Clock.c:130: P3=angka[jam2];
	mov	a,_jam2
	add	a,#_angka
	mov	r1,a
	mov	_P3,@r1
;	Digital_Clock.c:131: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	Digital_Clock.c:42: for(milsec1=0;milsec1<10;milsec1++)
	inc	_milsec1
	clr	a
	cjne	a,_milsec1,00172$
	inc	(_milsec1 + 1)
00172$:
	clr	c
	mov	a,_milsec1
	subb	a,#0x0A
	mov	a,(_milsec1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00173$
	ljmp	00109$
00173$:
;	Digital_Clock.c:40: for(milsec2=0;milsec2<10;milsec2++)
	inc	_milsec2
	clr	a
	cjne	a,_milsec2,00174$
	inc	(_milsec2 + 1)
00174$:
	clr	c
	mov	a,_milsec2
	subb	a,#0x0A
	mov	a,(_milsec2 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00175$
	ljmp	00111$
00175$:
;	Digital_Clock.c:38: for(detik1=0;detik1<10;detik1++)
	inc	_detik1
	clr	a
	cjne	a,_detik1,00176$
	inc	(_detik1 + 1)
00176$:
	clr	c
	mov	a,_detik1
	subb	a,#0x0A
	mov	a,(_detik1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00177$
	ljmp	00113$
00177$:
;	Digital_Clock.c:36: for(detik2=0;detik2<6;detik2++)
	inc	_detik2
	clr	a
	cjne	a,_detik2,00178$
	inc	(_detik2 + 1)
00178$:
	clr	c
	mov	a,_detik2
	subb	a,#0x06
	mov	a,(_detik2 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00179$
	ljmp	00115$
00179$:
;	Digital_Clock.c:34: for(menit1=0;menit1<10;menit1++)
	inc	_menit1
	clr	a
	cjne	a,_menit1,00180$
	inc	(_menit1 + 1)
00180$:
	clr	c
	mov	a,_menit1
	subb	a,#0x0A
	mov	a,(_menit1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00181$
	ljmp	00117$
00181$:
;	Digital_Clock.c:32: for(menit2=0;menit2<6;menit2++)
	inc	_menit2
	clr	a
	cjne	a,_menit2,00182$
	inc	(_menit2 + 1)
00182$:
	clr	c
	mov	a,_menit2
	subb	a,#0x06
	mov	a,(_menit2 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00183$
	ljmp	00119$
00183$:
;	Digital_Clock.c:30: for(jam1=0;jam1<5;jam1++)
	inc	_jam1
	clr	a
	cjne	a,_jam1,00184$
	inc	(_jam1 + 1)
00184$:
	clr	c
	mov	a,_jam1
	subb	a,#0x05
	mov	a,(_jam1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00185$
	ljmp	00121$
00185$:
;	Digital_Clock.c:28: for(jam2=0;jam2<3;jam2++)
	inc	_jam2
	clr	a
	cjne	a,_jam2,00186$
	inc	(_jam2 + 1)
00186$:
	clr	c
	mov	a,_jam2
	subb	a,#0x03
	mov	a,(_jam2 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00187$
	ljmp	00123$
00187$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	Digital_Clock.c:143: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Digital_Clock.c:145: data1=0;
	clr	a
	mov	_data1,a
	mov	(_data1 + 1),a
;	Digital_Clock.c:146: while (1)
00102$:
;	Digital_Clock.c:148: ambil_data();
	lcall	_ambil_data
;	Digital_Clock.c:149: tampilkan_seven_segment();
	lcall	_tampilkan_seven_segment
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
