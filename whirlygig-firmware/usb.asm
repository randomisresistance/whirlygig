;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sat Jul 12 02:11:19 2014
;--------------------------------------------------------
	.module usb
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ZERO_PACKET
	.globl _ONES_PACKET
	.globl _Usb_ISR
	.globl _Handle_EP_HALT
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
	.globl _szBuffer
	.globl _Fifo_Write_PARM_3
	.globl _Fifo_Write_PARM_2
	.globl _Fifo_Read_PARM_3
	.globl _Fifo_Read_PARM_2
	.globl _Ep_Status
	.globl _DataPtr
	.globl _DataSent
	.globl _DataSize
	.globl _Setup
	.globl _USB_State
	.globl _Usb_Reset
	.globl _HandleOut
	.globl _Handle_In
	.globl _Usb_Resume
	.globl _Handle_Setup
	.globl _Usb_Suspend
	.globl _Fifo_Read
	.globl _Fifo_Write
	.globl _Force_Stall
	.globl _Get_Status
	.globl _Clear_Feature
	.globl _Set_Feature
	.globl _Set_Address
	.globl _Get_Descriptor
	.globl _Get_Configuration
	.globl _Set_Configuration
	.globl _Get_Interface
	.globl _Set_Interface
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_USB_State::
	.ds 1
_Setup::
	.ds 8
_DataSize::
	.ds 2
_DataSent::
	.ds 2
_DataPtr::
	.ds 3
_Ep_Status::
	.ds 4
_Fifo_Read_PARM_2:
	.ds 2
_Fifo_Read_PARM_3:
	.ds 3
_Fifo_Write_PARM_2:
	.ds 2
_Fifo_Write_PARM_3:
	.ds 3
_Get_Descriptor_n1_3_3:
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
_szBuffer::
	.ds 60
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
;	usb.c:27: BYTE Ep_Status[4] = {EP_IDLE, EP_IDLE, EP_IDLE, EP_IDLE};
	mov	_Ep_Status,#0x00
	mov	(_Ep_Status + 0x0001),#0x00
	mov	(_Ep_Status + 0x0002),#0x00
	mov	(_Ep_Status + 0x0003),#0x00
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
;Allocation info for local variables in function 'Usb_Reset'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:73: void Usb_Reset(void)
;	-----------------------------------------
;	 function Usb_Reset
;	-----------------------------------------
_Usb_Reset:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	usb.c:75: USB_State = DEV_DEFAULT;             // Set device state to default
	mov	_USB_State,#0x02
;	usb.c:76: POLL_WRITE_BYTE(CMIE,	0x0D);  // SOF, reset, suspend
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0B
	mov	_USB0DAT,#0x0D
;	usb.c:78: POLL_WRITE_BYTE(POWER, 0x01);        // Clear usb inhibit bit to enable USB
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x01
;	usb.c:81: Ep_Status[0] = EP_IDLE;              // Set default Endpoint Status
	mov	_Ep_Status,#0x00
;	usb.c:82: Ep_Status[1] = EP_HALT;
	mov	(_Ep_Status + 0x0001),#0x03
;	usb.c:83: Ep_Status[2] = EP_HALT;
	mov	(_Ep_Status + 0x0002),#0x03
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_EP_HALT'
;------------------------------------------------------------
;ControlReg                Allocated to registers r2 
;------------------------------------------------------------
;	usb.c:86: void Handle_EP_HALT(void)
;	-----------------------------------------
;	 function Handle_EP_HALT
;	-----------------------------------------
_Handle_EP_HALT:
;	usb.c:91: POLL_WRITE_BYTE(INDEX, 1);				// Set index to endpoint 1 registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
;	usb.c:92: POLL_READ_BYTE(EINCSR1, ControlReg);	// Read contol register for EP
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r2,_USB0DAT
;	usb.c:93: if (Ep_Status[1] == EP_HALT)				// If endpoint is currently halted, send a stall
	mov	a,#0x03
	cjne	a,(_Ep_Status + 0x0001),00119$
;	usb.c:94: POLL_WRITE_BYTE(EINCSR1, rbInSDSTL)
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
	ret
00119$:
;	usb.c:96: if (ControlReg & rbInSTSTL)			// Clear sent stall if last packet returned a stall
	mov	a,r2
	jnb	acc.5,00121$
;	usb.c:97: POLL_WRITE_BYTE(EINCSR1, 0);
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
00121$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_ISR'
;------------------------------------------------------------
;bCommon                   Allocated to registers r3 
;bIn                       Allocated to registers r4 
;bOut                      Allocated to registers r5 
;bIndex                    Allocated to registers r2 
;------------------------------------------------------------
;	usb.c:106: void Usb_ISR(void) interrupt 8         // Top-level USB ISR
;	-----------------------------------------
;	 function Usb_ISR
;	-----------------------------------------
_Usb_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	usb.c:109: POLL_READ_BYTE(INDEX, bIndex);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x8E
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	r2,_USB0DAT
;	usb.c:111: POLL_READ_BYTE(CMINT, bCommon);      // Read all interrupt registers
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x86
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	r3,_USB0DAT
;	usb.c:112: POLL_READ_BYTE(IN1INT, bIn);         // this read also clears the register
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x82
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	r4,_USB0DAT
;	usb.c:113: POLL_READ_BYTE(OUT1INT, bOut);
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
	mov	_USB0ADR,#0x84
00122$:
	mov	a,_USB0ADR
	jb	acc.7,00122$
	mov	r5,_USB0DAT
;	usb.c:115: if (bCommon & rbRSUINT)           // Handle Resume interrupt
	mov	a,r3
	jnb	acc.1,00126$
;	usb.c:116: Usb_Resume();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_Usb_Resume
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00126$:
;	usb.c:118: if (bCommon & rbRSTINT)           // Handle Reset interrupt
	mov	a,r3
	jnb	acc.2,00128$
;	usb.c:119: Usb_Reset();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_Usb_Reset
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00128$:
;	usb.c:122: if (bIn & 1)
	mov	a,r4
	jnb	acc.0,00130$
