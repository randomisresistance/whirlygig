;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sat Jul 12 02:11:19 2014
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _szaStringDescriptors
	.globl _Endpoint3Desc
	.globl _Endpoint2Desc
	.globl _Endpoint1Desc
	.globl _InterfaceDesc
	.globl _ConfigDesc
	.globl _DeviceDesc
	.globl _main
	.globl _pull64
	.globl _SPIF
	.globl _WCOL
	.globl _MODF
	.globl _RXOVRN
	.globl _TXBSY
	.globl _SLVSEL
	.globl _TXBMT
	.globl _SPIEN
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _AD0EN
	.globl _AD0TM
	.globl _AD0INT
	.globl _AD0BUSY
	.globl _AD0WINT
	.globl _AD0CM2
	.globl _AD0CM1
	.globl _AD0CM0
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _TF2H
	.globl _TF2L
	.globl _TF2LEN
	.globl _T2SOF
	.globl _T2SPLIT
	.globl _TR2
	.globl _T2XCLK
	.globl _MASTER
	.globl _TXMODE
	.globl _STA
	.globl _STO
	.globl _ACKRQ
	.globl _ARBLOST
	.globl _ACK
	.globl _SI
	.globl _PSPI0
	.globl _PT2
	.globl _PS0
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ESPI0
	.globl _ET2
	.globl _ES0
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
	.globl _S0MODE
	.globl _MCE0
	.globl _REN0
	.globl _TB80
	.globl _RB80
	.globl _TI0
	.globl _RI0
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
	.globl _VDM0CN
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _P3MDIN
	.globl _P2MDIN
	.globl _P1MDIN
	.globl _P0MDIN
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _IT01CF
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _USB0XCN
	.globl _P2SKIP
	.globl _P1SKIP
	.globl _P0SKIP
	.globl _REF0CN
	.globl _PSW
	.globl _TMR2H
	.globl _TMR2L
	.globl _TMR2RLH
	.globl _TMR2RLL
	.globl _REG0CN
	.globl _TMR2CN
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0DAT
	.globl _SMB0CF
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _ADC0CF
	.globl _AMX0P
	.globl _AMX0N
	.globl _CLKMUL
	.globl _IP
	.globl _FLKEY
	.globl _FLSCL
	.globl _OSCICL
	.globl _OSCICN
	.globl _OSCXCN
	.globl _P3
	.globl _EMI0CN
	.globl _CLKSEL
	.globl _IE
	.globl _P3MDOUT
	.globl _P2MDOUT
	.globl _P1MDOUT
	.globl _P0MDOUT
	.globl _SPIODAT
	.globl _SPIDAT
	.globl _SPIOCKR
	.globl _SPICKR
	.globl _SPIOCFG
	.globl _SPICFG
	.globl _P2
	.globl _CPT0MX
	.globl _CPT1MX
	.globl _CPT0MD
	.globl _CPT1MD
	.globl _CPT0CN
	.globl _CPT1CN
	.globl _SBUF0
	.globl _SCON0
	.globl _USB0DAT
	.globl _USB0ADR
	.globl _TMR3H
	.globl _TMR3L
	.globl _TMR3RLH
	.globl _TMR3RLL
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
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
	.globl _baRxCache
	.globl _bRxCacheHead
	.globl _bRxCacheTail
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
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
_CKCON	=	0x008e
_PSCTL	=	0x008f
_P1	=	0x0090
_TMR3CN	=	0x0091
_TMR3RLL	=	0x0092
_TMR3RLH	=	0x0093
_TMR3L	=	0x0094
_TMR3H	=	0x0095
_USB0ADR	=	0x0096
_USB0DAT	=	0x0097
_SCON0	=	0x0098
_SBUF0	=	0x0099
_CPT1CN	=	0x009a
_CPT0CN	=	0x009b
_CPT1MD	=	0x009c
_CPT0MD	=	0x009d
_CPT1MX	=	0x009e
_CPT0MX	=	0x009f
_P2	=	0x00a0
_SPICFG	=	0x00a1
_SPIOCFG	=	0x00a1
_SPICKR	=	0x00a2
_SPIOCKR	=	0x00a2
_SPIDAT	=	0x00a3
_SPIODAT	=	0x00a3
_P0MDOUT	=	0x00a4
_P1MDOUT	=	0x00a5
_P2MDOUT	=	0x00a6
_P3MDOUT	=	0x00a7
_IE	=	0x00a8
_CLKSEL	=	0x00a9
_EMI0CN	=	0x00aa
_P3	=	0x00b0
_OSCXCN	=	0x00b1
_OSCICN	=	0x00b2
_OSCICL	=	0x00b3
_FLSCL	=	0x00b6
_FLKEY	=	0x00b7
_IP	=	0x00b8
_CLKMUL	=	0x00b9
_AMX0N	=	0x00ba
_AMX0P	=	0x00bb
_ADC0CF	=	0x00bc
_ADC0L	=	0x00bd
_ADC0H	=	0x00be
_SMB0CN	=	0x00c0
_SMB0CF	=	0x00c1
_SMB0DAT	=	0x00c2
_ADC0GTL	=	0x00c3
_ADC0GTH	=	0x00c4
_ADC0LTL	=	0x00c5
_ADC0LTH	=	0x00c6
_TMR2CN	=	0x00c8
_REG0CN	=	0x00c9
_TMR2RLL	=	0x00ca
_TMR2RLH	=	0x00cb
_TMR2L	=	0x00cc
_TMR2H	=	0x00cd
_PSW	=	0x00d0
_REF0CN	=	0x00d1
_P0SKIP	=	0x00d4
_P1SKIP	=	0x00d5
_P2SKIP	=	0x00d6
_USB0XCN	=	0x00d7
_PCA0CN	=	0x00d8
_PCA0MD	=	0x00d9
_PCA0CPM0	=	0x00da
_PCA0CPM1	=	0x00db
_PCA0CPM2	=	0x00dc
_PCA0CPM3	=	0x00dd
_PCA0CPM4	=	0x00de
_ACC	=	0x00e0
_XBR0	=	0x00e1
_XBR1	=	0x00e2
_IT01CF	=	0x00e4
_EIE1	=	0x00e6
_EIE2	=	0x00e7
_ADC0CN	=	0x00e8
_PCA0CPL1	=	0x00e9
_PCA0CPH1	=	0x00ea
_PCA0CPL2	=	0x00eb
_PCA0CPH2	=	0x00ec
_PCA0CPL3	=	0x00ed
_PCA0CPH3	=	0x00ee
_RSTSRC	=	0x00ef
_B	=	0x00f0
_P0MDIN	=	0x00f1
_P1MDIN	=	0x00f2
_P2MDIN	=	0x00f3
_P3MDIN	=	0x00f4
_EIP1	=	0x00f6
_EIP2	=	0x00f7
_SPI0CN	=	0x00f8
_PCA0L	=	0x00f9
_PCA0H	=	0x00fa
_PCA0CPL0	=	0x00fb
_PCA0CPH0	=	0x00fc
_PCA0CPL4	=	0x00fd
_PCA0CPH4	=	0x00fe
_VDM0CN	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
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
_RI0	=	0x0098
_TI0	=	0x0099
_RB80	=	0x009a
_TB80	=	0x009b
_REN0	=	0x009c
_MCE0	=	0x009d
_S0MODE	=	0x009f
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
_ES0	=	0x00ac
_ET2	=	0x00ad
_ESPI0	=	0x00ae
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS0	=	0x00bc
_PT2	=	0x00bd
_PSPI0	=	0x00be
_SI	=	0x00c0
_ACK	=	0x00c1
_ARBLOST	=	0x00c2
_ACKRQ	=	0x00c3
_STO	=	0x00c4
_STA	=	0x00c5
_TXMODE	=	0x00c6
_MASTER	=	0x00c7
_T2XCLK	=	0x00c8
_TR2	=	0x00ca
_T2SPLIT	=	0x00cb
_T2SOF	=	0x00cc
_TF2LEN	=	0x00cd
_TF2L	=	0x00ce
_TF2H	=	0x00cf
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_CCF0	=	0x00d8
_CCF1	=	0x00d9
_CCF2	=	0x00da
_CCF3	=	0x00db
_CCF4	=	0x00dc
_CR	=	0x00de
_CF	=	0x00df
_ACC_0	=	0x00e0
_ACC_1	=	0x00e1
_ACC_2	=	0x00e2
_ACC_3	=	0x00e3
_ACC_4	=	0x00e4
_ACC_5	=	0x00e5
_ACC_6	=	0x00e6
_ACC_7	=	0x00e7
_AD0CM0	=	0x00e8
_AD0CM1	=	0x00e9
_AD0CM2	=	0x00ea
_AD0WINT	=	0x00eb
_AD0BUSY	=	0x00ec
_AD0INT	=	0x00ed
_AD0TM	=	0x00ee
_AD0EN	=	0x00ef
_B_0	=	0x00f0
_B_1	=	0x00f1
_B_2	=	0x00f2
_B_3	=	0x00f3
_B_4	=	0x00f4
_B_5	=	0x00f5
_B_6	=	0x00f6
_B_7	=	0x00f7
_SPIEN	=	0x00f8
_TXBMT	=	0x00f9
_SLVSEL	=	0x00fa
_TXBSY	=	0x00fb
_RXOVRN	=	0x00fc
_MODF	=	0x00fd
_WCOL	=	0x00fe
_SPIF	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_bRxCacheTail::
	.ds 1
