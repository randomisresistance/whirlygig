
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

// (c) 2003 andy@warmcat.com

// originally based on Cygnal's sample code

/*

 Merged USB support

;  REVISION 1.4 - Josh Stone
;   -- added sbit's for ACC, B, P0, P1, P2, P3 registers
;   -- added ESPI0, PSPI0, T2SOF
;  REVISION 1.3
;   -- added EIE2, EIP1, EIP2, EMI0CN, Bert Schiettecatte
;  REVISION 1.2
;   -- added SPI0CFG, SPI0CKR, and SPI0DAT (left SPICFG, SPICKR, and SPIDAT as-is)
;  REVISION 1.1
;
;---------------------------------------------------------------------------

Modified by Josh Stone to support the SDCC (v2.3.5) compiler

*/

/*  BYTE Registers  */
sfr at 0x80        P0;    /* PORT 0                                                   */
sfr at 0x81        SP;    /* STACK POINTER                                            */
sfr at 0x82       DPL;    /* DATA POINTER - LOW BYTE                                  */
sfr at 0x83       DPH;    /* DATA POINTER - HIGH BYTE                                 */
sfr at 0x87      PCON;    /* POWER CONTROL                                            */
sfr at 0x88      TCON;    /* TIMER CONTROL                                            */
sfr at 0x89      TMOD;    /* TIMER MODE                                               */
sfr at 0x8A       TL0;    /* TIMER 0 - LOW BYTE                                       */
sfr at 0x8B       TL1;    /* TIMER 1 - LOW BYTE                                       */
sfr at 0x8C       TH0;    /* TIMER 0 - HIGH BYTE                                      */
sfr at 0x8D       TH1;    /* TIMER 1 - HIGH BYTE                                      */
sfr at 0x8E     CKCON;    /* CLOCK CONTROL                                            */
sfr at 0x8F     PSCTL;    /* PROGRAM STORE R/W CONTROL                                */
sfr at 0x90        P1;    /* PORT 1                                                   */
sfr at 0x91    TMR3CN;    /* TIMER 3 CONTROL                                          */
sfr at 0x92   TMR3RLL;    /* TIMER 3 RELOAD LOW                                       */
sfr at 0x93   TMR3RLH;    /* TIMER 3 RELOAD HIGH                                      */
sfr at 0x94     TMR3L;    /* TIMER 3 LOW BYTE                                         */
sfr at 0x95     TMR3H;    /* TIMER 3 HIGH BYTE                                        */
sfr at 0x96   USB0ADR;    /* USB0 ADDRESS PORT                                        */
sfr at 0x97   USB0DAT;    /* USB0 DATA PORT                                           */
sfr at 0x98     SCON0;    /* SERIAL PORT 0 CONTROL                                    */
sfr at 0x99     SBUF0;    /* SERIAL PORT 0 BUFFER                                     */
sfr at 0x9A    CPT1CN;    /* COMPARATOR 1 CONTROL                                     */
sfr at 0x9B    CPT0CN;    /* COMPARATOR 0 CONTROL                                     */
sfr at 0x9C    CPT1MD;    /* COMPARATOR 1 MODE                                        */
sfr at 0x9D    CPT0MD;    /* COMPARATOR 0 MODE                                        */
sfr at 0x9E    CPT1MX;    /* COMPARATOR 1 MUX                                         */
sfr at 0x9F    CPT0MX;    /* COMPARATOR 0 MUX                                         */
sfr at 0xA0        P2;    /* PORT 2                                                   */
sfr at 0xA1    SPICFG;    /* SPIO CONFIGURATION                                       */
sfr at 0xA1   SPIOCFG;    /* SPIO CONFIGURATION                                       */
sfr at 0xA2    SPICKR;    /* SPIO CLOCK CONFIGURATION                                 */
sfr at 0xA2   SPIOCKR;    /* SPIO CLOCK CONFIGURATION                                 */
sfr at 0xA3    SPIDAT;    /* SPIO DATA                                                */
sfr at 0xA3   SPIODAT;    /* SPIO DATA                                                */
sfr at 0xA4   P0MDOUT;    /* PORT 0 OUTPUT MODE                                       */
sfr at 0xA5   P1MDOUT;    /* PORT 1 OUTPUT MODE                                       */
sfr at 0xA6   P2MDOUT;    /* PORT 2 OUTPUT MODE                                       */
sfr at 0xA7   P3MDOUT;    /* PORT 3 OUTPUT MODE                                       */
sfr at 0xA8        IE;    /* INTERRUPT ENABLE                                         */
sfr at 0xA9    CLKSEL;    /* CLOCK SOURCE SELECT                                      */
sfr at 0xAA    EMI0CN;    /* EXTERNAL MEMORY INTERFACE CONTROL                        */
sfr at 0xB0        P3;    /* PORT 3                                                   */
sfr at 0xB1    OSCXCN;    /* EXTERNAL OSCILLATOR CONTROL                              */
sfr at 0xB2    OSCICN;    /* INTERNAL OSCILLATOR CONTROL                              */
sfr at 0xB3    OSCICL;    /* INTERNAL OSCILLATOR CALIBRATION                          */
sfr at 0xB6     FLSCL;    /* FLASH SCALE                                              */
sfr at 0xB7     FLKEY;    /* FLASH LOCK & KEY                                         */
sfr at 0xB8        IP;    /* INTERRUPT PRIORITY                                       */
sfr at 0xB9    CLKMUL;    /* CLOCK MULTIPLIER CONTROL                                 */
sfr at 0xBA     AMX0N;    /* ADC0 MUX NEGATIVE CHANNEL SELECTION                      */
sfr at 0xBB     AMX0P;    /* ADC0 MUX POSITIVE CHANNEL SELECTION                      */
sfr at 0xBC    ADC0CF;    /* ADC0 CONFIGURATION                                       */
sfr at 0xBD     ADC0L;    /* ADC0 DATA LOW                                            */
sfr at 0xBE     ADC0H;    /* ADC0 DATA HIGH                                           */
sfr at 0xC0    SMB0CN;    /* SMBUS CONTROL                                            */
sfr at 0xC1    SMB0CF;    /* SMBUS CONFIGURATION                                      */
sfr at 0xC2   SMB0DAT;    /* SMBUS DATA                                               */
sfr at 0xC3   ADC0GTL;    /* ADC0 GREATER-THAN LOW                                    */
sfr at 0xC4   ADC0GTH;    /* ADC0 GREATER-THAN HIGH                                   */
sfr at 0xC5   ADC0LTL;    /* ADC0 LESS-THAN LOW                                       */
sfr at 0xC6   ADC0LTH;    /* ADC0 LESS-THAN HIGH                                      */
sfr at 0xC8    TMR2CN;    /* TIMER 2 CONTROL                                          */
sfr at 0xC9    REG0CN;    /* REGULATOR CONTROl                                        */
sfr at 0xCA   TMR2RLL;    /* TIMER 2 RELOAD LOW                                       */
sfr at 0xCB   TMR2RLH;    /* TIMER 2 RELOAD HIGH                                      */
sfr at 0xCC     TMR2L;    /* TIMER 2 LOW BYTE                                         */
sfr at 0xCD     TMR2H;    /* TIMER 2 HIGH BYTE                                        */
sfr at 0xD0       PSW;    /* PROGRAM STATUS WORD                                      */
sfr at 0xD1    REF0CN;    /* VOLTAGE REFERENCE 0 CONTROL                              */
sfr at 0xD4    P0SKIP;    /* PORT 0 CROSSBAR SKIP                                     */
sfr at 0xD5    P1SKIP;    /* PORT 1 CROSSBAR SKIP                                     */
sfr at 0xD6    P2SKIP;    /* PORT 2 CROSSBAR SKIP                                     */
sfr at 0xD7   USB0XCN;    /* USB0 TRANCEIVER CONTROL                                  */
sfr at 0xD8    PCA0CN;    /* PCA0 CONTROL                                             */
sfr at 0xD9    PCA0MD;    /* PCA0 MODE                                                */
sfr at 0xDA  PCA0CPM0;    /* PCA0 MODULE 0 MODE                                       */
sfr at 0xDB  PCA0CPM1;    /* PCA0 MODULE 1 MODE                                       */
sfr at 0xDC  PCA0CPM2;    /* PCA0 MODULE 2 MODE                                       */
sfr at 0xDD  PCA0CPM3;    /* PCA0 MODULE 3 MODE                                       */
sfr at 0xDE  PCA0CPM4;    /* PCA0 MODULE 4 MODE                                       */
sfr at 0xE0       ACC;    /* ACCUMULATOR                                              */
sfr at 0xE1      XBR0;    /* DIGITAL CROSSBAR CONFIGURATION REGISTER 0                */
sfr at 0xE2      XBR1;    /* DIGITAL CROSSBAR CONFIGURATION REGISTER 1                */
sfr at 0xE4    IT01CF;    /* INT0/INT1 CONFIGURATION                                  */
sfr at 0xE6      EIE1;    /* EXTENDED INTERRUPT ENABLE 1                              */
sfr at 0xE7      EIE2;    /* EXTENDED INTERRUPT ENABLE 2                              */
sfr at 0xE8    ADC0CN;    /* ADC 0 CONTROL                                            */
sfr at 0xE9  PCA0CPL1;    /* PCA0 MODULE 1 CAPTURE/COMPARE REGISTER LOW BYTE          */
sfr at 0xEA  PCA0CPH1;    /* PCA0 MODULE 1 CAPTURE/COMPARE REGISTER HIGH BYTE         */
sfr at 0xEB  PCA0CPL2;    /* PCA0 MODULE 2 CAPTURE/COMPARE REGISTER LOW BYTE          */
sfr at 0xEC  PCA0CPH2;    /* PCA0 MODULE 2 CAPTURE/COMPARE REGISTER HIGH BYTE         */
sfr at 0xED  PCA0CPL3;    /* PCA0 MODULE 3 CAPTURE/COMPARE REGISTER LOW BYTE          */
sfr at 0xEE  PCA0CPH3;    /* PCA0 MODULE 3 CAPTURE/COMPARE REGISTER HIGH BYTE         */
sfr at 0xEF    RSTSRC;    /* RESET SOURCE                                             */
sfr at 0xF0         B;    /* B REGISTER                                               */
sfr at 0xF1    P0MDIN;    /* PORT 0 INPUT MODE REGISTER                               */
sfr at 0xF2    P1MDIN;    /* PORT 1 INPUT MODE REGISTER                               */
sfr at 0xF3    P2MDIN;    /* PORT 2 INPUT MODE REGISTER                               */
sfr at 0xF4    P3MDIN;    /* PORT 3 INPUT MODE REGISTER                               */
sfr at 0xF6      EIP1;    /* EXTENDED INTERRUPT PRIORITY 1                            */
sfr at 0xF7      EIP2;    /* EXTENDED INTERRUPT PRIORITY 2                            */
sfr at 0xF8    SPI0CN;    /* SPI0 CONTROL                                             */
sfr at 0xF9     PCA0L;    /* PCA0 COUNTER REGISTER LOW BYTE                           */
sfr at 0xFA     PCA0H;    /* PCA0 COUNTER REGISTER HIGH BYTE                          */
sfr at 0xFB  PCA0CPL0;    /* PCA MODULE 0 CAPTURE/COMPARE REGISTER LOW BYTE           */
sfr at 0xFC  PCA0CPH0;    /* PCA MODULE 0 CAPTURE/COMPARE REGISTER HIGH BYTE          */
sfr at 0xFD  PCA0CPL4;    /* PCA MODULE 4 CAPTURE/COMPARE REGISTER LOW BYTE           */
sfr at 0xFE  PCA0CPH4;    /* PCA MODULE 4 CAPTURE/COMPARE REGISTER HIGH BYTE          */
sfr at 0xFF    VDM0CN;    /* VDD MONITOR CONTROL                                      */

