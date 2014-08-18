;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sat Jul 12 02:11:19 2014
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UartInit
	.globl _Uart_ISR
	.globl _SerRx
	.globl _SerTxArray
	.globl _SerTx
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
	.globl _baRxBuffer
	.globl _baTxBuffer
	.globl _SerTxArray_PARM_2
	.globl _fRxOverflow
	.globl _bCountRxSwallowAsEcho
	.globl _bRxHead
	.globl _bRxTail
	.globl _bLastTxByte
	.globl _bCountTxerrors
	.globl _fTransmitImmediate
	.globl _bTxHead
	.globl _bTxTail
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
_bTxTail::
	.ds 1
_bTxHead::
	.ds 1
_fTransmitImmediate::
	.ds 1
_bCountTxerrors::
	.ds 1
_bLastTxByte::
	.ds 1
_bRxTail::
	.ds 1
_bRxHead::
	.ds 1
_bCountRxSwallowAsEcho::
	.ds 1
_fRxOverflow::
	.ds 1
_SerTxArray_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
_baTxBuffer::
	.ds 32
_baRxBuffer::
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	uart.c:8: volatile BYTE bTxTail = 0, bTxHead = 0, fTransmitImmediate = 1,
	mov	_bTxTail,#0x00
;	uart.c:8: bCountTxerrors = 0, bLastTxByte = 0;
	mov	_bTxHead,#0x00
;	uart.c:8: volatile BYTE bTxTail = 0, bTxHead = 0, fTransmitImmediate = 1,
	mov	_fTransmitImmediate,#0x01
;	uart.c:9: bCountTxerrors = 0, bLastTxByte = 0;
	mov	_bCountTxerrors,#0x00
;	uart.c:9: 
	mov	_bLastTxByte,#0x00
;	uart.c:12: volatile BYTE bRxTail = 0, bRxHead = 0, bCountRxSwallowAsEcho = 0,
	mov	_bRxTail,#0x00
;	uart.c:12: fRxOverflow = 0;
	mov	_bRxHead,#0x00
;	uart.c:12: volatile BYTE bRxTail = 0, bRxHead = 0, bCountRxSwallowAsEcho = 0,
	mov	_bCountRxSwallowAsEcho,#0x00
;	uart.c:13: fRxOverflow = 0;
	mov	_fRxOverflow,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SerTx'
;------------------------------------------------------------
;b                         Allocated to registers r2 
;------------------------------------------------------------
;	uart.c:16: int SerTx(BYTE b)
;	-----------------------------------------
;	 function SerTx
;	-----------------------------------------
_SerTx:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	uart.c:19: if (((bTxHead + 1) & (sizeof(baTxBuffer) - 1)) == bTxTail)
	mov	r3,_bTxHead
	mov	r4,#0x00
	inc	r3
	cjne	r3,#0x00,00110$
	inc	r4
00110$:
	anl	ar3,#0x1F
	mov	r4,#0x00
	mov	r5,_bTxTail
	mov	r6,#0x00
	mov	a,r3
	cjne	a,ar5,00102$
	mov	a,r4
	cjne	a,ar6,00102$
;	uart.c:20: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	uart.c:22: baTxBuffer[bTxHead] = b;
	mov	a,_bTxHead
	add	a,#_baTxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_baTxBuffer >> 8)
	mov	dph,a
	mov	a,r2
	movx	@dptr,a
;	uart.c:23: ES0 = 0;
	clr	_ES0
;	uart.c:24: if (fTransmitImmediate)
	mov	a,_fTransmitImmediate
	jz	00104$
;	uart.c:25: SBUF0 = b;
	mov	_SBUF0,r2
	sjmp	00105$
00104$:
;	uart.c:27: bTxHead = (bTxHead + 1) & (sizeof(baTxBuffer) - 1);
	mov	a,_bTxHead
	inc	a
	anl	a,#0x1F
	mov	_bTxHead,a
00105$:
;	uart.c:28: fTransmitImmediate = 0;
	mov	_fTransmitImmediate,#0x00
;	uart.c:29: ES0 = 1;
	setb	_ES0