_bRxCacheHead::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
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
_baRxCache::
	.ds 32
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_Uart_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_Usb_ISR
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
;	main.c:32: volatile BYTE bRxCacheTail = 0, bRxCacheHead = 0;
	mov	_bRxCacheTail,#0x00
;	main.c:32: 
	mov	_bRxCacheHead,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'pull64'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:136: void pull64(void)
;	-----------------------------------------
;	 function pull64
;	-----------------------------------------
_pull64:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	main.c:139: EA = 0;
	clr	_EA
;	main.c:141: UsbSelectInEndpointFifo(3);
	mov	dpl,#0x03
	lcall	_UsbSelectInEndpointFifo
;	main.c:143: P0_6 = 0;
	clr	_P0_6
;	main.c:144: P0_6 = 1;
	setb	_P0_6
;	main.c:145: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:146: P0_6 = 0;
	clr	_P0_6
;	main.c:147: P0_6 = 1;
	setb	_P0_6
;	main.c:148: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:149: P0_6 = 0;
	clr	_P0_6
;	main.c:150: P0_6 = 1;
	setb	_P0_6
;	main.c:151: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:152: P0_6 = 0;
	clr	_P0_6
;	main.c:153: P0_6 = 1;
	setb	_P0_6
;	main.c:154: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:155: P0_6 = 0;
	clr	_P0_6