/*  BIT Registers  */

#define P0 0x80
sbit at P0 ^ 0       P0_0;   /* PORT 0, BIT 0                                         */
sbit at P0 ^ 1       P0_1;   /* PORT 0, BIT 1                                         */
sbit at P0 ^ 2       P0_2;   /* PORT 0, BIT 2                                         */
sbit at P0 ^ 3       P0_3;   /* PORT 0, BIT 3                                         */
sbit at P0 ^ 4       P0_4;   /* PORT 0, BIT 4                                         */
sbit at P0 ^ 5       P0_5;   /* PORT 0, BIT 5                                         */
sbit at P0 ^ 6       P0_6;   /* PORT 0, BIT 6                                         */
sbit at P0 ^ 7       P0_7;   /* PORT 0, BIT 7                                         */
#undef P0

#define TCON 0x88
sbit at TCON ^ 0      IT0;   /* EXT INTERRUPT 0 TYPE                                  */
sbit at TCON ^ 1      IE0;   /* EXT INTERRUPT 0 EDGE FLAG                             */
sbit at TCON ^ 2      IT1;   /* EXT INTERRUPT 1 TYPE                                  */
sbit at TCON ^ 3      IE1;   /* EXT INTERRUPT 1 EDGE FLAG                             */
sbit at TCON ^ 4      TR0;   /* TIMER 0 ON/OFF CONTROL                                */
sbit at TCON ^ 5      TF0;   /* TIMER 0 OVERFLOW FLAG                                 */
sbit at TCON ^ 6      TR1;   /* TIMER 1 ON/OFF CONTROL                                */
sbit at TCON ^ 7      TF1;   /* TIMER 1 OVERFLOW FLAG                                 */
#undef TCON

