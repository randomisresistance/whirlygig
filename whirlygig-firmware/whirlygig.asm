;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sat Jul 12 02:11:20 2014
;--------------------------------------------------------
	.module whirlygig
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UsbInterruptOutFromPcEndpointService
	.globl _UsbInterruptInToPcEndpointService
	.globl _jektor_load
	.globl _UsbReadingFifoDone
	.globl _UsbReadFifo
	.globl _UsbWriteFifo
	.globl _UsbSelectOutEndpointFifo
	.globl _UsbSelectInEndpointFifo
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
	.globl _fill_usb
	.globl _bMixer
	.globl _Delay
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
_bMixer::
	.ds 1
_sendbuf:
	.ds 32
_did_send:
	.ds 1
_jektor_load_fCapture_1_1:
	.ds 1
_jektor_load_w_1_1:
	.ds 2
_jektor_load_xpb_1_1:
	.ds 3
_jektor_load_sloc0_1_0:
	.ds 2
_fill_usb::
	.ds 1
_UsbInterruptOutFromPcEndpointService_fCapture_1_1:
	.ds 1
_UsbInterruptOutFromPcEndpointService_dw_3_4:
	.ds 4
_UsbInterruptOutFromPcEndpointService_dr_3_4:
	.ds 2
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
;	whirlygig.c:41: BYTE bMixer = 0;
	mov	_bMixer,#0x00
;	whirlygig.c:89: static BYTE did_send = 0; 
	mov	_did_send,#0x00
;	whirlygig.c:157: BYTE fill_usb = 1;
	mov	_fill_usb,#0x01
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
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;n                         Allocated to registers r2 r3 
;x                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	whirlygig.c:43: void Delay(unsigned int n)
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
;	whirlygig.c:46: for (x = 0; x < n; )
	mov	r4,#0x00
	mov	r5,#0x00