;	usb.c:123: Handle_Setup();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_Handle_Setup
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00130$:
;	usb.c:125: if (bCommon & rbSOF) {  // SOF interrupt
	mov	a,r3
	jnb	acc.3,00132$
;	usb.c:126: Handle_EP_HALT();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_Handle_EP_HALT
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00132$:
;	usb.c:131: if (bIn & 2)
	mov	a,r4
	jnb	acc.1,00134$
;	usb.c:132: Handle_In(1);
	mov	dpl,#0x01
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_Handle_In
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00134$:
;	usb.c:134: if (bIn & 4)
	mov	a,r4
	jnb	acc.2,00136$
;	usb.c:135: Handle_In(2);
	mov	dpl,#0x02
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_Handle_In
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00136$:
;	usb.c:136: if (bIn & 8)
	mov	a,r4
	jnb	acc.3,00138$
;	usb.c:137: Handle_In(3);
	mov	dpl,#0x03
	push	ar2
	push	ar3
	push	ar5
	lcall	_Handle_In
	pop	ar5
	pop	ar3
	pop	ar2
00138$:
;	usb.c:139: if (bOut & 2)
	mov	a,r5
	jnb	acc.1,00140$
;	usb.c:140: HandleOut(1);
	mov	dpl,#0x01
	push	ar2
	push	ar3
	push	ar5
	lcall	_HandleOut
	pop	ar5
	pop	ar3
	pop	ar2
00140$:
;	usb.c:141: if (bOut & 4)
	mov	a,r5
	jnb	acc.2,00142$
;	usb.c:142: HandleOut(2);
	mov	dpl,#0x02
	push	ar2
	push	ar3
	push	ar5
	lcall	_HandleOut
	pop	ar5
	pop	ar3
	pop	ar2
00142$:
;	usb.c:143: if (bOut & 8)
	mov	a,r5
	jnb	acc.3,00144$
;	usb.c:144: HandleOut(3);
	mov	dpl,#0x03
	push	ar2
	push	ar3
	lcall	_HandleOut
	pop	ar3
	pop	ar2
00144$:
;	usb.c:146: if (bCommon & rbSUSINT)          // Handle Suspend interrupt
	mov	a,r3
	jnb	acc.0,00147$
;	usb.c:147: Usb_Suspend();
	push	ar2
	lcall	_Usb_Suspend
	pop	ar2
;	usb.c:149: POLL_WRITE_BYTE(INDEX, bIndex);
00147$:
	mov	a,_USB0ADR
	jb	acc.7,00147$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,r2
;	usb.c:150: USB0ADR = FIFO_EP0 + 2;
	mov	_USB0ADR,#0x22
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'HandleOut'
;------------------------------------------------------------
;n                         Allocated to registers r2 
;Count                     Allocated to registers r3 
;ControlReg                Allocated to registers r3 
;------------------------------------------------------------
;	usb.c:154: void HandleOut(BYTE n) {
;	-----------------------------------------
;	 function HandleOut
;	-----------------------------------------
_HandleOut:
	mov	r2,dpl
;	usb.c:158: POLL_WRITE_BYTE(INDEX, n);           // Set index to endpoint 2 registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,r2
;	usb.c:159: POLL_READ_BYTE(EOUTCSR1, ControlReg);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x94
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r3,_USB0DAT
;	usb.c:161: if (Ep_Status[n] == EP_HALT)  {       // If endpoint is halted, send a stall
	mov	a,r2
	add	a,#_Ep_Status
	mov	r0,a
	mov	ar4,@r0
	cjne	r4,#0x03,00114$
;	usb.c:162: POLL_WRITE_BYTE(EOUTCSR1, rbOutSDSTL);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x20
;	usb.c:163: return;
	ret
00114$:
;	usb.c:166: if (ControlReg & rbOutSTSTL)     // Clear sent stall bit if last packet was a stall
	mov	a,r3
	jnb	acc.6,00120$
;	usb.c:167: POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x80
;	usb.c:169: POLL_READ_BYTE(EOUTCNTL, Count);
00120$:
	mov	a,_USB0ADR
	jb	acc.7,00120$
	mov	_USB0ADR,#0x96
00123$:
	mov	a,_USB0ADR
	jb	acc.7,00123$
;	usb.c:171: if (Count == 0)    // If host did not send correct packet size, flush buffer
	mov	a,_USB0DAT
	mov	r3,a
	jnz	00130$
;	usb.c:172: POLL_WRITE_BYTE(EOUTCNTL, rbOutFLUSH)
00126$:
	mov	a,_USB0ADR
	jb	acc.7,00126$
	mov	_USB0ADR,#0x16
	mov	_USB0DAT,#0x10
	sjmp	00132$
00130$:
;	usb.c:174: UsbInterruptOutFromPcEndpointService(n);
	mov	dpl,r2
	lcall	_UsbInterruptOutFromPcEndpointService
;	usb.c:175: POLL_WRITE_BYTE(EOUTCSR1, 0);     // Clear Out Packet ready bit
00132$:
	mov	a,_USB0ADR
	jb	acc.7,00132$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_In'
;------------------------------------------------------------
;n                         Allocated to registers r2 
;ControlReg                Allocated to registers r3 
;------------------------------------------------------------
;	usb.c:178: void Handle_In(BYTE n)                       // Handle in packet on Endpoint 1
;	-----------------------------------------
;	 function Handle_In
;	-----------------------------------------
_Handle_In:
	mov	r2,dpl
;	usb.c:182: POLL_WRITE_BYTE(INDEX, n);           // Set index to endpoint 1 registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,r2
;	usb.c:183: POLL_READ_BYTE(EINCSR1, ControlReg); // Read contol register for EP 1
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r3,_USB0DAT
;	usb.c:185: if (Ep_Status[n] == EP_HALT) {        // If endpoint is currently halted, send a stall
	mov	a,r2
	add	a,#_Ep_Status
	mov	r0,a
	mov	ar4,@r0
	cjne	r4,#0x03,00114$
;	usb.c:186: POLL_WRITE_BYTE(EINCSR1, rbInSDSTL);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
;	usb.c:187: return;
	ret
00114$:
;	usb.c:189: if (ControlReg & rbInSTSTL)      // Clear sent stall if last packet returned a stall
	mov	a,r3
	jnb	acc.5,00119$
;	usb.c:190: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
00119$:
;	usb.c:192: if (ControlReg & rbInUNDRUN)     // Clear underrun bit if it was set
	mov	a,r3
	jnb	acc.2,00124$
;	usb.c:193: POLL_WRITE_BYTE(EINCSR1, 0x00);
00120$:
	mov	a,_USB0ADR
	jb	acc.7,00120$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
00124$:
;	usb.c:195: UsbInterruptInToPcEndpointService(n);
	mov	dpl,r2
	ljmp	_UsbInterruptInToPcEndpointService
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_Resume'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:204: void Usb_Resume(void)                   // Add code to turn on anything turned off when
;	-----------------------------------------
;	 function Usb_Resume
;	-----------------------------------------
_Usb_Resume:
;	usb.c:206: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_Setup'
;------------------------------------------------------------
;ControlReg                Allocated to registers r2 
;TempReg                   Allocated to registers r2 
;------------------------------------------------------------
;	usb.c:216: void Handle_Setup(void)
;	-----------------------------------------
;	 function Handle_Setup
;	-----------------------------------------
_Handle_Setup:
;	usb.c:223: POLL_WRITE_BYTE(INDEX, 0);           // Set Index to Endpoint Zero
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
;	usb.c:224: POLL_READ_BYTE(E0CSR, ControlReg);   // Read control register
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r2,_USB0DAT
;	usb.c:226: if (Ep_Status[0] == EP_ADDRESS)      // Handle Status Phase of Set Address command
	mov	a,#0x06
	cjne	a,_Ep_Status,00114$
;	usb.c:228: POLL_WRITE_BYTE(FADDR, Setup.wValue.c[LSB]);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x00
	mov	_USB0DAT,(_Setup + 0x0002)
;	usb.c:229: Ep_Status[0] = EP_IDLE;
	mov	_Ep_Status,#0x00
00114$:
;	usb.c:233: if (ControlReg & rbSTSTL) {           // If last packet was a sent stall, reset STSTL
	mov	a,r2
	jnb	acc.2,00119$
;	usb.c:235: POLL_WRITE_BYTE(E0CSR, 0);
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
;	usb.c:236: Ep_Status[0] = EP_IDLE;
	mov	_Ep_Status,#0x00
;	usb.c:237: return;
	ret
00119$:
;	usb.c:240: if (ControlReg & rbSUEND)            // If last setup transaction was ended prematurely
	mov	a,r2
	jnb	acc.4,00127$
;	usb.c:242: POLL_WRITE_BYTE(E0CSR, rbDATAEND);
00120$:
	mov	a,_USB0ADR
	jb	acc.7,00120$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x08
;	usb.c:243: POLL_WRITE_BYTE(E0CSR, rbSSUEND); // Serviced Setup End bit and return EP0
00123$:
	mov	a,_USB0ADR
	jb	acc.7,00123$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x80
;	usb.c:244: Ep_Status[0] = EP_IDLE;           // to idle state
	mov	_Ep_Status,#0x00
00127$:
;	usb.c:249: if (Ep_Status[0] == EP_IDLE)         // If Endpoint 0 is in idle mode
	mov	a,_Ep_Status
	jz	00204$
	ljmp	00142$
00204$:
;	usb.c:251: if (ControlReg & rbOPRDY)         // Make sure that EP 0 has an Out Packet ready from host
	mov	a,r2
	jb	acc.0,00205$
	ljmp	00142$
00205$:
;	usb.c:253: Fifo_Read(FIFO_EP0, 8, (BYTE *)&Setup);
	mov	_Fifo_Read_PARM_3,#_Setup
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x08
	clr	a
	mov	(_Fifo_Read_PARM_2 + 1),a
	mov	dpl,#0x20
	push	ar2
	lcall	_Fifo_Read
	pop	ar2
;	usb.c:258: switch(Setup.bRequest)         // Call correct subroutine to handle each kind of
	mov	a,(_Setup + 0x0001)
	mov	r3,a
	add	a,#0xff - 0x0B
	jnc	00206$
	ljmp	00142$
00206$:
	mov	a,r3
	add	a,r3
	add	a,r3
	mov	dptr,#00207$
	jmp	@a+dptr
00207$:
	ljmp	00128$
	ljmp	00129$
	ljmp	00137$
	ljmp	00130$
	ljmp	00137$
	ljmp	00131$
	ljmp	00132$
	ljmp	00137$
	ljmp	00133$
	ljmp	00134$
	ljmp	00135$
	ljmp	00136$
;	usb.c:260: case GET_STATUS:
00128$:
;	usb.c:261: Get_Status();
	push	ar2
	lcall	_Get_Status
	pop	ar2
;	usb.c:262: break;             
;	usb.c:263: case CLEAR_FEATURE:
	sjmp	00142$
00129$:
;	usb.c:264: Clear_Feature();
	push	ar2
	lcall	_Clear_Feature
	pop	ar2
;	usb.c:265: break;
;	usb.c:266: case SET_FEATURE:
	sjmp	00142$
00130$:
;	usb.c:267: Set_Feature();
	push	ar2
	lcall	_Set_Feature
	pop	ar2
;	usb.c:268: break;
;	usb.c:269: case SET_ADDRESS:
	sjmp	00142$
00131$:
;	usb.c:270: Set_Address();
	push	ar2
	lcall	_Set_Address
	pop	ar2
;	usb.c:271: break;
;	usb.c:272: case GET_DESCRIPTOR: //0x06
	sjmp	00142$
00132$:
;	usb.c:273: Get_Descriptor();
	push	ar2
	lcall	_Get_Descriptor
	pop	ar2
;	usb.c:274: break;
;	usb.c:275: case GET_CONFIGURATION:
	sjmp	00142$
00133$:
;	usb.c:276: Get_Configuration();
	push	ar2
	lcall	_Get_Configuration
	pop	ar2
;	usb.c:277: break;
;	usb.c:278: case SET_CONFIGURATION:
	sjmp	00142$
00134$:
;	usb.c:279: Set_Configuration();
	push	ar2
	lcall	_Set_Configuration
	pop	ar2
;	usb.c:280: break;
;	usb.c:281: case GET_INTERFACE:
	sjmp	00142$
00135$:
;	usb.c:282: Get_Interface();
	push	ar2
	lcall	_Get_Interface
	pop	ar2
;	usb.c:283: break;
;	usb.c:284: case SET_INTERFACE:
	sjmp	00142$
00136$:
;	usb.c:285: Set_Interface();
	push	ar2
	lcall	_Set_Interface
	pop	ar2
;	usb.c:286: break;
;	usb.c:287: default:
;	usb.c:290: }
00137$:
00142$:
;	usb.c:294: if (Ep_Status[0] == EP_TX)           // See if the endpoint has data to transmit to host
	mov	a,#0x01
	cjne	a,_Ep_Status,00208$
	sjmp	00209$
00208$:
	ret
00209$:
;	usb.c:299: if (!(ControlReg & rbINPRDY))     // Make sure you don't overwrite last packet
	mov	a,r2
	jnb	acc.1,00210$
	ret
00210$:
;	usb.c:303: POLL_READ_BYTE(E0CSR, ControlReg);
00143$:
	mov	a,_USB0ADR
	jb	acc.7,00143$
	mov	_USB0ADR,#0x91
00146$:
	mov	a,_USB0ADR
	jb	acc.7,00146$
;	usb.c:306: if ((!(ControlReg & rbSUEND)) || (!(ControlReg & rbOPRDY)))
	mov	a,_USB0DAT
	mov	r2,a
	jnb	acc.4,00157$
	mov	a,r2
	jnb	acc.0,00214$
	ret
00214$:
00157$:
;	usb.c:310: TempReg = rbINPRDY;         // Add In Packet ready flag to E0CSR bitmask              
	mov	r2,#0x02
;	usb.c:313: if (DataSize >= EP0_PACKET_SIZE)
	clr	c
	mov	a,_DataSize
	subb	a,#0x40
	mov	a,(_DataSize + 1)
	subb	a,#0x00
	jc	00150$
;	usb.c:316: Fifo_Write(FIFO_EP0, EP0_PACKET_SIZE, (BYTE *)DataPtr);// Put Data on Fifo
	mov	_Fifo_Write_PARM_2,#0x40
	clr	a
	mov	(_Fifo_Write_PARM_2 + 1),a
	mov	_Fifo_Write_PARM_3,_DataPtr
	mov	(_Fifo_Write_PARM_3 + 1),(_DataPtr + 1)
	mov	(_Fifo_Write_PARM_3 + 2),(_DataPtr + 2)
	mov	dpl,#0x20
	push	ar2
	lcall	_Fifo_Write
	pop	ar2
;	usb.c:317: DataPtr  += EP0_PACKET_SIZE;                           // Advance data pointer
	mov	a,#0x40
	add	a,_DataPtr
	mov	_DataPtr,a
	clr	a
	addc	a,(_DataPtr + 1)
	mov	(_DataPtr + 1),a
;	usb.c:318: DataSize -= EP0_PACKET_SIZE;                           // Decrement data size
	mov	a,_DataSize
	add	a,#0xc0
	mov	_DataSize,a
	mov	a,(_DataSize + 1)
	addc	a,#0xff
	mov	(_DataSize + 1),a
;	usb.c:319: DataSent += EP0_PACKET_SIZE;                           // Increment data sent counter
	mov	a,#0x40
	add	a,_DataSent
	mov	_DataSent,a
	clr	a
	addc	a,(_DataSent + 1)
	mov	(_DataSent + 1),a
	sjmp	00151$
00150$:
;	usb.c:324: Fifo_Write(FIFO_EP0, DataSize, (BYTE *)DataPtr);       // Put Data on Fifo
	mov	_Fifo_Write_PARM_2,_DataSize
	mov	(_Fifo_Write_PARM_2 + 1),(_DataSize + 1)
	mov	_Fifo_Write_PARM_3,_DataPtr
	mov	(_Fifo_Write_PARM_3 + 1),(_DataPtr + 1)
	mov	(_Fifo_Write_PARM_3 + 2),(_DataPtr + 2)
	mov	dpl,#0x20
	lcall	_Fifo_Write
;	usb.c:325: TempReg |= rbDATAEND;                                  // Add Data End bit to bitmask
	mov	r2,#0x0A
;	usb.c:326: Ep_Status[0] = EP_IDLE;                                // Return EP 0 to idle state
	mov	_Ep_Status,#0x00
00151$:
;	usb.c:328: if (DataSent == Setup.wLength.i)
	mov	a,(_Setup + 0x0006)
	cjne	a,_DataSent,00154$
	mov	a,((_Setup + 0x0006) + 1)
	cjne	a,(_DataSent + 1),00154$
;	usb.c:333: TempReg |= rbDATAEND;    // Add Data End bit to mask
	orl	ar2,#0x08
;	usb.c:334: Ep_Status[0] = EP_IDLE;  // and return Endpoint 0 to an idle state
	mov	_Ep_Status,#0x00
;	usb.c:336: POLL_WRITE_BYTE(E0CSR, TempReg);                          // Write mask to E0CSR
00154$:
	mov	a,_USB0ADR
	jb	acc.7,00154$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_Suspend'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:348: void Usb_Suspend(void)                  // Add power-down features here if you wish to 
;	-----------------------------------------
;	 function Usb_Suspend
;	-----------------------------------------
_Usb_Suspend:
;	usb.c:350: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Fifo_Read'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_Fifo_Read_PARM_2'
;pData                     Allocated with name '_Fifo_Read_PARM_3'
;addr                      Allocated to registers r2 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	usb.c:365: void Fifo_Read(BYTE addr, unsigned int uNumBytes, BYTE * pData)
;	-----------------------------------------
;	 function Fifo_Read
;	-----------------------------------------
_Fifo_Read:
	mov	r2,dpl
;	usb.c:369: if (uNumBytes)                         // Check if >0 bytes requested,
	mov	a,_Fifo_Read_PARM_2
	orl	a,(_Fifo_Read_PARM_2 + 1)
	jz	00110$
;	usb.c:371: USB0ADR = (addr);                   // Set address
	mov	_USB0ADR,r2
;	usb.c:372: USB0ADR |= 0xC0;                    // Set auto-read and initiate
	orl	_USB0ADR,#0xC0
;	usb.c:376: for(i=0;i<uNumBytes;i++)
	mov	r2,#0x00
	mov	r3,#0x00
00106$:
	clr	c
	mov	a,r2
	subb	a,_Fifo_Read_PARM_2
	mov	a,r3
	subb	a,(_Fifo_Read_PARM_2 + 1)
	jnc	00109$
;	usb.c:378: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
;	usb.c:379: pData[i] = USB0DAT;              // Copy data byte
	mov	a,r2
	add	a,_Fifo_Read_PARM_3
	mov	r4,a
	mov	a,r3
	addc	a,(_Fifo_Read_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_Fifo_Read_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,_USB0DAT
	lcall	__gptrput
;	usb.c:376: for(i=0;i<uNumBytes;i++)
	inc	r2
	cjne	r2,#0x00,00106$
	inc	r3
	sjmp	00106$
00109$:
;	usb.c:382: USB0ADR = 0;                           // Clear auto-read
	mov	_USB0ADR,#0x00
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Fifo_Write'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_Fifo_Write_PARM_2'
;pData                     Allocated with name '_Fifo_Write_PARM_3'
;addr                      Allocated to registers r2 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	usb.c:398: void Fifo_Write(BYTE addr, unsigned int uNumBytes, BYTE * pData)
;	-----------------------------------------
;	 function Fifo_Write
;	-----------------------------------------
_Fifo_Write:
	mov	r2,dpl
;	usb.c:403: if (uNumBytes)
	mov	a,_Fifo_Write_PARM_2
	orl	a,(_Fifo_Write_PARM_2 + 1)
	jz	00113$
;	usb.c:405: while(USB0ADR & 0x80);              // Wait for BUSY->'0'
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
;	usb.c:407: USB0ADR = (addr);                   // Set address (mask out bits7-6)
	mov	_USB0ADR,r2
;	usb.c:410: for(i=0;i<uNumBytes;i++)
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	clr	c
	mov	a,r2
	subb	a,_Fifo_Write_PARM_2
	mov	a,r3
	subb	a,(_Fifo_Write_PARM_2 + 1)
	jnc	00113$
;	usb.c:412: USB0DAT = pData[i];
	mov	a,r2
	add	a,_Fifo_Write_PARM_3
	mov	r4,a
	mov	a,r3
	addc	a,(_Fifo_Write_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_Fifo_Write_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_USB0DAT,a
;	usb.c:413: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
;	usb.c:410: for(i=0;i<uNumBytes;i++)
	inc	r2
	cjne	r2,#0x00,00109$
	inc	r3
	sjmp	00109$
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Force_Stall'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:425: void Force_Stall(void)
;	-----------------------------------------
;	 function Force_Stall
;	-----------------------------------------
_Force_Stall:
;	usb.c:427: POLL_WRITE_BYTE(INDEX, 0);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
;	usb.c:428: POLL_WRITE_BYTE(E0CSR, rbSDSTL);       // Set the send stall bit
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x20
;	usb.c:429: Ep_Status[0] = EP_STALL;               // Put the endpoint in stall status
	mov	_Ep_Status,#0x05
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Status'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:433: void Get_Status(void)                           // This routine returns a two byte status packet
;	-----------------------------------------
;	 function Get_Status
;	-----------------------------------------
_Get_Status:
;	usb.c:436: if (Setup.wValue.c[MSB] || Setup.wValue.c[LSB] ||
	mov	a,(_Setup + 0x0003)
	jnz	00101$
	mov	a,(_Setup + 0x0002)
	jnz	00101$
;	usb.c:438: Setup.wLength.c[MSB]    || (Setup.wLength.c[LSB] != 2))  
	mov	a,(_Setup + 0x0007)
	jnz	00101$
	mov	a,#0x02
	cjne	a,(_Setup + 0x0006),00162$
	sjmp	00102$
00162$:
00101$:
;	usb.c:441: Force_Stall();
	lcall	_Force_Stall
00102$:
;	usb.c:444: switch(Setup.bmRequestType)                  // Determine if recipient was device, interface, or EP
	mov	r2,_Setup
	cjne	r2,#0x80,00163$
	sjmp	00106$
00163$:
	cjne	r2,#0x81,00164$
	sjmp	00111$
00164$:
	cjne	r2,#0x82,00165$
	sjmp	00117$
00165$:
	ljmp	00134$
;	usb.c:446: case OUT_DEVICE:                // If recipient was device
00106$:
;	usb.c:447: if (Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])
	mov	a,(_Setup + 0x0005)
	jnz	00107$
	mov	a,(_Setup + 0x0004)
	jz	00108$
00107$:
;	usb.c:449: Force_Stall();                      // Send stall if request is invalid
	lcall	_Force_Stall
	ljmp	00135$
00108$:
;	usb.c:453: DataPtr = (BYTE*)&ZERO_PACKET;      // Otherwise send 0x00, indicating bus power and no
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:454: DataSize = 2;                       // remote wake-up supported
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
;	usb.c:456: break;
	ljmp	00135$
;	usb.c:458: case OUT_INTERFACE:                       // See if recipient was interface
00111$:
;	usb.c:459: if ((USB_State != DEV_CONFIGURED) ||
	mov	a,#0x04
	cjne	a,_USB_State,00112$
;	usb.c:460: Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])
	mov	a,(_Setup + 0x0005)
	jnz	00112$
	mov	a,(_Setup + 0x0004)
	jz	00113$
00112$:
;	usb.c:463: Force_Stall();                      // Otherwise send stall to host
	lcall	_Force_Stall
	ljmp	00135$
00113$:
;	usb.c:467: DataPtr = (BYTE*)&ZERO_PACKET;      // Status packet always returns 0x00
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:468: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
;	usb.c:470: break;
	ljmp	00135$
;	usb.c:472: case OUT_ENDPOINT:                        // See if recipient was an endpoint
00117$:
;	usb.c:473: if ((USB_State != DEV_CONFIGURED) ||
	mov	a,#0x04
	cjne	a,_USB_State,00130$
;	usb.c:474: Setup.wIndex.c[MSB])                   // Make sure device is configured and index msb = 0x00
	mov	a,(_Setup + 0x0005)
	jz	00131$
00130$:
;	usb.c:476: Force_Stall();                      
	lcall	_Force_Stall
	sjmp	00135$
00131$:
;	usb.c:480: if (Setup.wIndex.c[LSB] == IN_EP1)  // Handle case if request is directed to EP 1
	mov	a,#0x81
	cjne	a,(_Setup + 0x0004),00128$
;	usb.c:482: if (Ep_Status[1] == EP_HALT)
	mov	a,#0x03
	cjne	a,(_Ep_Status + 0x0001),00119$
;	usb.c:484: DataPtr = (BYTE*)&ONES_PACKET;
	mov	_DataPtr,#_ONES_PACKET
	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:485: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	sjmp	00135$
00119$:
;	usb.c:489: DataPtr = (BYTE*)&ZERO_PACKET;// Otherwise return 0x00,0x00 to indicate endpoint active
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:490: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	sjmp	00135$
00128$:
;	usb.c:495: if (Setup.wIndex.c[LSB] == OUT_EP2)
	mov	a,#0x02
	cjne	a,(_Setup + 0x0004),00125$
;	usb.c:498: if (Ep_Status[2] == EP_HALT)  // endpoint is active
	mov	a,#0x03
	cjne	a,(_Ep_Status + 0x0002),00122$
;	usb.c:500: DataPtr = (BYTE*)&ONES_PACKET;
	mov	_DataPtr,#_ONES_PACKET
	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:501: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	sjmp	00135$
00122$:
;	usb.c:505: DataPtr = (BYTE*)&ZERO_PACKET;
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:506: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	sjmp	00135$
00125$:
;	usb.c:511: Force_Stall();                // Send stall if unexpected data encountered
	lcall	_Force_Stall
;	usb.c:515: break;
;	usb.c:517: default:
	sjmp	00135$
00134$:
;	usb.c:518: Force_Stall();
	lcall	_Force_Stall
;	usb.c:520: }
00135$:
;	usb.c:521: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x05
	cjne	a,_Ep_Status,00183$
	ret
00183$:
;	usb.c:523: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set serviced Setup Packet, Endpoint 0 in                   
00136$:
	mov	a,_USB0ADR
	jb	acc.7,00136$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:524: Ep_Status[0] = EP_TX;                     // transmit mode, and reset DataSent counter
	mov	_Ep_Status,#0x01
;	usb.c:525: DataSent = 0;
	clr	a
	mov	_DataSent,a
	mov	(_DataSent + 1),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Clear_Feature'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:529: void Clear_Feature()                            // This routine can clear Halt Endpoint features
;	-----------------------------------------
;	 function Clear_Feature
;	-----------------------------------------
_Clear_Feature:
;	usb.c:532: if ((USB_State != DEV_CONFIGURED)          ||// Send procedural stall if device isn't configured
	mov	a,#0x04
	cjne	a,_USB_State,00122$
;	usb.c:533: (Setup.bmRequestType == IN_DEVICE)         ||// or request is made to host(remote wakeup not supported)
	mov	a,_Setup
	mov	r2,a
	jz	00122$
;	usb.c:534: (Setup.bmRequestType == IN_INTERFACE)      ||// or request is made to interface
	cjne	r2,#0x01,00165$
	sjmp	00122$
00165$:
;	usb.c:535: Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||// or msbs of value or index set to non-zero value
	mov	a,(_Setup + 0x0003)
	jnz	00122$
	mov	a,(_Setup + 0x0005)
	jnz	00122$
;	usb.c:536: Setup.wLength.c[MSB] || Setup.wLength.c[LSB])// or data length set to non-zero.
	mov	a,(_Setup + 0x0007)
	jnz	00122$
	mov	a,(_Setup + 0x0006)
	jz	00123$
00122$:
;	usb.c:538: Force_Stall();
	lcall	_Force_Stall
	sjmp	00131$
00123$:
;	usb.c:543: if ((Setup.bmRequestType == IN_ENDPOINT)&&// Verify that packet was directed at an endpoint
	mov	a,#0x02
	cjne	a,_Setup,00117$
;	usb.c:544: (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// the feature selected was HALT_ENDPOINT
	mov	a,(_Setup + 0x0002)
	jnz	00117$
;	usb.c:545: ((Setup.wIndex.c[LSB] == IN_EP1) ||       // and that the request was directed at EP 1 in
	mov	a,#0x81
	cjne	a,(_Setup + 0x0004),00173$
	sjmp	00116$
00173$:
;	usb.c:546: (Setup.wIndex.c[LSB] == OUT_EP2)))        // or EP 2 out
	mov	a,#0x02
	cjne	a,(_Setup + 0x0004),00117$
00116$:
;	usb.c:548: if (Setup.wIndex.c[LSB] == IN_EP1)
	mov	a,#0x81
	cjne	a,(_Setup + 0x0004),00107$
;	usb.c:550: POLL_WRITE_BYTE (INDEX, 1);         // Clear feature endpoint 1 halt
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
;	usb.c:551: POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:552: Ep_Status[1] = EP_IDLE;             // Set endpoint 1 status back to idle
	mov	(_Ep_Status + 0x0001),#0x00
;	usb.c:556: POLL_WRITE_BYTE (INDEX, 2);         // Clear feature endpoint 2 halt
	sjmp	00131$
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x02
;	usb.c:557: POLL_WRITE_BYTE (EOUTCSR1, rbOutCLRDT);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x80
;	usb.c:558: Ep_Status[2] = EP_IDLE;             // Set endpoint 2 status back to idle
	mov	(_Ep_Status + 0x0002),#0x00
	sjmp	00131$
00117$:
;	usb.c:563: Force_Stall();                         // Send procedural stall
	lcall	_Force_Stall
;	usb.c:566: POLL_WRITE_BYTE(INDEX, 0);                   // Reset Index to 0
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
;	usb.c:567: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x05
	cjne	a,_Ep_Status,00183$
	ret
00183$:
;	usb.c:569: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00134$:
	mov	a,_USB0ADR
	jb	acc.7,00134$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Feature'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:576: void Set_Feature(void)                          // This routine will set the EP Halt feature for
;	-----------------------------------------
;	 function Set_Feature
;	-----------------------------------------
_Set_Feature:
;	usb.c:579: if ((USB_State != DEV_CONFIGURED)          ||// Make sure device is configured, setup data
	mov	a,#0x04
	cjne	a,_USB_State,00122$
;	usb.c:580: (Setup.bmRequestType == IN_DEVICE)         ||// is all valid and that request is directed at
	mov	a,_Setup
	mov	r2,a
	jz	00122$
;	usb.c:581: (Setup.bmRequestType == IN_INTERFACE)      ||// an endpoint
	cjne	r2,#0x01,00165$
	sjmp	00122$
00165$:
;	usb.c:582: Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||
	mov	a,(_Setup + 0x0003)
	jnz	00122$
	mov	a,(_Setup + 0x0005)
	jnz	00122$
;	usb.c:583: Setup.wLength.c[MSB] || Setup.wLength.c[LSB])
	mov	a,(_Setup + 0x0007)
	jnz	00122$
	mov	a,(_Setup + 0x0006)
	jz	00123$
00122$:
;	usb.c:585: Force_Stall();                            // Otherwise send stall to host
	lcall	_Force_Stall
	sjmp	00131$
00123$:
;	usb.c:590: if ((Setup.bmRequestType == IN_ENDPOINT)&&// Make sure endpoint exists and that halt
	mov	a,#0x02
	cjne	a,_Setup,00117$
;	usb.c:591: (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// endpoint feature is selected
	mov	a,(_Setup + 0x0002)
	jnz	00117$
;	usb.c:592: ((Setup.wIndex.c[LSB] == IN_EP1)        ||
	mov	a,#0x81
	cjne	a,(_Setup + 0x0004),00173$
	sjmp	00116$
00173$:
;	usb.c:593: (Setup.wIndex.c[LSB] == OUT_EP2)))
	mov	a,#0x02
	cjne	a,(_Setup + 0x0004),00117$
00116$:
;	usb.c:595: if (Setup.wIndex.c[LSB] == IN_EP1)
	mov	a,#0x81
	cjne	a,(_Setup + 0x0004),00107$
;	usb.c:597: POLL_WRITE_BYTE (INDEX, 1);         // Set feature endpoint 1 halt
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
;	usb.c:598: POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
;	usb.c:599: Ep_Status[1] = EP_HALT;                                  
	mov	(_Ep_Status + 0x0001),#0x03
;	usb.c:603: POLL_WRITE_BYTE (INDEX, 2);         // Set feature Ep2 halt
	sjmp	00131$
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x02
;	usb.c:604: POLL_WRITE_BYTE (EOUTCSR1, rbOutSDSTL);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x20
;	usb.c:605: Ep_Status[2] = EP_HALT;  		    
	mov	(_Ep_Status + 0x0002),#0x03
	sjmp	00131$
00117$:
;	usb.c:610: Force_Stall();                         // Send procedural stall
	lcall	_Force_Stall
;	usb.c:613: POLL_WRITE_BYTE(INDEX, 0);
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
;	usb.c:614: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x05
	cjne	a,_Ep_Status,00183$
	ret
00183$:
;	usb.c:616: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00134$:
	mov	a,_USB0ADR
	jb	acc.7,00134$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Address'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:621: void Set_Address(void)                          // Set new function address
;	-----------------------------------------
;	 function Set_Address
;	-----------------------------------------
_Set_Address:
;	usb.c:623: if ((Setup.bmRequestType != IN_DEVICE)     ||// Request must be directed to device
	mov	a,_Setup
	jnz	00101$
;	usb.c:624: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// with index and length set to zero.
	mov	a,(_Setup + 0x0005)
	jnz	00101$
	mov	a,(_Setup + 0x0004)
	jnz	00101$
;	usb.c:625: Setup.wLength.c[MSB] || Setup.wLength.c[LSB]||
	mov	a,(_Setup + 0x0007)
	jnz	00101$
	mov	a,(_Setup + 0x0006)
	jnz	00101$
;	usb.c:626: Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] & 0x80))
	mov	a,(_Setup + 0x0003)
	jnz	00101$
	mov	a,(_Setup + 0x0002)
	jnb	acc.7,00102$
00101$:
;	usb.c:628: Force_Stall();                             // Send stall if setup data invalid
	lcall	_Force_Stall
00102$:
;	usb.c:631: Ep_Status[0] = EP_ADDRESS;                   // Set endpoint zero to update address next status phase
	mov	_Ep_Status,#0x06
;	usb.c:632: if (Setup.wValue.c[LSB] != 0)
	mov	a,(_Setup + 0x0002)
	jz	00110$
;	usb.c:634: USB_State = DEV_ADDRESS;                  // Indicate that device state is now address
	mov	_USB_State,#0x03
	sjmp	00111$
00110$:
;	usb.c:638: USB_State = DEV_DEFAULT;                  // If new address was 0x00, return device to default
	mov	_USB_State,#0x02
00111$:
;	usb.c:640: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x05
	cjne	a,_Ep_Status,00136$
	ret
00136$:
;	usb.c:642: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00112$:
	mov	a,_USB0ADR
	jb	acc.7,00112$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Descriptor'
;------------------------------------------------------------
;b                         Allocated with name '(_Setup + 0x0002)'
;sz                        Allocated to registers r2 r3 
;n1                        Allocated with name '_Get_Descriptor_n1_3_3'
;------------------------------------------------------------
;	usb.c:647: void Get_Descriptor(void)                       // This routine sets the data pointer and size to correct
;	-----------------------------------------
;	 function Get_Descriptor
;	-----------------------------------------
_Get_Descriptor:
;	usb.c:650: switch(Setup.wValue.c[MSB])                  // Determine which type of descriptor
	mov	a,(_Setup + 0x0003)
	mov	r2,a
	add	a,#0xff - 0x05
	jnc	00154$
	ljmp	00120$
00154$:
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00155$
	jmp	@a+dptr
00155$:
	ljmp	00120$
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00107$
	ljmp	00108$
;	usb.c:652: case DSC_DEVICE:                          // size accordingly
00101$:
;	usb.c:653: DataPtr = (BYTE*) &DeviceDesc;
	mov	_DataPtr,#_DeviceDesc
	mov	(_DataPtr + 1),#(_DeviceDesc >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:654: DataSize = sizeof(device_descriptor);
	mov	_DataSize,#0x12
	clr	a
	mov	(_DataSize + 1),a
;	usb.c:655: break;
	ljmp	00121$
;	usb.c:657: case DSC_CONFIG:
00102$:
;	usb.c:666: DataPtr = (BYTE*) &ConfigDesc;
	mov	_DataPtr,#_ConfigDesc
	mov	(_DataPtr + 1),#(_ConfigDesc >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:667: DataSize = ConfigDesc.bTotalLength1|(ConfigDesc.bTotalLength2<<8);
	mov	dptr,#(_ConfigDesc + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	dptr,#(_ConfigDesc + 0x0003)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	a
	mov	r3,a
	mov	r5,a
	orl	a,r2
	mov	_DataSize,a
	mov	a,r4
	orl	a,r5
	mov	(_DataSize + 1),a
;	usb.c:669: break;
	ljmp	00121$
;	usb.c:671: case DSC_STRING:
00103$:
;	usb.c:673: BYTE b = Setup.wValue.c[LSB];
;	usb.c:674: char code * sz = szaStringDescriptors[b];
	mov	a,(_Setup + 0x0002)
	mov	b,#0x02
	mul	ab
	add	a,#_szaStringDescriptors
	mov	dpl,a
	mov	a,#(_szaStringDescriptors >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
;	usb.c:675: int n1 = 2;
	mov	_Get_Descriptor_n1_3_3,#0x02
	clr	a
	mov	(_Get_Descriptor_n1_3_3 + 1),a
;	usb.c:676: szBuffer[0] = 2;
	mov	dptr,#_szBuffer
	mov	a,#0x02
	movx	@dptr,a
;	usb.c:677: szBuffer[1] = 3; // string descriptor type
	mov	dptr,#(_szBuffer + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	usb.c:679: while (*sz) {
00104$:
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	jz	00106$
;	usb.c:680: szBuffer[n1++] = *sz++;
	mov	r7,_Get_Descriptor_n1_3_3
	mov	r4,(_Get_Descriptor_n1_3_3 + 1)
	inc	_Get_Descriptor_n1_3_3
	clr	a
	cjne	a,_Get_Descriptor_n1_3_3,00157$
	inc	(_Get_Descriptor_n1_3_3 + 1)
00157$:
	mov	a,r7
	add	a,#_szBuffer
	mov	dpl,a
	mov	a,r4
	addc	a,#(_szBuffer >> 8)
	mov	dph,a
	inc	r2
	cjne	r2,#0x00,00158$
	inc	r3
00158$:
	mov	a,r6
	movx	@dptr,a
;	usb.c:681: szBuffer[n1++] = 0;
	mov	r4,_Get_Descriptor_n1_3_3
	mov	r5,(_Get_Descriptor_n1_3_3 + 1)
	inc	_Get_Descriptor_n1_3_3
	clr	a
	cjne	a,_Get_Descriptor_n1_3_3,00159$
	inc	(_Get_Descriptor_n1_3_3 + 1)
00159$:
	mov	a,r4
	add	a,#_szBuffer
	mov	dpl,a
	mov	a,r5
	addc	a,#(_szBuffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	usb.c:682: szBuffer[0] += 2;
	mov	dptr,#_szBuffer
	movx	a,@dptr
	mov	r4,a
	inc	r4
	inc	r4
	mov	dptr,#_szBuffer
	mov	a,r4
	movx	@dptr,a
	sjmp	00104$
00106$:
;	usb.c:686: DataPtr = szBuffer;
	mov	_DataPtr,#_szBuffer
	mov	(_DataPtr + 1),#(_szBuffer >> 8)
	mov	(_DataPtr + 2),#0x00
;	usb.c:687: DataSize = *DataPtr;
	mov	r2,_DataPtr
	mov	r3,(_DataPtr + 1)
	mov	r4,(_DataPtr + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
;	usb.c:688: break;
	ljmp	00121$
;	usb.c:690: case DSC_INTERFACE:
00107$:
;	usb.c:691: DataPtr = (BYTE*) &InterfaceDesc;
	mov	_DataPtr,#_InterfaceDesc
	mov	(_DataPtr + 1),#(_InterfaceDesc >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:692: DataSize = InterfaceDesc.bLength;
	mov	dptr,#_InterfaceDesc
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
;	usb.c:693: break;
;	usb.c:695: case DSC_ENDPOINT:
	sjmp	00121$
00108$:
;	usb.c:696: if ((Setup.wValue.c[LSB] == IN_EP1) ||
	mov	a,#0x81
	cjne	a,(_Setup + 0x0002),00160$
	sjmp	00115$
00160$:
;	usb.c:697: (Setup.wValue.c[LSB] == OUT_EP2) ||
	mov	a,#0x02
	cjne	a,(_Setup + 0x0002),00161$
	sjmp	00115$
00161$:
;	usb.c:698: (Setup.wValue.c[LSB] == IN_EP3))
	mov	a,#0x83
	cjne	a,(_Setup + 0x0002),00116$
00115$:
;	usb.c:700: if (Setup.wValue.c[LSB] == IN_EP1)
	mov	a,#0x81
	cjne	a,(_Setup + 0x0002),00113$
;	usb.c:702: DataPtr = (BYTE*) &Endpoint1Desc;
	mov	_DataPtr,#_Endpoint1Desc
	mov	(_DataPtr + 1),#(_Endpoint1Desc >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:703: DataSize = Endpoint1Desc.bLength;
	mov	dptr,#_Endpoint1Desc
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
	sjmp	00121$
00113$:
;	usb.c:707: if (Setup.wValue.c[LSB] == OUT_EP2) {
	mov	a,#0x02
	cjne	a,(_Setup + 0x0002),00110$
;	usb.c:708: DataPtr = (BYTE*) &Endpoint2Desc;
	mov	_DataPtr,#_Endpoint2Desc
	mov	(_DataPtr + 1),#(_Endpoint2Desc >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:709: DataSize = Endpoint2Desc.bLength;
	mov	dptr,#_Endpoint2Desc
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
	sjmp	00121$
00110$:
;	usb.c:711: DataPtr = (BYTE*) &Endpoint3Desc;
	mov	_DataPtr,#_Endpoint3Desc
	mov	(_DataPtr + 1),#(_Endpoint3Desc >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:712: DataSize = Endpoint3Desc.bLength;
	mov	dptr,#_Endpoint3Desc
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
	sjmp	00121$
00116$:
;	usb.c:718: Force_Stall();
	lcall	_Force_Stall
;	usb.c:720: break;
;	usb.c:722: default:
	sjmp	00121$
00120$:
;	usb.c:723: Force_Stall();                         // Send Stall if unsupported request
	lcall	_Force_Stall
;	usb.c:725: }
00121$:
;	usb.c:729: if (Setup.wValue.c[MSB] == DSC_DEVICE ||     // Verify that the requested descriptor is
	mov	a,#0x01
	cjne	a,(_Setup + 0x0003),00168$
	sjmp	00125$
00168$:
;	usb.c:730: Setup.wValue.c[MSB] == DSC_CONFIG     ||     // valid
	mov	a,#0x02
	cjne	a,(_Setup + 0x0003),00169$
	sjmp	00125$
00169$:
;	usb.c:731: Setup.wValue.c[MSB] == DSC_STRING     ||
	mov	a,#0x03
	cjne	a,(_Setup + 0x0003),00170$
	sjmp	00125$
00170$:
;	usb.c:732: Setup.wValue.c[MSB] == DSC_INTERFACE  ||
	mov	a,#0x04
	cjne	a,(_Setup + 0x0003),00171$
	sjmp	00125$
00171$:
;	usb.c:733: Setup.wValue.c[MSB] == DSC_ENDPOINT)
	mov	a,#0x05
	cjne	a,(_Setup + 0x0003),00126$
00125$:
;	usb.c:735: if ((Setup.wLength.c[LSB] < DataSize) && 
	mov	r2,(_Setup + 0x0006)
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,_DataSize
	mov	a,r3
	subb	a,(_DataSize + 1)
	jnc	00126$
;	usb.c:736: (Setup.wLength.c[MSB] == 0))
	mov	a,(_Setup + 0x0007)
	jnz	00126$
;	usb.c:738: DataSize = Setup.wLength.i;       // Send only requested amount of data
	mov	_DataSize,(_Setup + 0x0006)
	mov	(_DataSize + 1),((_Setup + 0x0006) + 1)
00126$:
;	usb.c:743: if (Ep_Status[0] != EP_STALL)  {               // Make sure endpoint not in stall mode
	mov	a,#0x05
	cjne	a,_Ep_Status,00176$
	ret
00176$:
;	usb.c:744: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);          // Service Setup Packet
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:745: Ep_Status[0] = EP_TX;                      // Put endpoint in transmit mode
	mov	_Ep_Status,#0x01
;	usb.c:746: DataSent = 0;                              // Reset Data Sent counter
	clr	a
	mov	_DataSent,a
	mov	(_DataSent + 1),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Configuration'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:754: void Get_Configuration(void)                    // This routine returns current configuration value
;	-----------------------------------------
;	 function Get_Configuration
;	-----------------------------------------
_Get_Configuration:
;	usb.c:756: if ((Setup.bmRequestType != OUT_DEVICE)    ||// This request must be directed to the device
	mov	a,#0x80
	cjne	a,_Setup,00105$
;	usb.c:757: Setup.wValue.c[MSB]  || Setup.wValue.c[LSB]||// with value word set to zero
	mov	a,(_Setup + 0x0003)
	jnz	00105$
	mov	a,(_Setup + 0x0002)
	jnz	00105$
;	usb.c:758: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// and index set to zero
	mov	a,(_Setup + 0x0005)
	jnz	00105$
	mov	a,(_Setup + 0x0004)
	jnz	00105$
;	usb.c:759: Setup.wLength.c[MSB] || (Setup.wLength.c[LSB] != 1))// and setup length set to one
	mov	a,(_Setup + 0x0007)
	jnz	00105$
	mov	a,#0x01
	cjne	a,(_Setup + 0x0006),00138$
	sjmp	00106$
00138$:
00105$:
;	usb.c:761: Force_Stall();                            // Otherwise send a stall to host
	lcall	_Force_Stall
	sjmp	00107$
00106$:
;	usb.c:766: if (USB_State == DEV_CONFIGURED)          // If the device is configured, then return value 0x01
	mov	a,#0x04
	cjne	a,_USB_State,00102$
;	usb.c:768: DataPtr = (BYTE*)&ONES_PACKET;
	mov	_DataPtr,#_ONES_PACKET
	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:769: DataSize = 1;
	mov	_DataSize,#0x01
	clr	a
	mov	(_DataSize + 1),a
00102$:
;	usb.c:771: if (USB_State == DEV_ADDRESS)             // If the device is in address state, it is not
	mov	a,#0x03
	cjne	a,_USB_State,00107$
;	usb.c:773: DataPtr = (BYTE*)&ZERO_PACKET;
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:774: DataSize = 1;
	mov	_DataSize,#0x01
	clr	a
	mov	(_DataSize + 1),a
00107$:
;	usb.c:777: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x05
	cjne	a,_Ep_Status,00143$
	ret
00143$:
;	usb.c:779: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Out Packet bit
00114$:
	mov	a,_USB0ADR
	jb	acc.7,00114$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:780: Ep_Status[0] = EP_TX;                     // Put endpoint into transmit mode
	mov	_Ep_Status,#0x01
;	usb.c:781: DataSent = 0;                             // Reset Data Sent counter to zero
	clr	a
	mov	_DataSent,a
	mov	(_DataSent + 1),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Configuration'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:785: void Set_Configuration(void)                    // This routine allows host to change current
;	-----------------------------------------
;	 function Set_Configuration
;	-----------------------------------------
_Set_Configuration:
;	usb.c:787: if ((USB_State == DEV_DEFAULT)             ||// Device must be addressed before configured
	mov	a,#0x02
	cjne	a,_USB_State,00211$
	sjmp	00152$
00211$:
;	usb.c:788: (Setup.bmRequestType != IN_DEVICE)         ||// and request recipient must be the device
	mov	a,_Setup
	jnz	00152$
;	usb.c:789: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// the index and length words must be zero
	mov	a,(_Setup + 0x0005)
	jnz	00152$
	mov	a,(_Setup + 0x0004)
	jnz	00152$
;	usb.c:790: Setup.wLength.c[MSB] || Setup.wLength.c[LSB] || 
	mov	a,(_Setup + 0x0007)
	jnz	00152$
	mov	a,(_Setup + 0x0006)
	jnz	00152$
;	usb.c:791: Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] > 1)) { // This software only supports config = 0,1
	mov	a,(_Setup + 0x0003)
	jnz	00152$
	mov	a,(_Setup + 0x0002)
	add	a,#0xff - 0x01
	jnc	00153$
00152$:
;	usb.c:792: Force_Stall();                            // Send stall if setup data is invalid
	lcall	_Force_Stall
	ljmp	00154$
00153$:
;	usb.c:797: if (Setup.wValue.c[LSB] > 0)              // Any positive configuration request
	mov	a,(_Setup + 0x0002)
	jnz	00219$
	ljmp	00150$
00219$:
;	usb.c:799: USB_State = DEV_CONFIGURED;
	mov	_USB_State,#0x04
;	usb.c:800: POLL_WRITE_BYTE(INDEX, 1);				// Select EP1
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
;	usb.c:801: POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);	// Set DIRSEL to indicate endpoint 1 is IN
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x20
;	usb.c:802: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:803: Ep_Status[1] = EP_IDLE;					// Set endpoint status to idle (enabled)
	mov	(_Ep_Status + 0x0001),#0x00
;	usb.c:804: UsbInterruptInToPcEndpointService(1);
	mov	dpl,#0x01
	lcall	_UsbInterruptInToPcEndpointService
;	usb.c:805: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x01
;	usb.c:809: POLL_WRITE_BYTE(INDEX, 2);				// Select EP2
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x02
;	usb.c:810: POLL_WRITE_BYTE(EINCSR2, 0);
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x00
;	usb.c:811: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle, SDSTL, STSTL
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:812: POLL_WRITE_BYTE(EOUTCSR2, rbOutDBOEN);	// double buffer
00122$:
	mov	a,_USB0ADR
	jb	acc.7,00122$
	mov	_USB0ADR,#0x15
	mov	_USB0DAT,#0x80
;	usb.c:813: POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);	// clear data toggle
00125$:
	mov	a,_USB0ADR
	jb	acc.7,00125$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x80
;	usb.c:815: POLL_WRITE_BYTE(EINCSR2, 0);	// Clear DIRSEL to indicate endpoint 1 is OUT
00128$:
	mov	a,_USB0ADR
	jb	acc.7,00128$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x00
;	usb.c:818: Ep_Status[2] = EP_IDLE;
	mov	(_Ep_Status + 0x0002),#0x00
;	usb.c:819: UsbInterruptInToPcEndpointService(2);
	mov	dpl,#0x02
	lcall	_UsbInterruptInToPcEndpointService
;	usb.c:822: POLL_WRITE_BYTE(INDEX, 3);				// Select EP3
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x03
;	usb.c:828: POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);	// Set DIRSEL to indicate endpoint 1 is IN
00134$:
	mov	a,_USB0ADR
	jb	acc.7,00134$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x20