#define P1 0x90
sbit at P1 ^ 0       P1_0;   /* PORT 1, BIT 0                                         */
sbit at P1 ^ 1       P1_1;   /* PORT 1, BIT 1                                         */
sbit at P1 ^ 2       P1_2;   /* PORT 1, BIT 2                                         */
sbit at P1 ^ 3       P1_3;   /* PORT 1, BIT 3                                         */
sbit at P1 ^ 4       P1_4;   /* PORT 1, BIT 4                                         */
sbit at P1 ^ 5       P1_5;   /* PORT 1, BIT 5                                         */
sbit at P1 ^ 6       P1_6;   /* PORT 1, BIT 6                                         */
sbit at P1 ^ 7       P1_7;   /* PORT 1, BIT 7                                         */
#undef P1

#define SCON0 0x98
sbit at SCON0 ^ 0      RI0;  /* RECEIVE INTERRUPT FLAG                                */
sbit at SCON0 ^ 1      TI0;  /* TRANSMIT INTERRUPT FLAG                               */
sbit at SCON0 ^ 2     RB80;  /* RECEIVE BIT 8                                         */
sbit at SCON0 ^ 3     TB80;  /* TRANSMIT BIT 8                                        */
sbit at SCON0 ^ 4     REN0;  /* RECEIVE ENABLE                                        */
sbit at SCON0 ^ 5     MCE0;  /* MULTIPROCESSOR COMMUNICATION ENABLE                   */
/* bit 6 is unused                                                                    */
sbit at SCON0 ^ 7   S0MODE;  /* SERIAL MODE CONTROL BIT 0                             */
#undef SCON0

#define P2 0xA0
sbit at P2 ^ 0       P2_0;   /* PORT 2, BIT 0                                         */
sbit at P2 ^ 1       P2_1;   /* PORT 2, BIT 1                                         */
sbit at P2 ^ 2       P2_2;   /* PORT 2, BIT 2                                         */
sbit at P2 ^ 3       P2_3;   /* PORT 2, BIT 3                                         */
sbit at P2 ^ 4       P2_4;   /* PORT 2, BIT 4                                         */
sbit at P2 ^ 5       P2_5;   /* PORT 2, BIT 5                                         */
sbit at P2 ^ 6       P2_6;   /* PORT 2, BIT 6                                         */
sbit at P2 ^ 7       P2_7;   /* PORT 2, BIT 7                                         */
#undef P2