;	main.c:156: P0_6 = 1;
	setb	_P0_6
;	main.c:157: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:158: P0_6 = 0;
	clr	_P0_6
;	main.c:159: P0_6 = 1;
	setb	_P0_6
;	main.c:160: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:161: P0_6 = 0;
	clr	_P0_6
;	main.c:162: P0_6 = 1;
	setb	_P0_6
;	main.c:163: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:164: P0_6 = 0;
	clr	_P0_6
;	main.c:165: P0_6 = 1;
	setb	_P0_6
;	main.c:166: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:167: P0_6 = 0;
	clr	_P0_6
;	main.c:168: P0_6 = 1;
	setb	_P0_6
;	main.c:169: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:170: P0_6 = 0;
	clr	_P0_6
;	main.c:171: P0_6 = 1;
	setb	_P0_6
;	main.c:172: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:173: P0_6 = 0;
	clr	_P0_6
;	main.c:174: P0_6 = 1;
	setb	_P0_6
;	main.c:175: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:176: P0_6 = 0;
	clr	_P0_6
;	main.c:177: P0_6 = 1;
	setb	_P0_6
;	main.c:178: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:179: P0_6 = 0;
	clr	_P0_6
;	main.c:180: P0_6 = 1;
	setb	_P0_6
;	main.c:181: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:182: P0_6 = 0;
	clr	_P0_6
;	main.c:183: P0_6 = 1;
	setb	_P0_6
;	main.c:184: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:185: P0_6 = 0;
	clr	_P0_6
;	main.c:186: P0_6 = 1;
	setb	_P0_6
;	main.c:187: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:188: P0_6 = 0;
	clr	_P0_6
;	main.c:189: P0_6 = 1;
	setb	_P0_6
;	main.c:190: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:191: P0_6 = 0;
	clr	_P0_6
;	main.c:192: P0_6 = 1;
	setb	_P0_6
;	main.c:193: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:194: P0_6 = 0;
	clr	_P0_6
;	main.c:195: P0_6 = 1;
	setb	_P0_6
;	main.c:196: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:197: P0_6 = 0;
	clr	_P0_6
;	main.c:198: P0_6 = 1;
	setb	_P0_6
;	main.c:199: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:200: P0_6 = 0;
	clr	_P0_6
;	main.c:201: P0_6 = 1;
	setb	_P0_6
;	main.c:202: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:203: P0_6 = 0;
	clr	_P0_6
;	main.c:204: P0_6 = 1;
	setb	_P0_6
;	main.c:205: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:206: P0_6 = 0;
	clr	_P0_6
;	main.c:207: P0_6 = 1;
	setb	_P0_6
;	main.c:208: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:209: P0_6 = 0;
	clr	_P0_6
;	main.c:210: P0_6 = 1;
	setb	_P0_6
;	main.c:211: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:212: P0_6 = 0;
	clr	_P0_6
;	main.c:213: P0_6 = 1;
	setb	_P0_6
;	main.c:214: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:215: P0_6 = 0;
	clr	_P0_6
;	main.c:216: P0_6 = 1;
	setb	_P0_6
;	main.c:217: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:218: P0_6 = 0;
	clr	_P0_6