;	usb.c:829: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle
00137$:
	mov	a,_USB0ADR
	jb	acc.7,00137$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:831: Ep_Status[3] = EP_IDLE;
	mov	(_Ep_Status + 0x0003),#0x00
;	usb.c:832: UsbInterruptInToPcEndpointService(3);
	mov	dpl,#0x03
	lcall	_UsbInterruptInToPcEndpointService
;	usb.c:833: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
00140$:
	mov	a,_USB0ADR
	jb	acc.7,00140$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x01
;	usb.c:838: POLL_WRITE_BYTE(INDEX, 0);				// Select EP1
00143$:
	mov	a,_USB0ADR
	jb	acc.7,00143$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
;	usb.c:844: POLL_WRITE_BYTE(INDEX, 0);             // Set index back to endpoint 0
00146$:
	mov	a,_USB0ADR
	jb	acc.7,00146$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	sjmp	00154$
00150$:
;	usb.c:848: USB_State = DEV_ADDRESS;               // Unconfigures device by setting state to
	mov	_USB_State,#0x03
;	usb.c:849: Ep_Status[1] = EP_HALT;                // address, and changing endpoint 1 and 2
	mov	(_Ep_Status + 0x0001),#0x03
;	usb.c:850: Ep_Status[2] = EP_HALT;                // status to halt
	mov	(_Ep_Status + 0x0002),#0x03