#define IE 0xA8
sbit at IE ^ 0      EX0;     /* EXTERNAL INTERRUPT 0 ENABLE                           */
sbit at IE ^ 1      ET0;     /* TIMER 0 INTERRUPT ENABLE                              */
sbit at IE ^ 2      EX1;     /* EXTERNAL INTERRUPT 1 ENABLE                           */
sbit at IE ^ 3      ET1;     /* TIMER 1 INTERRUPT ENABLE                              */
sbit at IE ^ 4      ES0;     /* UART0 INTERRUPT ENABLE                                */
sbit at IE ^ 5      ET2;     /* TIMER 2 INTERRUPT ENABLE                              */
sbit at IE ^ 6    ESPI0;     /* SERIAL PERIPHERAL INTERFACE (SPI0) INTERRUPT ENABLE   */
sbit at IE ^ 7       EA;     /* GLOBAL INTERRUPT ENABLE                               */
#undef IE

#define P3 0xB0
sbit at P3 ^ 0       P3_0;   /* PORT 3, BIT 0                                         */
sbit at P3 ^ 1       P3_1;   /* PORT 3, BIT 1                                         */
sbit at P3 ^ 2       P3_2;   /* PORT 3, BIT 2                                         */
sbit at P3 ^ 3       P3_3;   /* PORT 3, BIT 3                                         */
sbit at P3 ^ 4       P3_4;   /* PORT 3, BIT 4                                         */
sbit at P3 ^ 5       P3_5;   /* PORT 3, BIT 5                                         */
sbit at P3 ^ 6       P3_6;   /* PORT 3, BIT 6                                         */
sbit at P3 ^ 7       P3_7;   /* PORT 3, BIT 7                                         */
#undef P3

#define IP 0xB8
sbit at IP ^ 0      PX0;     /* EXTERNAL INTERRUPT 0 PRIORITY                         */
sbit at IP ^ 1      PT0;     /* TIMER 0 PRIORITY                                      */
sbit at IP ^ 2      PX1;     /* EXTERNAL INTERRUPT 1 PRIORITY                         */
sbit at IP ^ 3      PT1;     /* TIMER 1 PRIORITY                                      */
sbit at IP ^ 4      PS0;     /* UART0 PRIORITY                                        */
sbit at IP ^ 5      PT2;     /* TIMER 2 PRIORITY                                      */
sbit at IP ^ 6    PSPI0;     /* SERIAL PERIPHERAL INTERFACE (SPI0) INTERRUPT PRIORITY */
/* bit 7 is unused                                                                    */
#undef IP

#define SMB0CN 0xC0
sbit at SMB0CN ^ 0       SI; /* SMBUS0 INTERRUPT FLAG                                 */
sbit at SMB0CN ^ 1      ACK; /* ACKNOWLEDGE FLAG                                      */
sbit at SMB0CN ^ 2  ARBLOST; /* ARBITRATION LOST INDICATOR                            */
sbit at SMB0CN ^ 3    ACKRQ; /* ACKNOWLEDGE REQUEST                                   */
sbit at SMB0CN ^ 4      STO; /* STOP FLAG                                             */
sbit at SMB0CN ^ 5      STA; /* START FLAG                                            */
sbit at SMB0CN ^ 6   TXMODE; /* TRANSMIT MODE INDICATOR                               */
sbit at SMB0CN ^ 7   MASTER; /* MASTER/SLAVE INDICATOR                                */
#undef SMB0CN

#define TMR2CN 0xC8
sbit at TMR2CN ^ 0   T2XCLK; /* TIMER 2 EXTERNAL CLOCK SELECT                         */
/* bit 1 is unused                                                                    */
sbit at TMR2CN ^ 2      TR2; /* TIMER 2 ON/OFF CONTROL                                */
sbit at TMR2CN ^ 3  T2SPLIT; /* TIMER 2 SPLIT MODE ENABLE                             */
sbit at TMR2CN ^ 4    T2SOF; /* TIMER 2 START-OF-FRAME CAPTURE ENABLE                 */
sbit at TMR2CN ^ 5   TF2LEN; /* TIMER 2 LOW BYTE INTERRUPT ENABLE                     */
sbit at TMR2CN ^ 6     TF2L; /* TIMER 2 LOW BYTE OVERFLOW FLAG                        */
sbit at TMR2CN ^ 7     TF2H; /* TIMER 2 HIGH BYTE OVERFLOW FLAG                       */
#undef TMR2CN

#define PSW 0xD0
sbit at PSW ^ 0        P;    /* ACCUMULATOR PARITY FLAG                               */
sbit at PSW ^ 1       F1;    /* USER FLAG 1                                           */
sbit at PSW ^ 2       OV;    /* OVERFLOW FLAG                                         */
sbit at PSW ^ 3      RS0;    /* REGISTER BANK SELECT 0                                */
sbit at PSW ^ 4      RS1;    /* REGISTER BANK SELECT 1                                */
sbit at PSW ^ 5       F0;    /* USER FLAG 0                                           */
sbit at PSW ^ 6       AC;    /* AUXILIARY CARRY FLAG                                  */
sbit at PSW ^ 7       CY;    /* CARRY FLAG                                            */
#undef PSW

