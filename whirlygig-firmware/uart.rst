                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Sat Jul 12 02:11:19 2014
                              5 ;--------------------------------------------------------
                              6 	.module uart
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _UartInit
                             13 	.globl _Uart_ISR
                             14 	.globl _SerRx
                             15 	.globl _SerTxArray
                             16 	.globl _SerTx
                             17 	.globl _SPIF
                             18 	.globl _WCOL
                             19 	.globl _MODF
                             20 	.globl _RXOVRN
                             21 	.globl _TXBSY
                             22 	.globl _SLVSEL
                             23 	.globl _TXBMT
                             24 	.globl _SPIEN
                             25 	.globl _B_7
                             26 	.globl _B_6
                             27 	.globl _B_5
                             28 	.globl _B_4
                             29 	.globl _B_3
                             30 	.globl _B_2
                             31 	.globl _B_1
                             32 	.globl _B_0
                             33 	.globl _AD0EN
                             34 	.globl _AD0TM
                             35 	.globl _AD0INT
                             36 	.globl _AD0BUSY
                             37 	.globl _AD0WINT
                             38 	.globl _AD0CM2
                             39 	.globl _AD0CM1
                             40 	.globl _AD0CM0
                             41 	.globl _ACC_7
                             42 	.globl _ACC_6
                             43 	.globl _ACC_5
                             44 	.globl _ACC_4
                             45 	.globl _ACC_3
                             46 	.globl _ACC_2
                             47 	.globl _ACC_1
                             48 	.globl _ACC_0
                             49 	.globl _CF
                             50 	.globl _CR
                             51 	.globl _CCF4
                             52 	.globl _CCF3
                             53 	.globl _CCF2
                             54 	.globl _CCF1
                             55 	.globl _CCF0
                             56 	.globl _CY
                             57 	.globl _AC
                             58 	.globl _F0
                             59 	.globl _RS1
                             60 	.globl _RS0
                             61 	.globl _OV
                             62 	.globl _F1
                             63 	.globl _P
                             64 	.globl _TF2H
                             65 	.globl _TF2L
                             66 	.globl _TF2LEN
                             67 	.globl _T2SOF
                             68 	.globl _T2SPLIT
                             69 	.globl _TR2
                             70 	.globl _T2XCLK
                             71 	.globl _MASTER
                             72 	.globl _TXMODE
                             73 	.globl _STA
                             74 	.globl _STO
                             75 	.globl _ACKRQ
                             76 	.globl _ARBLOST
                             77 	.globl _ACK
                             78 	.globl _SI
                             79 	.globl _PSPI0
                             80 	.globl _PT2
                             81 	.globl _PS0
                             82 	.globl _PT1
                             83 	.globl _PX1
                             84 	.globl _PT0
                             85 	.globl _PX0
                             86 	.globl _P3_7
                             87 	.globl _P3_6
                             88 	.globl _P3_5
                             89 	.globl _P3_4
                             90 	.globl _P3_3
                             91 	.globl _P3_2
                             92 	.globl _P3_1
                             93 	.globl _P3_0
                             94 	.globl _EA
                             95 	.globl _ESPI0
                             96 	.globl _ET2
                             97 	.globl _ES0
                             98 	.globl _ET1
                             99 	.globl _EX1
                            100 	.globl _ET0
                            101 	.globl _EX0
                            102 	.globl _P2_7
                            103 	.globl _P2_6
                            104 	.globl _P2_5
                            105 	.globl _P2_4
                            106 	.globl _P2_3
                            107 	.globl _P2_2
                            108 	.globl _P2_1
                            109 	.globl _P2_0
                            110 	.globl _S0MODE
                            111 	.globl _MCE0
                            112 	.globl _REN0
                            113 	.globl _TB80
                            114 	.globl _RB80
                            115 	.globl _TI0
                            116 	.globl _RI0
                            117 	.globl _P1_7
                            118 	.globl _P1_6
                            119 	.globl _P1_5
                            120 	.globl _P1_4
                            121 	.globl _P1_3
                            122 	.globl _P1_2
                            123 	.globl _P1_1
                            124 	.globl _P1_0
                            125 	.globl _TF1
                            126 	.globl _TR1
                            127 	.globl _TF0
                            128 	.globl _TR0
                            129 	.globl _IE1
                            130 	.globl _IT1
                            131 	.globl _IE0
                            132 	.globl _IT0
                            133 	.globl _P0_7
                            134 	.globl _P0_6
                            135 	.globl _P0_5
                            136 	.globl _P0_4
                            137 	.globl _P0_3
                            138 	.globl _P0_2
                            139 	.globl _P0_1
                            140 	.globl _P0_0
                            141 	.globl _VDM0CN
                            142 	.globl _PCA0CPH4
                            143 	.globl _PCA0CPL4
                            144 	.globl _PCA0CPH0
                            145 	.globl _PCA0CPL0
                            146 	.globl _PCA0H
                            147 	.globl _PCA0L
                            148 	.globl _SPI0CN
                            149 	.globl _EIP2
                            150 	.globl _EIP1
                            151 	.globl _P3MDIN
                            152 	.globl _P2MDIN
                            153 	.globl _P1MDIN
                            154 	.globl _P0MDIN
                            155 	.globl _B
                            156 	.globl _RSTSRC
                            157 	.globl _PCA0CPH3
                            158 	.globl _PCA0CPL3
                            159 	.globl _PCA0CPH2
                            160 	.globl _PCA0CPL2
                            161 	.globl _PCA0CPH1
                            162 	.globl _PCA0CPL1
                            163 	.globl _ADC0CN
                            164 	.globl _EIE2
                            165 	.globl _EIE1
                            166 	.globl _IT01CF
                            167 	.globl _XBR1
                            168 	.globl _XBR0
                            169 	.globl _ACC
                            170 	.globl _PCA0CPM4
                            171 	.globl _PCA0CPM3
                            172 	.globl _PCA0CPM2
                            173 	.globl _PCA0CPM1
                            174 	.globl _PCA0CPM0
                            175 	.globl _PCA0MD
                            176 	.globl _PCA0CN
                            177 	.globl _USB0XCN
                            178 	.globl _P2SKIP
                            179 	.globl _P1SKIP
                            180 	.globl _P0SKIP
                            181 	.globl _REF0CN
                            182 	.globl _PSW
                            183 	.globl _TMR2H
                            184 	.globl _TMR2L
                            185 	.globl _TMR2RLH
                            186 	.globl _TMR2RLL
                            187 	.globl _REG0CN
                            188 	.globl _TMR2CN
                            189 	.globl _ADC0LTH
                            190 	.globl _ADC0LTL
                            191 	.globl _ADC0GTH
                            192 	.globl _ADC0GTL
                            193 	.globl _SMB0DAT
                            194 	.globl _SMB0CF
                            195 	.globl _SMB0CN
                            196 	.globl _ADC0H
                            197 	.globl _ADC0L
                            198 	.globl _ADC0CF
                            199 	.globl _AMX0P
                            200 	.globl _AMX0N
                            201 	.globl _CLKMUL
                            202 	.globl _IP
                            203 	.globl _FLKEY
                            204 	.globl _FLSCL
                            205 	.globl _OSCICL
                            206 	.globl _OSCICN
                            207 	.globl _OSCXCN
                            208 	.globl _P3
                            209 	.globl _EMI0CN
                            210 	.globl _CLKSEL
                            211 	.globl _IE
                            212 	.globl _P3MDOUT
                            213 	.globl _P2MDOUT
                            214 	.globl _P1MDOUT
                            215 	.globl _P0MDOUT
                            216 	.globl _SPIODAT
                            217 	.globl _SPIDAT
                            218 	.globl _SPIOCKR
                            219 	.globl _SPICKR
                            220 	.globl _SPIOCFG
                            221 	.globl _SPICFG
                            222 	.globl _P2
                            223 	.globl _CPT0MX
                            224 	.globl _CPT1MX
                            225 	.globl _CPT0MD
                            226 	.globl _CPT1MD
                            227 	.globl _CPT0CN
                            228 	.globl _CPT1CN
                            229 	.globl _SBUF0
                            230 	.globl _SCON0
                            231 	.globl _USB0DAT
                            232 	.globl _USB0ADR
                            233 	.globl _TMR3H
                            234 	.globl _TMR3L
                            235 	.globl _TMR3RLH
                            236 	.globl _TMR3RLL
                            237 	.globl _TMR3CN
                            238 	.globl _P1
                            239 	.globl _PSCTL
                            240 	.globl _CKCON
                            241 	.globl _TH1
                            242 	.globl _TH0
                            243 	.globl _TL1
                            244 	.globl _TL0
                            245 	.globl _TMOD
                            246 	.globl _TCON
                            247 	.globl _PCON
                            248 	.globl _DPH
                            249 	.globl _DPL
                            250 	.globl _SP
                            251 	.globl _P0
                            252 	.globl _baRxBuffer
                            253 	.globl _baTxBuffer
                            254 	.globl _SerTxArray_PARM_2
                            255 	.globl _fRxOverflow
                            256 	.globl _bCountRxSwallowAsEcho
                            257 	.globl _bRxHead
                            258 	.globl _bRxTail
                            259 	.globl _bLastTxByte
                            260 	.globl _bCountTxerrors
                            261 	.globl _fTransmitImmediate
                            262 	.globl _bTxHead
                            263 	.globl _bTxTail
                            264 ;--------------------------------------------------------
                            265 ; special function registers
                            266 ;--------------------------------------------------------
                            267 	.area RSEG    (DATA)
                    0080    268 _P0	=	0x0080
                    0081    269 _SP	=	0x0081
                    0082    270 _DPL	=	0x0082
                    0083    271 _DPH	=	0x0083
                    0087    272 _PCON	=	0x0087
                    0088    273 _TCON	=	0x0088
                    0089    274 _TMOD	=	0x0089
                    008A    275 _TL0	=	0x008a
                    008B    276 _TL1	=	0x008b
                    008C    277 _TH0	=	0x008c
                    008D    278 _TH1	=	0x008d
                    008E    279 _CKCON	=	0x008e
                    008F    280 _PSCTL	=	0x008f
                    0090    281 _P1	=	0x0090
                    0091    282 _TMR3CN	=	0x0091
                    0092    283 _TMR3RLL	=	0x0092
                    0093    284 _TMR3RLH	=	0x0093
                    0094    285 _TMR3L	=	0x0094
                    0095    286 _TMR3H	=	0x0095
                    0096    287 _USB0ADR	=	0x0096
                    0097    288 _USB0DAT	=	0x0097
                    0098    289 _SCON0	=	0x0098
                    0099    290 _SBUF0	=	0x0099
                    009A    291 _CPT1CN	=	0x009a
                    009B    292 _CPT0CN	=	0x009b
                    009C    293 _CPT1MD	=	0x009c
                    009D    294 _CPT0MD	=	0x009d
                    009E    295 _CPT1MX	=	0x009e
                    009F    296 _CPT0MX	=	0x009f
                    00A0    297 _P2	=	0x00a0
                    00A1    298 _SPICFG	=	0x00a1
                    00A1    299 _SPIOCFG	=	0x00a1
                    00A2    300 _SPICKR	=	0x00a2
                    00A2    301 _SPIOCKR	=	0x00a2
                    00A3    302 _SPIDAT	=	0x00a3
                    00A3    303 _SPIODAT	=	0x00a3
                    00A4    304 _P0MDOUT	=	0x00a4
                    00A5    305 _P1MDOUT	=	0x00a5
                    00A6    306 _P2MDOUT	=	0x00a6
                    00A7    307 _P3MDOUT	=	0x00a7
                    00A8    308 _IE	=	0x00a8
                    00A9    309 _CLKSEL	=	0x00a9
                    00AA    310 _EMI0CN	=	0x00aa
                    00B0    311 _P3	=	0x00b0
                    00B1    312 _OSCXCN	=	0x00b1
                    00B2    313 _OSCICN	=	0x00b2
                    00B3    314 _OSCICL	=	0x00b3
                    00B6    315 _FLSCL	=	0x00b6
                    00B7    316 _FLKEY	=	0x00b7
                    00B8    317 _IP	=	0x00b8
                    00B9    318 _CLKMUL	=	0x00b9
                    00BA    319 _AMX0N	=	0x00ba
                    00BB    320 _AMX0P	=	0x00bb
                    00BC    321 _ADC0CF	=	0x00bc
                    00BD    322 _ADC0L	=	0x00bd
                    00BE    323 _ADC0H	=	0x00be
                    00C0    324 _SMB0CN	=	0x00c0
                    00C1    325 _SMB0CF	=	0x00c1
                    00C2    326 _SMB0DAT	=	0x00c2
                    00C3    327 _ADC0GTL	=	0x00c3
                    00C4    328 _ADC0GTH	=	0x00c4
                    00C5    329 _ADC0LTL	=	0x00c5
                    00C6    330 _ADC0LTH	=	0x00c6
                    00C8    331 _TMR2CN	=	0x00c8
                    00C9    332 _REG0CN	=	0x00c9
                    00CA    333 _TMR2RLL	=	0x00ca
                    00CB    334 _TMR2RLH	=	0x00cb
                    00CC    335 _TMR2L	=	0x00cc
                    00CD    336 _TMR2H	=	0x00cd
                    00D0    337 _PSW	=	0x00d0
                    00D1    338 _REF0CN	=	0x00d1
                    00D4    339 _P0SKIP	=	0x00d4
                    00D5    340 _P1SKIP	=	0x00d5
                    00D6    341 _P2SKIP	=	0x00d6
                    00D7    342 _USB0XCN	=	0x00d7
                    00D8    343 _PCA0CN	=	0x00d8
                    00D9    344 _PCA0MD	=	0x00d9
                    00DA    345 _PCA0CPM0	=	0x00da
                    00DB    346 _PCA0CPM1	=	0x00db
                    00DC    347 _PCA0CPM2	=	0x00dc
                    00DD    348 _PCA0CPM3	=	0x00dd
                    00DE    349 _PCA0CPM4	=	0x00de
                    00E0    350 _ACC	=	0x00e0
                    00E1    351 _XBR0	=	0x00e1
                    00E2    352 _XBR1	=	0x00e2
                    00E4    353 _IT01CF	=	0x00e4
                    00E6    354 _EIE1	=	0x00e6
                    00E7    355 _EIE2	=	0x00e7
                    00E8    356 _ADC0CN	=	0x00e8
                    00E9    357 _PCA0CPL1	=	0x00e9
                    00EA    358 _PCA0CPH1	=	0x00ea
                    00EB    359 _PCA0CPL2	=	0x00eb
                    00EC    360 _PCA0CPH2	=	0x00ec
                    00ED    361 _PCA0CPL3	=	0x00ed
                    00EE    362 _PCA0CPH3	=	0x00ee
                    00EF    363 _RSTSRC	=	0x00ef
                    00F0    364 _B	=	0x00f0
                    00F1    365 _P0MDIN	=	0x00f1
                    00F2    366 _P1MDIN	=	0x00f2
                    00F3    367 _P2MDIN	=	0x00f3
                    00F4    368 _P3MDIN	=	0x00f4
                    00F6    369 _EIP1	=	0x00f6
                    00F7    370 _EIP2	=	0x00f7
                    00F8    371 _SPI0CN	=	0x00f8
                    00F9    372 _PCA0L	=	0x00f9
                    00FA    373 _PCA0H	=	0x00fa
                    00FB    374 _PCA0CPL0	=	0x00fb
                    00FC    375 _PCA0CPH0	=	0x00fc
                    00FD    376 _PCA0CPL4	=	0x00fd
                    00FE    377 _PCA0CPH4	=	0x00fe
                    00FF    378 _VDM0CN	=	0x00ff
                            379 ;--------------------------------------------------------
                            380 ; special function bits
                            381 ;--------------------------------------------------------
                            382 	.area RSEG    (DATA)
                    0080    383 _P0_0	=	0x0080
                    0081    384 _P0_1	=	0x0081
                    0082    385 _P0_2	=	0x0082
                    0083    386 _P0_3	=	0x0083
                    0084    387 _P0_4	=	0x0084
                    0085    388 _P0_5	=	0x0085
                    0086    389 _P0_6	=	0x0086
                    0087    390 _P0_7	=	0x0087
                    0088    391 _IT0	=	0x0088
                    0089    392 _IE0	=	0x0089
                    008A    393 _IT1	=	0x008a
                    008B    394 _IE1	=	0x008b
                    008C    395 _TR0	=	0x008c
                    008D    396 _TF0	=	0x008d
                    008E    397 _TR1	=	0x008e
                    008F    398 _TF1	=	0x008f
                    0090    399 _P1_0	=	0x0090
                    0091    400 _P1_1	=	0x0091
                    0092    401 _P1_2	=	0x0092
                    0093    402 _P1_3	=	0x0093
                    0094    403 _P1_4	=	0x0094
                    0095    404 _P1_5	=	0x0095
                    0096    405 _P1_6	=	0x0096
                    0097    406 _P1_7	=	0x0097
                    0098    407 _RI0	=	0x0098
                    0099    408 _TI0	=	0x0099
                    009A    409 _RB80	=	0x009a
                    009B    410 _TB80	=	0x009b
                    009C    411 _REN0	=	0x009c
                    009D    412 _MCE0	=	0x009d
                    009F    413 _S0MODE	=	0x009f
                    00A0    414 _P2_0	=	0x00a0
                    00A1    415 _P2_1	=	0x00a1
                    00A2    416 _P2_2	=	0x00a2
                    00A3    417 _P2_3	=	0x00a3
                    00A4    418 _P2_4	=	0x00a4
                    00A5    419 _P2_5	=	0x00a5
                    00A6    420 _P2_6	=	0x00a6
                    00A7    421 _P2_7	=	0x00a7
                    00A8    422 _EX0	=	0x00a8
                    00A9    423 _ET0	=	0x00a9
                    00AA    424 _EX1	=	0x00aa
                    00AB    425 _ET1	=	0x00ab
                    00AC    426 _ES0	=	0x00ac
                    00AD    427 _ET2	=	0x00ad
                    00AE    428 _ESPI0	=	0x00ae
                    00AF    429 _EA	=	0x00af
                    00B0    430 _P3_0	=	0x00b0
                    00B1    431 _P3_1	=	0x00b1
                    00B2    432 _P3_2	=	0x00b2
                    00B3    433 _P3_3	=	0x00b3
                    00B4    434 _P3_4	=	0x00b4
                    00B5    435 _P3_5	=	0x00b5
                    00B6    436 _P3_6	=	0x00b6
                    00B7    437 _P3_7	=	0x00b7
                    00B8    438 _PX0	=	0x00b8
                    00B9    439 _PT0	=	0x00b9
                    00BA    440 _PX1	=	0x00ba
                    00BB    441 _PT1	=	0x00bb
                    00BC    442 _PS0	=	0x00bc
                    00BD    443 _PT2	=	0x00bd
                    00BE    444 _PSPI0	=	0x00be
                    00C0    445 _SI	=	0x00c0
                    00C1    446 _ACK	=	0x00c1
                    00C2    447 _ARBLOST	=	0x00c2
                    00C3    448 _ACKRQ	=	0x00c3
                    00C4    449 _STO	=	0x00c4
                    00C5    450 _STA	=	0x00c5
                    00C6    451 _TXMODE	=	0x00c6
                    00C7    452 _MASTER	=	0x00c7
                    00C8    453 _T2XCLK	=	0x00c8
                    00CA    454 _TR2	=	0x00ca
                    00CB    455 _T2SPLIT	=	0x00cb
                    00CC    456 _T2SOF	=	0x00cc
                    00CD    457 _TF2LEN	=	0x00cd
                    00CE    458 _TF2L	=	0x00ce
                    00CF    459 _TF2H	=	0x00cf
                    00D0    460 _P	=	0x00d0
                    00D1    461 _F1	=	0x00d1
                    00D2    462 _OV	=	0x00d2
                    00D3    463 _RS0	=	0x00d3
                    00D4    464 _RS1	=	0x00d4
                    00D5    465 _F0	=	0x00d5
                    00D6    466 _AC	=	0x00d6
                    00D7    467 _CY	=	0x00d7
                    00D8    468 _CCF0	=	0x00d8
                    00D9    469 _CCF1	=	0x00d9
                    00DA    470 _CCF2	=	0x00da
                    00DB    471 _CCF3	=	0x00db
                    00DC    472 _CCF4	=	0x00dc
                    00DE    473 _CR	=	0x00de
                    00DF    474 _CF	=	0x00df
                    00E0    475 _ACC_0	=	0x00e0
                    00E1    476 _ACC_1	=	0x00e1
                    00E2    477 _ACC_2	=	0x00e2
                    00E3    478 _ACC_3	=	0x00e3
                    00E4    479 _ACC_4	=	0x00e4
                    00E5    480 _ACC_5	=	0x00e5
                    00E6    481 _ACC_6	=	0x00e6
                    00E7    482 _ACC_7	=	0x00e7
                    00E8    483 _AD0CM0	=	0x00e8
                    00E9    484 _AD0CM1	=	0x00e9
                    00EA    485 _AD0CM2	=	0x00ea
                    00EB    486 _AD0WINT	=	0x00eb
                    00EC    487 _AD0BUSY	=	0x00ec
                    00ED    488 _AD0INT	=	0x00ed
                    00EE    489 _AD0TM	=	0x00ee
                    00EF    490 _AD0EN	=	0x00ef
                    00F0    491 _B_0	=	0x00f0
                    00F1    492 _B_1	=	0x00f1
                    00F2    493 _B_2	=	0x00f2
                    00F3    494 _B_3	=	0x00f3
                    00F4    495 _B_4	=	0x00f4
                    00F5    496 _B_5	=	0x00f5
                    00F6    497 _B_6	=	0x00f6
                    00F7    498 _B_7	=	0x00f7
                    00F8    499 _SPIEN	=	0x00f8
                    00F9    500 _TXBMT	=	0x00f9
                    00FA    501 _SLVSEL	=	0x00fa
                    00FB    502 _TXBSY	=	0x00fb
                    00FC    503 _RXOVRN	=	0x00fc
                    00FD    504 _MODF	=	0x00fd
                    00FE    505 _WCOL	=	0x00fe
                    00FF    506 _SPIF	=	0x00ff
                            507 ;--------------------------------------------------------
                            508 ; overlayable register banks
                            509 ;--------------------------------------------------------
                            510 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     511 	.ds 8
                            512 ;--------------------------------------------------------
                            513 ; internal ram data
                            514 ;--------------------------------------------------------
                            515 	.area DSEG    (DATA)
   000A                     516 _bTxTail::
   000A                     517 	.ds 1
   000B                     518 _bTxHead::
   000B                     519 	.ds 1
   000C                     520 _fTransmitImmediate::
   000C                     521 	.ds 1
   000D                     522 _bCountTxerrors::
   000D                     523 	.ds 1
   000E                     524 _bLastTxByte::
   000E                     525 	.ds 1
   000F                     526 _bRxTail::
   000F                     527 	.ds 1
   0010                     528 _bRxHead::
   0010                     529 	.ds 1
   0011                     530 _bCountRxSwallowAsEcho::
   0011                     531 	.ds 1
   0012                     532 _fRxOverflow::
   0012                     533 	.ds 1
   0013                     534 _SerTxArray_PARM_2:
   0013                     535 	.ds 1
                            536 ;--------------------------------------------------------
                            537 ; overlayable items in internal ram 
                            538 ;--------------------------------------------------------
                            539 	.area OSEG    (OVR,DATA)
                            540 ;--------------------------------------------------------
                            541 ; indirectly addressable internal ram data
                            542 ;--------------------------------------------------------
                            543 	.area ISEG    (DATA)
                            544 ;--------------------------------------------------------
                            545 ; absolute internal ram data
                            546 ;--------------------------------------------------------
                            547 	.area IABS    (ABS,DATA)
                            548 	.area IABS    (ABS,DATA)
                            549 ;--------------------------------------------------------
                            550 ; bit data
                            551 ;--------------------------------------------------------
                            552 	.area BSEG    (BIT)
                            553 ;--------------------------------------------------------
                            554 ; paged external ram data
                            555 ;--------------------------------------------------------
                            556 	.area PSEG    (PAG,XDATA)
                            557 ;--------------------------------------------------------
                            558 ; external ram data
                            559 ;--------------------------------------------------------
                            560 	.area XSEG    (XDATA)
   0020                     561 _baTxBuffer::
   0020                     562 	.ds 32
   0040                     563 _baRxBuffer::
   0040                     564 	.ds 32
                            565 ;--------------------------------------------------------
                            566 ; absolute external ram data
                            567 ;--------------------------------------------------------
                            568 	.area XABS    (ABS,XDATA)
                            569 ;--------------------------------------------------------
                            570 ; external initialized ram data
                            571 ;--------------------------------------------------------
                            572 	.area XISEG   (XDATA)
                            573 	.area HOME    (CODE)
                            574 	.area GSINIT0 (CODE)
                            575 	.area GSINIT1 (CODE)
                            576 	.area GSINIT2 (CODE)
                            577 	.area GSINIT3 (CODE)
                            578 	.area GSINIT4 (CODE)
                            579 	.area GSINIT5 (CODE)
                            580 	.area GSINIT  (CODE)
                            581 	.area GSFINAL (CODE)
                            582 	.area CSEG    (CODE)
                            583 ;--------------------------------------------------------
                            584 ; global & static initialisations
                            585 ;--------------------------------------------------------
                            586 	.area HOME    (CODE)
                            587 	.area GSINIT  (CODE)
                            588 	.area GSFINAL (CODE)
                            589 	.area GSINIT  (CODE)
                            590 ;	uart.c:8: volatile BYTE bTxTail = 0, bTxHead = 0, fTransmitImmediate = 1,
   00AA 75 0A 00            591 	mov	_bTxTail,#0x00
                            592 ;	uart.c:8: bCountTxerrors = 0, bLastTxByte = 0;
   00AD 75 0B 00            593 	mov	_bTxHead,#0x00
                            594 ;	uart.c:8: volatile BYTE bTxTail = 0, bTxHead = 0, fTransmitImmediate = 1,
   00B0 75 0C 01            595 	mov	_fTransmitImmediate,#0x01
                            596 ;	uart.c:9: bCountTxerrors = 0, bLastTxByte = 0;
   00B3 75 0D 00            597 	mov	_bCountTxerrors,#0x00
                            598 ;	uart.c:9: 
   00B6 75 0E 00            599 	mov	_bLastTxByte,#0x00
                            600 ;	uart.c:12: volatile BYTE bRxTail = 0, bRxHead = 0, bCountRxSwallowAsEcho = 0,
   00B9 75 0F 00            601 	mov	_bRxTail,#0x00
                            602 ;	uart.c:12: fRxOverflow = 0;
   00BC 75 10 00            603 	mov	_bRxHead,#0x00
                            604 ;	uart.c:12: volatile BYTE bRxTail = 0, bRxHead = 0, bCountRxSwallowAsEcho = 0,
   00BF 75 11 00            605 	mov	_bCountRxSwallowAsEcho,#0x00
                            606 ;	uart.c:13: fRxOverflow = 0;
   00C2 75 12 00            607 	mov	_fRxOverflow,#0x00
                            608 ;--------------------------------------------------------
                            609 ; Home
                            610 ;--------------------------------------------------------
                            611 	.area HOME    (CODE)
                            612 	.area HOME    (CODE)
                            613 ;--------------------------------------------------------
                            614 ; code
                            615 ;--------------------------------------------------------
                            616 	.area CSEG    (CODE)
                            617 ;------------------------------------------------------------
                            618 ;Allocation info for local variables in function 'SerTx'
                            619 ;------------------------------------------------------------
                            620 ;b                         Allocated to registers r2 
                            621 ;------------------------------------------------------------
                            622 ;	uart.c:16: int SerTx(BYTE b)
                            623 ;	-----------------------------------------
                            624 ;	 function SerTx
                            625 ;	-----------------------------------------
   054D                     626 _SerTx:
                    0002    627 	ar2 = 0x02
                    0003    628 	ar3 = 0x03
                    0004    629 	ar4 = 0x04
                    0005    630 	ar5 = 0x05
                    0006    631 	ar6 = 0x06
                    0007    632 	ar7 = 0x07
                    0000    633 	ar0 = 0x00
                    0001    634 	ar1 = 0x01
   054D AA 82               635 	mov	r2,dpl
                            636 ;	uart.c:19: if (((bTxHead + 1) & (sizeof(baTxBuffer) - 1)) == bTxTail)
   054F AB 0B               637 	mov	r3,_bTxHead
   0551 7C 00               638 	mov	r4,#0x00
   0553 0B                  639 	inc	r3
   0554 BB 00 01            640 	cjne	r3,#0x00,00110$
   0557 0C                  641 	inc	r4
   0558                     642 00110$:
   0558 53 03 1F            643 	anl	ar3,#0x1F
   055B 7C 00               644 	mov	r4,#0x00
   055D AD 0A               645 	mov	r5,_bTxTail
   055F 7E 00               646 	mov	r6,#0x00
   0561 EB                  647 	mov	a,r3
   0562 B5 05 08            648 	cjne	a,ar5,00102$
   0565 EC                  649 	mov	a,r4
   0566 B5 06 04            650 	cjne	a,ar6,00102$
                            651 ;	uart.c:20: return 0;
   0569 90 00 00            652 	mov	dptr,#0x0000
   056C 22                  653 	ret
   056D                     654 00102$:
                            655 ;	uart.c:22: baTxBuffer[bTxHead] = b;
   056D E5 0B               656 	mov	a,_bTxHead
   056F 24 20               657 	add	a,#_baTxBuffer
   0571 F5 82               658 	mov	dpl,a
   0573 E4                  659 	clr	a
   0574 34 00               660 	addc	a,#(_baTxBuffer >> 8)
   0576 F5 83               661 	mov	dph,a
   0578 EA                  662 	mov	a,r2
   0579 F0                  663 	movx	@dptr,a
                            664 ;	uart.c:23: ES0 = 0;
   057A C2 AC               665 	clr	_ES0
                            666 ;	uart.c:24: if (fTransmitImmediate)
   057C E5 0C               667 	mov	a,_fTransmitImmediate
   057E 60 04               668 	jz	00104$
                            669 ;	uart.c:25: SBUF0 = b;
   0580 8A 99               670 	mov	_SBUF0,r2
   0582 80 07               671 	sjmp	00105$
   0584                     672 00104$:
                            673 ;	uart.c:27: bTxHead = (bTxHead + 1) & (sizeof(baTxBuffer) - 1);
   0584 E5 0B               674 	mov	a,_bTxHead
   0586 04                  675 	inc	a
   0587 54 1F               676 	anl	a,#0x1F
   0589 F5 0B               677 	mov	_bTxHead,a
   058B                     678 00105$:
                            679 ;	uart.c:28: fTransmitImmediate = 0;
   058B 75 0C 00            680 	mov	_fTransmitImmediate,#0x00
                            681 ;	uart.c:29: ES0 = 1;
   058E D2 AC               682 	setb	_ES0
                            683 ;	uart.c:30: return 1;
   0590 90 00 01            684 	mov	dptr,#0x0001
   0593 22                  685 	ret
                            686 ;------------------------------------------------------------
                            687 ;Allocation info for local variables in function 'SerTxArray'
                            688 ;------------------------------------------------------------
                            689 ;bCount                    Allocated with name '_SerTxArray_PARM_2'
                            690 ;pb                        Allocated to registers r2 r3 r4 
                            691 ;------------------------------------------------------------
                            692 ;	uart.c:33: void SerTxArray(BYTE *pb, BYTE bCount)
                            693 ;	-----------------------------------------
                            694 ;	 function SerTxArray
                            695 ;	-----------------------------------------
   0594                     696 _SerTxArray:
   0594 AA 82               697 	mov	r2,dpl
   0596 AB 83               698 	mov	r3,dph
   0598 AC F0               699 	mov	r4,b
                            700 ;	uart.c:35: while (bCount--) {
   059A AD 13               701 	mov	r5,_SerTxArray_PARM_2
   059C                     702 00104$:
   059C 8D 06               703 	mov	ar6,r5
   059E 1D                  704 	dec	r5
   059F EE                  705 	mov	a,r6
   05A0 60 2E               706 	jz	00107$
                            707 ;	uart.c:36: while (!SerTx(*pb))
   05A2                     708 00101$:
   05A2 8A 82               709 	mov	dpl,r2
   05A4 8B 83               710 	mov	dph,r3
   05A6 8C F0               711 	mov	b,r4
   05A8 12 16 33            712 	lcall	__gptrget
   05AB F5 82               713 	mov	dpl,a
   05AD C0 02               714 	push	ar2
   05AF C0 03               715 	push	ar3
   05B1 C0 04               716 	push	ar4
   05B3 C0 05               717 	push	ar5
   05B5 12 05 4D            718 	lcall	_SerTx
   05B8 E5 82               719 	mov	a,dpl
   05BA 85 83 F0            720 	mov	b,dph
   05BD D0 05               721 	pop	ar5
   05BF D0 04               722 	pop	ar4
   05C1 D0 03               723 	pop	ar3
   05C3 D0 02               724 	pop	ar2
   05C5 45 F0               725 	orl	a,b
   05C7 60 D9               726 	jz	00101$
                            727 ;	uart.c:38: pb++;
   05C9 0A                  728 	inc	r2
   05CA BA 00 CF            729 	cjne	r2,#0x00,00104$
   05CD 0B                  730 	inc	r3
   05CE 80 CC               731 	sjmp	00104$
   05D0                     732 00107$:
   05D0 22                  733 	ret
                            734 ;------------------------------------------------------------
                            735 ;Allocation info for local variables in function 'SerRx'
                            736 ;------------------------------------------------------------
                            737 ;b                         Allocated to registers r2 
                            738 ;------------------------------------------------------------
                            739 ;	uart.c:43: int SerRx(void)
                            740 ;	-----------------------------------------
                            741 ;	 function SerRx
                            742 ;	-----------------------------------------
   05D1                     743 _SerRx:
                            744 ;	uart.c:46: if (bRxHead == bRxTail)
   05D1 E5 0F               745 	mov	a,_bRxTail
   05D3 B5 10 04            746 	cjne	a,_bRxHead,00102$
                            747 ;	uart.c:47: return -1;
   05D6 90 FF FF            748 	mov	dptr,#0xFFFF
   05D9 22                  749 	ret
   05DA                     750 00102$:
                            751 ;	uart.c:48: b = baRxBuffer[bRxTail];
   05DA E5 0F               752 	mov	a,_bRxTail
   05DC 24 40               753 	add	a,#_baRxBuffer
   05DE F5 82               754 	mov	dpl,a
   05E0 E4                  755 	clr	a
   05E1 34 00               756 	addc	a,#(_baRxBuffer >> 8)
   05E3 F5 83               757 	mov	dph,a
   05E5 E0                  758 	movx	a,@dptr
   05E6 FA                  759 	mov	r2,a
                            760 ;	uart.c:49: ES0 = 0;
   05E7 C2 AC               761 	clr	_ES0
                            762 ;	uart.c:50: bRxTail = (bRxTail + 1) & (sizeof(baRxBuffer) - 1);
   05E9 E5 0F               763 	mov	a,_bRxTail
   05EB 04                  764 	inc	a
   05EC 54 1F               765 	anl	a,#0x1F
   05EE F5 0F               766 	mov	_bRxTail,a
                            767 ;	uart.c:51: ES0 = 1;
   05F0 D2 AC               768 	setb	_ES0
                            769 ;	uart.c:52: return (int)b;
   05F2 7B 00               770 	mov	r3,#0x00
   05F4 8A 82               771 	mov	dpl,r2
   05F6 8B 83               772 	mov	dph,r3
   05F8 22                  773 	ret
                            774 ;------------------------------------------------------------
                            775 ;Allocation info for local variables in function 'Uart_ISR'
                            776 ;------------------------------------------------------------
                            777 ;------------------------------------------------------------
                            778 ;	uart.c:55: void Uart_ISR(void) interrupt 4
                            779 ;	-----------------------------------------
                            780 ;	 function Uart_ISR
                            781 ;	-----------------------------------------
   05F9                     782 _Uart_ISR:
   05F9 C0 E0               783 	push	acc
   05FB C0 82               784 	push	dpl
   05FD C0 83               785 	push	dph
   05FF C0 02               786 	push	ar2
   0601 C0 03               787 	push	ar3
   0603 C0 04               788 	push	ar4
   0605 C0 05               789 	push	ar5
   0607 C0 D0               790 	push	psw
   0609 75 D0 00            791 	mov	psw,#0x00
                            792 ;	uart.c:57: if (RI0) { // RX action
   060C 30 98 36            793 	jnb	_RI0,00105$
                            794 ;	uart.c:63: if (((bRxHead+1) & (sizeof(baRxBuffer)-1)) == bRxTail) // overflowed Rx buffer
   060F AA 10               795 	mov	r2,_bRxHead
   0611 7B 00               796 	mov	r3,#0x00
   0613 0A                  797 	inc	r2
   0614 BA 00 01            798 	cjne	r2,#0x00,00118$
   0617 0B                  799 	inc	r3
   0618                     800 00118$:
   0618 53 02 1F            801 	anl	ar2,#0x1F
   061B 7B 00               802 	mov	r3,#0x00
   061D AC 0F               803 	mov	r4,_bRxTail
   061F 7D 00               804 	mov	r5,#0x00
   0621 EA                  805 	mov	a,r2
   0622 B5 04 09            806 	cjne	a,ar4,00102$
   0625 EB                  807 	mov	a,r3
   0626 B5 05 05            808 	cjne	a,ar5,00102$
                            809 ;	uart.c:64: fRxOverflow = 1;
   0629 75 12 01            810 	mov	_fRxOverflow,#0x01
   062C 80 15               811 	sjmp	00103$
   062E                     812 00102$:
                            813 ;	uart.c:66: baRxBuffer[bRxHead] = SBUF0;
   062E E5 10               814 	mov	a,_bRxHead
   0630 24 40               815 	add	a,#_baRxBuffer
   0632 F5 82               816 	mov	dpl,a
   0634 E4                  817 	clr	a
   0635 34 00               818 	addc	a,#(_baRxBuffer >> 8)
   0637 F5 83               819 	mov	dph,a
   0639 E5 99               820 	mov	a,_SBUF0
   063B F0                  821 	movx	@dptr,a
                            822 ;	uart.c:67: bRxHead = (bRxHead+1) & (sizeof(baRxBuffer)-1);
   063C E5 10               823 	mov	a,_bRxHead
   063E 04                  824 	inc	a
   063F 54 1F               825 	anl	a,#0x1F
   0641 F5 10               826 	mov	_bRxHead,a
   0643                     827 00103$:
                            828 ;	uart.c:70: RI0 = 0;
   0643 C2 98               829 	clr	_RI0
   0645                     830 00105$:
                            831 ;	uart.c:72: if (TI0) { // TX action
   0645 30 99 34            832 	jnb	_TI0,00111$
                            833 ;	uart.c:73: if (bTxTail != bTxHead) {
   0648 E5 0B               834 	mov	a,_bTxHead
   064A B5 0A 02            835 	cjne	a,_bTxTail,00122$
   064D 80 28               836 	sjmp	00107$
   064F                     837 00122$:
                            838 ;	uart.c:74: bLastTxByte = baTxBuffer[bTxTail];
   064F E5 0A               839 	mov	a,_bTxTail
   0651 24 20               840 	add	a,#_baTxBuffer
   0653 F5 82               841 	mov	dpl,a
   0655 E4                  842 	clr	a
   0656 34 00               843 	addc	a,#(_baTxBuffer >> 8)
   0658 F5 83               844 	mov	dph,a
   065A E0                  845 	movx	a,@dptr
   065B F5 0E               846 	mov	_bLastTxByte,a
                            847 ;	uart.c:75: SBUF0 = baTxBuffer[bTxTail];
   065D E5 0A               848 	mov	a,_bTxTail
   065F 24 20               849 	add	a,#_baTxBuffer
   0661 F5 82               850 	mov	dpl,a
   0663 E4                  851 	clr	a
   0664 34 00               852 	addc	a,#(_baTxBuffer >> 8)
   0666 F5 83               853 	mov	dph,a
   0668 E0                  854 	movx	a,@dptr
   0669 F5 99               855 	mov	_SBUF0,a
                            856 ;	uart.c:76: bTxTail = (bTxTail + 1) & (sizeof(baTxBuffer) - 1);
   066B E5 0A               857 	mov	a,_bTxTail
   066D 04                  858 	inc	a
   066E 54 1F               859 	anl	a,#0x1F
   0670 F5 0A               860 	mov	_bTxTail,a
                            861 ;	uart.c:78: fTransmitImmediate = 0;
   0672 75 0C 00            862 	mov	_fTransmitImmediate,#0x00
   0675 80 03               863 	sjmp	00108$
   0677                     864 00107$:
                            865 ;	uart.c:80: fTransmitImmediate = 1;  // buffer underflowed, force Tx interrupt when buffer reloaded
   0677 75 0C 01            866 	mov	_fTransmitImmediate,#0x01
   067A                     867 00108$:
                            868 ;	uart.c:81: TI0 = 0;
   067A C2 99               869 	clr	_TI0
   067C                     870 00111$:
   067C D0 D0               871 	pop	psw
   067E D0 05               872 	pop	ar5
   0680 D0 04               873 	pop	ar4
   0682 D0 03               874 	pop	ar3
   0684 D0 02               875 	pop	ar2
   0686 D0 83               876 	pop	dph
   0688 D0 82               877 	pop	dpl
   068A D0 E0               878 	pop	acc
   068C 32                  879 	reti
                            880 ;	eliminated unneeded push/pop b
                            881 ;------------------------------------------------------------
                            882 ;Allocation info for local variables in function 'UartInit'
                            883 ;------------------------------------------------------------
                            884 ;------------------------------------------------------------
                            885 ;	uart.c:85: void UartInit()
                            886 ;	-----------------------------------------
                            887 ;	 function UartInit
                            888 ;	-----------------------------------------
   068D                     889 _UartInit:
                            890 ;	uart.c:87: CKCON  &= ~0x13;                       // Timer1
   068D 53 8E EC            891 	anl	_CKCON,#0xEC
                            892 ;	uart.c:88: CKCON |= 1; // SYSCLK/4  (leave b0 = 0 for SYSCLK / 12)
   0690 43 8E 01            893 	orl	_CKCON,#0x01
                            894 ;	uart.c:92: TH1 = (-2) & 0xff;              // Initialize reload value
   0693 75 8D FE            895 	mov	_TH1,#0xFE
                            896 ;	uart.c:93: TL1 = 0xff;
   0696 75 8B FF            897 	mov	_TL1,#0xFF
                            898 ;	uart.c:94: TMOD |= 0x20;
   0699 43 89 20            899 	orl	_TMOD,#0x20
                            900 ;	uart.c:95: TMOD &= ~0xd0;
   069C 53 89 2F            901 	anl	_TMOD,#0x2F
                            902 ;	uart.c:96: TR1 = 1;                           // Start Timer1
   069F D2 8E               903 	setb	_TR1
                            904 ;	uart.c:101: SCON0 = 0x10;
   06A1 75 98 10            905 	mov	_SCON0,#0x10
                            906 ;	uart.c:102: ES0 = 1;
   06A4 D2 AC               907 	setb	_ES0
                            908 ;	uart.c:103: TI0 = 1; // indicate ready for new TX
   06A6 D2 99               909 	setb	_TI0
   06A8 22                  910 	ret
                            911 	.area CSEG    (CODE)
                            912 	.area CONST   (CODE)
                            913 	.area XINIT   (CODE)
                            914 	.area CABS    (ABS,CODE)
