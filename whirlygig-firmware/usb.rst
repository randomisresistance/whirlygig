                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Sat Jul 12 02:11:19 2014
                              5 ;--------------------------------------------------------
                              6 	.module usb
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ZERO_PACKET
                             13 	.globl _ONES_PACKET
                             14 	.globl _Usb_ISR
                             15 	.globl _Handle_EP_HALT
                             16 	.globl _SPIF
                             17 	.globl _WCOL
                             18 	.globl _MODF
                             19 	.globl _RXOVRN
                             20 	.globl _TXBSY
                             21 	.globl _SLVSEL
                             22 	.globl _TXBMT
                             23 	.globl _SPIEN
                             24 	.globl _B_7
                             25 	.globl _B_6
                             26 	.globl _B_5
                             27 	.globl _B_4
                             28 	.globl _B_3
                             29 	.globl _B_2
                             30 	.globl _B_1
                             31 	.globl _B_0
                             32 	.globl _AD0EN
                             33 	.globl _AD0TM
                             34 	.globl _AD0INT
                             35 	.globl _AD0BUSY
                             36 	.globl _AD0WINT
                             37 	.globl _AD0CM2
                             38 	.globl _AD0CM1
                             39 	.globl _AD0CM0
                             40 	.globl _ACC_7
                             41 	.globl _ACC_6
                             42 	.globl _ACC_5
                             43 	.globl _ACC_4
                             44 	.globl _ACC_3
                             45 	.globl _ACC_2
                             46 	.globl _ACC_1
                             47 	.globl _ACC_0
                             48 	.globl _CF
                             49 	.globl _CR
                             50 	.globl _CCF4
                             51 	.globl _CCF3
                             52 	.globl _CCF2
                             53 	.globl _CCF1
                             54 	.globl _CCF0
                             55 	.globl _CY
                             56 	.globl _AC
                             57 	.globl _F0
                             58 	.globl _RS1
                             59 	.globl _RS0
                             60 	.globl _OV
                             61 	.globl _F1
                             62 	.globl _P
                             63 	.globl _TF2H
                             64 	.globl _TF2L
                             65 	.globl _TF2LEN
                             66 	.globl _T2SOF
                             67 	.globl _T2SPLIT
                             68 	.globl _TR2
                             69 	.globl _T2XCLK
                             70 	.globl _MASTER
                             71 	.globl _TXMODE
                             72 	.globl _STA
                             73 	.globl _STO
                             74 	.globl _ACKRQ
                             75 	.globl _ARBLOST
                             76 	.globl _ACK
                             77 	.globl _SI
                             78 	.globl _PSPI0
                             79 	.globl _PT2
                             80 	.globl _PS0
                             81 	.globl _PT1
                             82 	.globl _PX1
                             83 	.globl _PT0
                             84 	.globl _PX0
                             85 	.globl _P3_7
                             86 	.globl _P3_6
                             87 	.globl _P3_5
                             88 	.globl _P3_4
                             89 	.globl _P3_3
                             90 	.globl _P3_2
                             91 	.globl _P3_1
                             92 	.globl _P3_0
                             93 	.globl _EA
                             94 	.globl _ESPI0
                             95 	.globl _ET2
                             96 	.globl _ES0
                             97 	.globl _ET1
                             98 	.globl _EX1
                             99 	.globl _ET0
                            100 	.globl _EX0
                            101 	.globl _P2_7
                            102 	.globl _P2_6
                            103 	.globl _P2_5
                            104 	.globl _P2_4
                            105 	.globl _P2_3
                            106 	.globl _P2_2
                            107 	.globl _P2_1
                            108 	.globl _P2_0
                            109 	.globl _S0MODE
                            110 	.globl _MCE0
                            111 	.globl _REN0
                            112 	.globl _TB80
                            113 	.globl _RB80
                            114 	.globl _TI0
                            115 	.globl _RI0
                            116 	.globl _P1_7
                            117 	.globl _P1_6
                            118 	.globl _P1_5
                            119 	.globl _P1_4
                            120 	.globl _P1_3
                            121 	.globl _P1_2
                            122 	.globl _P1_1
                            123 	.globl _P1_0
                            124 	.globl _TF1
                            125 	.globl _TR1
                            126 	.globl _TF0
                            127 	.globl _TR0
                            128 	.globl _IE1
                            129 	.globl _IT1
                            130 	.globl _IE0
                            131 	.globl _IT0
                            132 	.globl _P0_7
                            133 	.globl _P0_6
                            134 	.globl _P0_5
                            135 	.globl _P0_4
                            136 	.globl _P0_3
                            137 	.globl _P0_2
                            138 	.globl _P0_1
                            139 	.globl _P0_0
                            140 	.globl _VDM0CN
                            141 	.globl _PCA0CPH4
                            142 	.globl _PCA0CPL4
                            143 	.globl _PCA0CPH0
                            144 	.globl _PCA0CPL0
                            145 	.globl _PCA0H
                            146 	.globl _PCA0L
                            147 	.globl _SPI0CN
                            148 	.globl _EIP2
                            149 	.globl _EIP1
                            150 	.globl _P3MDIN
                            151 	.globl _P2MDIN
                            152 	.globl _P1MDIN
                            153 	.globl _P0MDIN
                            154 	.globl _B
                            155 	.globl _RSTSRC
                            156 	.globl _PCA0CPH3
                            157 	.globl _PCA0CPL3
                            158 	.globl _PCA0CPH2
                            159 	.globl _PCA0CPL2
                            160 	.globl _PCA0CPH1
                            161 	.globl _PCA0CPL1
                            162 	.globl _ADC0CN
                            163 	.globl _EIE2
                            164 	.globl _EIE1
                            165 	.globl _IT01CF
                            166 	.globl _XBR1
                            167 	.globl _XBR0
                            168 	.globl _ACC
                            169 	.globl _PCA0CPM4
                            170 	.globl _PCA0CPM3
                            171 	.globl _PCA0CPM2
                            172 	.globl _PCA0CPM1
                            173 	.globl _PCA0CPM0
                            174 	.globl _PCA0MD
                            175 	.globl _PCA0CN
                            176 	.globl _USB0XCN
                            177 	.globl _P2SKIP
                            178 	.globl _P1SKIP
                            179 	.globl _P0SKIP
                            180 	.globl _REF0CN
                            181 	.globl _PSW
                            182 	.globl _TMR2H
                            183 	.globl _TMR2L
                            184 	.globl _TMR2RLH
                            185 	.globl _TMR2RLL
                            186 	.globl _REG0CN
                            187 	.globl _TMR2CN
                            188 	.globl _ADC0LTH
                            189 	.globl _ADC0LTL
                            190 	.globl _ADC0GTH
                            191 	.globl _ADC0GTL
                            192 	.globl _SMB0DAT
                            193 	.globl _SMB0CF
                            194 	.globl _SMB0CN
                            195 	.globl _ADC0H
                            196 	.globl _ADC0L
                            197 	.globl _ADC0CF
                            198 	.globl _AMX0P
                            199 	.globl _AMX0N
                            200 	.globl _CLKMUL
                            201 	.globl _IP
                            202 	.globl _FLKEY
                            203 	.globl _FLSCL
                            204 	.globl _OSCICL
                            205 	.globl _OSCICN
                            206 	.globl _OSCXCN
                            207 	.globl _P3
                            208 	.globl _EMI0CN
                            209 	.globl _CLKSEL
                            210 	.globl _IE
                            211 	.globl _P3MDOUT
                            212 	.globl _P2MDOUT
                            213 	.globl _P1MDOUT
                            214 	.globl _P0MDOUT
                            215 	.globl _SPIODAT
                            216 	.globl _SPIDAT
                            217 	.globl _SPIOCKR
                            218 	.globl _SPICKR
                            219 	.globl _SPIOCFG
                            220 	.globl _SPICFG
                            221 	.globl _P2
                            222 	.globl _CPT0MX
                            223 	.globl _CPT1MX
                            224 	.globl _CPT0MD
                            225 	.globl _CPT1MD
                            226 	.globl _CPT0CN
                            227 	.globl _CPT1CN
                            228 	.globl _SBUF0
                            229 	.globl _SCON0
                            230 	.globl _USB0DAT
                            231 	.globl _USB0ADR
                            232 	.globl _TMR3H
                            233 	.globl _TMR3L
                            234 	.globl _TMR3RLH
                            235 	.globl _TMR3RLL
                            236 	.globl _TMR3CN
                            237 	.globl _P1
                            238 	.globl _PSCTL
                            239 	.globl _CKCON
                            240 	.globl _TH1
                            241 	.globl _TH0
                            242 	.globl _TL1
                            243 	.globl _TL0
                            244 	.globl _TMOD
                            245 	.globl _TCON
                            246 	.globl _PCON
                            247 	.globl _DPH
                            248 	.globl _DPL
                            249 	.globl _SP
                            250 	.globl _P0
                            251 	.globl _szBuffer
                            252 	.globl _Fifo_Write_PARM_3
                            253 	.globl _Fifo_Write_PARM_2
                            254 	.globl _Fifo_Read_PARM_3
                            255 	.globl _Fifo_Read_PARM_2
                            256 	.globl _Ep_Status
                            257 	.globl _DataPtr
                            258 	.globl _DataSent
                            259 	.globl _DataSize
                            260 	.globl _Setup
                            261 	.globl _USB_State
                            262 	.globl _Usb_Reset
                            263 	.globl _HandleOut
                            264 	.globl _Handle_In
                            265 	.globl _Usb_Resume
                            266 	.globl _Handle_Setup
                            267 	.globl _Usb_Suspend
                            268 	.globl _Fifo_Read
                            269 	.globl _Fifo_Write
                            270 	.globl _Force_Stall
                            271 	.globl _Get_Status
                            272 	.globl _Clear_Feature
                            273 	.globl _Set_Feature
                            274 	.globl _Set_Address
                            275 	.globl _Get_Descriptor
                            276 	.globl _Get_Configuration
                            277 	.globl _Set_Configuration
                            278 	.globl _Get_Interface
                            279 	.globl _Set_Interface
                            280 ;--------------------------------------------------------
                            281 ; special function registers
                            282 ;--------------------------------------------------------
                            283 	.area RSEG    (DATA)
                    0080    284 _P0	=	0x0080
                    0081    285 _SP	=	0x0081
                    0082    286 _DPL	=	0x0082
                    0083    287 _DPH	=	0x0083
                    0087    288 _PCON	=	0x0087
                    0088    289 _TCON	=	0x0088
                    0089    290 _TMOD	=	0x0089
                    008A    291 _TL0	=	0x008a
                    008B    292 _TL1	=	0x008b
                    008C    293 _TH0	=	0x008c
                    008D    294 _TH1	=	0x008d
                    008E    295 _CKCON	=	0x008e
                    008F    296 _PSCTL	=	0x008f
                    0090    297 _P1	=	0x0090
                    0091    298 _TMR3CN	=	0x0091
                    0092    299 _TMR3RLL	=	0x0092
                    0093    300 _TMR3RLH	=	0x0093
                    0094    301 _TMR3L	=	0x0094
                    0095    302 _TMR3H	=	0x0095
                    0096    303 _USB0ADR	=	0x0096
                    0097    304 _USB0DAT	=	0x0097
                    0098    305 _SCON0	=	0x0098
                    0099    306 _SBUF0	=	0x0099
                    009A    307 _CPT1CN	=	0x009a
                    009B    308 _CPT0CN	=	0x009b
                    009C    309 _CPT1MD	=	0x009c
                    009D    310 _CPT0MD	=	0x009d
                    009E    311 _CPT1MX	=	0x009e
                    009F    312 _CPT0MX	=	0x009f
                    00A0    313 _P2	=	0x00a0
                    00A1    314 _SPICFG	=	0x00a1
                    00A1    315 _SPIOCFG	=	0x00a1
                    00A2    316 _SPICKR	=	0x00a2
                    00A2    317 _SPIOCKR	=	0x00a2
                    00A3    318 _SPIDAT	=	0x00a3
                    00A3    319 _SPIODAT	=	0x00a3
                    00A4    320 _P0MDOUT	=	0x00a4
                    00A5    321 _P1MDOUT	=	0x00a5
                    00A6    322 _P2MDOUT	=	0x00a6
                    00A7    323 _P3MDOUT	=	0x00a7
                    00A8    324 _IE	=	0x00a8
                    00A9    325 _CLKSEL	=	0x00a9
                    00AA    326 _EMI0CN	=	0x00aa
                    00B0    327 _P3	=	0x00b0
                    00B1    328 _OSCXCN	=	0x00b1
                    00B2    329 _OSCICN	=	0x00b2
                    00B3    330 _OSCICL	=	0x00b3
                    00B6    331 _FLSCL	=	0x00b6
                    00B7    332 _FLKEY	=	0x00b7
                    00B8    333 _IP	=	0x00b8
                    00B9    334 _CLKMUL	=	0x00b9
                    00BA    335 _AMX0N	=	0x00ba
                    00BB    336 _AMX0P	=	0x00bb
                    00BC    337 _ADC0CF	=	0x00bc
                    00BD    338 _ADC0L	=	0x00bd
                    00BE    339 _ADC0H	=	0x00be
                    00C0    340 _SMB0CN	=	0x00c0
                    00C1    341 _SMB0CF	=	0x00c1
                    00C2    342 _SMB0DAT	=	0x00c2
                    00C3    343 _ADC0GTL	=	0x00c3
                    00C4    344 _ADC0GTH	=	0x00c4
                    00C5    345 _ADC0LTL	=	0x00c5
                    00C6    346 _ADC0LTH	=	0x00c6
                    00C8    347 _TMR2CN	=	0x00c8
                    00C9    348 _REG0CN	=	0x00c9
                    00CA    349 _TMR2RLL	=	0x00ca
                    00CB    350 _TMR2RLH	=	0x00cb
                    00CC    351 _TMR2L	=	0x00cc
                    00CD    352 _TMR2H	=	0x00cd
                    00D0    353 _PSW	=	0x00d0
                    00D1    354 _REF0CN	=	0x00d1
                    00D4    355 _P0SKIP	=	0x00d4
                    00D5    356 _P1SKIP	=	0x00d5
                    00D6    357 _P2SKIP	=	0x00d6
                    00D7    358 _USB0XCN	=	0x00d7
                    00D8    359 _PCA0CN	=	0x00d8
                    00D9    360 _PCA0MD	=	0x00d9
                    00DA    361 _PCA0CPM0	=	0x00da
                    00DB    362 _PCA0CPM1	=	0x00db
                    00DC    363 _PCA0CPM2	=	0x00dc
                    00DD    364 _PCA0CPM3	=	0x00dd
                    00DE    365 _PCA0CPM4	=	0x00de
                    00E0    366 _ACC	=	0x00e0
                    00E1    367 _XBR0	=	0x00e1
                    00E2    368 _XBR1	=	0x00e2
                    00E4    369 _IT01CF	=	0x00e4
                    00E6    370 _EIE1	=	0x00e6
                    00E7    371 _EIE2	=	0x00e7
                    00E8    372 _ADC0CN	=	0x00e8
                    00E9    373 _PCA0CPL1	=	0x00e9
                    00EA    374 _PCA0CPH1	=	0x00ea
                    00EB    375 _PCA0CPL2	=	0x00eb
                    00EC    376 _PCA0CPH2	=	0x00ec
                    00ED    377 _PCA0CPL3	=	0x00ed
                    00EE    378 _PCA0CPH3	=	0x00ee
                    00EF    379 _RSTSRC	=	0x00ef
                    00F0    380 _B	=	0x00f0
                    00F1    381 _P0MDIN	=	0x00f1
                    00F2    382 _P1MDIN	=	0x00f2
                    00F3    383 _P2MDIN	=	0x00f3
                    00F4    384 _P3MDIN	=	0x00f4
                    00F6    385 _EIP1	=	0x00f6
                    00F7    386 _EIP2	=	0x00f7
                    00F8    387 _SPI0CN	=	0x00f8
                    00F9    388 _PCA0L	=	0x00f9
                    00FA    389 _PCA0H	=	0x00fa
                    00FB    390 _PCA0CPL0	=	0x00fb
                    00FC    391 _PCA0CPH0	=	0x00fc
                    00FD    392 _PCA0CPL4	=	0x00fd
                    00FE    393 _PCA0CPH4	=	0x00fe
                    00FF    394 _VDM0CN	=	0x00ff
                            395 ;--------------------------------------------------------
                            396 ; special function bits
                            397 ;--------------------------------------------------------
                            398 	.area RSEG    (DATA)
                    0080    399 _P0_0	=	0x0080
                    0081    400 _P0_1	=	0x0081
                    0082    401 _P0_2	=	0x0082
                    0083    402 _P0_3	=	0x0083
                    0084    403 _P0_4	=	0x0084
                    0085    404 _P0_5	=	0x0085
                    0086    405 _P0_6	=	0x0086
                    0087    406 _P0_7	=	0x0087
                    0088    407 _IT0	=	0x0088
                    0089    408 _IE0	=	0x0089
                    008A    409 _IT1	=	0x008a
                    008B    410 _IE1	=	0x008b
                    008C    411 _TR0	=	0x008c
                    008D    412 _TF0	=	0x008d
                    008E    413 _TR1	=	0x008e
                    008F    414 _TF1	=	0x008f
                    0090    415 _P1_0	=	0x0090
                    0091    416 _P1_1	=	0x0091
                    0092    417 _P1_2	=	0x0092
                    0093    418 _P1_3	=	0x0093
                    0094    419 _P1_4	=	0x0094
                    0095    420 _P1_5	=	0x0095
                    0096    421 _P1_6	=	0x0096
                    0097    422 _P1_7	=	0x0097
                    0098    423 _RI0	=	0x0098
                    0099    424 _TI0	=	0x0099
                    009A    425 _RB80	=	0x009a
                    009B    426 _TB80	=	0x009b
                    009C    427 _REN0	=	0x009c
                    009D    428 _MCE0	=	0x009d
                    009F    429 _S0MODE	=	0x009f
                    00A0    430 _P2_0	=	0x00a0
                    00A1    431 _P2_1	=	0x00a1
                    00A2    432 _P2_2	=	0x00a2
                    00A3    433 _P2_3	=	0x00a3
                    00A4    434 _P2_4	=	0x00a4
                    00A5    435 _P2_5	=	0x00a5
                    00A6    436 _P2_6	=	0x00a6
                    00A7    437 _P2_7	=	0x00a7
                    00A8    438 _EX0	=	0x00a8
                    00A9    439 _ET0	=	0x00a9
                    00AA    440 _EX1	=	0x00aa
                    00AB    441 _ET1	=	0x00ab
                    00AC    442 _ES0	=	0x00ac
                    00AD    443 _ET2	=	0x00ad
                    00AE    444 _ESPI0	=	0x00ae
                    00AF    445 _EA	=	0x00af
                    00B0    446 _P3_0	=	0x00b0
                    00B1    447 _P3_1	=	0x00b1
                    00B2    448 _P3_2	=	0x00b2
                    00B3    449 _P3_3	=	0x00b3
                    00B4    450 _P3_4	=	0x00b4
                    00B5    451 _P3_5	=	0x00b5
                    00B6    452 _P3_6	=	0x00b6
                    00B7    453 _P3_7	=	0x00b7
                    00B8    454 _PX0	=	0x00b8
                    00B9    455 _PT0	=	0x00b9
                    00BA    456 _PX1	=	0x00ba
                    00BB    457 _PT1	=	0x00bb
                    00BC    458 _PS0	=	0x00bc
                    00BD    459 _PT2	=	0x00bd
                    00BE    460 _PSPI0	=	0x00be
                    00C0    461 _SI	=	0x00c0
                    00C1    462 _ACK	=	0x00c1
                    00C2    463 _ARBLOST	=	0x00c2
                    00C3    464 _ACKRQ	=	0x00c3
                    00C4    465 _STO	=	0x00c4
                    00C5    466 _STA	=	0x00c5
                    00C6    467 _TXMODE	=	0x00c6
                    00C7    468 _MASTER	=	0x00c7
                    00C8    469 _T2XCLK	=	0x00c8
                    00CA    470 _TR2	=	0x00ca
                    00CB    471 _T2SPLIT	=	0x00cb
                    00CC    472 _T2SOF	=	0x00cc
                    00CD    473 _TF2LEN	=	0x00cd
                    00CE    474 _TF2L	=	0x00ce
                    00CF    475 _TF2H	=	0x00cf
                    00D0    476 _P	=	0x00d0
                    00D1    477 _F1	=	0x00d1
                    00D2    478 _OV	=	0x00d2
                    00D3    479 _RS0	=	0x00d3
                    00D4    480 _RS1	=	0x00d4
                    00D5    481 _F0	=	0x00d5
                    00D6    482 _AC	=	0x00d6
                    00D7    483 _CY	=	0x00d7
                    00D8    484 _CCF0	=	0x00d8
                    00D9    485 _CCF1	=	0x00d9
                    00DA    486 _CCF2	=	0x00da
                    00DB    487 _CCF3	=	0x00db
                    00DC    488 _CCF4	=	0x00dc
                    00DE    489 _CR	=	0x00de
                    00DF    490 _CF	=	0x00df
                    00E0    491 _ACC_0	=	0x00e0
                    00E1    492 _ACC_1	=	0x00e1
                    00E2    493 _ACC_2	=	0x00e2
                    00E3    494 _ACC_3	=	0x00e3
                    00E4    495 _ACC_4	=	0x00e4
                    00E5    496 _ACC_5	=	0x00e5
                    00E6    497 _ACC_6	=	0x00e6
                    00E7    498 _ACC_7	=	0x00e7
                    00E8    499 _AD0CM0	=	0x00e8
                    00E9    500 _AD0CM1	=	0x00e9
                    00EA    501 _AD0CM2	=	0x00ea
                    00EB    502 _AD0WINT	=	0x00eb
                    00EC    503 _AD0BUSY	=	0x00ec
                    00ED    504 _AD0INT	=	0x00ed
                    00EE    505 _AD0TM	=	0x00ee
                    00EF    506 _AD0EN	=	0x00ef
                    00F0    507 _B_0	=	0x00f0
                    00F1    508 _B_1	=	0x00f1
                    00F2    509 _B_2	=	0x00f2
                    00F3    510 _B_3	=	0x00f3
                    00F4    511 _B_4	=	0x00f4
                    00F5    512 _B_5	=	0x00f5
                    00F6    513 _B_6	=	0x00f6
                    00F7    514 _B_7	=	0x00f7
                    00F8    515 _SPIEN	=	0x00f8
                    00F9    516 _TXBMT	=	0x00f9
                    00FA    517 _SLVSEL	=	0x00fa
                    00FB    518 _TXBSY	=	0x00fb
                    00FC    519 _RXOVRN	=	0x00fc
                    00FD    520 _MODF	=	0x00fd
                    00FE    521 _WCOL	=	0x00fe
                    00FF    522 _SPIF	=	0x00ff
                            523 ;--------------------------------------------------------
                            524 ; overlayable register banks
                            525 ;--------------------------------------------------------
                            526 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     527 	.ds 8
                            528 ;--------------------------------------------------------
                            529 ; overlayable bit register bank
                            530 ;--------------------------------------------------------
                            531 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     532 bits:
   0020                     533 	.ds 1
                    8000    534 	b0 = bits[0]
                    8100    535 	b1 = bits[1]
                    8200    536 	b2 = bits[2]
                    8300    537 	b3 = bits[3]
                    8400    538 	b4 = bits[4]
                    8500    539 	b5 = bits[5]
                    8600    540 	b6 = bits[6]
                    8700    541 	b7 = bits[7]
                            542 ;--------------------------------------------------------
                            543 ; internal ram data
                            544 ;--------------------------------------------------------
                            545 	.area DSEG    (DATA)
   0021                     546 _USB_State::
   0021                     547 	.ds 1
   0022                     548 _Setup::
   0022                     549 	.ds 8
   002A                     550 _DataSize::
   002A                     551 	.ds 2
   002C                     552 _DataSent::
   002C                     553 	.ds 2
   002E                     554 _DataPtr::
   002E                     555 	.ds 3
   0031                     556 _Ep_Status::
   0031                     557 	.ds 4
   0035                     558 _Fifo_Read_PARM_2:
   0035                     559 	.ds 2
   0037                     560 _Fifo_Read_PARM_3:
   0037                     561 	.ds 3
   003A                     562 _Fifo_Write_PARM_2:
   003A                     563 	.ds 2
   003C                     564 _Fifo_Write_PARM_3:
   003C                     565 	.ds 3
   003F                     566 _Get_Descriptor_n1_3_3:
   003F                     567 	.ds 2
                            568 ;--------------------------------------------------------
                            569 ; overlayable items in internal ram 
                            570 ;--------------------------------------------------------
                            571 	.area OSEG    (OVR,DATA)
                            572 ;--------------------------------------------------------
                            573 ; indirectly addressable internal ram data
                            574 ;--------------------------------------------------------
                            575 	.area ISEG    (DATA)
                            576 ;--------------------------------------------------------
                            577 ; absolute internal ram data
                            578 ;--------------------------------------------------------
                            579 	.area IABS    (ABS,DATA)
                            580 	.area IABS    (ABS,DATA)
                            581 ;--------------------------------------------------------
                            582 ; bit data
                            583 ;--------------------------------------------------------
                            584 	.area BSEG    (BIT)
                            585 ;--------------------------------------------------------
                            586 ; paged external ram data
                            587 ;--------------------------------------------------------
                            588 	.area PSEG    (PAG,XDATA)
                            589 ;--------------------------------------------------------
                            590 ; external ram data
                            591 ;--------------------------------------------------------
                            592 	.area XSEG    (XDATA)
   0060                     593 _szBuffer::
   0060                     594 	.ds 60
                            595 ;--------------------------------------------------------
                            596 ; absolute external ram data
                            597 ;--------------------------------------------------------
                            598 	.area XABS    (ABS,XDATA)
                            599 ;--------------------------------------------------------
                            600 ; external initialized ram data
                            601 ;--------------------------------------------------------
                            602 	.area XISEG   (XDATA)
                            603 	.area HOME    (CODE)
                            604 	.area GSINIT0 (CODE)
                            605 	.area GSINIT1 (CODE)
                            606 	.area GSINIT2 (CODE)
                            607 	.area GSINIT3 (CODE)
                            608 	.area GSINIT4 (CODE)
                            609 	.area GSINIT5 (CODE)
                            610 	.area GSINIT  (CODE)
                            611 	.area GSFINAL (CODE)
                            612 	.area CSEG    (CODE)
                            613 ;--------------------------------------------------------
                            614 ; global & static initialisations
                            615 ;--------------------------------------------------------
                            616 	.area HOME    (CODE)
                            617 	.area GSINIT  (CODE)
                            618 	.area GSFINAL (CODE)
                            619 	.area GSINIT  (CODE)
                            620 ;	usb.c:27: BYTE Ep_Status[4] = {EP_IDLE, EP_IDLE, EP_IDLE, EP_IDLE};
   00C5 75 31 00            621 	mov	_Ep_Status,#0x00
   00C8 75 32 00            622 	mov	(_Ep_Status + 0x0001),#0x00
   00CB 75 33 00            623 	mov	(_Ep_Status + 0x0002),#0x00
   00CE 75 34 00            624 	mov	(_Ep_Status + 0x0003),#0x00
                            625 ;--------------------------------------------------------
                            626 ; Home
                            627 ;--------------------------------------------------------
                            628 	.area HOME    (CODE)
                            629 	.area HOME    (CODE)
                            630 ;--------------------------------------------------------
                            631 ; code
                            632 ;--------------------------------------------------------
                            633 	.area CSEG    (CODE)
                            634 ;------------------------------------------------------------
                            635 ;Allocation info for local variables in function 'Usb_Reset'
                            636 ;------------------------------------------------------------
                            637 ;------------------------------------------------------------
                            638 ;	usb.c:73: void Usb_Reset(void)
                            639 ;	-----------------------------------------
                            640 ;	 function Usb_Reset
                            641 ;	-----------------------------------------
   06A9                     642 _Usb_Reset:
                    0002    643 	ar2 = 0x02
                    0003    644 	ar3 = 0x03
                    0004    645 	ar4 = 0x04
                    0005    646 	ar5 = 0x05
                    0006    647 	ar6 = 0x06
                    0007    648 	ar7 = 0x07
                    0000    649 	ar0 = 0x00
                    0001    650 	ar1 = 0x01
                            651 ;	usb.c:75: USB_State = DEV_DEFAULT;             // Set device state to default
   06A9 75 21 02            652 	mov	_USB_State,#0x02
                            653 ;	usb.c:76: POLL_WRITE_BYTE(CMIE,	0x0D);  // SOF, reset, suspend
   06AC                     654 00101$:
   06AC E5 96               655 	mov	a,_USB0ADR
   06AE 20 E7 FB            656 	jb	acc.7,00101$
   06B1 75 96 0B            657 	mov	_USB0ADR,#0x0B
   06B4 75 97 0D            658 	mov	_USB0DAT,#0x0D
                            659 ;	usb.c:78: POLL_WRITE_BYTE(POWER, 0x01);        // Clear usb inhibit bit to enable USB
   06B7                     660 00104$:
   06B7 E5 96               661 	mov	a,_USB0ADR
   06B9 20 E7 FB            662 	jb	acc.7,00104$
   06BC 75 96 01            663 	mov	_USB0ADR,#0x01
   06BF 75 97 01            664 	mov	_USB0DAT,#0x01
                            665 ;	usb.c:81: Ep_Status[0] = EP_IDLE;              // Set default Endpoint Status
   06C2 75 31 00            666 	mov	_Ep_Status,#0x00
                            667 ;	usb.c:82: Ep_Status[1] = EP_HALT;
   06C5 75 32 03            668 	mov	(_Ep_Status + 0x0001),#0x03
                            669 ;	usb.c:83: Ep_Status[2] = EP_HALT;
   06C8 75 33 03            670 	mov	(_Ep_Status + 0x0002),#0x03
   06CB 22                  671 	ret
                            672 ;------------------------------------------------------------
                            673 ;Allocation info for local variables in function 'Handle_EP_HALT'
                            674 ;------------------------------------------------------------
                            675 ;ControlReg                Allocated to registers r2 
                            676 ;------------------------------------------------------------
                            677 ;	usb.c:86: void Handle_EP_HALT(void)
                            678 ;	-----------------------------------------
                            679 ;	 function Handle_EP_HALT
                            680 ;	-----------------------------------------
   06CC                     681 _Handle_EP_HALT:
                            682 ;	usb.c:91: POLL_WRITE_BYTE(INDEX, 1);				// Set index to endpoint 1 registers
   06CC                     683 00101$:
   06CC E5 96               684 	mov	a,_USB0ADR
   06CE 20 E7 FB            685 	jb	acc.7,00101$
   06D1 75 96 0E            686 	mov	_USB0ADR,#0x0E
   06D4 75 97 01            687 	mov	_USB0DAT,#0x01
                            688 ;	usb.c:92: POLL_READ_BYTE(EINCSR1, ControlReg);	// Read contol register for EP
   06D7                     689 00104$:
   06D7 E5 96               690 	mov	a,_USB0ADR
   06D9 20 E7 FB            691 	jb	acc.7,00104$
   06DC 75 96 91            692 	mov	_USB0ADR,#0x91
   06DF                     693 00107$:
   06DF E5 96               694 	mov	a,_USB0ADR
   06E1 20 E7 FB            695 	jb	acc.7,00107$
   06E4 AA 97               696 	mov	r2,_USB0DAT
                            697 ;	usb.c:93: if (Ep_Status[1] == EP_HALT)				// If endpoint is currently halted, send a stall
   06E6 74 03               698 	mov	a,#0x03
   06E8 B5 32 0C            699 	cjne	a,(_Ep_Status + 0x0001),00119$
                            700 ;	usb.c:94: POLL_WRITE_BYTE(EINCSR1, rbInSDSTL)
   06EB                     701 00110$:
   06EB E5 96               702 	mov	a,_USB0ADR
   06ED 20 E7 FB            703 	jb	acc.7,00110$
   06F0 75 96 11            704 	mov	_USB0ADR,#0x11
   06F3 75 97 10            705 	mov	_USB0DAT,#0x10
   06F6 22                  706 	ret
   06F7                     707 00119$:
                            708 ;	usb.c:96: if (ControlReg & rbInSTSTL)			// Clear sent stall if last packet returned a stall
   06F7 EA                  709 	mov	a,r2
   06F8 30 E5 0B            710 	jnb	acc.5,00121$
                            711 ;	usb.c:97: POLL_WRITE_BYTE(EINCSR1, 0);
   06FB                     712 00113$:
   06FB E5 96               713 	mov	a,_USB0ADR
   06FD 20 E7 FB            714 	jb	acc.7,00113$
   0700 75 96 11            715 	mov	_USB0ADR,#0x11
   0703 75 97 00            716 	mov	_USB0DAT,#0x00
   0706                     717 00121$:
   0706 22                  718 	ret
                            719 ;------------------------------------------------------------
                            720 ;Allocation info for local variables in function 'Usb_ISR'
                            721 ;------------------------------------------------------------
                            722 ;bCommon                   Allocated to registers r3 
                            723 ;bIn                       Allocated to registers r4 
                            724 ;bOut                      Allocated to registers r5 
                            725 ;bIndex                    Allocated to registers r2 
                            726 ;------------------------------------------------------------
                            727 ;	usb.c:106: void Usb_ISR(void) interrupt 8         // Top-level USB ISR
                            728 ;	-----------------------------------------
                            729 ;	 function Usb_ISR
                            730 ;	-----------------------------------------
   0707                     731 _Usb_ISR:
   0707 C0 20               732 	push	bits
   0709 C0 E0               733 	push	acc
   070B C0 F0               734 	push	b
   070D C0 82               735 	push	dpl
   070F C0 83               736 	push	dph
   0711 C0 02               737 	push	(0+2)
   0713 C0 03               738 	push	(0+3)
   0715 C0 04               739 	push	(0+4)
   0717 C0 05               740 	push	(0+5)
   0719 C0 06               741 	push	(0+6)
   071B C0 07               742 	push	(0+7)
   071D C0 00               743 	push	(0+0)
   071F C0 01               744 	push	(0+1)
   0721 C0 D0               745 	push	psw
   0723 75 D0 00            746 	mov	psw,#0x00
                            747 ;	usb.c:109: POLL_READ_BYTE(INDEX, bIndex);
   0726                     748 00101$:
   0726 E5 96               749 	mov	a,_USB0ADR
   0728 20 E7 FB            750 	jb	acc.7,00101$
   072B 75 96 8E            751 	mov	_USB0ADR,#0x8E
   072E                     752 00104$:
   072E E5 96               753 	mov	a,_USB0ADR
   0730 20 E7 FB            754 	jb	acc.7,00104$
   0733 AA 97               755 	mov	r2,_USB0DAT
                            756 ;	usb.c:111: POLL_READ_BYTE(CMINT, bCommon);      // Read all interrupt registers
   0735                     757 00107$:
   0735 E5 96               758 	mov	a,_USB0ADR
   0737 20 E7 FB            759 	jb	acc.7,00107$
   073A 75 96 86            760 	mov	_USB0ADR,#0x86
   073D                     761 00110$:
   073D E5 96               762 	mov	a,_USB0ADR
   073F 20 E7 FB            763 	jb	acc.7,00110$
   0742 AB 97               764 	mov	r3,_USB0DAT
                            765 ;	usb.c:112: POLL_READ_BYTE(IN1INT, bIn);         // this read also clears the register
   0744                     766 00113$:
   0744 E5 96               767 	mov	a,_USB0ADR
   0746 20 E7 FB            768 	jb	acc.7,00113$
   0749 75 96 82            769 	mov	_USB0ADR,#0x82
   074C                     770 00116$:
   074C E5 96               771 	mov	a,_USB0ADR
   074E 20 E7 FB            772 	jb	acc.7,00116$
   0751 AC 97               773 	mov	r4,_USB0DAT
                            774 ;	usb.c:113: POLL_READ_BYTE(OUT1INT, bOut);
   0753                     775 00119$:
   0753 E5 96               776 	mov	a,_USB0ADR
   0755 20 E7 FB            777 	jb	acc.7,00119$
   0758 75 96 84            778 	mov	_USB0ADR,#0x84
   075B                     779 00122$:
   075B E5 96               780 	mov	a,_USB0ADR
   075D 20 E7 FB            781 	jb	acc.7,00122$
   0760 AD 97               782 	mov	r5,_USB0DAT
                            783 ;	usb.c:115: if (bCommon & rbRSUINT)           // Handle Resume interrupt
   0762 EB                  784 	mov	a,r3
   0763 30 E1 13            785 	jnb	acc.1,00126$
                            786 ;	usb.c:116: Usb_Resume();
   0766 C0 02               787 	push	ar2
   0768 C0 03               788 	push	ar3
   076A C0 04               789 	push	ar4
   076C C0 05               790 	push	ar5
   076E 12 09 3D            791 	lcall	_Usb_Resume
   0771 D0 05               792 	pop	ar5
   0773 D0 04               793 	pop	ar4
   0775 D0 03               794 	pop	ar3
   0777 D0 02               795 	pop	ar2
   0779                     796 00126$:
                            797 ;	usb.c:118: if (bCommon & rbRSTINT)           // Handle Reset interrupt
   0779 EB                  798 	mov	a,r3
   077A 30 E2 13            799 	jnb	acc.2,00128$
                            800 ;	usb.c:119: Usb_Reset();
   077D C0 02               801 	push	ar2
   077F C0 03               802 	push	ar3
   0781 C0 04               803 	push	ar4
   0783 C0 05               804 	push	ar5
   0785 12 06 A9            805 	lcall	_Usb_Reset
   0788 D0 05               806 	pop	ar5
   078A D0 04               807 	pop	ar4
   078C D0 03               808 	pop	ar3
   078E D0 02               809 	pop	ar2
   0790                     810 00128$:
                            811 ;	usb.c:122: if (bIn & 1)
   0790 EC                  812 	mov	a,r4
   0791 30 E0 13            813 	jnb	acc.0,00130$
                            814 ;	usb.c:123: Handle_Setup();
   0794 C0 02               815 	push	ar2
   0796 C0 03               816 	push	ar3
   0798 C0 04               817 	push	ar4
   079A C0 05               818 	push	ar5
   079C 12 09 3E            819 	lcall	_Handle_Setup
   079F D0 05               820 	pop	ar5
   07A1 D0 04               821 	pop	ar4
   07A3 D0 03               822 	pop	ar3
   07A5 D0 02               823 	pop	ar2
   07A7                     824 00130$:
                            825 ;	usb.c:125: if (bCommon & rbSOF) {  // SOF interrupt
   07A7 EB                  826 	mov	a,r3
   07A8 30 E3 13            827 	jnb	acc.3,00132$
                            828 ;	usb.c:126: Handle_EP_HALT();
   07AB C0 02               829 	push	ar2
   07AD C0 03               830 	push	ar3
   07AF C0 04               831 	push	ar4
   07B1 C0 05               832 	push	ar5
   07B3 12 06 CC            833 	lcall	_Handle_EP_HALT
   07B6 D0 05               834 	pop	ar5
   07B8 D0 04               835 	pop	ar4
   07BA D0 03               836 	pop	ar3
   07BC D0 02               837 	pop	ar2
   07BE                     838 00132$:
                            839 ;	usb.c:131: if (bIn & 2)
   07BE EC                  840 	mov	a,r4
   07BF 30 E1 16            841 	jnb	acc.1,00134$
                            842 ;	usb.c:132: Handle_In(1);
   07C2 75 82 01            843 	mov	dpl,#0x01
   07C5 C0 02               844 	push	ar2
   07C7 C0 03               845 	push	ar3
   07C9 C0 04               846 	push	ar4
   07CB C0 05               847 	push	ar5
   07CD 12 08 EA            848 	lcall	_Handle_In
   07D0 D0 05               849 	pop	ar5
   07D2 D0 04               850 	pop	ar4
   07D4 D0 03               851 	pop	ar3
   07D6 D0 02               852 	pop	ar2
   07D8                     853 00134$:
                            854 ;	usb.c:134: if (bIn & 4)
   07D8 EC                  855 	mov	a,r4
   07D9 30 E2 16            856 	jnb	acc.2,00136$
                            857 ;	usb.c:135: Handle_In(2);
   07DC 75 82 02            858 	mov	dpl,#0x02
   07DF C0 02               859 	push	ar2
   07E1 C0 03               860 	push	ar3
   07E3 C0 04               861 	push	ar4
   07E5 C0 05               862 	push	ar5
   07E7 12 08 EA            863 	lcall	_Handle_In
   07EA D0 05               864 	pop	ar5
   07EC D0 04               865 	pop	ar4
   07EE D0 03               866 	pop	ar3
   07F0 D0 02               867 	pop	ar2
   07F2                     868 00136$:
                            869 ;	usb.c:136: if (bIn & 8)
   07F2 EC                  870 	mov	a,r4
   07F3 30 E3 12            871 	jnb	acc.3,00138$
                            872 ;	usb.c:137: Handle_In(3);
   07F6 75 82 03            873 	mov	dpl,#0x03
   07F9 C0 02               874 	push	ar2
   07FB C0 03               875 	push	ar3
   07FD C0 05               876 	push	ar5
   07FF 12 08 EA            877 	lcall	_Handle_In
   0802 D0 05               878 	pop	ar5
   0804 D0 03               879 	pop	ar3
   0806 D0 02               880 	pop	ar2
   0808                     881 00138$:
                            882 ;	usb.c:139: if (bOut & 2)
   0808 ED                  883 	mov	a,r5
   0809 30 E1 12            884 	jnb	acc.1,00140$
                            885 ;	usb.c:140: HandleOut(1);
   080C 75 82 01            886 	mov	dpl,#0x01
   080F C0 02               887 	push	ar2
   0811 C0 03               888 	push	ar3
   0813 C0 05               889 	push	ar5
   0815 12 08 7B            890 	lcall	_HandleOut
   0818 D0 05               891 	pop	ar5
   081A D0 03               892 	pop	ar3
   081C D0 02               893 	pop	ar2
   081E                     894 00140$:
                            895 ;	usb.c:141: if (bOut & 4)
   081E ED                  896 	mov	a,r5
   081F 30 E2 12            897 	jnb	acc.2,00142$
                            898 ;	usb.c:142: HandleOut(2);
   0822 75 82 02            899 	mov	dpl,#0x02
   0825 C0 02               900 	push	ar2
   0827 C0 03               901 	push	ar3
   0829 C0 05               902 	push	ar5
   082B 12 08 7B            903 	lcall	_HandleOut
   082E D0 05               904 	pop	ar5
   0830 D0 03               905 	pop	ar3
   0832 D0 02               906 	pop	ar2
   0834                     907 00142$:
                            908 ;	usb.c:143: if (bOut & 8)
   0834 ED                  909 	mov	a,r5
   0835 30 E3 0E            910 	jnb	acc.3,00144$
                            911 ;	usb.c:144: HandleOut(3);
   0838 75 82 03            912 	mov	dpl,#0x03
   083B C0 02               913 	push	ar2
   083D C0 03               914 	push	ar3
   083F 12 08 7B            915 	lcall	_HandleOut
   0842 D0 03               916 	pop	ar3
   0844 D0 02               917 	pop	ar2
   0846                     918 00144$:
                            919 ;	usb.c:146: if (bCommon & rbSUSINT)          // Handle Suspend interrupt
   0846 EB                  920 	mov	a,r3
   0847 30 E0 07            921 	jnb	acc.0,00147$
                            922 ;	usb.c:147: Usb_Suspend();
   084A C0 02               923 	push	ar2
   084C 12 0A EA            924 	lcall	_Usb_Suspend
   084F D0 02               925 	pop	ar2
                            926 ;	usb.c:149: POLL_WRITE_BYTE(INDEX, bIndex);
   0851                     927 00147$:
   0851 E5 96               928 	mov	a,_USB0ADR
   0853 20 E7 FB            929 	jb	acc.7,00147$
   0856 75 96 0E            930 	mov	_USB0ADR,#0x0E
   0859 8A 97               931 	mov	_USB0DAT,r2
                            932 ;	usb.c:150: USB0ADR = FIFO_EP0 + 2;
   085B 75 96 22            933 	mov	_USB0ADR,#0x22
   085E D0 D0               934 	pop	psw
   0860 D0 01               935 	pop	(0+1)
   0862 D0 00               936 	pop	(0+0)
   0864 D0 07               937 	pop	(0+7)
   0866 D0 06               938 	pop	(0+6)
   0868 D0 05               939 	pop	(0+5)
   086A D0 04               940 	pop	(0+4)
   086C D0 03               941 	pop	(0+3)
   086E D0 02               942 	pop	(0+2)
   0870 D0 83               943 	pop	dph
   0872 D0 82               944 	pop	dpl
   0874 D0 F0               945 	pop	b
   0876 D0 E0               946 	pop	acc
   0878 D0 20               947 	pop	bits
   087A 32                  948 	reti
                            949 ;------------------------------------------------------------
                            950 ;Allocation info for local variables in function 'HandleOut'
                            951 ;------------------------------------------------------------
                            952 ;n                         Allocated to registers r2 
                            953 ;Count                     Allocated to registers r3 
                            954 ;ControlReg                Allocated to registers r3 
                            955 ;------------------------------------------------------------
                            956 ;	usb.c:154: void HandleOut(BYTE n) {
                            957 ;	-----------------------------------------
                            958 ;	 function HandleOut
                            959 ;	-----------------------------------------
   087B                     960 _HandleOut:
   087B AA 82               961 	mov	r2,dpl
                            962 ;	usb.c:158: POLL_WRITE_BYTE(INDEX, n);           // Set index to endpoint 2 registers
   087D                     963 00101$:
   087D E5 96               964 	mov	a,_USB0ADR
   087F 20 E7 FB            965 	jb	acc.7,00101$
   0882 75 96 0E            966 	mov	_USB0ADR,#0x0E
   0885 8A 97               967 	mov	_USB0DAT,r2
                            968 ;	usb.c:159: POLL_READ_BYTE(EOUTCSR1, ControlReg);
   0887                     969 00104$:
   0887 E5 96               970 	mov	a,_USB0ADR
   0889 20 E7 FB            971 	jb	acc.7,00104$
   088C 75 96 94            972 	mov	_USB0ADR,#0x94
   088F                     973 00107$:
   088F E5 96               974 	mov	a,_USB0ADR
   0891 20 E7 FB            975 	jb	acc.7,00107$
   0894 AB 97               976 	mov	r3,_USB0DAT
                            977 ;	usb.c:161: if (Ep_Status[n] == EP_HALT)  {       // If endpoint is halted, send a stall
   0896 EA                  978 	mov	a,r2
   0897 24 31               979 	add	a,#_Ep_Status
   0899 F8                  980 	mov	r0,a
   089A 86 04               981 	mov	ar4,@r0
   089C BC 03 0C            982 	cjne	r4,#0x03,00114$
                            983 ;	usb.c:162: POLL_WRITE_BYTE(EOUTCSR1, rbOutSDSTL);
   089F                     984 00110$:
   089F E5 96               985 	mov	a,_USB0ADR
   08A1 20 E7 FB            986 	jb	acc.7,00110$
   08A4 75 96 14            987 	mov	_USB0ADR,#0x14
   08A7 75 97 20            988 	mov	_USB0DAT,#0x20
                            989 ;	usb.c:163: return;
   08AA 22                  990 	ret
   08AB                     991 00114$:
                            992 ;	usb.c:166: if (ControlReg & rbOutSTSTL)     // Clear sent stall bit if last packet was a stall
   08AB EB                  993 	mov	a,r3
   08AC 30 E6 0B            994 	jnb	acc.6,00120$
                            995 ;	usb.c:167: POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);
   08AF                     996 00115$:
   08AF E5 96               997 	mov	a,_USB0ADR
   08B1 20 E7 FB            998 	jb	acc.7,00115$
   08B4 75 96 14            999 	mov	_USB0ADR,#0x14
   08B7 75 97 80           1000 	mov	_USB0DAT,#0x80
                           1001 ;	usb.c:169: POLL_READ_BYTE(EOUTCNTL, Count);
   08BA                    1002 00120$:
   08BA E5 96              1003 	mov	a,_USB0ADR
   08BC 20 E7 FB           1004 	jb	acc.7,00120$
   08BF 75 96 96           1005 	mov	_USB0ADR,#0x96
   08C2                    1006 00123$:
   08C2 E5 96              1007 	mov	a,_USB0ADR
   08C4 20 E7 FB           1008 	jb	acc.7,00123$
                           1009 ;	usb.c:171: if (Count == 0)    // If host did not send correct packet size, flush buffer
   08C7 E5 97              1010 	mov	a,_USB0DAT
   08C9 FB                 1011 	mov	r3,a
   08CA 70 0D              1012 	jnz	00130$
                           1013 ;	usb.c:172: POLL_WRITE_BYTE(EOUTCNTL, rbOutFLUSH)
   08CC                    1014 00126$:
   08CC E5 96              1015 	mov	a,_USB0ADR
   08CE 20 E7 FB           1016 	jb	acc.7,00126$
   08D1 75 96 16           1017 	mov	_USB0ADR,#0x16
   08D4 75 97 10           1018 	mov	_USB0DAT,#0x10
   08D7 80 05              1019 	sjmp	00132$
   08D9                    1020 00130$:
                           1021 ;	usb.c:174: UsbInterruptOutFromPcEndpointService(n);
   08D9 8A 82              1022 	mov	dpl,r2
   08DB 12 14 80           1023 	lcall	_UsbInterruptOutFromPcEndpointService
                           1024 ;	usb.c:175: POLL_WRITE_BYTE(EOUTCSR1, 0);     // Clear Out Packet ready bit
   08DE                    1025 00132$:
   08DE E5 96              1026 	mov	a,_USB0ADR
   08E0 20 E7 FB           1027 	jb	acc.7,00132$
   08E3 75 96 14           1028 	mov	_USB0ADR,#0x14
   08E6 75 97 00           1029 	mov	_USB0DAT,#0x00
   08E9 22                 1030 	ret
                           1031 ;------------------------------------------------------------
                           1032 ;Allocation info for local variables in function 'Handle_In'
                           1033 ;------------------------------------------------------------
                           1034 ;n                         Allocated to registers r2 
                           1035 ;ControlReg                Allocated to registers r3 
                           1036 ;------------------------------------------------------------
                           1037 ;	usb.c:178: void Handle_In(BYTE n)                       // Handle in packet on Endpoint 1
                           1038 ;	-----------------------------------------
                           1039 ;	 function Handle_In
                           1040 ;	-----------------------------------------
   08EA                    1041 _Handle_In:
   08EA AA 82              1042 	mov	r2,dpl
                           1043 ;	usb.c:182: POLL_WRITE_BYTE(INDEX, n);           // Set index to endpoint 1 registers
   08EC                    1044 00101$:
   08EC E5 96              1045 	mov	a,_USB0ADR
   08EE 20 E7 FB           1046 	jb	acc.7,00101$
   08F1 75 96 0E           1047 	mov	_USB0ADR,#0x0E
   08F4 8A 97              1048 	mov	_USB0DAT,r2
                           1049 ;	usb.c:183: POLL_READ_BYTE(EINCSR1, ControlReg); // Read contol register for EP 1
   08F6                    1050 00104$:
   08F6 E5 96              1051 	mov	a,_USB0ADR
   08F8 20 E7 FB           1052 	jb	acc.7,00104$
   08FB 75 96 91           1053 	mov	_USB0ADR,#0x91
   08FE                    1054 00107$:
   08FE E5 96              1055 	mov	a,_USB0ADR
   0900 20 E7 FB           1056 	jb	acc.7,00107$
   0903 AB 97              1057 	mov	r3,_USB0DAT
                           1058 ;	usb.c:185: if (Ep_Status[n] == EP_HALT) {        // If endpoint is currently halted, send a stall
   0905 EA                 1059 	mov	a,r2
   0906 24 31              1060 	add	a,#_Ep_Status
   0908 F8                 1061 	mov	r0,a
   0909 86 04              1062 	mov	ar4,@r0
   090B BC 03 0C           1063 	cjne	r4,#0x03,00114$
                           1064 ;	usb.c:186: POLL_WRITE_BYTE(EINCSR1, rbInSDSTL);
   090E                    1065 00110$:
   090E E5 96              1066 	mov	a,_USB0ADR
   0910 20 E7 FB           1067 	jb	acc.7,00110$
   0913 75 96 11           1068 	mov	_USB0ADR,#0x11
   0916 75 97 10           1069 	mov	_USB0DAT,#0x10
                           1070 ;	usb.c:187: return;
   0919 22                 1071 	ret
   091A                    1072 00114$:
                           1073 ;	usb.c:189: if (ControlReg & rbInSTSTL)      // Clear sent stall if last packet returned a stall
   091A EB                 1074 	mov	a,r3
   091B 30 E5 0B           1075 	jnb	acc.5,00119$
                           1076 ;	usb.c:190: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);
   091E                    1077 00115$:
   091E E5 96              1078 	mov	a,_USB0ADR
   0920 20 E7 FB           1079 	jb	acc.7,00115$
   0923 75 96 11           1080 	mov	_USB0ADR,#0x11
   0926 75 97 40           1081 	mov	_USB0DAT,#0x40
   0929                    1082 00119$:
                           1083 ;	usb.c:192: if (ControlReg & rbInUNDRUN)     // Clear underrun bit if it was set
   0929 EB                 1084 	mov	a,r3
   092A 30 E2 0B           1085 	jnb	acc.2,00124$
                           1086 ;	usb.c:193: POLL_WRITE_BYTE(EINCSR1, 0x00);
   092D                    1087 00120$:
   092D E5 96              1088 	mov	a,_USB0ADR
   092F 20 E7 FB           1089 	jb	acc.7,00120$
   0932 75 96 11           1090 	mov	_USB0ADR,#0x11
   0935 75 97 00           1091 	mov	_USB0DAT,#0x00
   0938                    1092 00124$:
                           1093 ;	usb.c:195: UsbInterruptInToPcEndpointService(n);
   0938 8A 82              1094 	mov	dpl,r2
   093A 02 14 22           1095 	ljmp	_UsbInterruptInToPcEndpointService
                           1096 ;------------------------------------------------------------
                           1097 ;Allocation info for local variables in function 'Usb_Resume'
                           1098 ;------------------------------------------------------------
                           1099 ;------------------------------------------------------------
                           1100 ;	usb.c:204: void Usb_Resume(void)                   // Add code to turn on anything turned off when
                           1101 ;	-----------------------------------------
                           1102 ;	 function Usb_Resume
                           1103 ;	-----------------------------------------
   093D                    1104 _Usb_Resume:
                           1105 ;	usb.c:206: }
   093D 22                 1106 	ret
                           1107 ;------------------------------------------------------------
                           1108 ;Allocation info for local variables in function 'Handle_Setup'
                           1109 ;------------------------------------------------------------
                           1110 ;ControlReg                Allocated to registers r2 
                           1111 ;TempReg                   Allocated to registers r2 
                           1112 ;------------------------------------------------------------
                           1113 ;	usb.c:216: void Handle_Setup(void)
                           1114 ;	-----------------------------------------
                           1115 ;	 function Handle_Setup
                           1116 ;	-----------------------------------------
   093E                    1117 _Handle_Setup:
                           1118 ;	usb.c:223: POLL_WRITE_BYTE(INDEX, 0);           // Set Index to Endpoint Zero
   093E                    1119 00101$:
   093E E5 96              1120 	mov	a,_USB0ADR
   0940 20 E7 FB           1121 	jb	acc.7,00101$
   0943 75 96 0E           1122 	mov	_USB0ADR,#0x0E
   0946 75 97 00           1123 	mov	_USB0DAT,#0x00
                           1124 ;	usb.c:224: POLL_READ_BYTE(E0CSR, ControlReg);   // Read control register
   0949                    1125 00104$:
   0949 E5 96              1126 	mov	a,_USB0ADR
   094B 20 E7 FB           1127 	jb	acc.7,00104$
   094E 75 96 91           1128 	mov	_USB0ADR,#0x91
   0951                    1129 00107$:
   0951 E5 96              1130 	mov	a,_USB0ADR
   0953 20 E7 FB           1131 	jb	acc.7,00107$
   0956 AA 97              1132 	mov	r2,_USB0DAT
                           1133 ;	usb.c:226: if (Ep_Status[0] == EP_ADDRESS)      // Handle Status Phase of Set Address command
   0958 74 06              1134 	mov	a,#0x06
   095A B5 31 0E           1135 	cjne	a,_Ep_Status,00114$
                           1136 ;	usb.c:228: POLL_WRITE_BYTE(FADDR, Setup.wValue.c[LSB]);
   095D                    1137 00110$:
   095D E5 96              1138 	mov	a,_USB0ADR
   095F 20 E7 FB           1139 	jb	acc.7,00110$
   0962 75 96 00           1140 	mov	_USB0ADR,#0x00
   0965 85 24 97           1141 	mov	_USB0DAT,(_Setup + 0x0002)
                           1142 ;	usb.c:229: Ep_Status[0] = EP_IDLE;
   0968 75 31 00           1143 	mov	_Ep_Status,#0x00
   096B                    1144 00114$:
                           1145 ;	usb.c:233: if (ControlReg & rbSTSTL) {           // If last packet was a sent stall, reset STSTL
   096B EA                 1146 	mov	a,r2
   096C 30 E2 0F           1147 	jnb	acc.2,00119$
                           1148 ;	usb.c:235: POLL_WRITE_BYTE(E0CSR, 0);
   096F                    1149 00115$:
   096F E5 96              1150 	mov	a,_USB0ADR
   0971 20 E7 FB           1151 	jb	acc.7,00115$
   0974 75 96 11           1152 	mov	_USB0ADR,#0x11
   0977 75 97 00           1153 	mov	_USB0DAT,#0x00
                           1154 ;	usb.c:236: Ep_Status[0] = EP_IDLE;
   097A 75 31 00           1155 	mov	_Ep_Status,#0x00
                           1156 ;	usb.c:237: return;
   097D 22                 1157 	ret
   097E                    1158 00119$:
                           1159 ;	usb.c:240: if (ControlReg & rbSUEND)            // If last setup transaction was ended prematurely
   097E EA                 1160 	mov	a,r2
   097F 30 E4 19           1161 	jnb	acc.4,00127$
                           1162 ;	usb.c:242: POLL_WRITE_BYTE(E0CSR, rbDATAEND);
   0982                    1163 00120$:
   0982 E5 96              1164 	mov	a,_USB0ADR
   0984 20 E7 FB           1165 	jb	acc.7,00120$
   0987 75 96 11           1166 	mov	_USB0ADR,#0x11
   098A 75 97 08           1167 	mov	_USB0DAT,#0x08
                           1168 ;	usb.c:243: POLL_WRITE_BYTE(E0CSR, rbSSUEND); // Serviced Setup End bit and return EP0
   098D                    1169 00123$:
   098D E5 96              1170 	mov	a,_USB0ADR
   098F 20 E7 FB           1171 	jb	acc.7,00123$
   0992 75 96 11           1172 	mov	_USB0ADR,#0x11
   0995 75 97 80           1173 	mov	_USB0DAT,#0x80
                           1174 ;	usb.c:244: Ep_Status[0] = EP_IDLE;           // to idle state
   0998 75 31 00           1175 	mov	_Ep_Status,#0x00
   099B                    1176 00127$:
                           1177 ;	usb.c:249: if (Ep_Status[0] == EP_IDLE)         // If Endpoint 0 is in idle mode
   099B E5 31              1178 	mov	a,_Ep_Status
   099D 60 03              1179 	jz	00204$
   099F 02 0A 46           1180 	ljmp	00142$
   09A2                    1181 00204$:
                           1182 ;	usb.c:251: if (ControlReg & rbOPRDY)         // Make sure that EP 0 has an Out Packet ready from host
   09A2 EA                 1183 	mov	a,r2
   09A3 20 E0 03           1184 	jb	acc.0,00205$
   09A6 02 0A 46           1185 	ljmp	00142$
   09A9                    1186 00205$:
                           1187 ;	usb.c:253: Fifo_Read(FIFO_EP0, 8, (BYTE *)&Setup);
   09A9 75 37 22           1188 	mov	_Fifo_Read_PARM_3,#_Setup
   09AC 75 38 00           1189 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   09AF 75 39 40           1190 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   09B2 75 35 08           1191 	mov	_Fifo_Read_PARM_2,#0x08
   09B5 E4                 1192 	clr	a
   09B6 F5 36              1193 	mov	(_Fifo_Read_PARM_2 + 1),a
   09B8 75 82 20           1194 	mov	dpl,#0x20
   09BB C0 02              1195 	push	ar2
   09BD 12 0A EB           1196 	lcall	_Fifo_Read
   09C0 D0 02              1197 	pop	ar2
                           1198 ;	usb.c:258: switch(Setup.bRequest)         // Call correct subroutine to handle each kind of
   09C2 E5 23              1199 	mov	a,(_Setup + 0x0001)
   09C4 FB                 1200 	mov	r3,a
   09C5 24 F4              1201 	add	a,#0xff - 0x0B
   09C7 50 03              1202 	jnc	00206$
   09C9 02 0A 46           1203 	ljmp	00142$
   09CC                    1204 00206$:
   09CC EB                 1205 	mov	a,r3
   09CD 2B                 1206 	add	a,r3
   09CE 2B                 1207 	add	a,r3
   09CF 90 09 D3           1208 	mov	dptr,#00207$
   09D2 73                 1209 	jmp	@a+dptr
   09D3                    1210 00207$:
   09D3 02 09 F7           1211 	ljmp	00128$
   09D6 02 0A 00           1212 	ljmp	00129$
   09D9 02 0A 46           1213 	ljmp	00137$
   09DC 02 0A 09           1214 	ljmp	00130$
   09DF 02 0A 46           1215 	ljmp	00137$
   09E2 02 0A 12           1216 	ljmp	00131$
   09E5 02 0A 1B           1217 	ljmp	00132$
   09E8 02 0A 46           1218 	ljmp	00137$
   09EB 02 0A 24           1219 	ljmp	00133$
   09EE 02 0A 2D           1220 	ljmp	00134$
   09F1 02 0A 36           1221 	ljmp	00135$
   09F4 02 0A 3F           1222 	ljmp	00136$
                           1223 ;	usb.c:260: case GET_STATUS:
   09F7                    1224 00128$:
                           1225 ;	usb.c:261: Get_Status();
   09F7 C0 02              1226 	push	ar2
   09F9 12 0B 82           1227 	lcall	_Get_Status
   09FC D0 02              1228 	pop	ar2
                           1229 ;	usb.c:262: break;             
                           1230 ;	usb.c:263: case CLEAR_FEATURE:
   09FE 80 46              1231 	sjmp	00142$
   0A00                    1232 00129$:
                           1233 ;	usb.c:264: Clear_Feature();
   0A00 C0 02              1234 	push	ar2
   0A02 12 0C 79           1235 	lcall	_Clear_Feature
   0A05 D0 02              1236 	pop	ar2
                           1237 ;	usb.c:265: break;
                           1238 ;	usb.c:266: case SET_FEATURE:
   0A07 80 3D              1239 	sjmp	00142$
   0A09                    1240 00130$:
                           1241 ;	usb.c:267: Set_Feature();
   0A09 C0 02              1242 	push	ar2
   0A0B 12 0D 0D           1243 	lcall	_Set_Feature
   0A0E D0 02              1244 	pop	ar2
                           1245 ;	usb.c:268: break;
                           1246 ;	usb.c:269: case SET_ADDRESS:
   0A10 80 34              1247 	sjmp	00142$
   0A12                    1248 00131$:
                           1249 ;	usb.c:270: Set_Address();
   0A12 C0 02              1250 	push	ar2
   0A14 12 0D A1           1251 	lcall	_Set_Address
   0A17 D0 02              1252 	pop	ar2
                           1253 ;	usb.c:271: break;
                           1254 ;	usb.c:272: case GET_DESCRIPTOR: //0x06
   0A19 80 2B              1255 	sjmp	00142$
   0A1B                    1256 00132$:
                           1257 ;	usb.c:273: Get_Descriptor();
   0A1B C0 02              1258 	push	ar2
   0A1D 12 0D E2           1259 	lcall	_Get_Descriptor
   0A20 D0 02              1260 	pop	ar2
                           1261 ;	usb.c:274: break;
                           1262 ;	usb.c:275: case GET_CONFIGURATION:
   0A22 80 22              1263 	sjmp	00142$
   0A24                    1264 00133$:
                           1265 ;	usb.c:276: Get_Configuration();
   0A24 C0 02              1266 	push	ar2
   0A26 12 0F 9E           1267 	lcall	_Get_Configuration
   0A29 D0 02              1268 	pop	ar2
                           1269 ;	usb.c:277: break;
                           1270 ;	usb.c:278: case SET_CONFIGURATION:
   0A2B 80 19              1271 	sjmp	00142$
   0A2D                    1272 00134$:
                           1273 ;	usb.c:279: Set_Configuration();
   0A2D C0 02              1274 	push	ar2
   0A2F 12 10 05           1275 	lcall	_Set_Configuration
   0A32 D0 02              1276 	pop	ar2
                           1277 ;	usb.c:280: break;
                           1278 ;	usb.c:281: case GET_INTERFACE:
   0A34 80 10              1279 	sjmp	00142$
   0A36                    1280 00135$:
                           1281 ;	usb.c:282: Get_Interface();
   0A36 C0 02              1282 	push	ar2
   0A38 12 11 22           1283 	lcall	_Get_Interface
   0A3B D0 02              1284 	pop	ar2
                           1285 ;	usb.c:283: break;
                           1286 ;	usb.c:284: case SET_INTERFACE:
   0A3D 80 07              1287 	sjmp	00142$
   0A3F                    1288 00136$:
                           1289 ;	usb.c:285: Set_Interface();
   0A3F C0 02              1290 	push	ar2
   0A41 12 11 75           1291 	lcall	_Set_Interface
   0A44 D0 02              1292 	pop	ar2
                           1293 ;	usb.c:286: break;
                           1294 ;	usb.c:287: default:
                           1295 ;	usb.c:290: }
   0A46                    1296 00137$:
   0A46                    1297 00142$:
                           1298 ;	usb.c:294: if (Ep_Status[0] == EP_TX)           // See if the endpoint has data to transmit to host
   0A46 74 01              1299 	mov	a,#0x01
   0A48 B5 31 02           1300 	cjne	a,_Ep_Status,00208$
   0A4B 80 01              1301 	sjmp	00209$
   0A4D                    1302 00208$:
   0A4D 22                 1303 	ret
   0A4E                    1304 00209$:
                           1305 ;	usb.c:299: if (!(ControlReg & rbINPRDY))     // Make sure you don't overwrite last packet
   0A4E EA                 1306 	mov	a,r2
   0A4F 30 E1 01           1307 	jnb	acc.1,00210$
   0A52 22                 1308 	ret
   0A53                    1309 00210$:
                           1310 ;	usb.c:303: POLL_READ_BYTE(E0CSR, ControlReg);
   0A53                    1311 00143$:
   0A53 E5 96              1312 	mov	a,_USB0ADR
   0A55 20 E7 FB           1313 	jb	acc.7,00143$
   0A58 75 96 91           1314 	mov	_USB0ADR,#0x91
   0A5B                    1315 00146$:
   0A5B E5 96              1316 	mov	a,_USB0ADR
   0A5D 20 E7 FB           1317 	jb	acc.7,00146$
                           1318 ;	usb.c:306: if ((!(ControlReg & rbSUEND)) || (!(ControlReg & rbOPRDY)))
   0A60 E5 97              1319 	mov	a,_USB0DAT
   0A62 FA                 1320 	mov	r2,a
   0A63 30 E4 05           1321 	jnb	acc.4,00157$
   0A66 EA                 1322 	mov	a,r2
   0A67 30 E0 01           1323 	jnb	acc.0,00214$
   0A6A 22                 1324 	ret
   0A6B                    1325 00214$:
   0A6B                    1326 00157$:
                           1327 ;	usb.c:310: TempReg = rbINPRDY;         // Add In Packet ready flag to E0CSR bitmask              
   0A6B 7A 02              1328 	mov	r2,#0x02
                           1329 ;	usb.c:313: if (DataSize >= EP0_PACKET_SIZE)
   0A6D C3                 1330 	clr	c
   0A6E E5 2A              1331 	mov	a,_DataSize
   0A70 94 40              1332 	subb	a,#0x40
   0A72 E5 2B              1333 	mov	a,(_DataSize + 1)
   0A74 94 00              1334 	subb	a,#0x00
   0A76 40 3D              1335 	jc	00150$
                           1336 ;	usb.c:316: Fifo_Write(FIFO_EP0, EP0_PACKET_SIZE, (BYTE *)DataPtr);// Put Data on Fifo
   0A78 75 3A 40           1337 	mov	_Fifo_Write_PARM_2,#0x40
   0A7B E4                 1338 	clr	a
   0A7C F5 3B              1339 	mov	(_Fifo_Write_PARM_2 + 1),a
   0A7E 85 2E 3C           1340 	mov	_Fifo_Write_PARM_3,_DataPtr
   0A81 85 2F 3D           1341 	mov	(_Fifo_Write_PARM_3 + 1),(_DataPtr + 1)
   0A84 85 30 3E           1342 	mov	(_Fifo_Write_PARM_3 + 2),(_DataPtr + 2)
   0A87 75 82 20           1343 	mov	dpl,#0x20
   0A8A C0 02              1344 	push	ar2
   0A8C 12 0B 2A           1345 	lcall	_Fifo_Write
   0A8F D0 02              1346 	pop	ar2
                           1347 ;	usb.c:317: DataPtr  += EP0_PACKET_SIZE;                           // Advance data pointer
   0A91 74 40              1348 	mov	a,#0x40
   0A93 25 2E              1349 	add	a,_DataPtr
   0A95 F5 2E              1350 	mov	_DataPtr,a
   0A97 E4                 1351 	clr	a
   0A98 35 2F              1352 	addc	a,(_DataPtr + 1)
   0A9A F5 2F              1353 	mov	(_DataPtr + 1),a
                           1354 ;	usb.c:318: DataSize -= EP0_PACKET_SIZE;                           // Decrement data size
   0A9C E5 2A              1355 	mov	a,_DataSize
   0A9E 24 C0              1356 	add	a,#0xc0
   0AA0 F5 2A              1357 	mov	_DataSize,a
   0AA2 E5 2B              1358 	mov	a,(_DataSize + 1)
   0AA4 34 FF              1359 	addc	a,#0xff
   0AA6 F5 2B              1360 	mov	(_DataSize + 1),a
                           1361 ;	usb.c:319: DataSent += EP0_PACKET_SIZE;                           // Increment data sent counter
   0AA8 74 40              1362 	mov	a,#0x40
   0AAA 25 2C              1363 	add	a,_DataSent
   0AAC F5 2C              1364 	mov	_DataSent,a
   0AAE E4                 1365 	clr	a
   0AAF 35 2D              1366 	addc	a,(_DataSent + 1)
   0AB1 F5 2D              1367 	mov	(_DataSent + 1),a
   0AB3 80 1A              1368 	sjmp	00151$
   0AB5                    1369 00150$:
                           1370 ;	usb.c:324: Fifo_Write(FIFO_EP0, DataSize, (BYTE *)DataPtr);       // Put Data on Fifo
   0AB5 85 2A 3A           1371 	mov	_Fifo_Write_PARM_2,_DataSize
   0AB8 85 2B 3B           1372 	mov	(_Fifo_Write_PARM_2 + 1),(_DataSize + 1)
   0ABB 85 2E 3C           1373 	mov	_Fifo_Write_PARM_3,_DataPtr
   0ABE 85 2F 3D           1374 	mov	(_Fifo_Write_PARM_3 + 1),(_DataPtr + 1)
   0AC1 85 30 3E           1375 	mov	(_Fifo_Write_PARM_3 + 2),(_DataPtr + 2)
   0AC4 75 82 20           1376 	mov	dpl,#0x20
   0AC7 12 0B 2A           1377 	lcall	_Fifo_Write
                           1378 ;	usb.c:325: TempReg |= rbDATAEND;                                  // Add Data End bit to bitmask
   0ACA 7A 0A              1379 	mov	r2,#0x0A
                           1380 ;	usb.c:326: Ep_Status[0] = EP_IDLE;                                // Return EP 0 to idle state
   0ACC 75 31 00           1381 	mov	_Ep_Status,#0x00
   0ACF                    1382 00151$:
                           1383 ;	usb.c:328: if (DataSent == Setup.wLength.i)
   0ACF E5 28              1384 	mov	a,(_Setup + 0x0006)
   0AD1 B5 2C 0B           1385 	cjne	a,_DataSent,00154$
   0AD4 E5 29              1386 	mov	a,((_Setup + 0x0006) + 1)
   0AD6 B5 2D 06           1387 	cjne	a,(_DataSent + 1),00154$
                           1388 ;	usb.c:333: TempReg |= rbDATAEND;    // Add Data End bit to mask
   0AD9 43 02 08           1389 	orl	ar2,#0x08
                           1390 ;	usb.c:334: Ep_Status[0] = EP_IDLE;  // and return Endpoint 0 to an idle state
   0ADC 75 31 00           1391 	mov	_Ep_Status,#0x00
                           1392 ;	usb.c:336: POLL_WRITE_BYTE(E0CSR, TempReg);                          // Write mask to E0CSR
   0ADF                    1393 00154$:
   0ADF E5 96              1394 	mov	a,_USB0ADR
   0AE1 20 E7 FB           1395 	jb	acc.7,00154$
   0AE4 75 96 11           1396 	mov	_USB0ADR,#0x11
   0AE7 8A 97              1397 	mov	_USB0DAT,r2
   0AE9 22                 1398 	ret
                           1399 ;------------------------------------------------------------
                           1400 ;Allocation info for local variables in function 'Usb_Suspend'
                           1401 ;------------------------------------------------------------
                           1402 ;------------------------------------------------------------
                           1403 ;	usb.c:348: void Usb_Suspend(void)                  // Add power-down features here if you wish to 
                           1404 ;	-----------------------------------------
                           1405 ;	 function Usb_Suspend
                           1406 ;	-----------------------------------------
   0AEA                    1407 _Usb_Suspend:
                           1408 ;	usb.c:350: }
   0AEA 22                 1409 	ret
                           1410 ;------------------------------------------------------------
                           1411 ;Allocation info for local variables in function 'Fifo_Read'
                           1412 ;------------------------------------------------------------
                           1413 ;uNumBytes                 Allocated with name '_Fifo_Read_PARM_2'
                           1414 ;pData                     Allocated with name '_Fifo_Read_PARM_3'
                           1415 ;addr                      Allocated to registers r2 
                           1416 ;i                         Allocated to registers r2 r3 
                           1417 ;------------------------------------------------------------
                           1418 ;	usb.c:365: void Fifo_Read(BYTE addr, unsigned int uNumBytes, BYTE * pData)
                           1419 ;	-----------------------------------------
                           1420 ;	 function Fifo_Read
                           1421 ;	-----------------------------------------
   0AEB                    1422 _Fifo_Read:
   0AEB AA 82              1423 	mov	r2,dpl
                           1424 ;	usb.c:369: if (uNumBytes)                         // Check if >0 bytes requested,
   0AED E5 35              1425 	mov	a,_Fifo_Read_PARM_2
   0AEF 45 36              1426 	orl	a,(_Fifo_Read_PARM_2 + 1)
   0AF1 60 36              1427 	jz	00110$
                           1428 ;	usb.c:371: USB0ADR = (addr);                   // Set address
   0AF3 8A 96              1429 	mov	_USB0ADR,r2
                           1430 ;	usb.c:372: USB0ADR |= 0xC0;                    // Set auto-read and initiate
   0AF5 43 96 C0           1431 	orl	_USB0ADR,#0xC0
                           1432 ;	usb.c:376: for(i=0;i<uNumBytes;i++)
   0AF8 7A 00              1433 	mov	r2,#0x00
   0AFA 7B 00              1434 	mov	r3,#0x00
   0AFC                    1435 00106$:
   0AFC C3                 1436 	clr	c
   0AFD EA                 1437 	mov	a,r2
   0AFE 95 35              1438 	subb	a,_Fifo_Read_PARM_2
   0B00 EB                 1439 	mov	a,r3
   0B01 95 36              1440 	subb	a,(_Fifo_Read_PARM_2 + 1)
   0B03 50 21              1441 	jnc	00109$
                           1442 ;	usb.c:378: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
   0B05                    1443 00101$:
   0B05 E5 96              1444 	mov	a,_USB0ADR
   0B07 20 E7 FB           1445 	jb	acc.7,00101$
                           1446 ;	usb.c:379: pData[i] = USB0DAT;              // Copy data byte
   0B0A EA                 1447 	mov	a,r2
   0B0B 25 37              1448 	add	a,_Fifo_Read_PARM_3
   0B0D FC                 1449 	mov	r4,a
   0B0E EB                 1450 	mov	a,r3
   0B0F 35 38              1451 	addc	a,(_Fifo_Read_PARM_3 + 1)
   0B11 FD                 1452 	mov	r5,a
   0B12 AE 39              1453 	mov	r6,(_Fifo_Read_PARM_3 + 2)
   0B14 8C 82              1454 	mov	dpl,r4
   0B16 8D 83              1455 	mov	dph,r5
   0B18 8E F0              1456 	mov	b,r6
   0B1A E5 97              1457 	mov	a,_USB0DAT
   0B1C 12 16 1A           1458 	lcall	__gptrput
                           1459 ;	usb.c:376: for(i=0;i<uNumBytes;i++)
   0B1F 0A                 1460 	inc	r2
   0B20 BA 00 D9           1461 	cjne	r2,#0x00,00106$
   0B23 0B                 1462 	inc	r3
   0B24 80 D6              1463 	sjmp	00106$
   0B26                    1464 00109$:
                           1465 ;	usb.c:382: USB0ADR = 0;                           // Clear auto-read
   0B26 75 96 00           1466 	mov	_USB0ADR,#0x00
   0B29                    1467 00110$:
   0B29 22                 1468 	ret
                           1469 ;------------------------------------------------------------
                           1470 ;Allocation info for local variables in function 'Fifo_Write'
                           1471 ;------------------------------------------------------------
                           1472 ;uNumBytes                 Allocated with name '_Fifo_Write_PARM_2'
                           1473 ;pData                     Allocated with name '_Fifo_Write_PARM_3'
                           1474 ;addr                      Allocated to registers r2 
                           1475 ;i                         Allocated to registers r2 r3 
                           1476 ;------------------------------------------------------------
                           1477 ;	usb.c:398: void Fifo_Write(BYTE addr, unsigned int uNumBytes, BYTE * pData)
                           1478 ;	-----------------------------------------
                           1479 ;	 function Fifo_Write
                           1480 ;	-----------------------------------------
   0B2A                    1481 _Fifo_Write:
   0B2A AA 82              1482 	mov	r2,dpl
                           1483 ;	usb.c:403: if (uNumBytes)
   0B2C E5 3A              1484 	mov	a,_Fifo_Write_PARM_2
   0B2E 45 3B              1485 	orl	a,(_Fifo_Write_PARM_2 + 1)
   0B30 60 35              1486 	jz	00113$
                           1487 ;	usb.c:405: while(USB0ADR & 0x80);              // Wait for BUSY->'0'
   0B32                    1488 00101$:
   0B32 E5 96              1489 	mov	a,_USB0ADR
   0B34 20 E7 FB           1490 	jb	acc.7,00101$
                           1491 ;	usb.c:407: USB0ADR = (addr);                   // Set address (mask out bits7-6)
   0B37 8A 96              1492 	mov	_USB0ADR,r2
                           1493 ;	usb.c:410: for(i=0;i<uNumBytes;i++)
   0B39 7A 00              1494 	mov	r2,#0x00
   0B3B 7B 00              1495 	mov	r3,#0x00
   0B3D                    1496 00109$:
   0B3D C3                 1497 	clr	c
   0B3E EA                 1498 	mov	a,r2
   0B3F 95 3A              1499 	subb	a,_Fifo_Write_PARM_2
   0B41 EB                 1500 	mov	a,r3
   0B42 95 3B              1501 	subb	a,(_Fifo_Write_PARM_2 + 1)
   0B44 50 21              1502 	jnc	00113$
                           1503 ;	usb.c:412: USB0DAT = pData[i];
   0B46 EA                 1504 	mov	a,r2
   0B47 25 3C              1505 	add	a,_Fifo_Write_PARM_3
   0B49 FC                 1506 	mov	r4,a
   0B4A EB                 1507 	mov	a,r3
   0B4B 35 3D              1508 	addc	a,(_Fifo_Write_PARM_3 + 1)
   0B4D FD                 1509 	mov	r5,a
   0B4E AE 3E              1510 	mov	r6,(_Fifo_Write_PARM_3 + 2)
   0B50 8C 82              1511 	mov	dpl,r4
   0B52 8D 83              1512 	mov	dph,r5
   0B54 8E F0              1513 	mov	b,r6
   0B56 12 16 33           1514 	lcall	__gptrget
   0B59 F5 97              1515 	mov	_USB0DAT,a
                           1516 ;	usb.c:413: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
   0B5B                    1517 00104$:
   0B5B E5 96              1518 	mov	a,_USB0ADR
   0B5D 20 E7 FB           1519 	jb	acc.7,00104$
                           1520 ;	usb.c:410: for(i=0;i<uNumBytes;i++)
   0B60 0A                 1521 	inc	r2
   0B61 BA 00 D9           1522 	cjne	r2,#0x00,00109$
   0B64 0B                 1523 	inc	r3
   0B65 80 D6              1524 	sjmp	00109$
   0B67                    1525 00113$:
   0B67 22                 1526 	ret
                           1527 ;------------------------------------------------------------
                           1528 ;Allocation info for local variables in function 'Force_Stall'
                           1529 ;------------------------------------------------------------
                           1530 ;------------------------------------------------------------
                           1531 ;	usb.c:425: void Force_Stall(void)
                           1532 ;	-----------------------------------------
                           1533 ;	 function Force_Stall
                           1534 ;	-----------------------------------------
   0B68                    1535 _Force_Stall:
                           1536 ;	usb.c:427: POLL_WRITE_BYTE(INDEX, 0);
   0B68                    1537 00101$:
   0B68 E5 96              1538 	mov	a,_USB0ADR
   0B6A 20 E7 FB           1539 	jb	acc.7,00101$
   0B6D 75 96 0E           1540 	mov	_USB0ADR,#0x0E
   0B70 75 97 00           1541 	mov	_USB0DAT,#0x00
                           1542 ;	usb.c:428: POLL_WRITE_BYTE(E0CSR, rbSDSTL);       // Set the send stall bit
   0B73                    1543 00104$:
   0B73 E5 96              1544 	mov	a,_USB0ADR
   0B75 20 E7 FB           1545 	jb	acc.7,00104$
   0B78 75 96 11           1546 	mov	_USB0ADR,#0x11
   0B7B 75 97 20           1547 	mov	_USB0DAT,#0x20
                           1548 ;	usb.c:429: Ep_Status[0] = EP_STALL;               // Put the endpoint in stall status
   0B7E 75 31 05           1549 	mov	_Ep_Status,#0x05
   0B81 22                 1550 	ret
                           1551 ;------------------------------------------------------------
                           1552 ;Allocation info for local variables in function 'Get_Status'
                           1553 ;------------------------------------------------------------
                           1554 ;------------------------------------------------------------
                           1555 ;	usb.c:433: void Get_Status(void)                           // This routine returns a two byte status packet
                           1556 ;	-----------------------------------------
                           1557 ;	 function Get_Status
                           1558 ;	-----------------------------------------
   0B82                    1559 _Get_Status:
                           1560 ;	usb.c:436: if (Setup.wValue.c[MSB] || Setup.wValue.c[LSB] ||
   0B82 E5 25              1561 	mov	a,(_Setup + 0x0003)
   0B84 70 0F              1562 	jnz	00101$
   0B86 E5 24              1563 	mov	a,(_Setup + 0x0002)
   0B88 70 0B              1564 	jnz	00101$
                           1565 ;	usb.c:438: Setup.wLength.c[MSB]    || (Setup.wLength.c[LSB] != 2))  
   0B8A E5 29              1566 	mov	a,(_Setup + 0x0007)
   0B8C 70 07              1567 	jnz	00101$
   0B8E 74 02              1568 	mov	a,#0x02
   0B90 B5 28 02           1569 	cjne	a,(_Setup + 0x0006),00162$
   0B93 80 03              1570 	sjmp	00102$
   0B95                    1571 00162$:
   0B95                    1572 00101$:
                           1573 ;	usb.c:441: Force_Stall();
   0B95 12 0B 68           1574 	lcall	_Force_Stall
   0B98                    1575 00102$:
                           1576 ;	usb.c:444: switch(Setup.bmRequestType)                  // Determine if recipient was device, interface, or EP
   0B98 AA 22              1577 	mov	r2,_Setup
   0B9A BA 80 02           1578 	cjne	r2,#0x80,00163$
   0B9D 80 0D              1579 	sjmp	00106$
   0B9F                    1580 00163$:
   0B9F BA 81 02           1581 	cjne	r2,#0x81,00164$
   0BA2 80 28              1582 	sjmp	00111$
   0BA4                    1583 00164$:
   0BA4 BA 82 02           1584 	cjne	r2,#0x82,00165$
   0BA7 80 48              1585 	sjmp	00117$
   0BA9                    1586 00165$:
   0BA9 02 0C 5C           1587 	ljmp	00134$
                           1588 ;	usb.c:446: case OUT_DEVICE:                // If recipient was device
   0BAC                    1589 00106$:
                           1590 ;	usb.c:447: if (Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])
   0BAC E5 27              1591 	mov	a,(_Setup + 0x0005)
   0BAE 70 04              1592 	jnz	00107$
   0BB0 E5 26              1593 	mov	a,(_Setup + 0x0004)
   0BB2 60 06              1594 	jz	00108$
   0BB4                    1595 00107$:
                           1596 ;	usb.c:449: Force_Stall();                      // Send stall if request is invalid
   0BB4 12 0B 68           1597 	lcall	_Force_Stall
   0BB7 02 0C 5F           1598 	ljmp	00135$
   0BBA                    1599 00108$:
                           1600 ;	usb.c:453: DataPtr = (BYTE*)&ZERO_PACKET;      // Otherwise send 0x00, indicating bus power and no
   0BBA 75 2E CA           1601 	mov	_DataPtr,#_ZERO_PACKET
   0BBD 75 2F 16           1602 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   0BC0 75 30 80           1603 	mov	(_DataPtr + 2),#0x80
                           1604 ;	usb.c:454: DataSize = 2;                       // remote wake-up supported
   0BC3 75 2A 02           1605 	mov	_DataSize,#0x02
   0BC6 E4                 1606 	clr	a
   0BC7 F5 2B              1607 	mov	(_DataSize + 1),a
                           1608 ;	usb.c:456: break;
   0BC9 02 0C 5F           1609 	ljmp	00135$
                           1610 ;	usb.c:458: case OUT_INTERFACE:                       // See if recipient was interface
   0BCC                    1611 00111$:
                           1612 ;	usb.c:459: if ((USB_State != DEV_CONFIGURED) ||
   0BCC 74 04              1613 	mov	a,#0x04
   0BCE B5 21 08           1614 	cjne	a,_USB_State,00112$
                           1615 ;	usb.c:460: Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])
   0BD1 E5 27              1616 	mov	a,(_Setup + 0x0005)
   0BD3 70 04              1617 	jnz	00112$
   0BD5 E5 26              1618 	mov	a,(_Setup + 0x0004)
   0BD7 60 06              1619 	jz	00113$
   0BD9                    1620 00112$:
                           1621 ;	usb.c:463: Force_Stall();                      // Otherwise send stall to host
   0BD9 12 0B 68           1622 	lcall	_Force_Stall
   0BDC 02 0C 5F           1623 	ljmp	00135$
   0BDF                    1624 00113$:
                           1625 ;	usb.c:467: DataPtr = (BYTE*)&ZERO_PACKET;      // Status packet always returns 0x00
   0BDF 75 2E CA           1626 	mov	_DataPtr,#_ZERO_PACKET
   0BE2 75 2F 16           1627 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   0BE5 75 30 80           1628 	mov	(_DataPtr + 2),#0x80
                           1629 ;	usb.c:468: DataSize = 2;
   0BE8 75 2A 02           1630 	mov	_DataSize,#0x02
   0BEB E4                 1631 	clr	a
   0BEC F5 2B              1632 	mov	(_DataSize + 1),a
                           1633 ;	usb.c:470: break;
   0BEE 02 0C 5F           1634 	ljmp	00135$
                           1635 ;	usb.c:472: case OUT_ENDPOINT:                        // See if recipient was an endpoint
   0BF1                    1636 00117$:
                           1637 ;	usb.c:473: if ((USB_State != DEV_CONFIGURED) ||
   0BF1 74 04              1638 	mov	a,#0x04
   0BF3 B5 21 04           1639 	cjne	a,_USB_State,00130$
                           1640 ;	usb.c:474: Setup.wIndex.c[MSB])                   // Make sure device is configured and index msb = 0x00
   0BF6 E5 27              1641 	mov	a,(_Setup + 0x0005)
   0BF8 60 05              1642 	jz	00131$
   0BFA                    1643 00130$:
                           1644 ;	usb.c:476: Force_Stall();                      
   0BFA 12 0B 68           1645 	lcall	_Force_Stall
   0BFD 80 60              1646 	sjmp	00135$
   0BFF                    1647 00131$:
                           1648 ;	usb.c:480: if (Setup.wIndex.c[LSB] == IN_EP1)  // Handle case if request is directed to EP 1
   0BFF 74 81              1649 	mov	a,#0x81
   0C01 B5 26 27           1650 	cjne	a,(_Setup + 0x0004),00128$
                           1651 ;	usb.c:482: if (Ep_Status[1] == EP_HALT)
   0C04 74 03              1652 	mov	a,#0x03
   0C06 B5 32 11           1653 	cjne	a,(_Ep_Status + 0x0001),00119$
                           1654 ;	usb.c:484: DataPtr = (BYTE*)&ONES_PACKET;
   0C09 75 2E C8           1655 	mov	_DataPtr,#_ONES_PACKET
   0C0C 75 2F 16           1656 	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
   0C0F 75 30 80           1657 	mov	(_DataPtr + 2),#0x80
                           1658 ;	usb.c:485: DataSize = 2;
   0C12 75 2A 02           1659 	mov	_DataSize,#0x02
   0C15 E4                 1660 	clr	a
   0C16 F5 2B              1661 	mov	(_DataSize + 1),a
   0C18 80 45              1662 	sjmp	00135$
   0C1A                    1663 00119$:
                           1664 ;	usb.c:489: DataPtr = (BYTE*)&ZERO_PACKET;// Otherwise return 0x00,0x00 to indicate endpoint active
   0C1A 75 2E CA           1665 	mov	_DataPtr,#_ZERO_PACKET
   0C1D 75 2F 16           1666 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   0C20 75 30 80           1667 	mov	(_DataPtr + 2),#0x80
                           1668 ;	usb.c:490: DataSize = 2;
   0C23 75 2A 02           1669 	mov	_DataSize,#0x02
   0C26 E4                 1670 	clr	a
   0C27 F5 2B              1671 	mov	(_DataSize + 1),a
   0C29 80 34              1672 	sjmp	00135$
   0C2B                    1673 00128$:
                           1674 ;	usb.c:495: if (Setup.wIndex.c[LSB] == OUT_EP2)
   0C2B 74 02              1675 	mov	a,#0x02
   0C2D B5 26 27           1676 	cjne	a,(_Setup + 0x0004),00125$
                           1677 ;	usb.c:498: if (Ep_Status[2] == EP_HALT)  // endpoint is active
   0C30 74 03              1678 	mov	a,#0x03
   0C32 B5 33 11           1679 	cjne	a,(_Ep_Status + 0x0002),00122$
                           1680 ;	usb.c:500: DataPtr = (BYTE*)&ONES_PACKET;
   0C35 75 2E C8           1681 	mov	_DataPtr,#_ONES_PACKET
   0C38 75 2F 16           1682 	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
   0C3B 75 30 80           1683 	mov	(_DataPtr + 2),#0x80
                           1684 ;	usb.c:501: DataSize = 2;
   0C3E 75 2A 02           1685 	mov	_DataSize,#0x02
   0C41 E4                 1686 	clr	a
   0C42 F5 2B              1687 	mov	(_DataSize + 1),a
   0C44 80 19              1688 	sjmp	00135$
   0C46                    1689 00122$:
                           1690 ;	usb.c:505: DataPtr = (BYTE*)&ZERO_PACKET;
   0C46 75 2E CA           1691 	mov	_DataPtr,#_ZERO_PACKET
   0C49 75 2F 16           1692 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   0C4C 75 30 80           1693 	mov	(_DataPtr + 2),#0x80
                           1694 ;	usb.c:506: DataSize = 2;
   0C4F 75 2A 02           1695 	mov	_DataSize,#0x02
   0C52 E4                 1696 	clr	a
   0C53 F5 2B              1697 	mov	(_DataSize + 1),a
   0C55 80 08              1698 	sjmp	00135$
   0C57                    1699 00125$:
                           1700 ;	usb.c:511: Force_Stall();                // Send stall if unexpected data encountered
   0C57 12 0B 68           1701 	lcall	_Force_Stall
                           1702 ;	usb.c:515: break;
                           1703 ;	usb.c:517: default:
   0C5A 80 03              1704 	sjmp	00135$
   0C5C                    1705 00134$:
                           1706 ;	usb.c:518: Force_Stall();
   0C5C 12 0B 68           1707 	lcall	_Force_Stall
                           1708 ;	usb.c:520: }
   0C5F                    1709 00135$:
                           1710 ;	usb.c:521: if (Ep_Status[0] != EP_STALL)
   0C5F 74 05              1711 	mov	a,#0x05
   0C61 B5 31 01           1712 	cjne	a,_Ep_Status,00183$
   0C64 22                 1713 	ret
   0C65                    1714 00183$:
                           1715 ;	usb.c:523: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set serviced Setup Packet, Endpoint 0 in                   
   0C65                    1716 00136$:
   0C65 E5 96              1717 	mov	a,_USB0ADR
   0C67 20 E7 FB           1718 	jb	acc.7,00136$
   0C6A 75 96 11           1719 	mov	_USB0ADR,#0x11
   0C6D 75 97 40           1720 	mov	_USB0DAT,#0x40
                           1721 ;	usb.c:524: Ep_Status[0] = EP_TX;                     // transmit mode, and reset DataSent counter
   0C70 75 31 01           1722 	mov	_Ep_Status,#0x01
                           1723 ;	usb.c:525: DataSent = 0;
   0C73 E4                 1724 	clr	a
   0C74 F5 2C              1725 	mov	_DataSent,a
   0C76 F5 2D              1726 	mov	(_DataSent + 1),a
   0C78 22                 1727 	ret
                           1728 ;------------------------------------------------------------
                           1729 ;Allocation info for local variables in function 'Clear_Feature'
                           1730 ;------------------------------------------------------------
                           1731 ;------------------------------------------------------------
                           1732 ;	usb.c:529: void Clear_Feature()                            // This routine can clear Halt Endpoint features
                           1733 ;	-----------------------------------------
                           1734 ;	 function Clear_Feature
                           1735 ;	-----------------------------------------
   0C79                    1736 _Clear_Feature:
                           1737 ;	usb.c:532: if ((USB_State != DEV_CONFIGURED)          ||// Send procedural stall if device isn't configured
   0C79 74 04              1738 	mov	a,#0x04
   0C7B B5 21 1A           1739 	cjne	a,_USB_State,00122$
                           1740 ;	usb.c:533: (Setup.bmRequestType == IN_DEVICE)         ||// or request is made to host(remote wakeup not supported)
   0C7E E5 22              1741 	mov	a,_Setup
   0C80 FA                 1742 	mov	r2,a
   0C81 60 15              1743 	jz	00122$
                           1744 ;	usb.c:534: (Setup.bmRequestType == IN_INTERFACE)      ||// or request is made to interface
   0C83 BA 01 02           1745 	cjne	r2,#0x01,00165$
   0C86 80 10              1746 	sjmp	00122$
   0C88                    1747 00165$:
                           1748 ;	usb.c:535: Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||// or msbs of value or index set to non-zero value
   0C88 E5 25              1749 	mov	a,(_Setup + 0x0003)
   0C8A 70 0C              1750 	jnz	00122$
   0C8C E5 27              1751 	mov	a,(_Setup + 0x0005)
   0C8E 70 08              1752 	jnz	00122$
                           1753 ;	usb.c:536: Setup.wLength.c[MSB] || Setup.wLength.c[LSB])// or data length set to non-zero.
   0C90 E5 29              1754 	mov	a,(_Setup + 0x0007)
   0C92 70 04              1755 	jnz	00122$
   0C94 E5 28              1756 	mov	a,(_Setup + 0x0006)
   0C96 60 05              1757 	jz	00123$
   0C98                    1758 00122$:
                           1759 ;	usb.c:538: Force_Stall();
   0C98 12 0B 68           1760 	lcall	_Force_Stall
   0C9B 80 53              1761 	sjmp	00131$
   0C9D                    1762 00123$:
                           1763 ;	usb.c:543: if ((Setup.bmRequestType == IN_ENDPOINT)&&// Verify that packet was directed at an endpoint
   0C9D 74 02              1764 	mov	a,#0x02
   0C9F B5 22 4B           1765 	cjne	a,_Setup,00117$
                           1766 ;	usb.c:544: (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// the feature selected was HALT_ENDPOINT
   0CA2 E5 24              1767 	mov	a,(_Setup + 0x0002)
   0CA4 70 47              1768 	jnz	00117$
                           1769 ;	usb.c:545: ((Setup.wIndex.c[LSB] == IN_EP1) ||       // and that the request was directed at EP 1 in
   0CA6 74 81              1770 	mov	a,#0x81
   0CA8 B5 26 02           1771 	cjne	a,(_Setup + 0x0004),00173$
   0CAB 80 05              1772 	sjmp	00116$
   0CAD                    1773 00173$:
                           1774 ;	usb.c:546: (Setup.wIndex.c[LSB] == OUT_EP2)))        // or EP 2 out
   0CAD 74 02              1775 	mov	a,#0x02
   0CAF B5 26 3B           1776 	cjne	a,(_Setup + 0x0004),00117$
   0CB2                    1777 00116$:
                           1778 ;	usb.c:548: if (Setup.wIndex.c[LSB] == IN_EP1)
   0CB2 74 81              1779 	mov	a,#0x81
   0CB4 B5 26 1B           1780 	cjne	a,(_Setup + 0x0004),00107$
                           1781 ;	usb.c:550: POLL_WRITE_BYTE (INDEX, 1);         // Clear feature endpoint 1 halt
   0CB7                    1782 00101$:
   0CB7 E5 96              1783 	mov	a,_USB0ADR
   0CB9 20 E7 FB           1784 	jb	acc.7,00101$
   0CBC 75 96 0E           1785 	mov	_USB0ADR,#0x0E
   0CBF 75 97 01           1786 	mov	_USB0DAT,#0x01
                           1787 ;	usb.c:551: POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
   0CC2                    1788 00104$:
   0CC2 E5 96              1789 	mov	a,_USB0ADR
   0CC4 20 E7 FB           1790 	jb	acc.7,00104$
   0CC7 75 96 11           1791 	mov	_USB0ADR,#0x11
   0CCA 75 97 40           1792 	mov	_USB0DAT,#0x40
                           1793 ;	usb.c:552: Ep_Status[1] = EP_IDLE;             // Set endpoint 1 status back to idle
   0CCD 75 32 00           1794 	mov	(_Ep_Status + 0x0001),#0x00
                           1795 ;	usb.c:556: POLL_WRITE_BYTE (INDEX, 2);         // Clear feature endpoint 2 halt
   0CD0 80 1E              1796 	sjmp	00131$
   0CD2                    1797 00107$:
   0CD2 E5 96              1798 	mov	a,_USB0ADR
   0CD4 20 E7 FB           1799 	jb	acc.7,00107$
   0CD7 75 96 0E           1800 	mov	_USB0ADR,#0x0E
   0CDA 75 97 02           1801 	mov	_USB0DAT,#0x02
                           1802 ;	usb.c:557: POLL_WRITE_BYTE (EOUTCSR1, rbOutCLRDT);
   0CDD                    1803 00110$:
   0CDD E5 96              1804 	mov	a,_USB0ADR
   0CDF 20 E7 FB           1805 	jb	acc.7,00110$
   0CE2 75 96 14           1806 	mov	_USB0ADR,#0x14
   0CE5 75 97 80           1807 	mov	_USB0DAT,#0x80
                           1808 ;	usb.c:558: Ep_Status[2] = EP_IDLE;             // Set endpoint 2 status back to idle
   0CE8 75 33 00           1809 	mov	(_Ep_Status + 0x0002),#0x00
   0CEB 80 03              1810 	sjmp	00131$
   0CED                    1811 00117$:
                           1812 ;	usb.c:563: Force_Stall();                         // Send procedural stall
   0CED 12 0B 68           1813 	lcall	_Force_Stall
                           1814 ;	usb.c:566: POLL_WRITE_BYTE(INDEX, 0);                   // Reset Index to 0
   0CF0                    1815 00131$:
   0CF0 E5 96              1816 	mov	a,_USB0ADR
   0CF2 20 E7 FB           1817 	jb	acc.7,00131$
   0CF5 75 96 0E           1818 	mov	_USB0ADR,#0x0E
   0CF8 75 97 00           1819 	mov	_USB0DAT,#0x00
                           1820 ;	usb.c:567: if (Ep_Status[0] != EP_STALL)
   0CFB 74 05              1821 	mov	a,#0x05
   0CFD B5 31 01           1822 	cjne	a,_Ep_Status,00183$
   0D00 22                 1823 	ret
   0D01                    1824 00183$:
                           1825 ;	usb.c:569: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   0D01                    1826 00134$:
   0D01 E5 96              1827 	mov	a,_USB0ADR
   0D03 20 E7 FB           1828 	jb	acc.7,00134$
   0D06 75 96 11           1829 	mov	_USB0ADR,#0x11
   0D09 75 97 48           1830 	mov	_USB0DAT,#0x48
   0D0C 22                 1831 	ret
                           1832 ;------------------------------------------------------------
                           1833 ;Allocation info for local variables in function 'Set_Feature'
                           1834 ;------------------------------------------------------------
                           1835 ;------------------------------------------------------------
                           1836 ;	usb.c:576: void Set_Feature(void)                          // This routine will set the EP Halt feature for
                           1837 ;	-----------------------------------------
                           1838 ;	 function Set_Feature
                           1839 ;	-----------------------------------------
   0D0D                    1840 _Set_Feature:
                           1841 ;	usb.c:579: if ((USB_State != DEV_CONFIGURED)          ||// Make sure device is configured, setup data
   0D0D 74 04              1842 	mov	a,#0x04
   0D0F B5 21 1A           1843 	cjne	a,_USB_State,00122$
                           1844 ;	usb.c:580: (Setup.bmRequestType == IN_DEVICE)         ||// is all valid and that request is directed at
   0D12 E5 22              1845 	mov	a,_Setup
   0D14 FA                 1846 	mov	r2,a
   0D15 60 15              1847 	jz	00122$
                           1848 ;	usb.c:581: (Setup.bmRequestType == IN_INTERFACE)      ||// an endpoint
   0D17 BA 01 02           1849 	cjne	r2,#0x01,00165$
   0D1A 80 10              1850 	sjmp	00122$
   0D1C                    1851 00165$:
                           1852 ;	usb.c:582: Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||
   0D1C E5 25              1853 	mov	a,(_Setup + 0x0003)
   0D1E 70 0C              1854 	jnz	00122$
   0D20 E5 27              1855 	mov	a,(_Setup + 0x0005)
   0D22 70 08              1856 	jnz	00122$
                           1857 ;	usb.c:583: Setup.wLength.c[MSB] || Setup.wLength.c[LSB])
   0D24 E5 29              1858 	mov	a,(_Setup + 0x0007)
   0D26 70 04              1859 	jnz	00122$
   0D28 E5 28              1860 	mov	a,(_Setup + 0x0006)
   0D2A 60 05              1861 	jz	00123$
   0D2C                    1862 00122$:
                           1863 ;	usb.c:585: Force_Stall();                            // Otherwise send stall to host
   0D2C 12 0B 68           1864 	lcall	_Force_Stall
   0D2F 80 53              1865 	sjmp	00131$
   0D31                    1866 00123$:
                           1867 ;	usb.c:590: if ((Setup.bmRequestType == IN_ENDPOINT)&&// Make sure endpoint exists and that halt
   0D31 74 02              1868 	mov	a,#0x02
   0D33 B5 22 4B           1869 	cjne	a,_Setup,00117$
                           1870 ;	usb.c:591: (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// endpoint feature is selected
   0D36 E5 24              1871 	mov	a,(_Setup + 0x0002)
   0D38 70 47              1872 	jnz	00117$
                           1873 ;	usb.c:592: ((Setup.wIndex.c[LSB] == IN_EP1)        ||
   0D3A 74 81              1874 	mov	a,#0x81
   0D3C B5 26 02           1875 	cjne	a,(_Setup + 0x0004),00173$
   0D3F 80 05              1876 	sjmp	00116$
   0D41                    1877 00173$:
                           1878 ;	usb.c:593: (Setup.wIndex.c[LSB] == OUT_EP2)))
   0D41 74 02              1879 	mov	a,#0x02
   0D43 B5 26 3B           1880 	cjne	a,(_Setup + 0x0004),00117$
   0D46                    1881 00116$:
                           1882 ;	usb.c:595: if (Setup.wIndex.c[LSB] == IN_EP1)
   0D46 74 81              1883 	mov	a,#0x81
   0D48 B5 26 1B           1884 	cjne	a,(_Setup + 0x0004),00107$
                           1885 ;	usb.c:597: POLL_WRITE_BYTE (INDEX, 1);         // Set feature endpoint 1 halt
   0D4B                    1886 00101$:
   0D4B E5 96              1887 	mov	a,_USB0ADR
   0D4D 20 E7 FB           1888 	jb	acc.7,00101$
   0D50 75 96 0E           1889 	mov	_USB0ADR,#0x0E
   0D53 75 97 01           1890 	mov	_USB0DAT,#0x01
                           1891 ;	usb.c:598: POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
   0D56                    1892 00104$:
   0D56 E5 96              1893 	mov	a,_USB0ADR
   0D58 20 E7 FB           1894 	jb	acc.7,00104$
   0D5B 75 96 11           1895 	mov	_USB0ADR,#0x11
   0D5E 75 97 10           1896 	mov	_USB0DAT,#0x10
                           1897 ;	usb.c:599: Ep_Status[1] = EP_HALT;                                  
   0D61 75 32 03           1898 	mov	(_Ep_Status + 0x0001),#0x03
                           1899 ;	usb.c:603: POLL_WRITE_BYTE (INDEX, 2);         // Set feature Ep2 halt
   0D64 80 1E              1900 	sjmp	00131$
   0D66                    1901 00107$:
   0D66 E5 96              1902 	mov	a,_USB0ADR
   0D68 20 E7 FB           1903 	jb	acc.7,00107$
   0D6B 75 96 0E           1904 	mov	_USB0ADR,#0x0E
   0D6E 75 97 02           1905 	mov	_USB0DAT,#0x02
                           1906 ;	usb.c:604: POLL_WRITE_BYTE (EOUTCSR1, rbOutSDSTL);
   0D71                    1907 00110$:
   0D71 E5 96              1908 	mov	a,_USB0ADR
   0D73 20 E7 FB           1909 	jb	acc.7,00110$
   0D76 75 96 14           1910 	mov	_USB0ADR,#0x14
   0D79 75 97 20           1911 	mov	_USB0DAT,#0x20
                           1912 ;	usb.c:605: Ep_Status[2] = EP_HALT;  		    
   0D7C 75 33 03           1913 	mov	(_Ep_Status + 0x0002),#0x03
   0D7F 80 03              1914 	sjmp	00131$
   0D81                    1915 00117$:
                           1916 ;	usb.c:610: Force_Stall();                         // Send procedural stall
   0D81 12 0B 68           1917 	lcall	_Force_Stall
                           1918 ;	usb.c:613: POLL_WRITE_BYTE(INDEX, 0);
   0D84                    1919 00131$:
   0D84 E5 96              1920 	mov	a,_USB0ADR
   0D86 20 E7 FB           1921 	jb	acc.7,00131$
   0D89 75 96 0E           1922 	mov	_USB0ADR,#0x0E
   0D8C 75 97 00           1923 	mov	_USB0DAT,#0x00
                           1924 ;	usb.c:614: if (Ep_Status[0] != EP_STALL)
   0D8F 74 05              1925 	mov	a,#0x05
   0D91 B5 31 01           1926 	cjne	a,_Ep_Status,00183$
   0D94 22                 1927 	ret
   0D95                    1928 00183$:
                           1929 ;	usb.c:616: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   0D95                    1930 00134$:
   0D95 E5 96              1931 	mov	a,_USB0ADR
   0D97 20 E7 FB           1932 	jb	acc.7,00134$
   0D9A 75 96 11           1933 	mov	_USB0ADR,#0x11
   0D9D 75 97 48           1934 	mov	_USB0DAT,#0x48
   0DA0 22                 1935 	ret
                           1936 ;------------------------------------------------------------
                           1937 ;Allocation info for local variables in function 'Set_Address'
                           1938 ;------------------------------------------------------------
                           1939 ;------------------------------------------------------------
                           1940 ;	usb.c:621: void Set_Address(void)                          // Set new function address
                           1941 ;	-----------------------------------------
                           1942 ;	 function Set_Address
                           1943 ;	-----------------------------------------
   0DA1                    1944 _Set_Address:
                           1945 ;	usb.c:623: if ((Setup.bmRequestType != IN_DEVICE)     ||// Request must be directed to device
   0DA1 E5 22              1946 	mov	a,_Setup
   0DA3 70 19              1947 	jnz	00101$
                           1948 ;	usb.c:624: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// with index and length set to zero.
   0DA5 E5 27              1949 	mov	a,(_Setup + 0x0005)
   0DA7 70 15              1950 	jnz	00101$
   0DA9 E5 26              1951 	mov	a,(_Setup + 0x0004)
   0DAB 70 11              1952 	jnz	00101$
                           1953 ;	usb.c:625: Setup.wLength.c[MSB] || Setup.wLength.c[LSB]||
   0DAD E5 29              1954 	mov	a,(_Setup + 0x0007)
   0DAF 70 0D              1955 	jnz	00101$
   0DB1 E5 28              1956 	mov	a,(_Setup + 0x0006)
   0DB3 70 09              1957 	jnz	00101$
                           1958 ;	usb.c:626: Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] & 0x80))
   0DB5 E5 25              1959 	mov	a,(_Setup + 0x0003)
   0DB7 70 05              1960 	jnz	00101$
   0DB9 E5 24              1961 	mov	a,(_Setup + 0x0002)
   0DBB 30 E7 03           1962 	jnb	acc.7,00102$
   0DBE                    1963 00101$:
                           1964 ;	usb.c:628: Force_Stall();                             // Send stall if setup data invalid
   0DBE 12 0B 68           1965 	lcall	_Force_Stall
   0DC1                    1966 00102$:
                           1967 ;	usb.c:631: Ep_Status[0] = EP_ADDRESS;                   // Set endpoint zero to update address next status phase
   0DC1 75 31 06           1968 	mov	_Ep_Status,#0x06
                           1969 ;	usb.c:632: if (Setup.wValue.c[LSB] != 0)
   0DC4 E5 24              1970 	mov	a,(_Setup + 0x0002)
   0DC6 60 05              1971 	jz	00110$
                           1972 ;	usb.c:634: USB_State = DEV_ADDRESS;                  // Indicate that device state is now address
   0DC8 75 21 03           1973 	mov	_USB_State,#0x03
   0DCB 80 03              1974 	sjmp	00111$
   0DCD                    1975 00110$:
                           1976 ;	usb.c:638: USB_State = DEV_DEFAULT;                  // If new address was 0x00, return device to default
   0DCD 75 21 02           1977 	mov	_USB_State,#0x02
   0DD0                    1978 00111$:
                           1979 ;	usb.c:640: if (Ep_Status[0] != EP_STALL)
   0DD0 74 05              1980 	mov	a,#0x05
   0DD2 B5 31 01           1981 	cjne	a,_Ep_Status,00136$
   0DD5 22                 1982 	ret
   0DD6                    1983 00136$:
                           1984 ;	usb.c:642: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   0DD6                    1985 00112$:
   0DD6 E5 96              1986 	mov	a,_USB0ADR
   0DD8 20 E7 FB           1987 	jb	acc.7,00112$
   0DDB 75 96 11           1988 	mov	_USB0ADR,#0x11
   0DDE 75 97 48           1989 	mov	_USB0DAT,#0x48
   0DE1 22                 1990 	ret
                           1991 ;------------------------------------------------------------
                           1992 ;Allocation info for local variables in function 'Get_Descriptor'
                           1993 ;------------------------------------------------------------
                           1994 ;b                         Allocated with name '(_Setup + 0x0002)'
                           1995 ;sz                        Allocated to registers r2 r3 
                           1996 ;n1                        Allocated with name '_Get_Descriptor_n1_3_3'
                           1997 ;------------------------------------------------------------
                           1998 ;	usb.c:647: void Get_Descriptor(void)                       // This routine sets the data pointer and size to correct
                           1999 ;	-----------------------------------------
                           2000 ;	 function Get_Descriptor
                           2001 ;	-----------------------------------------
   0DE2                    2002 _Get_Descriptor:
                           2003 ;	usb.c:650: switch(Setup.wValue.c[MSB])                  // Determine which type of descriptor
   0DE2 E5 25              2004 	mov	a,(_Setup + 0x0003)
   0DE4 FA                 2005 	mov	r2,a
   0DE5 24 FA              2006 	add	a,#0xff - 0x05
   0DE7 50 03              2007 	jnc	00154$
   0DE9 02 0F 49           2008 	ljmp	00120$
   0DEC                    2009 00154$:
   0DEC EA                 2010 	mov	a,r2
   0DED 2A                 2011 	add	a,r2
   0DEE 2A                 2012 	add	a,r2
   0DEF 90 0D F3           2013 	mov	dptr,#00155$
   0DF2 73                 2014 	jmp	@a+dptr
   0DF3                    2015 00155$:
   0DF3 02 0F 49           2016 	ljmp	00120$
   0DF6 02 0E 05           2017 	ljmp	00101$
   0DF9 02 0E 17           2018 	ljmp	00102$
   0DFC 02 0E 39           2019 	ljmp	00103$
   0DFF 02 0E CF           2020 	ljmp	00107$
   0E02 02 0E E5           2021 	ljmp	00108$
                           2022 ;	usb.c:652: case DSC_DEVICE:                          // size accordingly
   0E05                    2023 00101$:
                           2024 ;	usb.c:653: DataPtr = (BYTE*) &DeviceDesc;
   0E05 75 2E 53           2025 	mov	_DataPtr,#_DeviceDesc
   0E08 75 2F 16           2026 	mov	(_DataPtr + 1),#(_DeviceDesc >> 8)
   0E0B 75 30 80           2027 	mov	(_DataPtr + 2),#0x80
                           2028 ;	usb.c:654: DataSize = sizeof(device_descriptor);
   0E0E 75 2A 12           2029 	mov	_DataSize,#0x12
   0E11 E4                 2030 	clr	a
   0E12 F5 2B              2031 	mov	(_DataSize + 1),a
                           2032 ;	usb.c:655: break;
   0E14 02 0F 4C           2033 	ljmp	00121$
                           2034 ;	usb.c:657: case DSC_CONFIG:
   0E17                    2035 00102$:
                           2036 ;	usb.c:666: DataPtr = (BYTE*) &ConfigDesc;
   0E17 75 2E 65           2037 	mov	_DataPtr,#_ConfigDesc
   0E1A 75 2F 16           2038 	mov	(_DataPtr + 1),#(_ConfigDesc >> 8)
   0E1D 75 30 80           2039 	mov	(_DataPtr + 2),#0x80
                           2040 ;	usb.c:667: DataSize = ConfigDesc.bTotalLength1|(ConfigDesc.bTotalLength2<<8);
   0E20 90 16 67           2041 	mov	dptr,#(_ConfigDesc + 0x0002)
   0E23 E4                 2042 	clr	a
   0E24 93                 2043 	movc	a,@a+dptr
   0E25 FA                 2044 	mov	r2,a
   0E26 90 16 68           2045 	mov	dptr,#(_ConfigDesc + 0x0003)
   0E29 E4                 2046 	clr	a
   0E2A 93                 2047 	movc	a,@a+dptr
   0E2B FC                 2048 	mov	r4,a
   0E2C E4                 2049 	clr	a
   0E2D FB                 2050 	mov	r3,a
   0E2E FD                 2051 	mov	r5,a
   0E2F 4A                 2052 	orl	a,r2
   0E30 F5 2A              2053 	mov	_DataSize,a
   0E32 EC                 2054 	mov	a,r4
   0E33 4D                 2055 	orl	a,r5
   0E34 F5 2B              2056 	mov	(_DataSize + 1),a
                           2057 ;	usb.c:669: break;
   0E36 02 0F 4C           2058 	ljmp	00121$
                           2059 ;	usb.c:671: case DSC_STRING:
   0E39                    2060 00103$:
                           2061 ;	usb.c:673: BYTE b = Setup.wValue.c[LSB];
                           2062 ;	usb.c:674: char code * sz = szaStringDescriptors[b];
   0E39 E5 24              2063 	mov	a,(_Setup + 0x0002)
   0E3B 75 F0 02           2064 	mov	b,#0x02
   0E3E A4                 2065 	mul	ab
   0E3F 24 8C              2066 	add	a,#_szaStringDescriptors
   0E41 F5 82              2067 	mov	dpl,a
   0E43 74 16              2068 	mov	a,#(_szaStringDescriptors >> 8)
   0E45 35 F0              2069 	addc	a,b
   0E47 F5 83              2070 	mov	dph,a
   0E49 E4                 2071 	clr	a
   0E4A 93                 2072 	movc	a,@a+dptr
   0E4B FA                 2073 	mov	r2,a
   0E4C A3                 2074 	inc	dptr
   0E4D E4                 2075 	clr	a
   0E4E 93                 2076 	movc	a,@a+dptr
   0E4F FB                 2077 	mov	r3,a
                           2078 ;	usb.c:675: int n1 = 2;
   0E50 75 3F 02           2079 	mov	_Get_Descriptor_n1_3_3,#0x02
   0E53 E4                 2080 	clr	a
   0E54 F5 40              2081 	mov	(_Get_Descriptor_n1_3_3 + 1),a
                           2082 ;	usb.c:676: szBuffer[0] = 2;
   0E56 90 00 60           2083 	mov	dptr,#_szBuffer
   0E59 74 02              2084 	mov	a,#0x02
   0E5B F0                 2085 	movx	@dptr,a
                           2086 ;	usb.c:677: szBuffer[1] = 3; // string descriptor type
   0E5C 90 00 61           2087 	mov	dptr,#(_szBuffer + 0x0001)
   0E5F 74 03              2088 	mov	a,#0x03
   0E61 F0                 2089 	movx	@dptr,a
                           2090 ;	usb.c:679: while (*sz) {
   0E62                    2091 00104$:
   0E62 8A 82              2092 	mov	dpl,r2
   0E64 8B 83              2093 	mov	dph,r3
   0E66 E4                 2094 	clr	a
   0E67 93                 2095 	movc	a,@a+dptr
   0E68 FE                 2096 	mov	r6,a
   0E69 60 43              2097 	jz	00106$
                           2098 ;	usb.c:680: szBuffer[n1++] = *sz++;
   0E6B AF 3F              2099 	mov	r7,_Get_Descriptor_n1_3_3
   0E6D AC 40              2100 	mov	r4,(_Get_Descriptor_n1_3_3 + 1)
   0E6F 05 3F              2101 	inc	_Get_Descriptor_n1_3_3
   0E71 E4                 2102 	clr	a
   0E72 B5 3F 02           2103 	cjne	a,_Get_Descriptor_n1_3_3,00157$
   0E75 05 40              2104 	inc	(_Get_Descriptor_n1_3_3 + 1)
   0E77                    2105 00157$:
   0E77 EF                 2106 	mov	a,r7
   0E78 24 60              2107 	add	a,#_szBuffer
   0E7A F5 82              2108 	mov	dpl,a
   0E7C EC                 2109 	mov	a,r4
   0E7D 34 00              2110 	addc	a,#(_szBuffer >> 8)
   0E7F F5 83              2111 	mov	dph,a
   0E81 0A                 2112 	inc	r2
   0E82 BA 00 01           2113 	cjne	r2,#0x00,00158$
   0E85 0B                 2114 	inc	r3
   0E86                    2115 00158$:
   0E86 EE                 2116 	mov	a,r6
   0E87 F0                 2117 	movx	@dptr,a
                           2118 ;	usb.c:681: szBuffer[n1++] = 0;
   0E88 AC 3F              2119 	mov	r4,_Get_Descriptor_n1_3_3
   0E8A AD 40              2120 	mov	r5,(_Get_Descriptor_n1_3_3 + 1)
   0E8C 05 3F              2121 	inc	_Get_Descriptor_n1_3_3
   0E8E E4                 2122 	clr	a
   0E8F B5 3F 02           2123 	cjne	a,_Get_Descriptor_n1_3_3,00159$
   0E92 05 40              2124 	inc	(_Get_Descriptor_n1_3_3 + 1)
   0E94                    2125 00159$:
   0E94 EC                 2126 	mov	a,r4
   0E95 24 60              2127 	add	a,#_szBuffer
   0E97 F5 82              2128 	mov	dpl,a
   0E99 ED                 2129 	mov	a,r5
   0E9A 34 00              2130 	addc	a,#(_szBuffer >> 8)
   0E9C F5 83              2131 	mov	dph,a
   0E9E E4                 2132 	clr	a
   0E9F F0                 2133 	movx	@dptr,a
                           2134 ;	usb.c:682: szBuffer[0] += 2;
   0EA0 90 00 60           2135 	mov	dptr,#_szBuffer
   0EA3 E0                 2136 	movx	a,@dptr
   0EA4 FC                 2137 	mov	r4,a
   0EA5 0C                 2138 	inc	r4
   0EA6 0C                 2139 	inc	r4
   0EA7 90 00 60           2140 	mov	dptr,#_szBuffer
   0EAA EC                 2141 	mov	a,r4
   0EAB F0                 2142 	movx	@dptr,a
   0EAC 80 B4              2143 	sjmp	00104$
   0EAE                    2144 00106$:
                           2145 ;	usb.c:686: DataPtr = szBuffer;
   0EAE 75 2E 60           2146 	mov	_DataPtr,#_szBuffer
   0EB1 75 2F 00           2147 	mov	(_DataPtr + 1),#(_szBuffer >> 8)
   0EB4 75 30 00           2148 	mov	(_DataPtr + 2),#0x00
                           2149 ;	usb.c:687: DataSize = *DataPtr;
   0EB7 AA 2E              2150 	mov	r2,_DataPtr
   0EB9 AB 2F              2151 	mov	r3,(_DataPtr + 1)
   0EBB AC 30              2152 	mov	r4,(_DataPtr + 2)
   0EBD 8A 82              2153 	mov	dpl,r2
   0EBF 8B 83              2154 	mov	dph,r3
   0EC1 8C F0              2155 	mov	b,r4
   0EC3 12 16 33           2156 	lcall	__gptrget
   0EC6 FA                 2157 	mov	r2,a
   0EC7 8A 2A              2158 	mov	_DataSize,r2
   0EC9 75 2B 00           2159 	mov	(_DataSize + 1),#0x00
                           2160 ;	usb.c:688: break;
   0ECC 02 0F 4C           2161 	ljmp	00121$
                           2162 ;	usb.c:690: case DSC_INTERFACE:
   0ECF                    2163 00107$:
                           2164 ;	usb.c:691: DataPtr = (BYTE*) &InterfaceDesc;
   0ECF 75 2E 6E           2165 	mov	_DataPtr,#_InterfaceDesc
   0ED2 75 2F 16           2166 	mov	(_DataPtr + 1),#(_InterfaceDesc >> 8)
   0ED5 75 30 80           2167 	mov	(_DataPtr + 2),#0x80
                           2168 ;	usb.c:692: DataSize = InterfaceDesc.bLength;
   0ED8 90 16 6E           2169 	mov	dptr,#_InterfaceDesc
   0EDB E4                 2170 	clr	a
   0EDC 93                 2171 	movc	a,@a+dptr
   0EDD FA                 2172 	mov	r2,a
   0EDE 8A 2A              2173 	mov	_DataSize,r2
   0EE0 75 2B 00           2174 	mov	(_DataSize + 1),#0x00
                           2175 ;	usb.c:693: break;
                           2176 ;	usb.c:695: case DSC_ENDPOINT:
   0EE3 80 67              2177 	sjmp	00121$
   0EE5                    2178 00108$:
                           2179 ;	usb.c:696: if ((Setup.wValue.c[LSB] == IN_EP1) ||
   0EE5 74 81              2180 	mov	a,#0x81
   0EE7 B5 24 02           2181 	cjne	a,(_Setup + 0x0002),00160$
   0EEA 80 0C              2182 	sjmp	00115$
   0EEC                    2183 00160$:
                           2184 ;	usb.c:697: (Setup.wValue.c[LSB] == OUT_EP2) ||
   0EEC 74 02              2185 	mov	a,#0x02
   0EEE B5 24 02           2186 	cjne	a,(_Setup + 0x0002),00161$
   0EF1 80 05              2187 	sjmp	00115$
   0EF3                    2188 00161$:
                           2189 ;	usb.c:698: (Setup.wValue.c[LSB] == IN_EP3))
   0EF3 74 83              2190 	mov	a,#0x83
   0EF5 B5 24 4C           2191 	cjne	a,(_Setup + 0x0002),00116$
   0EF8                    2192 00115$:
                           2193 ;	usb.c:700: if (Setup.wValue.c[LSB] == IN_EP1)
   0EF8 74 81              2194 	mov	a,#0x81
   0EFA B5 24 16           2195 	cjne	a,(_Setup + 0x0002),00113$
                           2196 ;	usb.c:702: DataPtr = (BYTE*) &Endpoint1Desc;
   0EFD 75 2E 77           2197 	mov	_DataPtr,#_Endpoint1Desc
   0F00 75 2F 16           2198 	mov	(_DataPtr + 1),#(_Endpoint1Desc >> 8)
   0F03 75 30 80           2199 	mov	(_DataPtr + 2),#0x80
                           2200 ;	usb.c:703: DataSize = Endpoint1Desc.bLength;
   0F06 90 16 77           2201 	mov	dptr,#_Endpoint1Desc
   0F09 E4                 2202 	clr	a
   0F0A 93                 2203 	movc	a,@a+dptr
   0F0B FA                 2204 	mov	r2,a
   0F0C 8A 2A              2205 	mov	_DataSize,r2
   0F0E 75 2B 00           2206 	mov	(_DataSize + 1),#0x00
   0F11 80 39              2207 	sjmp	00121$
   0F13                    2208 00113$:
                           2209 ;	usb.c:707: if (Setup.wValue.c[LSB] == OUT_EP2) {
   0F13 74 02              2210 	mov	a,#0x02
   0F15 B5 24 16           2211 	cjne	a,(_Setup + 0x0002),00110$
                           2212 ;	usb.c:708: DataPtr = (BYTE*) &Endpoint2Desc;
   0F18 75 2E 7E           2213 	mov	_DataPtr,#_Endpoint2Desc
   0F1B 75 2F 16           2214 	mov	(_DataPtr + 1),#(_Endpoint2Desc >> 8)
   0F1E 75 30 80           2215 	mov	(_DataPtr + 2),#0x80
                           2216 ;	usb.c:709: DataSize = Endpoint2Desc.bLength;
   0F21 90 16 7E           2217 	mov	dptr,#_Endpoint2Desc
   0F24 E4                 2218 	clr	a
   0F25 93                 2219 	movc	a,@a+dptr
   0F26 FA                 2220 	mov	r2,a
   0F27 8A 2A              2221 	mov	_DataSize,r2
   0F29 75 2B 00           2222 	mov	(_DataSize + 1),#0x00
   0F2C 80 1E              2223 	sjmp	00121$
   0F2E                    2224 00110$:
                           2225 ;	usb.c:711: DataPtr = (BYTE*) &Endpoint3Desc;
   0F2E 75 2E 85           2226 	mov	_DataPtr,#_Endpoint3Desc
   0F31 75 2F 16           2227 	mov	(_DataPtr + 1),#(_Endpoint3Desc >> 8)
   0F34 75 30 80           2228 	mov	(_DataPtr + 2),#0x80
                           2229 ;	usb.c:712: DataSize = Endpoint3Desc.bLength;
   0F37 90 16 85           2230 	mov	dptr,#_Endpoint3Desc
   0F3A E4                 2231 	clr	a
   0F3B 93                 2232 	movc	a,@a+dptr
   0F3C FA                 2233 	mov	r2,a
   0F3D 8A 2A              2234 	mov	_DataSize,r2
   0F3F 75 2B 00           2235 	mov	(_DataSize + 1),#0x00
   0F42 80 08              2236 	sjmp	00121$
   0F44                    2237 00116$:
                           2238 ;	usb.c:718: Force_Stall();
   0F44 12 0B 68           2239 	lcall	_Force_Stall
                           2240 ;	usb.c:720: break;
                           2241 ;	usb.c:722: default:
   0F47 80 03              2242 	sjmp	00121$
   0F49                    2243 00120$:
                           2244 ;	usb.c:723: Force_Stall();                         // Send Stall if unsupported request
   0F49 12 0B 68           2245 	lcall	_Force_Stall
                           2246 ;	usb.c:725: }
   0F4C                    2247 00121$:
                           2248 ;	usb.c:729: if (Setup.wValue.c[MSB] == DSC_DEVICE ||     // Verify that the requested descriptor is
   0F4C 74 01              2249 	mov	a,#0x01
   0F4E B5 25 02           2250 	cjne	a,(_Setup + 0x0003),00168$
   0F51 80 1A              2251 	sjmp	00125$
   0F53                    2252 00168$:
                           2253 ;	usb.c:730: Setup.wValue.c[MSB] == DSC_CONFIG     ||     // valid
   0F53 74 02              2254 	mov	a,#0x02
   0F55 B5 25 02           2255 	cjne	a,(_Setup + 0x0003),00169$
   0F58 80 13              2256 	sjmp	00125$
   0F5A                    2257 00169$:
                           2258 ;	usb.c:731: Setup.wValue.c[MSB] == DSC_STRING     ||
   0F5A 74 03              2259 	mov	a,#0x03
   0F5C B5 25 02           2260 	cjne	a,(_Setup + 0x0003),00170$
   0F5F 80 0C              2261 	sjmp	00125$
   0F61                    2262 00170$:
                           2263 ;	usb.c:732: Setup.wValue.c[MSB] == DSC_INTERFACE  ||
   0F61 74 04              2264 	mov	a,#0x04
   0F63 B5 25 02           2265 	cjne	a,(_Setup + 0x0003),00171$
   0F66 80 05              2266 	sjmp	00125$
   0F68                    2267 00171$:
                           2268 ;	usb.c:733: Setup.wValue.c[MSB] == DSC_ENDPOINT)
   0F68 74 05              2269 	mov	a,#0x05
   0F6A B5 25 17           2270 	cjne	a,(_Setup + 0x0003),00126$
   0F6D                    2271 00125$:
                           2272 ;	usb.c:735: if ((Setup.wLength.c[LSB] < DataSize) && 
   0F6D AA 28              2273 	mov	r2,(_Setup + 0x0006)
   0F6F 7B 00              2274 	mov	r3,#0x00
   0F71 C3                 2275 	clr	c
   0F72 EA                 2276 	mov	a,r2
   0F73 95 2A              2277 	subb	a,_DataSize
   0F75 EB                 2278 	mov	a,r3
   0F76 95 2B              2279 	subb	a,(_DataSize + 1)
   0F78 50 0A              2280 	jnc	00126$
                           2281 ;	usb.c:736: (Setup.wLength.c[MSB] == 0))
   0F7A E5 29              2282 	mov	a,(_Setup + 0x0007)
   0F7C 70 06              2283 	jnz	00126$
                           2284 ;	usb.c:738: DataSize = Setup.wLength.i;       // Send only requested amount of data
   0F7E 85 28 2A           2285 	mov	_DataSize,(_Setup + 0x0006)
   0F81 85 29 2B           2286 	mov	(_DataSize + 1),((_Setup + 0x0006) + 1)
   0F84                    2287 00126$:
                           2288 ;	usb.c:743: if (Ep_Status[0] != EP_STALL)  {               // Make sure endpoint not in stall mode
   0F84 74 05              2289 	mov	a,#0x05
   0F86 B5 31 01           2290 	cjne	a,_Ep_Status,00176$
   0F89 22                 2291 	ret
   0F8A                    2292 00176$:
                           2293 ;	usb.c:744: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);          // Service Setup Packet
   0F8A                    2294 00131$:
   0F8A E5 96              2295 	mov	a,_USB0ADR
   0F8C 20 E7 FB           2296 	jb	acc.7,00131$
   0F8F 75 96 11           2297 	mov	_USB0ADR,#0x11
   0F92 75 97 40           2298 	mov	_USB0DAT,#0x40
                           2299 ;	usb.c:745: Ep_Status[0] = EP_TX;                      // Put endpoint in transmit mode
   0F95 75 31 01           2300 	mov	_Ep_Status,#0x01
                           2301 ;	usb.c:746: DataSent = 0;                              // Reset Data Sent counter
   0F98 E4                 2302 	clr	a
   0F99 F5 2C              2303 	mov	_DataSent,a
   0F9B F5 2D              2304 	mov	(_DataSent + 1),a
   0F9D 22                 2305 	ret
                           2306 ;------------------------------------------------------------
                           2307 ;Allocation info for local variables in function 'Get_Configuration'
                           2308 ;------------------------------------------------------------
                           2309 ;------------------------------------------------------------
                           2310 ;	usb.c:754: void Get_Configuration(void)                    // This routine returns current configuration value
                           2311 ;	-----------------------------------------
                           2312 ;	 function Get_Configuration
                           2313 ;	-----------------------------------------
   0F9E                    2314 _Get_Configuration:
                           2315 ;	usb.c:756: if ((Setup.bmRequestType != OUT_DEVICE)    ||// This request must be directed to the device
   0F9E 74 80              2316 	mov	a,#0x80
   0FA0 B5 22 1B           2317 	cjne	a,_Setup,00105$
                           2318 ;	usb.c:757: Setup.wValue.c[MSB]  || Setup.wValue.c[LSB]||// with value word set to zero
   0FA3 E5 25              2319 	mov	a,(_Setup + 0x0003)
   0FA5 70 17              2320 	jnz	00105$
   0FA7 E5 24              2321 	mov	a,(_Setup + 0x0002)
   0FA9 70 13              2322 	jnz	00105$
                           2323 ;	usb.c:758: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// and index set to zero
   0FAB E5 27              2324 	mov	a,(_Setup + 0x0005)
   0FAD 70 0F              2325 	jnz	00105$
   0FAF E5 26              2326 	mov	a,(_Setup + 0x0004)
   0FB1 70 0B              2327 	jnz	00105$
                           2328 ;	usb.c:759: Setup.wLength.c[MSB] || (Setup.wLength.c[LSB] != 1))// and setup length set to one
   0FB3 E5 29              2329 	mov	a,(_Setup + 0x0007)
   0FB5 70 07              2330 	jnz	00105$
   0FB7 74 01              2331 	mov	a,#0x01
   0FB9 B5 28 02           2332 	cjne	a,(_Setup + 0x0006),00138$
   0FBC 80 05              2333 	sjmp	00106$
   0FBE                    2334 00138$:
   0FBE                    2335 00105$:
                           2336 ;	usb.c:761: Force_Stall();                            // Otherwise send a stall to host
   0FBE 12 0B 68           2337 	lcall	_Force_Stall
   0FC1 80 28              2338 	sjmp	00107$
   0FC3                    2339 00106$:
                           2340 ;	usb.c:766: if (USB_State == DEV_CONFIGURED)          // If the device is configured, then return value 0x01
   0FC3 74 04              2341 	mov	a,#0x04
   0FC5 B5 21 0F           2342 	cjne	a,_USB_State,00102$
                           2343 ;	usb.c:768: DataPtr = (BYTE*)&ONES_PACKET;
   0FC8 75 2E C8           2344 	mov	_DataPtr,#_ONES_PACKET
   0FCB 75 2F 16           2345 	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
   0FCE 75 30 80           2346 	mov	(_DataPtr + 2),#0x80
                           2347 ;	usb.c:769: DataSize = 1;
   0FD1 75 2A 01           2348 	mov	_DataSize,#0x01
   0FD4 E4                 2349 	clr	a
   0FD5 F5 2B              2350 	mov	(_DataSize + 1),a
   0FD7                    2351 00102$:
                           2352 ;	usb.c:771: if (USB_State == DEV_ADDRESS)             // If the device is in address state, it is not
   0FD7 74 03              2353 	mov	a,#0x03
   0FD9 B5 21 0F           2354 	cjne	a,_USB_State,00107$
                           2355 ;	usb.c:773: DataPtr = (BYTE*)&ZERO_PACKET;
   0FDC 75 2E CA           2356 	mov	_DataPtr,#_ZERO_PACKET
   0FDF 75 2F 16           2357 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   0FE2 75 30 80           2358 	mov	(_DataPtr + 2),#0x80
                           2359 ;	usb.c:774: DataSize = 1;
   0FE5 75 2A 01           2360 	mov	_DataSize,#0x01
   0FE8 E4                 2361 	clr	a
   0FE9 F5 2B              2362 	mov	(_DataSize + 1),a
   0FEB                    2363 00107$:
                           2364 ;	usb.c:777: if (Ep_Status[0] != EP_STALL)
   0FEB 74 05              2365 	mov	a,#0x05
   0FED B5 31 01           2366 	cjne	a,_Ep_Status,00143$
   0FF0 22                 2367 	ret
   0FF1                    2368 00143$:
                           2369 ;	usb.c:779: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Out Packet bit
   0FF1                    2370 00114$:
   0FF1 E5 96              2371 	mov	a,_USB0ADR
   0FF3 20 E7 FB           2372 	jb	acc.7,00114$
   0FF6 75 96 11           2373 	mov	_USB0ADR,#0x11
   0FF9 75 97 40           2374 	mov	_USB0DAT,#0x40
                           2375 ;	usb.c:780: Ep_Status[0] = EP_TX;                     // Put endpoint into transmit mode
   0FFC 75 31 01           2376 	mov	_Ep_Status,#0x01
                           2377 ;	usb.c:781: DataSent = 0;                             // Reset Data Sent counter to zero
   0FFF E4                 2378 	clr	a
   1000 F5 2C              2379 	mov	_DataSent,a
   1002 F5 2D              2380 	mov	(_DataSent + 1),a
   1004 22                 2381 	ret
                           2382 ;------------------------------------------------------------
                           2383 ;Allocation info for local variables in function 'Set_Configuration'
                           2384 ;------------------------------------------------------------
                           2385 ;------------------------------------------------------------
                           2386 ;	usb.c:785: void Set_Configuration(void)                    // This routine allows host to change current
                           2387 ;	-----------------------------------------
                           2388 ;	 function Set_Configuration
                           2389 ;	-----------------------------------------
   1005                    2390 _Set_Configuration:
                           2391 ;	usb.c:787: if ((USB_State == DEV_DEFAULT)             ||// Device must be addressed before configured
   1005 74 02              2392 	mov	a,#0x02
   1007 B5 21 02           2393 	cjne	a,_USB_State,00211$
   100A 80 1E              2394 	sjmp	00152$
   100C                    2395 00211$:
                           2396 ;	usb.c:788: (Setup.bmRequestType != IN_DEVICE)         ||// and request recipient must be the device
   100C E5 22              2397 	mov	a,_Setup
   100E 70 1A              2398 	jnz	00152$
                           2399 ;	usb.c:789: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// the index and length words must be zero
   1010 E5 27              2400 	mov	a,(_Setup + 0x0005)
   1012 70 16              2401 	jnz	00152$
   1014 E5 26              2402 	mov	a,(_Setup + 0x0004)
   1016 70 12              2403 	jnz	00152$
                           2404 ;	usb.c:790: Setup.wLength.c[MSB] || Setup.wLength.c[LSB] || 
   1018 E5 29              2405 	mov	a,(_Setup + 0x0007)
   101A 70 0E              2406 	jnz	00152$
   101C E5 28              2407 	mov	a,(_Setup + 0x0006)
   101E 70 0A              2408 	jnz	00152$
                           2409 ;	usb.c:791: Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] > 1)) { // This software only supports config = 0,1
   1020 E5 25              2410 	mov	a,(_Setup + 0x0003)
   1022 70 06              2411 	jnz	00152$
   1024 E5 24              2412 	mov	a,(_Setup + 0x0002)
   1026 24 FE              2413 	add	a,#0xff - 0x01
   1028 50 06              2414 	jnc	00153$
   102A                    2415 00152$:
                           2416 ;	usb.c:792: Force_Stall();                            // Send stall if setup data is invalid
   102A 12 0B 68           2417 	lcall	_Force_Stall
   102D 02 11 10           2418 	ljmp	00154$
   1030                    2419 00153$:
                           2420 ;	usb.c:797: if (Setup.wValue.c[LSB] > 0)              // Any positive configuration request
   1030 E5 24              2421 	mov	a,(_Setup + 0x0002)
   1032 70 03              2422 	jnz	00219$
   1034 02 11 07           2423 	ljmp	00150$
   1037                    2424 00219$:
                           2425 ;	usb.c:799: USB_State = DEV_CONFIGURED;
   1037 75 21 04           2426 	mov	_USB_State,#0x04
                           2427 ;	usb.c:800: POLL_WRITE_BYTE(INDEX, 1);				// Select EP1
   103A                    2428 00101$:
   103A E5 96              2429 	mov	a,_USB0ADR
   103C 20 E7 FB           2430 	jb	acc.7,00101$
   103F 75 96 0E           2431 	mov	_USB0ADR,#0x0E
   1042 75 97 01           2432 	mov	_USB0DAT,#0x01
                           2433 ;	usb.c:801: POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);	// Set DIRSEL to indicate endpoint 1 is IN
   1045                    2434 00104$:
   1045 E5 96              2435 	mov	a,_USB0ADR
   1047 20 E7 FB           2436 	jb	acc.7,00104$
   104A 75 96 12           2437 	mov	_USB0ADR,#0x12
   104D 75 97 20           2438 	mov	_USB0DAT,#0x20
                           2439 ;	usb.c:802: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle
   1050                    2440 00107$:
   1050 E5 96              2441 	mov	a,_USB0ADR
   1052 20 E7 FB           2442 	jb	acc.7,00107$
   1055 75 96 11           2443 	mov	_USB0ADR,#0x11
   1058 75 97 40           2444 	mov	_USB0DAT,#0x40
                           2445 ;	usb.c:803: Ep_Status[1] = EP_IDLE;					// Set endpoint status to idle (enabled)
   105B 75 32 00           2446 	mov	(_Ep_Status + 0x0001),#0x00
                           2447 ;	usb.c:804: UsbInterruptInToPcEndpointService(1);
   105E 75 82 01           2448 	mov	dpl,#0x01
   1061 12 14 22           2449 	lcall	_UsbInterruptInToPcEndpointService
                           2450 ;	usb.c:805: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
   1064                    2451 00110$:
   1064 E5 96              2452 	mov	a,_USB0ADR
   1066 20 E7 FB           2453 	jb	acc.7,00110$
   1069 75 96 11           2454 	mov	_USB0ADR,#0x11
   106C 75 97 01           2455 	mov	_USB0DAT,#0x01
                           2456 ;	usb.c:809: POLL_WRITE_BYTE(INDEX, 2);				// Select EP2
   106F                    2457 00113$:
   106F E5 96              2458 	mov	a,_USB0ADR
   1071 20 E7 FB           2459 	jb	acc.7,00113$
   1074 75 96 0E           2460 	mov	_USB0ADR,#0x0E
   1077 75 97 02           2461 	mov	_USB0DAT,#0x02
                           2462 ;	usb.c:810: POLL_WRITE_BYTE(EINCSR2, 0);
   107A                    2463 00116$:
   107A E5 96              2464 	mov	a,_USB0ADR
   107C 20 E7 FB           2465 	jb	acc.7,00116$
   107F 75 96 12           2466 	mov	_USB0ADR,#0x12
   1082 75 97 00           2467 	mov	_USB0DAT,#0x00
                           2468 ;	usb.c:811: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle, SDSTL, STSTL
   1085                    2469 00119$:
   1085 E5 96              2470 	mov	a,_USB0ADR
   1087 20 E7 FB           2471 	jb	acc.7,00119$
   108A 75 96 11           2472 	mov	_USB0ADR,#0x11
   108D 75 97 40           2473 	mov	_USB0DAT,#0x40
                           2474 ;	usb.c:812: POLL_WRITE_BYTE(EOUTCSR2, rbOutDBOEN);	// double buffer
   1090                    2475 00122$:
   1090 E5 96              2476 	mov	a,_USB0ADR
   1092 20 E7 FB           2477 	jb	acc.7,00122$
   1095 75 96 15           2478 	mov	_USB0ADR,#0x15
   1098 75 97 80           2479 	mov	_USB0DAT,#0x80
                           2480 ;	usb.c:813: POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);	// clear data toggle
   109B                    2481 00125$:
   109B E5 96              2482 	mov	a,_USB0ADR
   109D 20 E7 FB           2483 	jb	acc.7,00125$
   10A0 75 96 14           2484 	mov	_USB0ADR,#0x14
   10A3 75 97 80           2485 	mov	_USB0DAT,#0x80
                           2486 ;	usb.c:815: POLL_WRITE_BYTE(EINCSR2, 0);	// Clear DIRSEL to indicate endpoint 1 is OUT
   10A6                    2487 00128$:
   10A6 E5 96              2488 	mov	a,_USB0ADR
   10A8 20 E7 FB           2489 	jb	acc.7,00128$
   10AB 75 96 12           2490 	mov	_USB0ADR,#0x12
   10AE 75 97 00           2491 	mov	_USB0DAT,#0x00
                           2492 ;	usb.c:818: Ep_Status[2] = EP_IDLE;
   10B1 75 33 00           2493 	mov	(_Ep_Status + 0x0002),#0x00
                           2494 ;	usb.c:819: UsbInterruptInToPcEndpointService(2);
   10B4 75 82 02           2495 	mov	dpl,#0x02
   10B7 12 14 22           2496 	lcall	_UsbInterruptInToPcEndpointService
                           2497 ;	usb.c:822: POLL_WRITE_BYTE(INDEX, 3);				// Select EP3
   10BA                    2498 00131$:
   10BA E5 96              2499 	mov	a,_USB0ADR
   10BC 20 E7 FB           2500 	jb	acc.7,00131$
   10BF 75 96 0E           2501 	mov	_USB0ADR,#0x0E
   10C2 75 97 03           2502 	mov	_USB0DAT,#0x03
                           2503 ;	usb.c:828: POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);	// Set DIRSEL to indicate endpoint 1 is IN
   10C5                    2504 00134$:
   10C5 E5 96              2505 	mov	a,_USB0ADR
   10C7 20 E7 FB           2506 	jb	acc.7,00134$
   10CA 75 96 12           2507 	mov	_USB0ADR,#0x12
   10CD 75 97 20           2508 	mov	_USB0DAT,#0x20
                           2509 ;	usb.c:829: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle
   10D0                    2510 00137$:
   10D0 E5 96              2511 	mov	a,_USB0ADR
   10D2 20 E7 FB           2512 	jb	acc.7,00137$
   10D5 75 96 11           2513 	mov	_USB0ADR,#0x11
   10D8 75 97 40           2514 	mov	_USB0DAT,#0x40
                           2515 ;	usb.c:831: Ep_Status[3] = EP_IDLE;
   10DB 75 34 00           2516 	mov	(_Ep_Status + 0x0003),#0x00
                           2517 ;	usb.c:832: UsbInterruptInToPcEndpointService(3);
   10DE 75 82 03           2518 	mov	dpl,#0x03
   10E1 12 14 22           2519 	lcall	_UsbInterruptInToPcEndpointService
                           2520 ;	usb.c:833: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
   10E4                    2521 00140$:
   10E4 E5 96              2522 	mov	a,_USB0ADR
   10E6 20 E7 FB           2523 	jb	acc.7,00140$
   10E9 75 96 11           2524 	mov	_USB0ADR,#0x11
   10EC 75 97 01           2525 	mov	_USB0DAT,#0x01
                           2526 ;	usb.c:838: POLL_WRITE_BYTE(INDEX, 0);				// Select EP1
   10EF                    2527 00143$:
   10EF E5 96              2528 	mov	a,_USB0ADR
   10F1 20 E7 FB           2529 	jb	acc.7,00143$
   10F4 75 96 0E           2530 	mov	_USB0ADR,#0x0E
   10F7 75 97 00           2531 	mov	_USB0DAT,#0x00
                           2532 ;	usb.c:844: POLL_WRITE_BYTE(INDEX, 0);             // Set index back to endpoint 0
   10FA                    2533 00146$:
   10FA E5 96              2534 	mov	a,_USB0ADR
   10FC 20 E7 FB           2535 	jb	acc.7,00146$
   10FF 75 96 0E           2536 	mov	_USB0ADR,#0x0E
   1102 75 97 00           2537 	mov	_USB0DAT,#0x00
   1105 80 09              2538 	sjmp	00154$
   1107                    2539 00150$:
                           2540 ;	usb.c:848: USB_State = DEV_ADDRESS;               // Unconfigures device by setting state to
   1107 75 21 03           2541 	mov	_USB_State,#0x03
                           2542 ;	usb.c:849: Ep_Status[1] = EP_HALT;                // address, and changing endpoint 1 and 2
   110A 75 32 03           2543 	mov	(_Ep_Status + 0x0001),#0x03
                           2544 ;	usb.c:850: Ep_Status[2] = EP_HALT;                // status to halt
   110D 75 33 03           2545 	mov	(_Ep_Status + 0x0002),#0x03
   1110                    2546 00154$:
                           2547 ;	usb.c:853: if (Ep_Status[0] != EP_STALL)
   1110 74 05              2548 	mov	a,#0x05
   1112 B5 31 01           2549 	cjne	a,_Ep_Status,00236$
   1115 22                 2550 	ret
   1116                    2551 00236$:
                           2552 ;	usb.c:855: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   1116                    2553 00162$:
   1116 E5 96              2554 	mov	a,_USB0ADR
   1118 20 E7 FB           2555 	jb	acc.7,00162$
   111B 75 96 11           2556 	mov	_USB0ADR,#0x11
   111E 75 97 48           2557 	mov	_USB0DAT,#0x48
   1121 22                 2558 	ret
                           2559 ;------------------------------------------------------------
                           2560 ;Allocation info for local variables in function 'Get_Interface'
                           2561 ;------------------------------------------------------------
                           2562 ;------------------------------------------------------------
                           2563 ;	usb.c:861: void Get_Interface(void)                        // This routine returns 0x00, since only one interface
                           2564 ;	-----------------------------------------
                           2565 ;	 function Get_Interface
                           2566 ;	-----------------------------------------
   1122                    2567 _Get_Interface:
                           2568 ;	usb.c:864: if ((USB_State != DEV_CONFIGURED)      ||    // If device is not configured
   1122 74 04              2569 	mov	a,#0x04
   1124 B5 21 20           2570 	cjne	a,_USB_State,00101$
                           2571 ;	usb.c:865: (Setup.bmRequestType != OUT_INTERFACE) ||    // or recipient is not an interface
   1127 74 81              2572 	mov	a,#0x81
   1129 B5 22 1B           2573 	cjne	a,_Setup,00101$
                           2574 ;	usb.c:866: Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||// or non-zero value or index fields
   112C E5 25              2575 	mov	a,(_Setup + 0x0003)
   112E 70 17              2576 	jnz	00101$
   1130 E5 24              2577 	mov	a,(_Setup + 0x0002)
   1132 70 13              2578 	jnz	00101$
                           2579 ;	usb.c:867: Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB] ||// or data length not equal to one
   1134 E5 27              2580 	mov	a,(_Setup + 0x0005)
   1136 70 0F              2581 	jnz	00101$
   1138 E5 26              2582 	mov	a,(_Setup + 0x0004)
   113A 70 0B              2583 	jnz	00101$
                           2584 ;	usb.c:868: Setup.wLength.c[MSB] ||(Setup.wLength.c[LSB] != 1))
   113C E5 29              2585 	mov	a,(_Setup + 0x0007)
   113E 70 07              2586 	jnz	00101$
   1140 74 01              2587 	mov	a,#0x01
   1142 B5 28 02           2588 	cjne	a,(_Setup + 0x0006),00136$
   1145 80 05              2589 	sjmp	00102$
   1147                    2590 00136$:
   1147                    2591 00101$:
                           2592 ;	usb.c:870: Force_Stall();                            // Then return stall due to invalid request
   1147 12 0B 68           2593 	lcall	_Force_Stall
   114A 80 0F              2594 	sjmp	00103$
   114C                    2595 00102$:
                           2596 ;	usb.c:875: DataPtr = (BYTE*)&ZERO_PACKET;            // Otherwise, return 0x00 to host
   114C 75 2E CA           2597 	mov	_DataPtr,#_ZERO_PACKET
   114F 75 2F 16           2598 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   1152 75 30 80           2599 	mov	(_DataPtr + 2),#0x80
                           2600 ;	usb.c:876: DataSize = 1;
   1155 75 2A 01           2601 	mov	_DataSize,#0x01
   1158 E4                 2602 	clr	a
   1159 F5 2B              2603 	mov	(_DataSize + 1),a
   115B                    2604 00103$:
                           2605 ;	usb.c:878: if (Ep_Status[0] != EP_STALL)
   115B 74 05              2606 	mov	a,#0x05
   115D B5 31 01           2607 	cjne	a,_Ep_Status,00137$
   1160 22                 2608 	ret
   1161                    2609 00137$:
                           2610 ;	usb.c:880: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Setup packet, put endpoint in transmit
   1161                    2611 00111$:
   1161 E5 96              2612 	mov	a,_USB0ADR
   1163 20 E7 FB           2613 	jb	acc.7,00111$
   1166 75 96 11           2614 	mov	_USB0ADR,#0x11
   1169 75 97 40           2615 	mov	_USB0DAT,#0x40
                           2616 ;	usb.c:881: Ep_Status[0] = EP_TX;                     // mode and reset Data sent counter
   116C 75 31 01           2617 	mov	_Ep_Status,#0x01
                           2618 ;	usb.c:882: DataSent = 0;
   116F E4                 2619 	clr	a
   1170 F5 2C              2620 	mov	_DataSent,a
   1172 F5 2D              2621 	mov	(_DataSent + 1),a
   1174 22                 2622 	ret
                           2623 ;------------------------------------------------------------
                           2624 ;Allocation info for local variables in function 'Set_Interface'
                           2625 ;------------------------------------------------------------
                           2626 ;bIndex                    Allocated to registers r2 
                           2627 ;------------------------------------------------------------
                           2628 ;	usb.c:886: void Set_Interface(void)
                           2629 ;	-----------------------------------------
                           2630 ;	 function Set_Interface
                           2631 ;	-----------------------------------------
   1175                    2632 _Set_Interface:
                           2633 ;	usb.c:891: POLL_READ_BYTE (INDEX, bIndex);
   1175                    2634 00101$:
   1175 E5 96              2635 	mov	a,_USB0ADR
   1177 20 E7 FB           2636 	jb	acc.7,00101$
   117A 75 96 8E           2637 	mov	_USB0ADR,#0x8E
   117D                    2638 00104$:
   117D E5 96              2639 	mov	a,_USB0ADR
   117F 20 E7 FB           2640 	jb	acc.7,00104$
   1182 AA 97              2641 	mov	r2,_USB0DAT
                           2642 ;	usb.c:893: if ((Setup.bmRequestType != IN_INTERFACE)  ||// Make sure request is directed at interface
   1184 74 01              2643 	mov	a,#0x01
   1186 B5 22 18           2644 	cjne	a,_Setup,00107$
                           2645 ;	usb.c:894: Setup.wLength.c[MSB] ||Setup.wLength.c[LSB]||// and all other packet values are set to zero
   1189 E5 29              2646 	mov	a,(_Setup + 0x0007)
   118B 70 14              2647 	jnz	00107$
   118D E5 28              2648 	mov	a,(_Setup + 0x0006)
   118F 70 10              2649 	jnz	00107$
                           2650 ;	usb.c:895: Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||
   1191 E5 25              2651 	mov	a,(_Setup + 0x0003)
   1193 70 0C              2652 	jnz	00107$
   1195 E5 24              2653 	mov	a,(_Setup + 0x0002)
   1197 70 08              2654 	jnz	00107$
                           2655 ;	usb.c:896: Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB])
   1199 E5 27              2656 	mov	a,(_Setup + 0x0005)
   119B 70 04              2657 	jnz	00107$
   119D E5 26              2658 	mov	a,(_Setup + 0x0004)
   119F 60 07              2659 	jz	00108$
   11A1                    2660 00107$:
                           2661 ;	usb.c:898: Force_Stall();                            // Othewise send a stall to host
   11A1 C0 02              2662 	push	ar2
   11A3 12 0B 68           2663 	lcall	_Force_Stall
   11A6 D0 02              2664 	pop	ar2
   11A8                    2665 00108$:
                           2666 ;	usb.c:900: if (Ep_Status[0] != EP_STALL) {
   11A8 74 05              2667 	mov	a,#0x05
   11AA B5 31 01           2668 	cjne	a,_Ep_Status,00214$
   11AD 22                 2669 	ret
   11AE                    2670 00214$:
                           2671 ;	usb.c:905: POLL_WRITE_BYTE(INDEX, 1);           // Index to Endpoint1 registers
   11AE                    2672 00115$:
   11AE E5 96              2673 	mov	a,_USB0ADR
   11B0 20 E7 FB           2674 	jb	acc.7,00115$
   11B3 75 96 0E           2675 	mov	_USB0ADR,#0x0E
   11B6 75 97 01           2676 	mov	_USB0DAT,#0x01
                           2677 ;	usb.c:906: POLL_WRITE_BYTE(EINCSR1, 0x40);      // clear toggle
   11B9                    2678 00118$:
   11B9 E5 96              2679 	mov	a,_USB0ADR
   11BB 20 E7 FB           2680 	jb	acc.7,00118$
   11BE 75 96 11           2681 	mov	_USB0ADR,#0x11
   11C1 75 97 40           2682 	mov	_USB0DAT,#0x40
                           2683 ;	usb.c:907: POLL_WRITE_BYTE(EINCSR2, 0x20);      // FIFO split disabled,
   11C4                    2684 00121$:
   11C4 E5 96              2685 	mov	a,_USB0ADR
   11C6 20 E7 FB           2686 	jb	acc.7,00121$
   11C9 75 96 12           2687 	mov	_USB0ADR,#0x12
   11CC 75 97 20           2688 	mov	_USB0DAT,#0x20
                           2689 ;	usb.c:909: POLL_WRITE_BYTE(EOUTCSR2, 0);        // Double-buffering disabled
   11CF                    2690 00124$:
   11CF E5 96              2691 	mov	a,_USB0ADR
   11D1 20 E7 FB           2692 	jb	acc.7,00124$
   11D4 75 96 15           2693 	mov	_USB0ADR,#0x15
   11D7 75 97 00           2694 	mov	_USB0DAT,#0x00
                           2695 ;	usb.c:910: Ep_Status[1] = EP_IDLE; // Set endpoint state
   11DA 75 32 00           2696 	mov	(_Ep_Status + 0x0001),#0x00
                           2697 ;	usb.c:911: UsbInterruptInToPcEndpointService(1);
   11DD 75 82 01           2698 	mov	dpl,#0x01
   11E0 C0 02              2699 	push	ar2
   11E2 12 14 22           2700 	lcall	_UsbInterruptInToPcEndpointService
   11E5 D0 02              2701 	pop	ar2
                           2702 ;	usb.c:912: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
   11E7                    2703 00127$:
   11E7 E5 96              2704 	mov	a,_USB0ADR
   11E9 20 E7 FB           2705 	jb	acc.7,00127$
   11EC 75 96 11           2706 	mov	_USB0ADR,#0x11
   11EF 75 97 01           2707 	mov	_USB0DAT,#0x01
                           2708 ;	usb.c:915: POLL_WRITE_BYTE(INDEX, 3);           // Index to Endpoint1 registers
   11F2                    2709 00130$:
   11F2 E5 96              2710 	mov	a,_USB0ADR
   11F4 20 E7 FB           2711 	jb	acc.7,00130$
   11F7 75 96 0E           2712 	mov	_USB0ADR,#0x0E
   11FA 75 97 03           2713 	mov	_USB0DAT,#0x03
                           2714 ;	usb.c:916: POLL_WRITE_BYTE(EINCSR1, 0x40);      // clear toggle
   11FD                    2715 00133$:
   11FD E5 96              2716 	mov	a,_USB0ADR
   11FF 20 E7 FB           2717 	jb	acc.7,00133$
   1202 75 96 11           2718 	mov	_USB0ADR,#0x11
   1205 75 97 40           2719 	mov	_USB0DAT,#0x40
                           2720 ;	usb.c:917: POLL_WRITE_BYTE(EINCSR2, 0x20);      // FIFO split disabled,
   1208                    2721 00136$:
   1208 E5 96              2722 	mov	a,_USB0ADR
   120A 20 E7 FB           2723 	jb	acc.7,00136$
   120D 75 96 12           2724 	mov	_USB0ADR,#0x12
   1210 75 97 20           2725 	mov	_USB0DAT,#0x20
                           2726 ;	usb.c:919: POLL_WRITE_BYTE(EOUTCSR2, 0);        // Double-buffering disabled
   1213                    2727 00139$:
   1213 E5 96              2728 	mov	a,_USB0ADR
   1215 20 E7 FB           2729 	jb	acc.7,00139$
   1218 75 96 15           2730 	mov	_USB0ADR,#0x15
   121B 75 97 00           2731 	mov	_USB0DAT,#0x00
                           2732 ;	usb.c:920: Ep_Status[3] = EP_IDLE; // Set endpoint state
   121E 75 34 00           2733 	mov	(_Ep_Status + 0x0003),#0x00
                           2734 ;	usb.c:921: UsbInterruptInToPcEndpointService(3);
   1221 75 82 03           2735 	mov	dpl,#0x03
   1224 C0 02              2736 	push	ar2
   1226 12 14 22           2737 	lcall	_UsbInterruptInToPcEndpointService
   1229 D0 02              2738 	pop	ar2
                           2739 ;	usb.c:922: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
   122B                    2740 00142$:
   122B E5 96              2741 	mov	a,_USB0ADR
   122D 20 E7 FB           2742 	jb	acc.7,00142$
   1230 75 96 11           2743 	mov	_USB0ADR,#0x11
   1233 75 97 01           2744 	mov	_USB0DAT,#0x01
                           2745 ;	usb.c:925: POLL_WRITE_BYTE(INDEX, 2);           // Index to Endpoint2 registers
   1236                    2746 00145$:
   1236 E5 96              2747 	mov	a,_USB0ADR
   1238 20 E7 FB           2748 	jb	acc.7,00145$
   123B 75 96 0E           2749 	mov	_USB0ADR,#0x0E
   123E 75 97 02           2750 	mov	_USB0DAT,#0x02
                           2751 ;	usb.c:926: POLL_WRITE_BYTE(EINCSR2, 0x04);      // FIFO split enabled,
   1241                    2752 00148$:
   1241 E5 96              2753 	mov	a,_USB0ADR
   1243 20 E7 FB           2754 	jb	acc.7,00148$
   1246 75 96 12           2755 	mov	_USB0ADR,#0x12
   1249 75 97 04           2756 	mov	_USB0DAT,#0x04
                           2757 ;	usb.c:928: Ep_Status[2] = EP_IDLE;// Set endpoint state
   124C 75 33 00           2758 	mov	(_Ep_Status + 0x0002),#0x00
                           2759 ;	usb.c:930: UsbInterruptInToPcEndpointService(2);
   124F 75 82 02           2760 	mov	dpl,#0x02
   1252 C0 02              2761 	push	ar2
   1254 12 14 22           2762 	lcall	_UsbInterruptInToPcEndpointService
   1257 D0 02              2763 	pop	ar2
                           2764 ;	usb.c:933: POLL_WRITE_BYTE(INDEX, 0);           // Return to index 0
   1259                    2765 00151$:
   1259 E5 96              2766 	mov	a,_USB0ADR
   125B 20 E7 FB           2767 	jb	acc.7,00151$
   125E 75 96 0E           2768 	mov	_USB0ADR,#0x0E
   1261 75 97 00           2769 	mov	_USB0DAT,#0x00
                           2770 ;	usb.c:934: POLL_WRITE_BYTE (INDEX, bIndex);           // Restore INDEX
   1264                    2771 00154$:
   1264 E5 96              2772 	mov	a,_USB0ADR
   1266 20 E7 FB           2773 	jb	acc.7,00154$
   1269 75 96 0E           2774 	mov	_USB0ADR,#0x0E
   126C 8A 97              2775 	mov	_USB0DAT,r2
                           2776 ;	usb.c:935: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   126E                    2777 00157$:
   126E E5 96              2778 	mov	a,_USB0ADR
   1270 20 E7 FB           2779 	jb	acc.7,00157$
   1273 75 96 11           2780 	mov	_USB0ADR,#0x11
   1276 75 97 48           2781 	mov	_USB0DAT,#0x48
   1279 22                 2782 	ret
                           2783 	.area CSEG    (CODE)
                           2784 	.area CONST   (CODE)
   16C8                    2785 _ONES_PACKET:
   16C8 01                 2786 	.db #0x01
   16C9 00                 2787 	.db #0x00
   16CA                    2788 _ZERO_PACKET:
   16CA 00                 2789 	.db #0x00
   16CB 00                 2790 	.db #0x00
                           2791 	.area XINIT   (CODE)
                           2792 	.area CABS    (ABS,CODE)