;	main.c:219: P0_6 = 1;
	setb	_P0_6
;	main.c:220: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:221: P0_6 = 0;
	clr	_P0_6
;	main.c:222: P0_6 = 1;
	setb	_P0_6
;	main.c:223: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:224: P0_6 = 0;
	clr	_P0_6
;	main.c:225: P0_6 = 1;
	setb	_P0_6
;	main.c:226: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:227: P0_6 = 0;
	clr	_P0_6
;	main.c:228: P0_6 = 1;
	setb	_P0_6
;	main.c:229: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:230: P0_6 = 0;
	clr	_P0_6
;	main.c:231: P0_6 = 1;
	setb	_P0_6
;	main.c:232: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:233: P0_6 = 0;
	clr	_P0_6
;	main.c:234: P0_6 = 1;
	setb	_P0_6
;	main.c:235: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:236: P0_6 = 0;
	clr	_P0_6
;	main.c:237: P0_6 = 1;
	setb	_P0_6
;	main.c:238: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:239: P0_6 = 0;
	clr	_P0_6
;	main.c:240: P0_6 = 1;
	setb	_P0_6
;	main.c:241: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:242: P0_6 = 0;
	clr	_P0_6
;	main.c:243: P0_6 = 1;
	setb	_P0_6
;	main.c:244: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:245: P0_6 = 0;
	clr	_P0_6
;	main.c:246: P0_6 = 1;
	setb	_P0_6
;	main.c:247: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:248: P0_6 = 0;
	clr	_P0_6
;	main.c:249: P0_6 = 1;
	setb	_P0_6
;	main.c:250: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:251: P0_6 = 0;
	clr	_P0_6
;	main.c:252: P0_6 = 1;
	setb	_P0_6
;	main.c:253: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:254: P0_6 = 0;
	clr	_P0_6
;	main.c:255: P0_6 = 1;
	setb	_P0_6
;	main.c:256: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:257: P0_6 = 0;
	clr	_P0_6
;	main.c:258: P0_6 = 1;
	setb	_P0_6
;	main.c:259: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:260: P0_6 = 0;
	clr	_P0_6
;	main.c:261: P0_6 = 1;
	setb	_P0_6
;	main.c:262: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:263: P0_6 = 0;
	clr	_P0_6
;	main.c:264: P0_6 = 1;
	setb	_P0_6
;	main.c:265: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:266: P0_6 = 0;
	clr	_P0_6
;	main.c:267: P0_6 = 1;
	setb	_P0_6
;	main.c:268: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:269: P0_6 = 0;
	clr	_P0_6
;	main.c:270: P0_6 = 1;
	setb	_P0_6
;	main.c:271: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:272: P0_6 = 0;
	clr	_P0_6
;	main.c:273: P0_6 = 1;
	setb	_P0_6
;	main.c:274: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:275: P0_6 = 0;
	clr	_P0_6
;	main.c:276: P0_6 = 1;
	setb	_P0_6
;	main.c:277: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:278: P0_6 = 0;
	clr	_P0_6
;	main.c:279: P0_6 = 1;
	setb	_P0_6
;	main.c:280: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:281: P0_6 = 0;
	clr	_P0_6
;	main.c:282: P0_6 = 1;
	setb	_P0_6
;	main.c:283: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:284: P0_6 = 0;
	clr	_P0_6
;	main.c:285: P0_6 = 1;
	setb	_P0_6
;	main.c:286: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:287: P0_6 = 0;
	clr	_P0_6
;	main.c:288: P0_6 = 1;
	setb	_P0_6
;	main.c:289: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:290: P0_6 = 0;
	clr	_P0_6
;	main.c:291: P0_6 = 1;
	setb	_P0_6
;	main.c:292: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:293: P0_6 = 0;
	clr	_P0_6
;	main.c:294: P0_6 = 1;
	setb	_P0_6
;	main.c:295: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:296: P0_6 = 0;
	clr	_P0_6
;	main.c:297: P0_6 = 1;
	setb	_P0_6
;	main.c:298: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:299: P0_6 = 0;
	clr	_P0_6
;	main.c:300: P0_6 = 1;
	setb	_P0_6
;	main.c:301: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:302: P0_6 = 0;
	clr	_P0_6
;	main.c:303: P0_6 = 1;
	setb	_P0_6
;	main.c:304: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:305: P0_6 = 0;
	clr	_P0_6
;	main.c:306: P0_6 = 1;
	setb	_P0_6
;	main.c:307: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:308: P0_6 = 0;
	clr	_P0_6
;	main.c:309: P0_6 = 1;
	setb	_P0_6
;	main.c:310: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:311: P0_6 = 0;
	clr	_P0_6
;	main.c:312: P0_6 = 1;
	setb	_P0_6