#define PCA0CN 0xD8
sbit at PCA0CN ^ 0     CCF0; /* PCA0 MODULE 0 CAPTURE/COMPARE FLAG                    */
sbit at PCA0CN ^ 1     CCF1; /* PCA0 MODULE 1 CAPTURE/COMPARE FLAG                    */
sbit at PCA0CN ^ 2     CCF2; /* PCA0 MODULE 2 CAPTURE/COMPARE FLAG                    */
sbit at PCA0CN ^ 3     CCF3; /* PCA0 MODULE 3 CAPTURE/COMPARE FLAG                    */
sbit at PCA0CN ^ 4     CCF4; /* PCA0 MODULE 4 CAPTURE/COMPARE FLAG                    */
/* bit 5 is unused                                                                    */
sbit at PCA0CN ^ 6       CR; /* PCA0 COUNTER RUN CONTROL                              */
sbit at PCA0CN ^ 7       CF; /* PCA0 COUNTER OVERFLOW FLAG                            */
#undef PCA0CN

#define ACC 0xE0
sbit at ACC ^ 0     ACC_0;   /* ACCUMULATOR, BIT 0                                    */
sbit at ACC ^ 1     ACC_1;   /* ACCUMULATOR, BIT 1                                    */
sbit at ACC ^ 2     ACC_2;   /* ACCUMULATOR, BIT 2                                    */
sbit at ACC ^ 3     ACC_3;   /* ACCUMULATOR, BIT 3                                    */
sbit at ACC ^ 4     ACC_4;   /* ACCUMULATOR, BIT 4                                    */
sbit at ACC ^ 5     ACC_5;   /* ACCUMULATOR, BIT 5                                    */
sbit at ACC ^ 6     ACC_6;   /* ACCUMULATOR, BIT 6                                    */
sbit at ACC ^ 7     ACC_7;   /* ACCUMULATOR, BIT 7                                    */
#undef ACC

#define ADC0CN 0xE8
sbit at ADC0CN ^ 0   AD0CM0; /* ADC0 CONVERSION MODE SELECT 0                         */
sbit at ADC0CN ^ 1   AD0CM1; /* ADC0 CONVERSION MODE SELECT 1                         */
sbit at ADC0CN ^ 2   AD0CM2; /* ADC0 CONVERSION MODE SELECT 2                         */
sbit at ADC0CN ^ 3  AD0WINT; /* ADC0 WINDOW COMPARE INTERRUPT FLAG                    */
sbit at ADC0CN ^ 4  AD0BUSY; /* ADC0 BUSY FLAG                                        */
sbit at ADC0CN ^ 5   AD0INT; /* ADC0 CONVERISION COMPLETE INTERRUPT FLAG              */
sbit at ADC0CN ^ 6    AD0TM; /* ADC0 TRACK MODE                                       */
sbit at ADC0CN ^ 7    AD0EN; /* ADC0 ENABLE                                           */
#undef ADC0CN

#define B 0xF0
sbit at B ^ 0          B_0;   /* B REGISTER, BIT 0                                    */
sbit at B ^ 1          B_1;   /* B REGISTER, BIT 1                                    */
sbit at B ^ 2          B_2;   /* B REGISTER, BIT 2                                    */
sbit at B ^ 3          B_3;   /* B REGISTER, BIT 3                                    */
sbit at B ^ 4          B_4;   /* B REGISTER, BIT 4                                    */
sbit at B ^ 5          B_5;   /* B REGISTER, BIT 5                                    */
sbit at B ^ 6          B_6;   /* B REGISTER, BIT 6                                    */
sbit at B ^ 7          B_7;   /* B REGISTER, BIT 7                                    */
#undef B

#define SPI0CN 0xF8
sbit at SPI0CN ^ 0    SPIEN; /* SPI 0 SPI ENABLE                                      */
sbit at SPI0CN ^ 1    TXBMT; /* SPI 0 TRANSMIT BUFFER EMPTY                           */
sbit at SPI0CN ^ 2   SLVSEL; /* SPI 0 SLAVE SELECT MODE 0                             */
sbit at SPI0CN ^ 3    TXBSY; /* SPI 0 SLAVE SELECT MODE 1                             */
sbit at SPI0CN ^ 4   RXOVRN; /* SPI 0 RX OVERRUN FLAG                                 */
sbit at SPI0CN ^ 5     MODF; /* SPI 0 MODE FAULT FLAG                                 */
sbit at SPI0CN ^ 6     WCOL; /* SPI 0 WRITE COLLISION FLAG                            */
sbit at SPI0CN ^ 7     SPIF; /* SPI 0 INTERRUPT FLAG                                  */
#undef SPI0CN



// BYTE type definition
#ifndef _BYTE_DEF_
#define _BYTE_DEF_
typedef unsigned char BYTE;
#endif   /* _BYTE_DEF_ */

// WORD type definition, for SDCC Compiler
#ifndef _WORD_DEF_
#define _WORD_DEF_ 
typedef union {unsigned int i; unsigned char c[2];} WORD;
#define LSB 0
#define MSB 1
#endif   /* _WORD_DEF_ */