;	uart.c:30: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerTxArray'
;------------------------------------------------------------
;bCount                    Allocated with name '_SerTxArray_PARM_2'
;pb                        Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	uart.c:33: void SerTxArray(BYTE *pb, BYTE bCount)
;	-----------------------------------------
;	 function SerTxArray
;	-----------------------------------------
_SerTxArray:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	uart.c:35: while (bCount--) {
	mov	r5,_SerTxArray_PARM_2
00104$:
	mov	ar6,r5
	dec	r5
	mov	a,r6
	jz	00107$
;	uart.c:36: while (!SerTx(*pb))
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_SerTx
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	orl	a,b
	jz	00101$
;	uart.c:38: pb++;
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerRx'
;------------------------------------------------------------
;b                         Allocated to registers r2 
;------------------------------------------------------------
;	uart.c:43: int SerRx(void)
;	-----------------------------------------
;	 function SerRx
;	-----------------------------------------
_SerRx:
;	uart.c:46: if (bRxHead == bRxTail)
	mov	a,_bRxTail
	cjne	a,_bRxHead,00102$
;	uart.c:47: return -1;
	mov	dptr,#0xFFFF
	ret
00102$:
;	uart.c:48: b = baRxBuffer[bRxTail];
	mov	a,_bRxTail
	add	a,#_baRxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_baRxBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
;	uart.c:49: ES0 = 0;
	clr	_ES0
;	uart.c:50: bRxTail = (bRxTail + 1) & (sizeof(baRxBuffer) - 1);
	mov	a,_bRxTail
	inc	a
	anl	a,#0x1F
	mov	_bRxTail,a
;	uart.c:51: ES0 = 1;
	setb	_ES0
;	uart.c:52: return (int)b;
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	uart.c:55: void Uart_ISR(void) interrupt 4
;	-----------------------------------------
;	 function Uart_ISR
;	-----------------------------------------
_Uart_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	psw
	mov	psw,#0x00
;	uart.c:57: if (RI0) { // RX action
	jnb	_RI0,00105$
;	uart.c:63: if (((bRxHead+1) & (sizeof(baRxBuffer)-1)) == bRxTail) // overflowed Rx buffer
	mov	r2,_bRxHead
	mov	r3,#0x00
	inc	r2
	cjne	r2,#0x00,00118$
	inc	r3
00118$:
	anl	ar2,#0x1F
	mov	r3,#0x00
	mov	r4,_bRxTail
	mov	r5,#0x00
	mov	a,r2
	cjne	a,ar4,00102$
	mov	a,r3
	cjne	a,ar5,00102$
;	uart.c:64: fRxOverflow = 1;
	mov	_fRxOverflow,#0x01
	sjmp	00103$
00102$:
;	uart.c:66: baRxBuffer[bRxHead] = SBUF0;
	mov	a,_bRxHead
	add	a,#_baRxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_baRxBuffer >> 8)
	mov	dph,a
	mov	a,_SBUF0
	movx	@dptr,a
;	uart.c:67: bRxHead = (bRxHead+1) & (sizeof(baRxBuffer)-1);
	mov	a,_bRxHead
	inc	a
	anl	a,#0x1F
	mov	_bRxHead,a
00103$:
;	uart.c:70: RI0 = 0;
	clr	_RI0
00105$:
;	uart.c:72: if (TI0) { // TX action
	jnb	_TI0,00111$
;	uart.c:73: if (bTxTail != bTxHead) {
	mov	a,_bTxHead
	cjne	a,_bTxTail,00122$
	sjmp	00107$
00122$:
;	uart.c:74: bLastTxByte = baTxBuffer[bTxTail];
	mov	a,_bTxTail
	add	a,#_baTxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_baTxBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_bLastTxByte,a
;	uart.c:75: SBUF0 = baTxBuffer[bTxTail];
	mov	a,_bTxTail
	add	a,#_baTxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_baTxBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_SBUF0,a
;	uart.c:76: bTxTail = (bTxTail + 1) & (sizeof(baTxBuffer) - 1);
	mov	a,_bTxTail
	inc	a
	anl	a,#0x1F
	mov	_bTxTail,a
;	uart.c:78: fTransmitImmediate = 0;
	mov	_fTransmitImmediate,#0x00
	sjmp	00108$
00107$:
;	uart.c:80: fTransmitImmediate = 1;  // buffer underflowed, force Tx interrupt when buffer reloaded
	mov	_fTransmitImmediate,#0x01
00108$:
;	uart.c:81: TI0 = 0;
	clr	_TI0
00111$:
	pop	psw
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'UartInit'
;------------------------------------------------------------
;------------------------------------------------------------
;	uart.c:85: void UartInit()
;	-----------------------------------------
;	 function UartInit
;	-----------------------------------------
_UartInit:
;	uart.c:87: CKCON  &= ~0x13;                       // Timer1
	anl	_CKCON,#0xEC
;	uart.c:88: CKCON |= 1; // SYSCLK/4  (leave b0 = 0 for SYSCLK / 12)
	orl	_CKCON,#0x01
;	uart.c:92: TH1 = (-2) & 0xff;              // Initialize reload value
	mov	_TH1,#0xFE
;	uart.c:93: TL1 = 0xff;
	mov	_TL1,#0xFF
;	uart.c:94: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	uart.c:95: TMOD &= ~0xd0;
	anl	_TMOD,#0x2F
;	uart.c:96: TR1 = 1;                           // Start Timer1
	setb	_TR1
;	uart.c:101: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	uart.c:102: ES0 = 1;
	setb	_ES0
;	uart.c:103: TI0 = 1; // indicate ready for new TX
	setb	_TI0
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