;	main.c:313: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:314: P0_6 = 0;
	clr	_P0_6
;	main.c:315: P0_6 = 1;
	setb	_P0_6
;	main.c:316: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:317: P0_6 = 0;
	clr	_P0_6
;	main.c:318: P0_6 = 1;
	setb	_P0_6
;	main.c:319: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:320: P0_6 = 0;
	clr	_P0_6
;	main.c:321: P0_6 = 1;
	setb	_P0_6
;	main.c:322: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:323: P0_6 = 0;
	clr	_P0_6
;	main.c:324: P0_6 = 1;
	setb	_P0_6
;	main.c:325: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:326: P0_6 = 0;
	clr	_P0_6
;	main.c:327: P0_6 = 1;
	setb	_P0_6
;	main.c:328: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:329: P0_6 = 0;
	clr	_P0_6
;	main.c:330: P0_6 = 1;
	setb	_P0_6
;	main.c:331: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:332: P0_6 = 0;
	clr	_P0_6
;	main.c:333: P0_6 = 1;
	setb	_P0_6
;	main.c:334: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:335: P0_6 = 0;
	clr	_P0_6
;	main.c:336: P0_6 = 1;
	setb	_P0_6
;	main.c:337: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:338: P0_6 = 0;
	clr	_P0_6
;	main.c:339: P0_6 = 1;
	setb	_P0_6
;	main.c:340: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:341: P0_6 = 0;
	clr	_P0_6
;	main.c:342: P0_6 = 1;
	setb	_P0_6
;	main.c:343: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:344: P0_6 = 0;
	clr	_P0_6
;	main.c:345: P0_6 = 1;
	setb	_P0_6
;	main.c:346: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:347: P0_6 = 0;
	clr	_P0_6
;	main.c:348: P0_6 = 1;
	setb	_P0_6
;	main.c:349: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:350: P0_6 = 0;
	clr	_P0_6
;	main.c:351: P0_6 = 1;
	setb	_P0_6
;	main.c:352: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:353: P0_6 = 0;
	clr	_P0_6
;	main.c:354: P0_6 = 1;
	setb	_P0_6
;	main.c:355: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:356: P0_6 = 0;
	clr	_P0_6
;	main.c:357: P0_6 = 1;
	setb	_P0_6
;	main.c:358: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:359: P0_6 = 0;
	clr	_P0_6
;	main.c:360: P0_6 = 1;
	setb	_P0_6
;	main.c:361: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:362: P0_6 = 0;
	clr	_P0_6
;	main.c:363: P0_6 = 1;
	setb	_P0_6
;	main.c:364: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:365: P0_6 = 0;
	clr	_P0_6
;	main.c:366: P0_6 = 1;
	setb	_P0_6
;	main.c:367: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:368: P0_6 = 0;
	clr	_P0_6
;	main.c:369: P0_6 = 1;
	setb	_P0_6
;	main.c:370: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:371: P0_6 = 0;
	clr	_P0_6
;	main.c:372: P0_6 = 1;
	setb	_P0_6
;	main.c:373: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:374: P0_6 = 0;
	clr	_P0_6
;	main.c:375: P0_6 = 1;
	setb	_P0_6
;	main.c:376: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:377: P0_6 = 0;
	clr	_P0_6
;	main.c:378: P0_6 = 1;
	setb	_P0_6
;	main.c:379: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:380: P0_6 = 0;
	clr	_P0_6
;	main.c:381: P0_6 = 1;
	setb	_P0_6
;	main.c:382: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:383: P0_6 = 0;
	clr	_P0_6
;	main.c:384: P0_6 = 1;
	setb	_P0_6
;	main.c:385: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:386: P0_6 = 0;
	clr	_P0_6
;	main.c:387: P0_6 = 1;
	setb	_P0_6
;	main.c:388: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:389: P0_6 = 0;
	clr	_P0_6
;	main.c:390: P0_6 = 1;
	setb	_P0_6
;	main.c:391: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:392: P0_6 = 0;
	clr	_P0_6
;	main.c:393: P0_6 = 1;
	setb	_P0_6
;	main.c:394: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:395: P0_6 = 0;
	clr	_P0_6
;	main.c:396: P0_6 = 1;
	setb	_P0_6
;	main.c:397: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:398: P0_6 = 0;
	clr	_P0_6
;	main.c:399: P0_6 = 1;
	setb	_P0_6
;	main.c:400: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:401: P0_6 = 0;
	clr	_P0_6
;	main.c:402: P0_6 = 1;
	setb	_P0_6
;	main.c:403: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:404: P0_6 = 0;
	clr	_P0_6
;	main.c:405: P0_6 = 1;
	setb	_P0_6