// USB Core Registers
#define  BASE     0x00
#define  FADDR    BASE
#define  POWER    BASE + 0x01
#define  IN1INT   BASE + 0x02
#define  OUT1INT  BASE + 0x04
#define  CMINT    BASE + 0x06
#define  IN1IE    BASE + 0x07
#define  OUT1IE   BASE + 0x09
#define  CMIE     BASE + 0x0B
#define  FRAMEL   BASE + 0x0C
#define  FRAMEH   BASE + 0x0D
#define  INDEX    BASE + 0x0E
#define  CLKREC   BASE + 0x0F
#define  E0CSR    BASE + 0x11
#define  EINCSR1  BASE + 0x11
#define  EINCSR2  BASE + 0x12
#define  EOUTCSR1 BASE + 0x14
#define  EOUTCSR2 BASE + 0x15
#define  E0CNT    BASE + 0x16
#define  EOUTCNTL BASE + 0x16
#define  EOUTCNTH BASE + 0x17
#define  FIFO_EP0 BASE + 0x20
#define  FIFO_EP1 BASE + 0x21
#define  FIFO_EP2 BASE + 0x22
#define  FIFO_EP3 BASE + 0x23

// USB Core Register Bits

// POWER
#define  rbISOUD        0x80
#define  rbSPEED        0x40
#define  rbUSBRST       0x08
#define  rbRESUME       0x04
#define  rbSUSMD        0x02
#define  rbSUSEN        0x01

// IN1INT
#define  rbIN3          0x08
#define  rbIN2          0x04
#define  rbIN1          0x02
#define  rbEP0          0x01

// OUT1INT
#define  rbOUT3         0x08
#define  rbOUT2         0x04
#define  rbOUT1         0x02

// CMINT
#define  rbSOF          0x08
#define  rbRSTINT       0x04
#define  rbRSUINT       0x02
#define  rbSUSINT       0x01

// IN1IE
#define  rbIN3E         0x08
#define  rbIN2E         0x04
#define  rbIN1E         0x02
#define  rbEP0E         0x01

// OUT1IE
#define  rbOUT3E        0x08
#define  rbOUT2E        0x04
#define  rbOUT1E        0x02

// CMIE
#define  rbSOFE         0x08
#define  rbRSTINTE      0x04
#define  rbRSUINTE      0x02
#define  rbSUSINTE      0x01

// E0CSR
#define  rbSSUEND       0x80
#define  rbSOPRDY       0x40
#define  rbSDSTL        0x20
#define  rbSUEND        0x10
#define  rbDATAEND      0x08
#define  rbSTSTL        0x04
#define  rbINPRDY       0x02
#define  rbOPRDY        0x01

// EINCSR1
#define  rbInCLRDT      0x40
#define  rbInSTSTL      0x20
#define  rbInSDSTL      0x10
#define  rbInFLUSH      0x08
#define  rbInUNDRUN     0x04
#define  rbInFIFONE     0x02
#define  rbInINPRDY     0x01

// EINCSR2
#define  rbInDBIEN      0x80
#define  rbInISO        0x40
#define  rbInDIRSEL     0x20
#define  rbInFCDT       0x08
#define  rbInSPLIT      0x04

// EOUTCSR1
#define  rbOutCLRDT     0x80
#define  rbOutSTSTL     0x40
#define  rbOutSDSTL     0x20
#define  rbOutFLUSH     0x10
#define  rbOutDATERR    0x08
#define  rbOutOVRUN     0x04
#define  rbOutFIFOFUL   0x02
#define  rbOutOPRDY     0x01

// EOUTCSR2
#define  rbOutDBOEN     0x80
#define  rbOutISO       0x40

// Register read/write macros

// These first two macros do not poll for busy, and can be used to increase program speed where
// neccessary, but should never be used for successive reads or writes.
#define READ_BYTE(addr, target) USB0ADR = (0x80 | addr); while(USB0ADR & 0x80); target = USB0DAT
#define WRITE_BYTE(addr, data) USB0ADR = (addr); USB0DAT = data

// These two macros are polling versions of the above macros, and can be used for successive reads/
// writes without taking the chance that the Interface Engine is busy from the last register access.
#define POLL_READ_BYTE(addr, target)  { while(USB0ADR & 0x80); READ_BYTE(addr, target); }
#define POLL_WRITE_BYTE(addr, data)  { while(USB0ADR & 0x80); WRITE_BYTE(addr, data); }



//------------------------------------------
// Standard Device Descriptor Type Defintion
//------------------------------------------
typedef code struct
{
   BYTE bLength;                // Size of this Descriptor in Bytes
   BYTE bDescriptorType;        // Descriptor Type (=1)
   BYTE bcdUSB;
	BYTE bcdUSB2;                 // USB Spec Release Number in BCD
   BYTE bDeviceClass;           // Device Class Code
   BYTE bDeviceSubClass;        // Device Subclass Code
   BYTE bDeviceProtocol;        // Device Protocol Code
   BYTE bMaxPacketSize0;        // Maximum Packet Size for EP0
   BYTE idVendor;
	BYTE idVendor2;               // Vendor ID
   BYTE idProduct;
	BYTE idProduct2;              // Product ID
   BYTE bcdDevice;
	BYTE bcdDevice2;              // Device Release Number in BCD   
BYTE iManufacturer;          // Index of String Desc for Manufacturer
   BYTE iProduct;               // Index of String Desc for Product
   BYTE iSerialNumber;          // Index of String Desc for SerNo
   BYTE bNumConfigurations;     // Number of possible Configurations
} device_descriptor;            // End of Device Descriptor Type