00154$:
;	usb.c:853: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x05
	cjne	a,_Ep_Status,00236$
	ret
00236$:
;	usb.c:855: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00162$:
	mov	a,_USB0ADR
	jb	acc.7,00162$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Interface'
;------------------------------------------------------------
;------------------------------------------------------------
;	usb.c:861: void Get_Interface(void)                        // This routine returns 0x00, since only one interface
;	-----------------------------------------
;	 function Get_Interface
;	-----------------------------------------
_Get_Interface:
;	usb.c:864: if ((USB_State != DEV_CONFIGURED)      ||    // If device is not configured
	mov	a,#0x04
	cjne	a,_USB_State,00101$
;	usb.c:865: (Setup.bmRequestType != OUT_INTERFACE) ||    // or recipient is not an interface
	mov	a,#0x81
	cjne	a,_Setup,00101$
;	usb.c:866: Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||// or non-zero value or index fields
	mov	a,(_Setup + 0x0003)
	jnz	00101$
	mov	a,(_Setup + 0x0002)
	jnz	00101$
;	usb.c:867: Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB] ||// or data length not equal to one
	mov	a,(_Setup + 0x0005)
	jnz	00101$
	mov	a,(_Setup + 0x0004)
	jnz	00101$
;	usb.c:868: Setup.wLength.c[MSB] ||(Setup.wLength.c[LSB] != 1))
	mov	a,(_Setup + 0x0007)
	jnz	00101$
	mov	a,#0x01
	cjne	a,(_Setup + 0x0006),00136$
	sjmp	00102$