;	main.c:406: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:407: P0_6 = 0;
	clr	_P0_6
;	main.c:408: P0_6 = 1;
	setb	_P0_6
;	main.c:409: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:410: P0_6 = 0;
	clr	_P0_6
;	main.c:411: P0_6 = 1;
	setb	_P0_6
;	main.c:412: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:413: P0_6 = 0;
	clr	_P0_6
;	main.c:414: P0_6 = 1;
	setb	_P0_6
;	main.c:415: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:416: P0_6 = 0;
	clr	_P0_6
;	main.c:417: P0_6 = 1;
	setb	_P0_6
;	main.c:418: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:419: P0_6 = 0;
	clr	_P0_6
;	main.c:420: P0_6 = 1;
	setb	_P0_6
;	main.c:421: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:422: P0_6 = 0;
	clr	_P0_6
;	main.c:423: P0_6 = 1;
	setb	_P0_6
;	main.c:424: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:425: P0_6 = 0;
	clr	_P0_6
;	main.c:426: P0_6 = 1;
	setb	_P0_6
;	main.c:427: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:428: P0_6 = 0;
	clr	_P0_6
;	main.c:429: P0_6 = 1;
	setb	_P0_6
;	main.c:430: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:431: P0_6 = 0;
	clr	_P0_6
;	main.c:432: P0_6 = 1;
	setb	_P0_6
;	main.c:433: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:434: P0_6 = 0;
	clr	_P0_6
;	main.c:435: P0_6 = 1;
	setb	_P0_6
;	main.c:436: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:437: P0_6 = 0;
	clr	_P0_6
;	main.c:438: P0_6 = 1;
	setb	_P0_6
;	main.c:439: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:440: P0_6 = 0;
	clr	_P0_6
;	main.c:441: P0_6 = 1;
	setb	_P0_6
;	main.c:442: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:443: P0_6 = 0;
	clr	_P0_6
;	main.c:444: P0_6 = 1;
	setb	_P0_6
;	main.c:445: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:446: P0_6 = 0;
	clr	_P0_6
;	main.c:447: P0_6 = 1;
	setb	_P0_6
;	main.c:448: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:449: P0_6 = 0;
	clr	_P0_6
;	main.c:450: P0_6 = 1;
	setb	_P0_6
;	main.c:451: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:452: P0_6 = 0;
	clr	_P0_6
;	main.c:453: P0_6 = 1;
	setb	_P0_6
;	main.c:454: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:455: P0_6 = 0;
	clr	_P0_6
;	main.c:456: P0_6 = 1;
	setb	_P0_6
;	main.c:457: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:458: P0_6 = 0;
	clr	_P0_6
;	main.c:459: P0_6 = 1;
	setb	_P0_6
;	main.c:460: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:461: P0_6 = 0;
	clr	_P0_6
;	main.c:462: P0_6 = 1;
	setb	_P0_6
;	main.c:463: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:464: P0_6 = 0;
	clr	_P0_6
;	main.c:465: P0_6 = 1;
	setb	_P0_6
;	main.c:466: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:467: P0_6 = 0;
	clr	_P0_6
;	main.c:468: P0_6 = 1;
	setb	_P0_6
;	main.c:469: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:470: P0_6 = 0;
	clr	_P0_6
;	main.c:471: P0_6 = 1;
	setb	_P0_6
;	main.c:472: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:473: P0_6 = 0;
	clr	_P0_6
;	main.c:474: P0_6 = 1;
	setb	_P0_6
;	main.c:475: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:476: P0_6 = 0;
	clr	_P0_6
;	main.c:477: P0_6 = 1;
	setb	_P0_6
;	main.c:478: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:479: P0_6 = 0;
	clr	_P0_6
;	main.c:480: P0_6 = 1;
	setb	_P0_6
;	main.c:481: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:482: P0_6 = 0;
	clr	_P0_6
;	main.c:483: P0_6 = 1;
	setb	_P0_6
;	main.c:484: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:485: P0_6 = 0;
	clr	_P0_6
;	main.c:486: P0_6 = 1;
	setb	_P0_6
;	main.c:487: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:488: P0_6 = 0;
	clr	_P0_6
;	main.c:489: P0_6 = 1;
	setb	_P0_6
;	main.c:490: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:491: P0_6 = 0;
	clr	_P0_6
;	main.c:492: P0_6 = 1;
	setb	_P0_6
;	main.c:493: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:494: P0_6 = 0;
	clr	_P0_6
;	main.c:495: P0_6 = 1;
	setb	_P0_6
;	main.c:496: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:497: P0_6 = 0;
	clr	_P0_6
;	main.c:498: P0_6 = 1;
	setb	_P0_6