//--------------------------------------------------
// Standard Configuration Descriptor Type Definition
//--------------------------------------------------
typedef code struct
{
   BYTE bLength;                // Size of this Descriptor in Bytes
   BYTE bDescriptorType;        // Descriptor Type (=2)
   BYTE bTotalLength1;           // Total Length of Data for this Conf
	BYTE bTotalLength2;
   BYTE bNumInterfaces;         // No of Interfaces supported by this Conf
   BYTE bConfigurationValue;    // Designator Value for *this* Configuration
   BYTE iConfiguration;         // Index of String Desc for this Conf
   BYTE bmAttributes;           // Configuration Characteristics (see below)
   BYTE bMaxPower;              // Max. Power Consumption in this Conf (*2mA)
} configuration_descriptor;     // End of Configuration Descriptor Type

//----------------------------------------------
// Standard Interface Descriptor Type Definition
//----------------------------------------------
typedef code struct
{
   BYTE bLength;                // Size of this Descriptor in Bytes
   BYTE bDescriptorType;        // Descriptor Type (=4)
   BYTE bInterfaceNumber;       // Number of *this* Interface (0..)
   BYTE bAlternateSetting;      // Alternative for this Interface (if any)
   BYTE bNumEndpoints;          // No of EPs used by this IF (excl. EP0)
   BYTE bInterfaceClass;        // Interface Class Code
   BYTE bInterfaceSubClass;     // Interface Subclass Code
   BYTE bInterfaceProtocol;     // Interface Protocol Code
   BYTE iInterface;             // Index of String Desc for this Interface
} interface_descriptor;         // End of Interface Descriptor Type

//---------------------------------------------
// Standard Endpoint Descriptor Type Definition
//---------------------------------------------
typedef code struct
{
   BYTE bLength;                // Size of this Descriptor in Bytes
   BYTE bDescriptorType;        // Descriptor Type (=5)
   BYTE bEndpointAddress;       // Endpoint Address (Number + Direction)
   BYTE bmAttributes;           // Endpoint Attributes (Transfer Type)
   BYTE wMaxPacketSize1;	        // Max. Endpoint Packet Size
   BYTE wMaxPacketSize2;	        // Max. Endpoint Packet Size
   BYTE bInterval;              // Polling Interval (Interrupt) ms
} endpoint_descriptor;          // End of Endpoint Descriptor Type


//-----------------------------
// Setup Packet Type Definition
//-----------------------------
typedef struct
{
   BYTE bmRequestType;          // Request recipient, type, and direction
   BYTE bRequest;               // Specific standard request number
   WORD wValue;                 // varies according to request
   WORD wIndex;                 // varies according to request
   WORD wLength;                // Number of bytes to transfer
} setup_buffer;                 // End of Setup Packet Type



// USB clock selections (SFR CLKSEL)
#define USB_4X_CLOCK             0x00        // Select 4x clock multiplier, for USB Full Speed
#define USB_INT_OSC_DIV_2        0x10        // See Data Sheet section 13. Oscillators
#define USB_EXT_OSC              0x20
#define USB_EXT_OSC_DIV_2        0x30
#define USB_EXT_OSC_DIV_3        0x40
#define USB_EXT_OSC_DIV_4        0x50


// Endpoint types
#define EP_TYPE_CONTROL                 0x00
#define EP_TYPE_ISOCHRONOUS             0x01
#define EP_TYPE_BULK                    0x02
#define EP_TYPE_INTERRUPT               0x03



// Define Endpoint Packet Sizes
#define  EP0_PACKET_SIZE         0x40        // This value can be 8,16,32,64 depending on device speed, see USB spec
#define  EP1_PACKET_SIZE         0x0040      // Can range 0 - 1024 depending on data and transfer type
#define  EP2_PACKET_SIZE         0x0080      // Can range 0 - 1024 depending on data and transfer type

// Standard Descriptor Types
#define  DSC_DEVICE              0x01        // Device Descriptor
#define  DSC_CONFIG              0x02        // Configuration Descriptor
#define  DSC_STRING              0x03        // String Descriptor
#define  DSC_INTERFACE           0x04        // Interface Descriptor
#define  DSC_ENDPOINT            0x05        // Endpoint Descriptor

// Standard Request Codes
#define  GET_STATUS              0x00        // Code for Get Status
#define  CLEAR_FEATURE           0x01        // Code for Clear Feature
#define  SET_FEATURE             0x03        // Code for Set Feature
#define  SET_ADDRESS             0x05        // Code for Set Address
#define  GET_DESCRIPTOR          0x06        // Code for Get Descriptor
#define  SET_DESCRIPTOR          0x07        // Code for Set Descriptor(not used)
#define  GET_CONFIGURATION       0x08        // Code for Get Configuration
#define  SET_CONFIGURATION       0x09        // Code for Set Configuration
#define  GET_INTERFACE           0x0A        // Code for Get Interface
#define  SET_INTERFACE           0x0B        // Code for Set Interface
#define  SYNCH_FRAME             0x0C        // Code for Synch Frame(not used)