00136$:
00101$:
;	usb.c:870: Force_Stall();                            // Then return stall due to invalid request
	lcall	_Force_Stall
	sjmp	00103$
00102$:
;	usb.c:875: DataPtr = (BYTE*)&ZERO_PACKET;            // Otherwise, return 0x00 to host
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
;	usb.c:876: DataSize = 1;
	mov	_DataSize,#0x01
	clr	a
	mov	(_DataSize + 1),a
00103$:
;	usb.c:878: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x05
	cjne	a,_Ep_Status,00137$
	ret
00137$:
;	usb.c:880: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Setup packet, put endpoint in transmit
00111$:
	mov	a,_USB0ADR
	jb	acc.7,00111$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:881: Ep_Status[0] = EP_TX;                     // mode and reset Data sent counter
	mov	_Ep_Status,#0x01
;	usb.c:882: DataSent = 0;
	clr	a
	mov	_DataSent,a
	mov	(_DataSent + 1),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Interface'
;------------------------------------------------------------
;bIndex                    Allocated to registers r2 
;------------------------------------------------------------
;	usb.c:886: void Set_Interface(void)
;	-----------------------------------------
;	 function Set_Interface
;	-----------------------------------------
_Set_Interface:
;	usb.c:891: POLL_READ_BYTE (INDEX, bIndex);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x8E
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	r2,_USB0DAT
;	usb.c:893: if ((Setup.bmRequestType != IN_INTERFACE)  ||// Make sure request is directed at interface
	mov	a,#0x01
	cjne	a,_Setup,00107$
;	usb.c:894: Setup.wLength.c[MSB] ||Setup.wLength.c[LSB]||// and all other packet values are set to zero
	mov	a,(_Setup + 0x0007)
	jnz	00107$
	mov	a,(_Setup + 0x0006)
	jnz	00107$
;	usb.c:895: Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||
	mov	a,(_Setup + 0x0003)
	jnz	00107$
	mov	a,(_Setup + 0x0002)
	jnz	00107$
;	usb.c:896: Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB])
	mov	a,(_Setup + 0x0005)
	jnz	00107$
	mov	a,(_Setup + 0x0004)
	jz	00108$