;	main.c:499: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:500: P0_6 = 0;
	clr	_P0_6
;	main.c:501: P0_6 = 1;
	setb	_P0_6
;	main.c:502: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:503: P0_6 = 0;
	clr	_P0_6
;	main.c:504: P0_6 = 1;
	setb	_P0_6
;	main.c:505: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:506: P0_6 = 0;
	clr	_P0_6
;	main.c:507: P0_6 = 1;
	setb	_P0_6
;	main.c:508: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:509: P0_6 = 0;
	clr	_P0_6
;	main.c:510: P0_6 = 1;
	setb	_P0_6
;	main.c:511: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:512: P0_6 = 0;
	clr	_P0_6
;	main.c:513: P0_6 = 1;
	setb	_P0_6
;	main.c:514: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:515: P0_6 = 0;
	clr	_P0_6
;	main.c:516: P0_6 = 1;
	setb	_P0_6
;	main.c:517: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:518: P0_6 = 0;
	clr	_P0_6
;	main.c:519: P0_6 = 1;
	setb	_P0_6
;	main.c:520: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:521: P0_6 = 0;
	clr	_P0_6
;	main.c:522: P0_6 = 1;
	setb	_P0_6
;	main.c:523: SMB0DAT =  P2;
	mov	_SMB0DAT,_P2
;	main.c:524: P0_6 = 0;
	clr	_P0_6
;	main.c:525: P0_6 = 1;
	setb	_P0_6
;	main.c:526: USB0DAT =  P2;
	mov	_USB0DAT,_P2
;	main.c:528: EA = 1;
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:534: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:536: PCA0MD &= ~0x40;                       // Disable Watchdog timer
	anl	_PCA0MD,#0xBF
;	main.c:540: OSCICN |= 0x83;                       // Configure internal oscillator for
	orl	_OSCICN,#0x83
;	main.c:544: CLKMUL  = 0x00;                       // Select internal oscillator as
	mov	_CLKMUL,#0x00
;	main.c:547: CLKMUL |= 0x80;                       // Enable clock multiplier
	orl	_CLKMUL,#0x80
;	main.c:548: CLKMUL |= 0xC0;                       // Initialize the clock multiplier
	orl	_CLKMUL,#0xC0
;	main.c:549: Delay(300);                              // Delay for clock multiplier to begin
	mov	dptr,#0x012C
	lcall	_Delay
;	main.c:551: while(!CLKMUL & 0x20);                // Wait for multiplier to lock
00101$:
	mov	a,_CLKMUL
	cjne	a,#0x01,00150$
00150$:
	clr	a
	rlc	a
	mov	r2,a
	jb	acc.5,00101$
;	main.c:552: CLKSEL  = 0x02; // SYS_INT_OSC;                // Select system clock
	mov	_CLKSEL,#0x02
;	main.c:553: CLKSEL |= USB_4X_CLOCK;               // Select USB clock
	mov	_CLKSEL,_CLKSEL
;	main.c:558: P1MDIN   = ~0x00;
	mov	_P1MDIN,#0xFF
;	main.c:559: P0SKIP   = 0x40;                        // Port 1 pin 7 skipped by crossbar
	mov	_P0SKIP,#0x40
;	main.c:561: P1SKIP = 0x00;
	mov	_P1SKIP,#0x00
;	main.c:562: P0=0xff; // b0=clk=high
	mov	_P0,#0xFF
;	main.c:563: P1=0xff; // b0=clk=high
	mov	_P1,#0xFF
;	main.c:564: P2=0xff; // b0=clk=high
	mov	_P2,#0xFF
;	main.c:565: P0MDOUT  = 0xdf;                        // 0.4 = TX, 0.5 = RX
	mov	_P0MDOUT,#0xDF
;	main.c:566: P1MDOUT  = 0xde;                        // Port 1 pins 0, 2-3 set push-pull, 1 is floating
	mov	_P1MDOUT,#0xDE
;	main.c:567: P2MDOUT  = 0x00;                        // Port 2 pins 2,3 set push-pull
	mov	_P2MDOUT,#0x00
;	main.c:569: XBR0     = 0x0b;  // enables SYSCLK
	mov	_XBR0,#0x0B
;	main.c:572: XBR1     = 0x40;                        // Enable Crossbar
	mov	_XBR1,#0x40
;	main.c:576: POLL_WRITE_BYTE(POWER,  0x08);          // Force Asynchronous USB Reset
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x08
;	main.c:577: POLL_WRITE_BYTE(IN1IE,  0x0f);          // Enable Endpoint 1+3 in interrupts
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x07
	mov	_USB0DAT,#0x0F
;	main.c:578: POLL_WRITE_BYTE(OUT1IE, 0x08);          // Enable Endpoint 3 out interrupts
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x09
	mov	_USB0DAT,#0x08