// Define bmRequestType bitmaps
#define  IN_DEVICE               0x00        // Request made to device, direction is IN
#define  OUT_DEVICE              0x80        // Request made to device, direction is OUT
#define  IN_INTERFACE            0x01        // Request made to interface, direction is IN
#define  OUT_INTERFACE           0x81        // Request made to interface, direction is OUT
#define  IN_ENDPOINT             0x02        // Request made to endpoint, direction is IN
#define  OUT_ENDPOINT            0x82        // Request made to endpoint, direction is OUT

// Define wIndex bitmaps
#define  IN_EP1                  0x81        // Index values used by Set and Clear feature
#define  OUT_EP1                 0x01        // commands for Endpoint_Halt
#define  IN_EP2                  0x82
#define  OUT_EP2                 0x02
#define  IN_EP3                  0x83
#define  OUT_EP3                 0x03

// Define wValue bitmaps for Standard Feature Selectors
#define  DEVICE_REMOTE_WAKEUP    0x01        // Remote wakeup feature(not used)
#define  ENDPOINT_HALT           0x00        // Endpoint_Halt feature selector



extern const device_descriptor DeviceDesc ;
extern const configuration_descriptor ConfigDesc ;
extern const interface_descriptor InterfaceDesc ;
extern const endpoint_descriptor Endpoint1Desc;
extern const endpoint_descriptor Endpoint2Desc;
extern code const char * code const szaStringDescriptors[];

void Delay(unsigned int n);
void Fifo_Write(BYTE addr, unsigned int uNumBytes, BYTE * pData);
void Fifo_Read(BYTE addr, unsigned int uNumBytes, BYTE * pData);
void Force_Stall(void);


/* ACM Requests */
#define usbSEND_ENCAPSULATED_COMMAND		( 0x00 )
#define usbGET_ENCAPSULATED_RESPONSE		( 0x01 )
#define usbSET_LINE_CODING					( 0x20 )
#define usbGET_LINE_CODING					( 0x21 )
#define usbSET_CONTROL_LINE_STATE			( 0x22 )

/* Misc USB definitions. */
#define usbDEVICE_CLASS_VENDOR_SPECIFIC		( 0xFF )
#define usbBUS_POWERED						( 0x80 )
#define usbHID_REPORT_DESCRIPTOR			( 0x22 )
#define AT91C_UDP_TRANSCEIVER_ENABLE		( *( ( unsigned long * ) 0xfffb0074 ) )

/* Index to the various string. */
#define usbLANGUAGE_STRING					( 0 )
#define usbMANUFACTURER_STRING				( 1 )
#define usbPRODUCT_STRING					( 2 )
#define usbCONFIGURATION_STRING				( 3 )
#define usbINTERFACE_STRING					( 4 )

/* Defines fields of standard SETUP request.  Now in normal order. */
#define usbREQUEST_TYPE_INDEX				( 0 )
#define usbREQUEST_INDEX					( 1 )
#define usbVALUE_HIGH_BYTE					( 3 )
#define usbVALUE_LOW_BYTE					( 2 )
#define usbINDEX_HIGH_BYTE					( 5 )
#define usbINDEX_LOW_BYTE					( 4 )
#define usbLENGTH_HIGH_BYTE					( 7 )
#define usbLENGTH_LOW_BYTE					( 6 )

/* Misc application definitions. */
#define usbINTERRUPT_PRIORITY				( 3 )
#define usbQUEUE_LENGTH						( 0x3 )	/* Must have all bits set! */
#define usbFIFO_LENGTH						( ( unsigned portLONG ) 8 )
#define usbEND_POINT_0						( 0 )
#define usbEND_POINT_1						( 1 )
#define usbEND_POINT_2						( 2 )
#define usbEND_POINT_3						( 3 )
#define usbMAX_CONTROL_MESSAGE_SIZE			( 128 )
#define usbRX_COUNT_MASK					( ( unsigned portLONG ) 0x7ff )
#define AT91C_UDP_STALLSENT					AT91C_UDP_ISOERROR
#define usbSHORTEST_DELAY					( ( portTickType ) 1 )
#define usbINIT_DELAY						( ( portTickType ) 1000 / portTICK_RATE_MS )
#define usbSHORT_DELAY						( ( portTickType ) 50 / portTICK_RATE_MS )
#define usbEND_POINT_RESET_MASK				( ( unsigned portLONG ) 0x0f )
#define usbDATA_INC							( ( portCHAR ) 5 )
#define usbEXPECTED_NUMBER_OF_BYTES			( ( unsigned portLONG ) 8 )

/* Control request types. */
#define usbSTANDARD_DEVICE_REQUEST			( 0 )
#define usbSTANDARD_INTERFACE_REQUEST		( 1 )
#define usbSTANDARD_END_POINT_REQUEST		( 2 )
#define usbCLASS_INTERFACE_REQUEST			( 5 )



// Define device states
#define  DEV_ATTACHED            0x00        // Device is in Attached State
#define  DEV_POWERED             0x01        // Device is in Powered State
#define  DEV_DEFAULT             0x02        // Device is in Default State
#define  DEV_ADDRESS             0x03        // Device is in Addressed State
#define  DEV_CONFIGURED          0x04        // Device is in Configured State
#define  DEV_SUSPENDED           0x05        // Device is in Suspended State


// Define endpoint status values
#define  EP_IDLE           0
#define  EP_TX             1
#define  EP_ERROR          2
#define  EP_HALT         3
#define  EP_RX             4
#define  EP_STALL             5
#define  EP_ADDRESS             6