00101$:
	mov	ar6,r4
	mov	ar7,r5
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00104$
;	whirlygig.c:47: x++;
	inc	r4
	cjne	r4,#0x00,00101$
	inc	r5
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbSelectInEndpointFifo'
;------------------------------------------------------------
;bEndpointNumber           Allocated to registers r2 
;------------------------------------------------------------
;	whirlygig.c:58: void UsbSelectInEndpointFifo(BYTE bEndpointNumber) {
;	-----------------------------------------
;	 function UsbSelectInEndpointFifo
;	-----------------------------------------
_UsbSelectInEndpointFifo:
	mov	r2,dpl
;	whirlygig.c:59: while (USB0ADR & 0x80)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
;	whirlygig.c:61: USB0ADR = FIFO_EP0 + bEndpointNumber;
	mov	a,#0x20
	add	a,r2
	mov	_USB0ADR,a
;	whirlygig.c:62: while (USB0ADR & 0x80)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbSelectOutEndpointFifo'
;------------------------------------------------------------
;bEndpointNumber           Allocated to registers r2 
;------------------------------------------------------------
;	whirlygig.c:65: void UsbSelectOutEndpointFifo(BYTE bEndpointNumber) {
;	-----------------------------------------
;	 function UsbSelectOutEndpointFifo
;	-----------------------------------------
_UsbSelectOutEndpointFifo:
	mov	r2,dpl
;	whirlygig.c:66: while (USB0ADR & 0x80)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
;	whirlygig.c:68: USB0ADR = (FIFO_EP0 + bEndpointNumber) | 0xc0;
	mov	a,#0x20
	add	a,r2
	mov	b,a
	mov	a,#0xC0
	orl	a,b
	mov	_USB0ADR,a
;	whirlygig.c:69: while (USB0ADR & 0x80)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbWriteFifo'
;------------------------------------------------------------
;b                         Allocated to registers 
;------------------------------------------------------------
;	whirlygig.c:72: void UsbWriteFifo(BYTE b) {
;	-----------------------------------------
;	 function UsbWriteFifo
;	-----------------------------------------
_UsbWriteFifo:
	mov	_USB0DAT,dpl
;	whirlygig.c:74: while (USB0ADR & 0x80)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbReadFifo'
;------------------------------------------------------------
;------------------------------------------------------------
;	whirlygig.c:77: BYTE UsbReadFifo(void) {
;	-----------------------------------------
;	 function UsbReadFifo
;	-----------------------------------------
_UsbReadFifo:
;	whirlygig.c:78: while (USB0ADR & 0x80)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
;	whirlygig.c:80: return USB0DAT;
	mov	dpl,_USB0DAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbReadingFifoDone'
;------------------------------------------------------------
;------------------------------------------------------------
;	whirlygig.c:82: void UsbReadingFifoDone(void) {
;	-----------------------------------------
;	 function UsbReadingFifoDone
;	-----------------------------------------
_UsbReadingFifoDone:
;	whirlygig.c:83: while (USB0ADR & 0x80)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
;	whirlygig.c:85: USB0ADR = 0;
	mov	_USB0ADR,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'jektor_load'
;------------------------------------------------------------
;fCapture                  Allocated with name '_jektor_load_fCapture_1_1'
;w                         Allocated with name '_jektor_load_w_1_1'
;pb                        Allocated to registers 
;bMask                     Allocated to registers r3 
;byte                      Allocated to registers r5 
;send                      Allocated to registers r4 
;xpb                       Allocated with name '_jektor_load_xpb_1_1'
;sloc0                     Allocated with name '_jektor_load_sloc0_1_0'
;------------------------------------------------------------
;	whirlygig.c:91: void jektor_load(BYTE fCapture)
;	-----------------------------------------
;	 function jektor_load
;	-----------------------------------------
_jektor_load:
	mov	_jektor_load_fCapture_1_1,dpl
;	whirlygig.c:94: BYTE *pb=(BYTE *)&w;
;	whirlygig.c:95: BYTE bMask = 0x01;
	mov	r3,#0x01
;	whirlygig.c:97: BYTE send = 0;
	mov	r4,#0x00
;	whirlygig.c:98: BYTE * xpb = sendbuf;
	mov	_jektor_load_xpb_1_1,#_sendbuf
	mov	(_jektor_load_xpb_1_1 + 1),#0x00
	mov	(_jektor_load_xpb_1_1 + 2),#0x40
;	whirlygig.c:100: pb[0] = UsbReadFifo();
	mov	r0,#_jektor_load_w_1_1
	mov	r1,#(_jektor_load_w_1_1 >> 8)
	mov	r5,#0x40
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	_UsbReadFifo
	mov	r6,dpl
	pop	ar1
	pop	ar0
	pop	ar5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	whirlygig.c:101: pb[1] = UsbReadFifo();
	lcall	_UsbReadFifo
	mov	r5,dpl
	mov	dptr,#(_jektor_load_w_1_1 + 0x0001)
	mov	b,#0x40
	mov	a,r5
	lcall	__gptrput
;	whirlygig.c:103: byte = UsbReadFifo();
	lcall	_UsbReadFifo
	mov	r5,dpl
	pop	ar4
	pop	ar3
;	whirlygig.c:105: JTAGTMSBIT = 0;
	clr	_P1_3
;	whirlygig.c:106: JTAGTDOBIT = 1;
	setb	_P1_5
;	whirlygig.c:108: while (w--) {
	mov	r6,_jektor_load_xpb_1_1
	mov	r7,(_jektor_load_xpb_1_1 + 1)
	mov	r0,(_jektor_load_xpb_1_1 + 2)
	mov	_jektor_load_sloc0_1_0,_jektor_load_w_1_1
	mov	(_jektor_load_sloc0_1_0 + 1),(_jektor_load_w_1_1 + 1)
00115$:
	mov	r1,_jektor_load_sloc0_1_0
	mov	r2,(_jektor_load_sloc0_1_0 + 1)
	dec	_jektor_load_sloc0_1_0
	mov	a,#0xff
	cjne	a,_jektor_load_sloc0_1_0,00154$
	dec	(_jektor_load_sloc0_1_0 + 1)
00154$:
	mov	a,r1
	orl	a,r2
	jz	00152$
;	whirlygig.c:110: if (!w)
	mov	a,_jektor_load_sloc0_1_0
	orl	a,(_jektor_load_sloc0_1_0 + 1)
	jnz	00102$
;	whirlygig.c:111: JTAGTMSBIT = 1;
	setb	_P1_3
00102$:
;	whirlygig.c:113: if(byte & bMask)
	mov	a,r3
	anl	a,r5
	jz	00104$
;	whirlygig.c:114: JTAGTDIBIT = 1;
	setb	_P1_4
	sjmp	00105$
00104$:
;	whirlygig.c:116: JTAGTDIBIT = 0;
	clr	_P1_4
00105$:
;	whirlygig.c:117: JTAGTCKBIT = 0;
	clr	_P1_2
;	whirlygig.c:118: JTAGTCKBIT = 1;
	setb	_P1_2
;	whirlygig.c:120: if(fCapture) {
	mov	a,_jektor_load_fCapture_1_1
	jz	00110$
;	whirlygig.c:121: if(JTAGTDOBIT)
	jnb	_P1_5,00107$
;	whirlygig.c:122: send |= bMask;
	mov	a,r3
	orl	ar4,a
	sjmp	00110$
00107$:
;	whirlygig.c:124: send &= ~bMask;
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	ar4,a
00110$:
;	whirlygig.c:127: if (w && (bMask & 0x80)) {
	mov	a,_jektor_load_sloc0_1_0
	orl	a,(_jektor_load_sloc0_1_0 + 1)
	jz	00112$
	mov	a,r3
	jnb	acc.7,00112$
;	whirlygig.c:128: bMask = 0x01;
	mov	r3,#0x01
;	whirlygig.c:129: byte = UsbReadFifo();
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	lcall	_UsbReadFifo
	mov	r5,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
;	whirlygig.c:130: *xpb++ = send;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	sjmp	00115$
00112$:
;	whirlygig.c:132: bMask <<= 1;
	mov	a,r3
	add	a,r3
	mov	r3,a
	sjmp	00115$
00152$:
	mov	_jektor_load_xpb_1_1,r6
	mov	(_jektor_load_xpb_1_1 + 1),r7
	mov	(_jektor_load_xpb_1_1 + 2),r0
;	whirlygig.c:135: if(fCapture)
	mov	a,_jektor_load_fCapture_1_1
	jz	00121$
;	whirlygig.c:136: if (bMask != 1)
	cjne	r3,#0x01,00163$
	sjmp	00121$
00163$:
;	whirlygig.c:137: *xpb++ = send;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r4
	lcall	__gptrput
	mov	a,#0x01
	add	a,r6
	mov	_jektor_load_xpb_1_1,a
	clr	a
	addc	a,r7
	mov	(_jektor_load_xpb_1_1 + 1),a
	mov	(_jektor_load_xpb_1_1 + 2),r0
00121$:
;	whirlygig.c:139: UsbReadingFifoDone();
	lcall	_UsbReadingFifoDone
;	whirlygig.c:141: if(fCapture) {
	mov	a,_jektor_load_fCapture_1_1
	jz	00133$
;	whirlygig.c:142: w = xpb - sendbuf;
	mov	a,_jektor_load_xpb_1_1
	clr	c
	subb	a,#_sendbuf
	mov	_jektor_load_w_1_1,a
	mov	a,(_jektor_load_xpb_1_1 + 1)
	subb	a,#0x00
	mov	(_jektor_load_w_1_1 + 1),a
;	whirlygig.c:143: xpb = sendbuf;
	mov	_jektor_load_xpb_1_1,#_sendbuf
	mov	(_jektor_load_xpb_1_1 + 1),#0x00
	mov	(_jektor_load_xpb_1_1 + 2),#0x40
;	whirlygig.c:145: while(USB0ADR & 0x80);              // Wait for BUSY->'0'
00122$:
	mov	a,_USB0ADR
	jb	acc.7,00122$
;	whirlygig.c:147: USB0ADR = FIFO_EP0 + 1;                   // Set address (mask out bits7-6)
	mov	_USB0ADR,#0x21
;	whirlygig.c:149: while (w--) {
	mov	r2,_jektor_load_xpb_1_1
	mov	r3,(_jektor_load_xpb_1_1 + 1)
	mov	r4,(_jektor_load_xpb_1_1 + 2)
	mov	r5,_jektor_load_w_1_1
	mov	r6,(_jektor_load_w_1_1 + 1)
00128$:
	mov	ar7,r5
	mov	ar0,r6
	dec	r5
	cjne	r5,#0xff,00166$
	dec	r6
00166$:
	mov	a,r7
	orl	a,r0
	jz	00133$
;	whirlygig.c:150: USB0DAT = *xpb++;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_USB0DAT,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	whirlygig.c:151: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
00125$:
	mov	a,_USB0ADR
	jnb	acc.7,00128$
	sjmp	00125$
00133$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbInterruptInToPcEndpointService'
;------------------------------------------------------------
;bEndpointNumber           Allocated to registers r2 
;ControlReg                Allocated to registers r3 
;------------------------------------------------------------
;	whirlygig.c:161: void UsbInterruptInToPcEndpointService(BYTE bEndpointNumber)
;	-----------------------------------------
;	 function UsbInterruptInToPcEndpointService
;	-----------------------------------------
_UsbInterruptInToPcEndpointService:
	mov	r2,dpl
;	whirlygig.c:165: POLL_WRITE_BYTE(INDEX, bEndpointNumber);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,r2
;	whirlygig.c:166: POLL_READ_BYTE(EINCSR1, ControlReg);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
;	whirlygig.c:167: if (ControlReg & rbInINPRDY)
	mov	a,_USB0DAT
	mov	r3,a
	jnb	acc.0,00111$
;	whirlygig.c:168: return;
	ret
00111$:
;	whirlygig.c:170: switch (bEndpointNumber) {
	cjne	r2,#0x01,00143$
	sjmp	00112$
00143$:
;	whirlygig.c:171: case 1:
	cjne	r2,#0x03,00123$
	sjmp	00118$
00112$:
;	whirlygig.c:172: if (!did_send)
	mov	a,_did_send
	jnz	00115$
;	whirlygig.c:173: Fifo_Write(FIFO_EP0 + 1, 18, "Whirlygig RNG 1.0");
	mov	_Fifo_Write_PARM_3,#__str_0
	mov	(_Fifo_Write_PARM_3 + 1),#(__str_0 >> 8)
	mov	(_Fifo_Write_PARM_3 + 2),#0x80
	mov	_Fifo_Write_PARM_2,#0x12
	clr	a
	mov	(_Fifo_Write_PARM_2 + 1),a
	mov	dpl,#0x21
	lcall	_Fifo_Write
;	whirlygig.c:175: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x01
;	whirlygig.c:180: break;
;	whirlygig.c:182: case 3:
	ret
00118$:
;	whirlygig.c:183: fill_usb = 1;
	mov	_fill_usb,#0x01
;	whirlygig.c:184: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x01
;	whirlygig.c:188: }
00123$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsbInterruptOutFromPcEndpointService'
;------------------------------------------------------------
;bEndpointNumber           Allocated to registers r2 
;fCapture                  Allocated with name '_UsbInterruptOutFromPcEndpointService_fCapture_1_1'
;count                     Allocated to registers r2 
;pattern                   Allocated to registers r3 
;dw                        Allocated with name '_UsbInterruptOutFromPcEndpointService_dw_3_4'
;pb                        Allocated to registers r2 r3 r4 
;dr                        Allocated with name '_UsbInterruptOutFromPcEndpointService_dr_3_4'
;------------------------------------------------------------
;	whirlygig.c:193: void UsbInterruptOutFromPcEndpointService(BYTE bEndpointNumber)
;	-----------------------------------------
;	 function UsbInterruptOutFromPcEndpointService
;	-----------------------------------------
_UsbInterruptOutFromPcEndpointService:
	mov	r2,dpl
;	whirlygig.c:195: BYTE fCapture = 0;
	mov	_UsbInterruptOutFromPcEndpointService_fCapture_1_1,#0x00
;	whirlygig.c:199: did_send = 1;
	mov	_did_send,#0x01
;	whirlygig.c:201: UsbSelectOutEndpointFifo(bEndpointNumber);
	mov	dpl,r2
	lcall	_UsbSelectOutEndpointFifo
;	whirlygig.c:203: switch(UsbReadFifo()) {
	lcall	_UsbReadFifo
	mov	r2,dpl
	cjne	r2,#0x65,00132$
	sjmp	00101$
00132$:
	cjne	r2,#0x66,00133$
	sjmp	00102$
00133$:
	cjne	r2,#0x67,00134$
	sjmp	00107$
00134$:
	cjne	r2,#0x68,00135$
	sjmp	00106$
00135$:
	cjne	r2,#0x69,00136$
	sjmp	00108$
00136$:
	ret
;	whirlygig.c:205: case JEKTOR_GET_FIRMWARE_VERSION:
00101$:
;	whirlygig.c:206: UsbReadingFifoDone();
	lcall	_UsbReadingFifoDone
;	whirlygig.c:207: Fifo_Write(FIFO_EP0 + 1, 17 , "1Jektor         ");
	mov	_Fifo_Write_PARM_3,#__str_1
	mov	(_Fifo_Write_PARM_3 + 1),#(__str_1 >> 8)
	mov	(_Fifo_Write_PARM_3 + 2),#0x80
	mov	_Fifo_Write_PARM_2,#0x11
	clr	a
	mov	(_Fifo_Write_PARM_2 + 1),a
	mov	dpl,#0x21
;	whirlygig.c:208: break;
	ljmp	_Fifo_Write
;	whirlygig.c:210: case JEKTOR_MOVE_TO_STATE:
00102$:
;	whirlygig.c:211: count = UsbReadFifo();
	lcall	_UsbReadFifo
	mov	r2,dpl
;	whirlygig.c:212: pattern = UsbReadFifo();
	push	ar2
	lcall	_UsbReadFifo
	mov	r3,dpl
;	whirlygig.c:213: UsbReadingFifoDone();
	push	ar3
	lcall	_UsbReadingFifoDone
	pop	ar3
	pop	ar2
;	whirlygig.c:214: while(count--) {
00103$:
	mov	ar4,r2
	dec	r2
	mov	a,r4
	jnz	00137$
	ret
00137$:
;	whirlygig.c:215: JTAGTMSBIT = pattern & 1;
	mov	a,r3
	rrc	a
	mov	_P1_3,c
;	whirlygig.c:216: JTAGTCKBIT = 0;
	clr	_P1_2
;	whirlygig.c:217: JTAGTCKBIT = 1;
	setb	_P1_2
;	whirlygig.c:218: pattern >>= 1;
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
;	whirlygig.c:222: case JEKTOR_BOUNDARY_LOAD_CAPTURE_TDO:
	sjmp	00103$
00106$:
;	whirlygig.c:223: fCapture = 1;
	mov	_UsbInterruptOutFromPcEndpointService_fCapture_1_1,#0x01
;	whirlygig.c:225: case JEKTOR_BOUNDARY_LOAD_IGNORE_TDO:
00107$:
;	whirlygig.c:226: jektor_load(fCapture);
	mov	dpl,_UsbInterruptOutFromPcEndpointService_fCapture_1_1
;	whirlygig.c:227: break;
	ljmp	_jektor_load
;	whirlygig.c:230: case JEKTOR_BOUNDARY_JUST_CLOCK:
00108$:
;	whirlygig.c:233: BYTE *pb = (BYTE *)&dw;
	mov	r2,#_UsbInterruptOutFromPcEndpointService_dw_3_4
	mov	r3,#0x00
	mov	r4,#0x40
;	whirlygig.c:234: int dr = UsbReadFifo();
	push	ar2
	push	ar3
	push	ar4
	lcall	_UsbReadFifo
	mov	r5,dpl
	mov	_UsbInterruptOutFromPcEndpointService_dr_3_4,r5
	mov	(_UsbInterruptOutFromPcEndpointService_dr_3_4 + 1),#0x00
;	whirlygig.c:236: *pb++=UsbReadFifo();
	lcall	_UsbReadFifo
	mov	r7,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	whirlygig.c:237: *pb++=UsbReadFifo();
	push	ar2
	push	ar3
	push	ar4
	lcall	_UsbReadFifo
	mov	r7,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	whirlygig.c:238: *pb++=UsbReadFifo();
	push	ar2
	push	ar3
	push	ar4
	lcall	_UsbReadFifo
	mov	r7,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	whirlygig.c:239: *pb++=UsbReadFifo();
	push	ar2
	push	ar3
	push	ar4
	lcall	_UsbReadFifo
	mov	r7,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	whirlygig.c:241: UsbReadingFifoDone();
	lcall	_UsbReadingFifoDone
;	whirlygig.c:243: if (dr) {
	mov	a,_UsbInterruptOutFromPcEndpointService_dr_3_4
	orl	a,(_UsbInterruptOutFromPcEndpointService_dr_3_4 + 1)
	jz	00110$
;	whirlygig.c:245: JTAGTMSBIT=0;
	clr	_P1_3
;	whirlygig.c:246: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:247: JTAGTCKBIT=1;
	setb	_P1_2
;	whirlygig.c:249: JTAGTMSBIT=1;
	setb	_P1_3
;	whirlygig.c:250: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:251: JTAGTCKBIT=1;
	setb	_P1_2
;	whirlygig.c:253: JTAGTMSBIT=0;
	clr	_P1_3
;	whirlygig.c:254: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:255: JTAGTCKBIT=1;
	setb	_P1_2
;	whirlygig.c:257: JTAGTMSBIT=1;
	setb	_P1_3
;	whirlygig.c:258: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:259: JTAGTCKBIT=1;
	setb	_P1_2
;	whirlygig.c:261: JTAGTMSBIT=1;
	setb	_P1_3
;	whirlygig.c:262: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:263: JTAGTCKBIT=1;
	setb	_P1_2
;	whirlygig.c:265: JTAGTMSBIT=0;
	clr	_P1_3
;	whirlygig.c:266: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:267: JTAGTCKBIT=1;
	setb	_P1_2
;	whirlygig.c:269: dw--; // going to do this one afterwards
	dec	_UsbInterruptOutFromPcEndpointService_dw_3_4
	mov	a,#0xff
	cjne	a,_UsbInterruptOutFromPcEndpointService_dw_3_4,00139$
	dec	(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 1)
	cjne	a,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 1),00139$
	dec	(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 2)
	cjne	a,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 2),00139$
	dec	(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 3)
00139$:
00110$:
;	whirlygig.c:272: JTAGTMSBIT = 0;
	clr	_P1_3
;	whirlygig.c:274: while(dw--) {
	mov	r2,_UsbInterruptOutFromPcEndpointService_dw_3_4
	mov	r3,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 1)
	mov	r4,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 2)
	mov	r7,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 3)
00111$:
	mov	ar0,r2
	mov	ar1,r3
	mov	ar5,r4
	mov	ar6,r7
	dec	r2
	cjne	r2,#0xff,00140$
	dec	r3
	cjne	r3,#0xff,00140$
	dec	r4
	cjne	r4,#0xff,00140$
	dec	r7
00140$:
	mov	a,r0
	orl	a,r1
	orl	a,r5
	orl	a,r6
	jz	00113$
;	whirlygig.c:275: JTAGTCKBIT = 0;
	clr	_P1_2
;	whirlygig.c:276: JTAGTCKBIT = 1;
	setb	_P1_2
	sjmp	00111$
00113$:
;	whirlygig.c:281: if (dr) {
	mov	a,_UsbInterruptOutFromPcEndpointService_dr_3_4
	orl	a,(_UsbInterruptOutFromPcEndpointService_dr_3_4 + 1)
	jz	00115$
;	whirlygig.c:283: JTAGTMSBIT=1;
	setb	_P1_3
;	whirlygig.c:284: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:285: JTAGTCKBIT=1;
	setb	_P1_2
;	whirlygig.c:287: JTAGTMSBIT=0;
	clr	_P1_3
;	whirlygig.c:288: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:289: JTAGTCKBIT=1;
	setb	_P1_2
;	whirlygig.c:290: JTAGTMSBIT=0;
	clr	_P1_3
;	whirlygig.c:291: JTAGTCKBIT=0;
	clr	_P1_2
;	whirlygig.c:292: JTAGTCKBIT=1;
	setb	_P1_2
00115$:
;	whirlygig.c:297: Fifo_Write(FIFO_EP0 + 1, 1, &fCapture);
	mov	_Fifo_Write_PARM_3,#_UsbInterruptOutFromPcEndpointService_fCapture_1_1
	mov	(_Fifo_Write_PARM_3 + 1),#0x00
	mov	(_Fifo_Write_PARM_3 + 2),#0x40
	mov	_Fifo_Write_PARM_2,#0x01
	clr	a
	mov	(_Fifo_Write_PARM_2 + 1),a
	mov	dpl,#0x21
;	whirlygig.c:302: }
	ljmp	_Fifo_Write
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "Whirlygig RNG 1.0"
	.db 0x00
__str_1:
	.ascii "1Jektor         "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