00107$:
;	usb.c:898: Force_Stall();                            // Othewise send a stall to host
	push	ar2
	lcall	_Force_Stall
	pop	ar2
00108$:
;	usb.c:900: if (Ep_Status[0] != EP_STALL) {
	mov	a,#0x05
	cjne	a,_Ep_Status,00214$
	ret
00214$:
;	usb.c:905: POLL_WRITE_BYTE(INDEX, 1);           // Index to Endpoint1 registers
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
;	usb.c:906: POLL_WRITE_BYTE(EINCSR1, 0x40);      // clear toggle
00118$:
	mov	a,_USB0ADR
	jb	acc.7,00118$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:907: POLL_WRITE_BYTE(EINCSR2, 0x20);      // FIFO split disabled,
00121$:
	mov	a,_USB0ADR
	jb	acc.7,00121$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x20
;	usb.c:909: POLL_WRITE_BYTE(EOUTCSR2, 0);        // Double-buffering disabled
00124$:
	mov	a,_USB0ADR
	jb	acc.7,00124$
	mov	_USB0ADR,#0x15
	mov	_USB0DAT,#0x00
;	usb.c:910: Ep_Status[1] = EP_IDLE; // Set endpoint state
	mov	(_Ep_Status + 0x0001),#0x00
;	usb.c:911: UsbInterruptInToPcEndpointService(1);
	mov	dpl,#0x01
	push	ar2
	lcall	_UsbInterruptInToPcEndpointService
	pop	ar2
;	usb.c:912: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
00127$:
	mov	a,_USB0ADR
	jb	acc.7,00127$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x01
;	usb.c:915: POLL_WRITE_BYTE(INDEX, 3);           // Index to Endpoint1 registers
00130$:
	mov	a,_USB0ADR
	jb	acc.7,00130$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x03
;	usb.c:916: POLL_WRITE_BYTE(EINCSR1, 0x40);      // clear toggle
00133$:
	mov	a,_USB0ADR
	jb	acc.7,00133$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
;	usb.c:917: POLL_WRITE_BYTE(EINCSR2, 0x20);      // FIFO split disabled,
00136$:
	mov	a,_USB0ADR
	jb	acc.7,00136$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x20
;	usb.c:919: POLL_WRITE_BYTE(EOUTCSR2, 0);        // Double-buffering disabled
00139$:
	mov	a,_USB0ADR
	jb	acc.7,00139$
	mov	_USB0ADR,#0x15
	mov	_USB0DAT,#0x00
;	usb.c:920: Ep_Status[3] = EP_IDLE; // Set endpoint state
	mov	(_Ep_Status + 0x0003),#0x00
;	usb.c:921: UsbInterruptInToPcEndpointService(3);
	mov	dpl,#0x03
	push	ar2
	lcall	_UsbInterruptInToPcEndpointService
	pop	ar2
;	usb.c:922: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
00142$:
	mov	a,_USB0ADR
	jb	acc.7,00142$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x01
;	usb.c:925: POLL_WRITE_BYTE(INDEX, 2);           // Index to Endpoint2 registers
00145$:
	mov	a,_USB0ADR
	jb	acc.7,00145$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x02
;	usb.c:926: POLL_WRITE_BYTE(EINCSR2, 0x04);      // FIFO split enabled,
00148$:
	mov	a,_USB0ADR
	jb	acc.7,00148$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x04
;	usb.c:928: Ep_Status[2] = EP_IDLE;// Set endpoint state
	mov	(_Ep_Status + 0x0002),#0x00
;	usb.c:930: UsbInterruptInToPcEndpointService(2);
	mov	dpl,#0x02
	push	ar2
	lcall	_UsbInterruptInToPcEndpointService
	pop	ar2
;	usb.c:933: POLL_WRITE_BYTE(INDEX, 0);           // Return to index 0
00151$:
	mov	a,_USB0ADR
	jb	acc.7,00151$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
;	usb.c:934: POLL_WRITE_BYTE (INDEX, bIndex);           // Restore INDEX
00154$:
	mov	a,_USB0ADR
	jb	acc.7,00154$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,r2
;	usb.c:935: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00157$:
	mov	a,_USB0ADR
	jb	acc.7,00157$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ONES_PACKET:
	.db #0x01
	.db #0x00
_ZERO_PACKET:
	.db #0x00
	.db #0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