;	main.c:579: POLL_WRITE_BYTE(CMIE,   0x07);          // Enable Reset, Resume, and Suspend interrupts
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x0B
	mov	_USB0DAT,#0x07
;	main.c:580: USB0XCN = 0xE0;                         // Enable transceiver; select full speed
	mov	_USB0XCN,#0xE0
;	main.c:581: POLL_WRITE_BYTE(CLKREC, 0x80);          // Enable clock recovery, single-step mode disabled
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	_USB0ADR,#0x0F
	mov	_USB0DAT,#0x80
;	main.c:582: EIE1 |= 0x02;                           // Enable USB0 Interrupts
	orl	_EIE1,#0x02
;	main.c:585: POLL_WRITE_BYTE(POWER,  0x01);          // Enable USB0 by clearing the USB Inhibit bit
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x01
;	main.c:592: CKCON  &= ~0x13;                       // Timer1
	anl	_CKCON,#0xEC
;	main.c:593: CKCON |= 1; // SYSCLK/4  (leave b0 = 0 for SYSCLK / 12)
	orl	_CKCON,#0x01
;	main.c:597: TH1 = (-1) & 0xff;              // Initialize reload value
	mov	_TH1,#0xFF
;	main.c:598: TL1 = 0xff;
	mov	_TL1,#0xFF
;	main.c:599: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	main.c:600: TMOD &= ~0xd0;
	anl	_TMOD,#0x2F
;	main.c:601: TR1 = 1;                           // Start Timer1
	setb	_TR1
;	main.c:606: IE = 0;
	mov	_IE,#0x00
;	main.c:608: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	main.c:615: EA = 1;                                 // Global Interrupt enable
	setb	_EA
;	main.c:618: while (1) {
00128$:
;	main.c:620: if (!fill_usb)
	mov	a,_fill_usb
	jz	00128$
;	main.c:623: P1_7 = 0;
	clr	_P1_7
;	main.c:625: pull64();
	lcall	_pull64
;	main.c:626: pull64();
	lcall	_pull64
;	main.c:627: pull64();
	lcall	_pull64
;	main.c:628: pull64();
	lcall	_pull64
;	main.c:629: pull64();
	lcall	_pull64
;	main.c:630: pull64();
	lcall	_pull64
;	main.c:631: pull64();
	lcall	_pull64
;	main.c:632: pull64();
	lcall	_pull64
;	main.c:635: EA = 0;
	clr	_EA
;	main.c:637: UsbSelectInEndpointFifo(3);
	mov	dpl,#0x03
	lcall	_UsbSelectInEndpointFifo
;	main.c:638: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
00124$:
	mov	a,_USB0ADR
	jb	acc.7,00124$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x01
;	main.c:642: fill_usb = 0;
	mov	_fill_usb,#0x00
;	main.c:644: EA = 1;
	setb	_EA
;	main.c:646: P1_7 = 1;
	setb	_P1_7
	sjmp	00128$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_DeviceDesc:
	.db #0x12
	.db #0x01
	.db #0x10
	.db #0x01
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0x40
	.db #0xC0
	.db #0x16
	.db #0xE2
	.db #0x09
	.db #0x01
	.db #0x00
	.db #0x01
	.db #0x02
	.db #0x03
	.db #0x01
_ConfigDesc:
	.db #0x09
	.db #0x02
	.db #0x27
	.db #0x00
	.db #0x01
	.db #0x01
	.db #0x00
	.db #0xC0
	.db #0x20
_InterfaceDesc:
	.db #0x09
	.db #0x04
	.db #0x00
	.db #0x00
	.db #0x03
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0x00
_Endpoint1Desc:
	.db #0x07
	.db #0x05
	.db #0x81
	.db #0x02
	.db #0x40
	.db #0x00
	.db #0x00
_Endpoint2Desc:
	.db #0x07
	.db #0x05
	.db #0x02
	.db #0x02
	.db #0x40
	.db #0x00
	.db #0x00
_Endpoint3Desc:
	.db #0x07
	.db #0x05
	.db #0x83
	.db #0x02
	.db #0x00
	.db #0x04
	.db #0x00
_szaStringDescriptors:
	.byte _str_0,(_str_0 >> 8)
	.byte _str_1,(_str_1 >> 8)
	.byte _str_2,(_str_2 >> 8)
	.byte _str_3,(_str_3 >> 8)
_str_0:
	.db 0x09
	.db 0x04
	.db 0x00
_str_1:
	.ascii "Crash Barrier Ltd"
	.db 0x00
_str_2:
	.ascii "Whirlygig HW Random Gen"
	.db 0x00
_str_3:
	.ascii "000001"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
