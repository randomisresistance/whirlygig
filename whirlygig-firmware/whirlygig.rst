                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Sat Jul 12 02:11:20 2014
                              5 ;--------------------------------------------------------
                              6 	.module whirlygig
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _UsbInterruptOutFromPcEndpointService
                             13 	.globl _UsbInterruptInToPcEndpointService
                             14 	.globl _jektor_load
                             15 	.globl _UsbReadingFifoDone
                             16 	.globl _UsbReadFifo
                             17 	.globl _UsbWriteFifo
                             18 	.globl _UsbSelectOutEndpointFifo
                             19 	.globl _UsbSelectInEndpointFifo
                             20 	.globl _SPIF
                             21 	.globl _WCOL
                             22 	.globl _MODF
                             23 	.globl _RXOVRN
                             24 	.globl _TXBSY
                             25 	.globl _SLVSEL
                             26 	.globl _TXBMT
                             27 	.globl _SPIEN
                             28 	.globl _B_7
                             29 	.globl _B_6
                             30 	.globl _B_5
                             31 	.globl _B_4
                             32 	.globl _B_3
                             33 	.globl _B_2
                             34 	.globl _B_1
                             35 	.globl _B_0
                             36 	.globl _AD0EN
                             37 	.globl _AD0TM
                             38 	.globl _AD0INT
                             39 	.globl _AD0BUSY
                             40 	.globl _AD0WINT
                             41 	.globl _AD0CM2
                             42 	.globl _AD0CM1
                             43 	.globl _AD0CM0
                             44 	.globl _ACC_7
                             45 	.globl _ACC_6
                             46 	.globl _ACC_5
                             47 	.globl _ACC_4
                             48 	.globl _ACC_3
                             49 	.globl _ACC_2
                             50 	.globl _ACC_1
                             51 	.globl _ACC_0
                             52 	.globl _CF
                             53 	.globl _CR
                             54 	.globl _CCF4
                             55 	.globl _CCF3
                             56 	.globl _CCF2
                             57 	.globl _CCF1
                             58 	.globl _CCF0
                             59 	.globl _CY
                             60 	.globl _AC
                             61 	.globl _F0
                             62 	.globl _RS1
                             63 	.globl _RS0
                             64 	.globl _OV
                             65 	.globl _F1
                             66 	.globl _P
                             67 	.globl _TF2H
                             68 	.globl _TF2L
                             69 	.globl _TF2LEN
                             70 	.globl _T2SOF
                             71 	.globl _T2SPLIT
                             72 	.globl _TR2
                             73 	.globl _T2XCLK
                             74 	.globl _MASTER
                             75 	.globl _TXMODE
                             76 	.globl _STA
                             77 	.globl _STO
                             78 	.globl _ACKRQ
                             79 	.globl _ARBLOST
                             80 	.globl _ACK
                             81 	.globl _SI
                             82 	.globl _PSPI0
                             83 	.globl _PT2
                             84 	.globl _PS0
                             85 	.globl _PT1
                             86 	.globl _PX1
                             87 	.globl _PT0
                             88 	.globl _PX0
                             89 	.globl _P3_7
                             90 	.globl _P3_6
                             91 	.globl _P3_5
                             92 	.globl _P3_4
                             93 	.globl _P3_3
                             94 	.globl _P3_2
                             95 	.globl _P3_1
                             96 	.globl _P3_0
                             97 	.globl _EA
                             98 	.globl _ESPI0
                             99 	.globl _ET2
                            100 	.globl _ES0
                            101 	.globl _ET1
                            102 	.globl _EX1
                            103 	.globl _ET0
                            104 	.globl _EX0
                            105 	.globl _P2_7
                            106 	.globl _P2_6
                            107 	.globl _P2_5
                            108 	.globl _P2_4
                            109 	.globl _P2_3
                            110 	.globl _P2_2
                            111 	.globl _P2_1
                            112 	.globl _P2_0
                            113 	.globl _S0MODE
                            114 	.globl _MCE0
                            115 	.globl _REN0
                            116 	.globl _TB80
                            117 	.globl _RB80
                            118 	.globl _TI0
                            119 	.globl _RI0
                            120 	.globl _P1_7
                            121 	.globl _P1_6
                            122 	.globl _P1_5
                            123 	.globl _P1_4
                            124 	.globl _P1_3
                            125 	.globl _P1_2
                            126 	.globl _P1_1
                            127 	.globl _P1_0
                            128 	.globl _TF1
                            129 	.globl _TR1
                            130 	.globl _TF0
                            131 	.globl _TR0
                            132 	.globl _IE1
                            133 	.globl _IT1
                            134 	.globl _IE0
                            135 	.globl _IT0
                            136 	.globl _P0_7
                            137 	.globl _P0_6
                            138 	.globl _P0_5
                            139 	.globl _P0_4
                            140 	.globl _P0_3
                            141 	.globl _P0_2
                            142 	.globl _P0_1
                            143 	.globl _P0_0
                            144 	.globl _VDM0CN
                            145 	.globl _PCA0CPH4
                            146 	.globl _PCA0CPL4
                            147 	.globl _PCA0CPH0
                            148 	.globl _PCA0CPL0
                            149 	.globl _PCA0H
                            150 	.globl _PCA0L
                            151 	.globl _SPI0CN
                            152 	.globl _EIP2
                            153 	.globl _EIP1
                            154 	.globl _P3MDIN
                            155 	.globl _P2MDIN
                            156 	.globl _P1MDIN
                            157 	.globl _P0MDIN
                            158 	.globl _B
                            159 	.globl _RSTSRC
                            160 	.globl _PCA0CPH3
                            161 	.globl _PCA0CPL3
                            162 	.globl _PCA0CPH2
                            163 	.globl _PCA0CPL2
                            164 	.globl _PCA0CPH1
                            165 	.globl _PCA0CPL1
                            166 	.globl _ADC0CN
                            167 	.globl _EIE2
                            168 	.globl _EIE1
                            169 	.globl _IT01CF
                            170 	.globl _XBR1
                            171 	.globl _XBR0
                            172 	.globl _ACC
                            173 	.globl _PCA0CPM4
                            174 	.globl _PCA0CPM3
                            175 	.globl _PCA0CPM2
                            176 	.globl _PCA0CPM1
                            177 	.globl _PCA0CPM0
                            178 	.globl _PCA0MD
                            179 	.globl _PCA0CN
                            180 	.globl _USB0XCN
                            181 	.globl _P2SKIP
                            182 	.globl _P1SKIP
                            183 	.globl _P0SKIP
                            184 	.globl _REF0CN
                            185 	.globl _PSW
                            186 	.globl _TMR2H
                            187 	.globl _TMR2L
                            188 	.globl _TMR2RLH
                            189 	.globl _TMR2RLL
                            190 	.globl _REG0CN
                            191 	.globl _TMR2CN
                            192 	.globl _ADC0LTH
                            193 	.globl _ADC0LTL
                            194 	.globl _ADC0GTH
                            195 	.globl _ADC0GTL
                            196 	.globl _SMB0DAT
                            197 	.globl _SMB0CF
                            198 	.globl _SMB0CN
                            199 	.globl _ADC0H
                            200 	.globl _ADC0L
                            201 	.globl _ADC0CF
                            202 	.globl _AMX0P
                            203 	.globl _AMX0N
                            204 	.globl _CLKMUL
                            205 	.globl _IP
                            206 	.globl _FLKEY
                            207 	.globl _FLSCL
                            208 	.globl _OSCICL
                            209 	.globl _OSCICN
                            210 	.globl _OSCXCN
                            211 	.globl _P3
                            212 	.globl _EMI0CN
                            213 	.globl _CLKSEL
                            214 	.globl _IE
                            215 	.globl _P3MDOUT
                            216 	.globl _P2MDOUT
                            217 	.globl _P1MDOUT
                            218 	.globl _P0MDOUT
                            219 	.globl _SPIODAT
                            220 	.globl _SPIDAT
                            221 	.globl _SPIOCKR
                            222 	.globl _SPICKR
                            223 	.globl _SPIOCFG
                            224 	.globl _SPICFG
                            225 	.globl _P2
                            226 	.globl _CPT0MX
                            227 	.globl _CPT1MX
                            228 	.globl _CPT0MD
                            229 	.globl _CPT1MD
                            230 	.globl _CPT0CN
                            231 	.globl _CPT1CN
                            232 	.globl _SBUF0
                            233 	.globl _SCON0
                            234 	.globl _USB0DAT
                            235 	.globl _USB0ADR
                            236 	.globl _TMR3H
                            237 	.globl _TMR3L
                            238 	.globl _TMR3RLH
                            239 	.globl _TMR3RLL
                            240 	.globl _TMR3CN
                            241 	.globl _P1
                            242 	.globl _PSCTL
                            243 	.globl _CKCON
                            244 	.globl _TH1
                            245 	.globl _TH0
                            246 	.globl _TL1
                            247 	.globl _TL0
                            248 	.globl _TMOD
                            249 	.globl _TCON
                            250 	.globl _PCON
                            251 	.globl _DPH
                            252 	.globl _DPL
                            253 	.globl _SP
                            254 	.globl _P0
                            255 	.globl _fill_usb
                            256 	.globl _bMixer
                            257 	.globl _Delay
                            258 ;--------------------------------------------------------
                            259 ; special function registers
                            260 ;--------------------------------------------------------
                            261 	.area RSEG    (DATA)
                    0080    262 _P0	=	0x0080
                    0081    263 _SP	=	0x0081
                    0082    264 _DPL	=	0x0082
                    0083    265 _DPH	=	0x0083
                    0087    266 _PCON	=	0x0087
                    0088    267 _TCON	=	0x0088
                    0089    268 _TMOD	=	0x0089
                    008A    269 _TL0	=	0x008a
                    008B    270 _TL1	=	0x008b
                    008C    271 _TH0	=	0x008c
                    008D    272 _TH1	=	0x008d
                    008E    273 _CKCON	=	0x008e
                    008F    274 _PSCTL	=	0x008f
                    0090    275 _P1	=	0x0090
                    0091    276 _TMR3CN	=	0x0091
                    0092    277 _TMR3RLL	=	0x0092
                    0093    278 _TMR3RLH	=	0x0093
                    0094    279 _TMR3L	=	0x0094
                    0095    280 _TMR3H	=	0x0095
                    0096    281 _USB0ADR	=	0x0096
                    0097    282 _USB0DAT	=	0x0097
                    0098    283 _SCON0	=	0x0098
                    0099    284 _SBUF0	=	0x0099
                    009A    285 _CPT1CN	=	0x009a
                    009B    286 _CPT0CN	=	0x009b
                    009C    287 _CPT1MD	=	0x009c
                    009D    288 _CPT0MD	=	0x009d
                    009E    289 _CPT1MX	=	0x009e
                    009F    290 _CPT0MX	=	0x009f
                    00A0    291 _P2	=	0x00a0
                    00A1    292 _SPICFG	=	0x00a1
                    00A1    293 _SPIOCFG	=	0x00a1
                    00A2    294 _SPICKR	=	0x00a2
                    00A2    295 _SPIOCKR	=	0x00a2
                    00A3    296 _SPIDAT	=	0x00a3
                    00A3    297 _SPIODAT	=	0x00a3
                    00A4    298 _P0MDOUT	=	0x00a4
                    00A5    299 _P1MDOUT	=	0x00a5
                    00A6    300 _P2MDOUT	=	0x00a6
                    00A7    301 _P3MDOUT	=	0x00a7
                    00A8    302 _IE	=	0x00a8
                    00A9    303 _CLKSEL	=	0x00a9
                    00AA    304 _EMI0CN	=	0x00aa
                    00B0    305 _P3	=	0x00b0
                    00B1    306 _OSCXCN	=	0x00b1
                    00B2    307 _OSCICN	=	0x00b2
                    00B3    308 _OSCICL	=	0x00b3
                    00B6    309 _FLSCL	=	0x00b6
                    00B7    310 _FLKEY	=	0x00b7
                    00B8    311 _IP	=	0x00b8
                    00B9    312 _CLKMUL	=	0x00b9
                    00BA    313 _AMX0N	=	0x00ba
                    00BB    314 _AMX0P	=	0x00bb
                    00BC    315 _ADC0CF	=	0x00bc
                    00BD    316 _ADC0L	=	0x00bd
                    00BE    317 _ADC0H	=	0x00be
                    00C0    318 _SMB0CN	=	0x00c0
                    00C1    319 _SMB0CF	=	0x00c1
                    00C2    320 _SMB0DAT	=	0x00c2
                    00C3    321 _ADC0GTL	=	0x00c3
                    00C4    322 _ADC0GTH	=	0x00c4
                    00C5    323 _ADC0LTL	=	0x00c5
                    00C6    324 _ADC0LTH	=	0x00c6
                    00C8    325 _TMR2CN	=	0x00c8
                    00C9    326 _REG0CN	=	0x00c9
                    00CA    327 _TMR2RLL	=	0x00ca
                    00CB    328 _TMR2RLH	=	0x00cb
                    00CC    329 _TMR2L	=	0x00cc
                    00CD    330 _TMR2H	=	0x00cd
                    00D0    331 _PSW	=	0x00d0
                    00D1    332 _REF0CN	=	0x00d1
                    00D4    333 _P0SKIP	=	0x00d4
                    00D5    334 _P1SKIP	=	0x00d5
                    00D6    335 _P2SKIP	=	0x00d6
                    00D7    336 _USB0XCN	=	0x00d7
                    00D8    337 _PCA0CN	=	0x00d8
                    00D9    338 _PCA0MD	=	0x00d9
                    00DA    339 _PCA0CPM0	=	0x00da
                    00DB    340 _PCA0CPM1	=	0x00db
                    00DC    341 _PCA0CPM2	=	0x00dc
                    00DD    342 _PCA0CPM3	=	0x00dd
                    00DE    343 _PCA0CPM4	=	0x00de
                    00E0    344 _ACC	=	0x00e0
                    00E1    345 _XBR0	=	0x00e1
                    00E2    346 _XBR1	=	0x00e2
                    00E4    347 _IT01CF	=	0x00e4
                    00E6    348 _EIE1	=	0x00e6
                    00E7    349 _EIE2	=	0x00e7
                    00E8    350 _ADC0CN	=	0x00e8
                    00E9    351 _PCA0CPL1	=	0x00e9
                    00EA    352 _PCA0CPH1	=	0x00ea
                    00EB    353 _PCA0CPL2	=	0x00eb
                    00EC    354 _PCA0CPH2	=	0x00ec
                    00ED    355 _PCA0CPL3	=	0x00ed
                    00EE    356 _PCA0CPH3	=	0x00ee
                    00EF    357 _RSTSRC	=	0x00ef
                    00F0    358 _B	=	0x00f0
                    00F1    359 _P0MDIN	=	0x00f1
                    00F2    360 _P1MDIN	=	0x00f2
                    00F3    361 _P2MDIN	=	0x00f3
                    00F4    362 _P3MDIN	=	0x00f4
                    00F6    363 _EIP1	=	0x00f6
                    00F7    364 _EIP2	=	0x00f7
                    00F8    365 _SPI0CN	=	0x00f8
                    00F9    366 _PCA0L	=	0x00f9
                    00FA    367 _PCA0H	=	0x00fa
                    00FB    368 _PCA0CPL0	=	0x00fb
                    00FC    369 _PCA0CPH0	=	0x00fc
                    00FD    370 _PCA0CPL4	=	0x00fd
                    00FE    371 _PCA0CPH4	=	0x00fe
                    00FF    372 _VDM0CN	=	0x00ff
                            373 ;--------------------------------------------------------
                            374 ; special function bits
                            375 ;--------------------------------------------------------
                            376 	.area RSEG    (DATA)
                    0080    377 _P0_0	=	0x0080
                    0081    378 _P0_1	=	0x0081
                    0082    379 _P0_2	=	0x0082
                    0083    380 _P0_3	=	0x0083
                    0084    381 _P0_4	=	0x0084
                    0085    382 _P0_5	=	0x0085
                    0086    383 _P0_6	=	0x0086
                    0087    384 _P0_7	=	0x0087
                    0088    385 _IT0	=	0x0088
                    0089    386 _IE0	=	0x0089
                    008A    387 _IT1	=	0x008a
                    008B    388 _IE1	=	0x008b
                    008C    389 _TR0	=	0x008c
                    008D    390 _TF0	=	0x008d
                    008E    391 _TR1	=	0x008e
                    008F    392 _TF1	=	0x008f
                    0090    393 _P1_0	=	0x0090
                    0091    394 _P1_1	=	0x0091
                    0092    395 _P1_2	=	0x0092
                    0093    396 _P1_3	=	0x0093
                    0094    397 _P1_4	=	0x0094
                    0095    398 _P1_5	=	0x0095
                    0096    399 _P1_6	=	0x0096
                    0097    400 _P1_7	=	0x0097
                    0098    401 _RI0	=	0x0098
                    0099    402 _TI0	=	0x0099
                    009A    403 _RB80	=	0x009a
                    009B    404 _TB80	=	0x009b
                    009C    405 _REN0	=	0x009c
                    009D    406 _MCE0	=	0x009d
                    009F    407 _S0MODE	=	0x009f
                    00A0    408 _P2_0	=	0x00a0
                    00A1    409 _P2_1	=	0x00a1
                    00A2    410 _P2_2	=	0x00a2
                    00A3    411 _P2_3	=	0x00a3
                    00A4    412 _P2_4	=	0x00a4
                    00A5    413 _P2_5	=	0x00a5
                    00A6    414 _P2_6	=	0x00a6
                    00A7    415 _P2_7	=	0x00a7
                    00A8    416 _EX0	=	0x00a8
                    00A9    417 _ET0	=	0x00a9
                    00AA    418 _EX1	=	0x00aa
                    00AB    419 _ET1	=	0x00ab
                    00AC    420 _ES0	=	0x00ac
                    00AD    421 _ET2	=	0x00ad
                    00AE    422 _ESPI0	=	0x00ae
                    00AF    423 _EA	=	0x00af
                    00B0    424 _P3_0	=	0x00b0
                    00B1    425 _P3_1	=	0x00b1
                    00B2    426 _P3_2	=	0x00b2
                    00B3    427 _P3_3	=	0x00b3
                    00B4    428 _P3_4	=	0x00b4
                    00B5    429 _P3_5	=	0x00b5
                    00B6    430 _P3_6	=	0x00b6
                    00B7    431 _P3_7	=	0x00b7
                    00B8    432 _PX0	=	0x00b8
                    00B9    433 _PT0	=	0x00b9
                    00BA    434 _PX1	=	0x00ba
                    00BB    435 _PT1	=	0x00bb
                    00BC    436 _PS0	=	0x00bc
                    00BD    437 _PT2	=	0x00bd
                    00BE    438 _PSPI0	=	0x00be
                    00C0    439 _SI	=	0x00c0
                    00C1    440 _ACK	=	0x00c1
                    00C2    441 _ARBLOST	=	0x00c2
                    00C3    442 _ACKRQ	=	0x00c3
                    00C4    443 _STO	=	0x00c4
                    00C5    444 _STA	=	0x00c5
                    00C6    445 _TXMODE	=	0x00c6
                    00C7    446 _MASTER	=	0x00c7
                    00C8    447 _T2XCLK	=	0x00c8
                    00CA    448 _TR2	=	0x00ca
                    00CB    449 _T2SPLIT	=	0x00cb
                    00CC    450 _T2SOF	=	0x00cc
                    00CD    451 _TF2LEN	=	0x00cd
                    00CE    452 _TF2L	=	0x00ce
                    00CF    453 _TF2H	=	0x00cf
                    00D0    454 _P	=	0x00d0
                    00D1    455 _F1	=	0x00d1
                    00D2    456 _OV	=	0x00d2
                    00D3    457 _RS0	=	0x00d3
                    00D4    458 _RS1	=	0x00d4
                    00D5    459 _F0	=	0x00d5
                    00D6    460 _AC	=	0x00d6
                    00D7    461 _CY	=	0x00d7
                    00D8    462 _CCF0	=	0x00d8
                    00D9    463 _CCF1	=	0x00d9
                    00DA    464 _CCF2	=	0x00da
                    00DB    465 _CCF3	=	0x00db
                    00DC    466 _CCF4	=	0x00dc
                    00DE    467 _CR	=	0x00de
                    00DF    468 _CF	=	0x00df
                    00E0    469 _ACC_0	=	0x00e0
                    00E1    470 _ACC_1	=	0x00e1
                    00E2    471 _ACC_2	=	0x00e2
                    00E3    472 _ACC_3	=	0x00e3
                    00E4    473 _ACC_4	=	0x00e4
                    00E5    474 _ACC_5	=	0x00e5
                    00E6    475 _ACC_6	=	0x00e6
                    00E7    476 _ACC_7	=	0x00e7
                    00E8    477 _AD0CM0	=	0x00e8
                    00E9    478 _AD0CM1	=	0x00e9
                    00EA    479 _AD0CM2	=	0x00ea
                    00EB    480 _AD0WINT	=	0x00eb
                    00EC    481 _AD0BUSY	=	0x00ec
                    00ED    482 _AD0INT	=	0x00ed
                    00EE    483 _AD0TM	=	0x00ee
                    00EF    484 _AD0EN	=	0x00ef
                    00F0    485 _B_0	=	0x00f0
                    00F1    486 _B_1	=	0x00f1
                    00F2    487 _B_2	=	0x00f2
                    00F3    488 _B_3	=	0x00f3
                    00F4    489 _B_4	=	0x00f4
                    00F5    490 _B_5	=	0x00f5
                    00F6    491 _B_6	=	0x00f6
                    00F7    492 _B_7	=	0x00f7
                    00F8    493 _SPIEN	=	0x00f8
                    00F9    494 _TXBMT	=	0x00f9
                    00FA    495 _SLVSEL	=	0x00fa
                    00FB    496 _TXBSY	=	0x00fb
                    00FC    497 _RXOVRN	=	0x00fc
                    00FD    498 _MODF	=	0x00fd
                    00FE    499 _WCOL	=	0x00fe
                    00FF    500 _SPIF	=	0x00ff
                            501 ;--------------------------------------------------------
                            502 ; overlayable register banks
                            503 ;--------------------------------------------------------
                            504 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     505 	.ds 8
                            506 ;--------------------------------------------------------
                            507 ; internal ram data
                            508 ;--------------------------------------------------------
                            509 	.area DSEG    (DATA)
   0041                     510 _bMixer::
   0041                     511 	.ds 1
   0042                     512 _sendbuf:
   0042                     513 	.ds 32
   0062                     514 _did_send:
   0062                     515 	.ds 1
   0063                     516 _jektor_load_fCapture_1_1:
   0063                     517 	.ds 1
   0064                     518 _jektor_load_w_1_1:
   0064                     519 	.ds 2
   0066                     520 _jektor_load_xpb_1_1:
   0066                     521 	.ds 3
   0069                     522 _jektor_load_sloc0_1_0:
   0069                     523 	.ds 2
   006B                     524 _fill_usb::
   006B                     525 	.ds 1
   006C                     526 _UsbInterruptOutFromPcEndpointService_fCapture_1_1:
   006C                     527 	.ds 1
   006D                     528 _UsbInterruptOutFromPcEndpointService_dw_3_4:
   006D                     529 	.ds 4
   0071                     530 _UsbInterruptOutFromPcEndpointService_dr_3_4:
   0071                     531 	.ds 2
                            532 ;--------------------------------------------------------
                            533 ; overlayable items in internal ram 
                            534 ;--------------------------------------------------------
                            535 	.area OSEG    (OVR,DATA)
                            536 ;--------------------------------------------------------
                            537 ; indirectly addressable internal ram data
                            538 ;--------------------------------------------------------
                            539 	.area ISEG    (DATA)
                            540 ;--------------------------------------------------------
                            541 ; absolute internal ram data
                            542 ;--------------------------------------------------------
                            543 	.area IABS    (ABS,DATA)
                            544 	.area IABS    (ABS,DATA)
                            545 ;--------------------------------------------------------
                            546 ; bit data
                            547 ;--------------------------------------------------------
                            548 	.area BSEG    (BIT)
                            549 ;--------------------------------------------------------
                            550 ; paged external ram data
                            551 ;--------------------------------------------------------
                            552 	.area PSEG    (PAG,XDATA)
                            553 ;--------------------------------------------------------
                            554 ; external ram data
                            555 ;--------------------------------------------------------
                            556 	.area XSEG    (XDATA)
                            557 ;--------------------------------------------------------
                            558 ; absolute external ram data
                            559 ;--------------------------------------------------------
                            560 	.area XABS    (ABS,XDATA)
                            561 ;--------------------------------------------------------
                            562 ; external initialized ram data
                            563 ;--------------------------------------------------------
                            564 	.area XISEG   (XDATA)
                            565 	.area HOME    (CODE)
                            566 	.area GSINIT0 (CODE)
                            567 	.area GSINIT1 (CODE)
                            568 	.area GSINIT2 (CODE)
                            569 	.area GSINIT3 (CODE)
                            570 	.area GSINIT4 (CODE)
                            571 	.area GSINIT5 (CODE)
                            572 	.area GSINIT  (CODE)
                            573 	.area GSFINAL (CODE)
                            574 	.area CSEG    (CODE)
                            575 ;--------------------------------------------------------
                            576 ; global & static initialisations
                            577 ;--------------------------------------------------------
                            578 	.area HOME    (CODE)
                            579 	.area GSINIT  (CODE)
                            580 	.area GSFINAL (CODE)
                            581 	.area GSINIT  (CODE)
                            582 ;	whirlygig.c:41: BYTE bMixer = 0;
   00D1 75 41 00            583 	mov	_bMixer,#0x00
                            584 ;	whirlygig.c:89: static BYTE did_send = 0; 
   00D4 75 62 00            585 	mov	_did_send,#0x00
                            586 ;	whirlygig.c:157: BYTE fill_usb = 1;
   00D7 75 6B 01            587 	mov	_fill_usb,#0x01
                            588 ;--------------------------------------------------------
                            589 ; Home
                            590 ;--------------------------------------------------------
                            591 	.area HOME    (CODE)
                            592 	.area HOME    (CODE)
                            593 ;--------------------------------------------------------
                            594 ; code
                            595 ;--------------------------------------------------------
                            596 	.area CSEG    (CODE)
                            597 ;------------------------------------------------------------
                            598 ;Allocation info for local variables in function 'Delay'
                            599 ;------------------------------------------------------------
                            600 ;n                         Allocated to registers r2 r3 
                            601 ;x                         Allocated to registers r4 r5 
                            602 ;------------------------------------------------------------
                            603 ;	whirlygig.c:43: void Delay(unsigned int n)
                            604 ;	-----------------------------------------
                            605 ;	 function Delay
                            606 ;	-----------------------------------------
   127A                     607 _Delay:
                    0002    608 	ar2 = 0x02
                    0003    609 	ar3 = 0x03
                    0004    610 	ar4 = 0x04
                    0005    611 	ar5 = 0x05
                    0006    612 	ar6 = 0x06
                    0007    613 	ar7 = 0x07
                    0000    614 	ar0 = 0x00
                    0001    615 	ar1 = 0x01
   127A AA 82               616 	mov	r2,dpl
   127C AB 83               617 	mov	r3,dph
                            618 ;	whirlygig.c:46: for (x = 0; x < n; )
   127E 7C 00               619 	mov	r4,#0x00
   1280 7D 00               620 	mov	r5,#0x00
   1282                     621 00101$:
   1282 8C 06               622 	mov	ar6,r4
   1284 8D 07               623 	mov	ar7,r5
   1286 C3                  624 	clr	c
   1287 EE                  625 	mov	a,r6
   1288 9A                  626 	subb	a,r2
   1289 EF                  627 	mov	a,r7
   128A 9B                  628 	subb	a,r3
   128B 50 07               629 	jnc	00104$
                            630 ;	whirlygig.c:47: x++;
   128D 0C                  631 	inc	r4
   128E BC 00 F1            632 	cjne	r4,#0x00,00101$
   1291 0D                  633 	inc	r5
   1292 80 EE               634 	sjmp	00101$
   1294                     635 00104$:
   1294 22                  636 	ret
                            637 ;------------------------------------------------------------
                            638 ;Allocation info for local variables in function 'UsbSelectInEndpointFifo'
                            639 ;------------------------------------------------------------
                            640 ;bEndpointNumber           Allocated to registers r2 
                            641 ;------------------------------------------------------------
                            642 ;	whirlygig.c:58: void UsbSelectInEndpointFifo(BYTE bEndpointNumber) {
                            643 ;	-----------------------------------------
                            644 ;	 function UsbSelectInEndpointFifo
                            645 ;	-----------------------------------------
   1295                     646 _UsbSelectInEndpointFifo:
   1295 AA 82               647 	mov	r2,dpl
                            648 ;	whirlygig.c:59: while (USB0ADR & 0x80)
   1297                     649 00101$:
   1297 E5 96               650 	mov	a,_USB0ADR
   1299 20 E7 FB            651 	jb	acc.7,00101$
                            652 ;	whirlygig.c:61: USB0ADR = FIFO_EP0 + bEndpointNumber;
   129C 74 20               653 	mov	a,#0x20
   129E 2A                  654 	add	a,r2
   129F F5 96               655 	mov	_USB0ADR,a
                            656 ;	whirlygig.c:62: while (USB0ADR & 0x80)
   12A1                     657 00104$:
   12A1 E5 96               658 	mov	a,_USB0ADR
   12A3 20 E7 FB            659 	jb	acc.7,00104$
   12A6 22                  660 	ret
                            661 ;------------------------------------------------------------
                            662 ;Allocation info for local variables in function 'UsbSelectOutEndpointFifo'
                            663 ;------------------------------------------------------------
                            664 ;bEndpointNumber           Allocated to registers r2 
                            665 ;------------------------------------------------------------
                            666 ;	whirlygig.c:65: void UsbSelectOutEndpointFifo(BYTE bEndpointNumber) {
                            667 ;	-----------------------------------------
                            668 ;	 function UsbSelectOutEndpointFifo
                            669 ;	-----------------------------------------
   12A7                     670 _UsbSelectOutEndpointFifo:
   12A7 AA 82               671 	mov	r2,dpl
                            672 ;	whirlygig.c:66: while (USB0ADR & 0x80)
   12A9                     673 00101$:
   12A9 E5 96               674 	mov	a,_USB0ADR
   12AB 20 E7 FB            675 	jb	acc.7,00101$
                            676 ;	whirlygig.c:68: USB0ADR = (FIFO_EP0 + bEndpointNumber) | 0xc0;
   12AE 74 20               677 	mov	a,#0x20
   12B0 2A                  678 	add	a,r2
   12B1 F5 F0               679 	mov	b,a
   12B3 74 C0               680 	mov	a,#0xC0
   12B5 45 F0               681 	orl	a,b
   12B7 F5 96               682 	mov	_USB0ADR,a
                            683 ;	whirlygig.c:69: while (USB0ADR & 0x80)
   12B9                     684 00104$:
   12B9 E5 96               685 	mov	a,_USB0ADR
   12BB 20 E7 FB            686 	jb	acc.7,00104$
   12BE 22                  687 	ret
                            688 ;------------------------------------------------------------
                            689 ;Allocation info for local variables in function 'UsbWriteFifo'
                            690 ;------------------------------------------------------------
                            691 ;b                         Allocated to registers 
                            692 ;------------------------------------------------------------
                            693 ;	whirlygig.c:72: void UsbWriteFifo(BYTE b) {
                            694 ;	-----------------------------------------
                            695 ;	 function UsbWriteFifo
                            696 ;	-----------------------------------------
   12BF                     697 _UsbWriteFifo:
   12BF 85 82 97            698 	mov	_USB0DAT,dpl
                            699 ;	whirlygig.c:74: while (USB0ADR & 0x80)
   12C2                     700 00101$:
   12C2 E5 96               701 	mov	a,_USB0ADR
   12C4 20 E7 FB            702 	jb	acc.7,00101$
   12C7 22                  703 	ret
                            704 ;------------------------------------------------------------
                            705 ;Allocation info for local variables in function 'UsbReadFifo'
                            706 ;------------------------------------------------------------
                            707 ;------------------------------------------------------------
                            708 ;	whirlygig.c:77: BYTE UsbReadFifo(void) {
                            709 ;	-----------------------------------------
                            710 ;	 function UsbReadFifo
                            711 ;	-----------------------------------------
   12C8                     712 _UsbReadFifo:
                            713 ;	whirlygig.c:78: while (USB0ADR & 0x80)
   12C8                     714 00101$:
   12C8 E5 96               715 	mov	a,_USB0ADR
   12CA 20 E7 FB            716 	jb	acc.7,00101$
                            717 ;	whirlygig.c:80: return USB0DAT;
   12CD 85 97 82            718 	mov	dpl,_USB0DAT
   12D0 22                  719 	ret
                            720 ;------------------------------------------------------------
                            721 ;Allocation info for local variables in function 'UsbReadingFifoDone'
                            722 ;------------------------------------------------------------
                            723 ;------------------------------------------------------------
                            724 ;	whirlygig.c:82: void UsbReadingFifoDone(void) {
                            725 ;	-----------------------------------------
                            726 ;	 function UsbReadingFifoDone
                            727 ;	-----------------------------------------
   12D1                     728 _UsbReadingFifoDone:
                            729 ;	whirlygig.c:83: while (USB0ADR & 0x80)
   12D1                     730 00101$:
   12D1 E5 96               731 	mov	a,_USB0ADR
   12D3 20 E7 FB            732 	jb	acc.7,00101$
                            733 ;	whirlygig.c:85: USB0ADR = 0;
   12D6 75 96 00            734 	mov	_USB0ADR,#0x00
   12D9 22                  735 	ret
                            736 ;------------------------------------------------------------
                            737 ;Allocation info for local variables in function 'jektor_load'
                            738 ;------------------------------------------------------------
                            739 ;fCapture                  Allocated with name '_jektor_load_fCapture_1_1'
                            740 ;w                         Allocated with name '_jektor_load_w_1_1'
                            741 ;pb                        Allocated to registers 
                            742 ;bMask                     Allocated to registers r3 
                            743 ;byte                      Allocated to registers r5 
                            744 ;send                      Allocated to registers r4 
                            745 ;xpb                       Allocated with name '_jektor_load_xpb_1_1'
                            746 ;sloc0                     Allocated with name '_jektor_load_sloc0_1_0'
                            747 ;------------------------------------------------------------
                            748 ;	whirlygig.c:91: void jektor_load(BYTE fCapture)
                            749 ;	-----------------------------------------
                            750 ;	 function jektor_load
                            751 ;	-----------------------------------------
   12DA                     752 _jektor_load:
   12DA 85 82 63            753 	mov	_jektor_load_fCapture_1_1,dpl
                            754 ;	whirlygig.c:94: BYTE *pb=(BYTE *)&w;
                            755 ;	whirlygig.c:95: BYTE bMask = 0x01;
   12DD 7B 01               756 	mov	r3,#0x01
                            757 ;	whirlygig.c:97: BYTE send = 0;
   12DF 7C 00               758 	mov	r4,#0x00
                            759 ;	whirlygig.c:98: BYTE * xpb = sendbuf;
   12E1 75 66 42            760 	mov	_jektor_load_xpb_1_1,#_sendbuf
   12E4 75 67 00            761 	mov	(_jektor_load_xpb_1_1 + 1),#0x00
   12E7 75 68 40            762 	mov	(_jektor_load_xpb_1_1 + 2),#0x40
                            763 ;	whirlygig.c:100: pb[0] = UsbReadFifo();
   12EA 78 64               764 	mov	r0,#_jektor_load_w_1_1
   12EC 79 00               765 	mov	r1,#(_jektor_load_w_1_1 >> 8)
   12EE 7D 40               766 	mov	r5,#0x40
   12F0 C0 03               767 	push	ar3
   12F2 C0 04               768 	push	ar4
   12F4 C0 05               769 	push	ar5
   12F6 C0 00               770 	push	ar0
   12F8 C0 01               771 	push	ar1
   12FA 12 12 C8            772 	lcall	_UsbReadFifo
   12FD AE 82               773 	mov	r6,dpl
   12FF D0 01               774 	pop	ar1
   1301 D0 00               775 	pop	ar0
   1303 D0 05               776 	pop	ar5
   1305 88 82               777 	mov	dpl,r0
   1307 89 83               778 	mov	dph,r1
   1309 8D F0               779 	mov	b,r5
   130B EE                  780 	mov	a,r6
   130C 12 16 1A            781 	lcall	__gptrput
                            782 ;	whirlygig.c:101: pb[1] = UsbReadFifo();
   130F 12 12 C8            783 	lcall	_UsbReadFifo
   1312 AD 82               784 	mov	r5,dpl
   1314 90 00 65            785 	mov	dptr,#(_jektor_load_w_1_1 + 0x0001)
   1317 75 F0 40            786 	mov	b,#0x40
   131A ED                  787 	mov	a,r5
   131B 12 16 1A            788 	lcall	__gptrput
                            789 ;	whirlygig.c:103: byte = UsbReadFifo();
   131E 12 12 C8            790 	lcall	_UsbReadFifo
   1321 AD 82               791 	mov	r5,dpl
   1323 D0 04               792 	pop	ar4
   1325 D0 03               793 	pop	ar3
                            794 ;	whirlygig.c:105: JTAGTMSBIT = 0;
   1327 C2 93               795 	clr	_P1_3
                            796 ;	whirlygig.c:106: JTAGTDOBIT = 1;
   1329 D2 95               797 	setb	_P1_5
                            798 ;	whirlygig.c:108: while (w--) {
   132B AE 66               799 	mov	r6,_jektor_load_xpb_1_1
   132D AF 67               800 	mov	r7,(_jektor_load_xpb_1_1 + 1)
   132F A8 68               801 	mov	r0,(_jektor_load_xpb_1_1 + 2)
   1331 85 64 69            802 	mov	_jektor_load_sloc0_1_0,_jektor_load_w_1_1
   1334 85 65 6A            803 	mov	(_jektor_load_sloc0_1_0 + 1),(_jektor_load_w_1_1 + 1)
   1337                     804 00115$:
   1337 A9 69               805 	mov	r1,_jektor_load_sloc0_1_0
   1339 AA 6A               806 	mov	r2,(_jektor_load_sloc0_1_0 + 1)
   133B 15 69               807 	dec	_jektor_load_sloc0_1_0
   133D 74 FF               808 	mov	a,#0xff
   133F B5 69 02            809 	cjne	a,_jektor_load_sloc0_1_0,00154$
   1342 15 6A               810 	dec	(_jektor_load_sloc0_1_0 + 1)
   1344                     811 00154$:
   1344 E9                  812 	mov	a,r1
   1345 4A                  813 	orl	a,r2
   1346 60 62               814 	jz	00152$
                            815 ;	whirlygig.c:110: if (!w)
   1348 E5 69               816 	mov	a,_jektor_load_sloc0_1_0
   134A 45 6A               817 	orl	a,(_jektor_load_sloc0_1_0 + 1)
   134C 70 02               818 	jnz	00102$
                            819 ;	whirlygig.c:111: JTAGTMSBIT = 1;
   134E D2 93               820 	setb	_P1_3
   1350                     821 00102$:
                            822 ;	whirlygig.c:113: if(byte & bMask)
   1350 EB                  823 	mov	a,r3
   1351 5D                  824 	anl	a,r5
   1352 60 04               825 	jz	00104$
                            826 ;	whirlygig.c:114: JTAGTDIBIT = 1;
   1354 D2 94               827 	setb	_P1_4
   1356 80 02               828 	sjmp	00105$
   1358                     829 00104$:
                            830 ;	whirlygig.c:116: JTAGTDIBIT = 0;
   1358 C2 94               831 	clr	_P1_4
   135A                     832 00105$:
                            833 ;	whirlygig.c:117: JTAGTCKBIT = 0;
   135A C2 92               834 	clr	_P1_2
                            835 ;	whirlygig.c:118: JTAGTCKBIT = 1;
   135C D2 92               836 	setb	_P1_2
                            837 ;	whirlygig.c:120: if(fCapture) {
   135E E5 63               838 	mov	a,_jektor_load_fCapture_1_1
   1360 60 0D               839 	jz	00110$
                            840 ;	whirlygig.c:121: if(JTAGTDOBIT)
   1362 30 95 05            841 	jnb	_P1_5,00107$
                            842 ;	whirlygig.c:122: send |= bMask;
   1365 EB                  843 	mov	a,r3
   1366 42 04               844 	orl	ar4,a
   1368 80 05               845 	sjmp	00110$
   136A                     846 00107$:
                            847 ;	whirlygig.c:124: send &= ~bMask;
   136A EB                  848 	mov	a,r3
   136B F4                  849 	cpl	a
   136C FA                  850 	mov	r2,a
   136D 52 04               851 	anl	ar4,a
   136F                     852 00110$:
                            853 ;	whirlygig.c:127: if (w && (bMask & 0x80)) {
   136F E5 69               854 	mov	a,_jektor_load_sloc0_1_0
   1371 45 6A               855 	orl	a,(_jektor_load_sloc0_1_0 + 1)
   1373 60 30               856 	jz	00112$
   1375 EB                  857 	mov	a,r3
   1376 30 E7 2C            858 	jnb	acc.7,00112$
                            859 ;	whirlygig.c:128: bMask = 0x01;
   1379 7B 01               860 	mov	r3,#0x01
                            861 ;	whirlygig.c:129: byte = UsbReadFifo();
   137B C0 03               862 	push	ar3
   137D C0 04               863 	push	ar4
   137F C0 06               864 	push	ar6
   1381 C0 07               865 	push	ar7
   1383 C0 00               866 	push	ar0
   1385 12 12 C8            867 	lcall	_UsbReadFifo
   1388 AD 82               868 	mov	r5,dpl
   138A D0 00               869 	pop	ar0
   138C D0 07               870 	pop	ar7
   138E D0 06               871 	pop	ar6
   1390 D0 04               872 	pop	ar4
   1392 D0 03               873 	pop	ar3
                            874 ;	whirlygig.c:130: *xpb++ = send;
   1394 8E 82               875 	mov	dpl,r6
   1396 8F 83               876 	mov	dph,r7
   1398 88 F0               877 	mov	b,r0
   139A EC                  878 	mov	a,r4
   139B 12 16 1A            879 	lcall	__gptrput
   139E A3                  880 	inc	dptr
   139F AE 82               881 	mov	r6,dpl
   13A1 AF 83               882 	mov	r7,dph
   13A3 80 92               883 	sjmp	00115$
   13A5                     884 00112$:
                            885 ;	whirlygig.c:132: bMask <<= 1;
   13A5 EB                  886 	mov	a,r3
   13A6 2B                  887 	add	a,r3
   13A7 FB                  888 	mov	r3,a
   13A8 80 8D               889 	sjmp	00115$
   13AA                     890 00152$:
   13AA 8E 66               891 	mov	_jektor_load_xpb_1_1,r6
   13AC 8F 67               892 	mov	(_jektor_load_xpb_1_1 + 1),r7
   13AE 88 68               893 	mov	(_jektor_load_xpb_1_1 + 2),r0
                            894 ;	whirlygig.c:135: if(fCapture)
   13B0 E5 63               895 	mov	a,_jektor_load_fCapture_1_1
   13B2 60 1A               896 	jz	00121$
                            897 ;	whirlygig.c:136: if (bMask != 1)
   13B4 BB 01 02            898 	cjne	r3,#0x01,00163$
   13B7 80 15               899 	sjmp	00121$
   13B9                     900 00163$:
                            901 ;	whirlygig.c:137: *xpb++ = send;
   13B9 8E 82               902 	mov	dpl,r6
   13BB 8F 83               903 	mov	dph,r7
   13BD 88 F0               904 	mov	b,r0
   13BF EC                  905 	mov	a,r4
   13C0 12 16 1A            906 	lcall	__gptrput
   13C3 74 01               907 	mov	a,#0x01
   13C5 2E                  908 	add	a,r6
   13C6 F5 66               909 	mov	_jektor_load_xpb_1_1,a
   13C8 E4                  910 	clr	a
   13C9 3F                  911 	addc	a,r7
   13CA F5 67               912 	mov	(_jektor_load_xpb_1_1 + 1),a
   13CC 88 68               913 	mov	(_jektor_load_xpb_1_1 + 2),r0
   13CE                     914 00121$:
                            915 ;	whirlygig.c:139: UsbReadingFifoDone();
   13CE 12 12 D1            916 	lcall	_UsbReadingFifoDone
                            917 ;	whirlygig.c:141: if(fCapture) {
   13D1 E5 63               918 	mov	a,_jektor_load_fCapture_1_1
   13D3 60 4C               919 	jz	00133$
                            920 ;	whirlygig.c:142: w = xpb - sendbuf;
   13D5 E5 66               921 	mov	a,_jektor_load_xpb_1_1
   13D7 C3                  922 	clr	c
   13D8 94 42               923 	subb	a,#_sendbuf
   13DA F5 64               924 	mov	_jektor_load_w_1_1,a
   13DC E5 67               925 	mov	a,(_jektor_load_xpb_1_1 + 1)
   13DE 94 00               926 	subb	a,#0x00
   13E0 F5 65               927 	mov	(_jektor_load_w_1_1 + 1),a
                            928 ;	whirlygig.c:143: xpb = sendbuf;
   13E2 75 66 42            929 	mov	_jektor_load_xpb_1_1,#_sendbuf
   13E5 75 67 00            930 	mov	(_jektor_load_xpb_1_1 + 1),#0x00
   13E8 75 68 40            931 	mov	(_jektor_load_xpb_1_1 + 2),#0x40
                            932 ;	whirlygig.c:145: while(USB0ADR & 0x80);              // Wait for BUSY->'0'
   13EB                     933 00122$:
   13EB E5 96               934 	mov	a,_USB0ADR
   13ED 20 E7 FB            935 	jb	acc.7,00122$
                            936 ;	whirlygig.c:147: USB0ADR = FIFO_EP0 + 1;                   // Set address (mask out bits7-6)
   13F0 75 96 21            937 	mov	_USB0ADR,#0x21
                            938 ;	whirlygig.c:149: while (w--) {
   13F3 AA 66               939 	mov	r2,_jektor_load_xpb_1_1
   13F5 AB 67               940 	mov	r3,(_jektor_load_xpb_1_1 + 1)
   13F7 AC 68               941 	mov	r4,(_jektor_load_xpb_1_1 + 2)
   13F9 AD 64               942 	mov	r5,_jektor_load_w_1_1
   13FB AE 65               943 	mov	r6,(_jektor_load_w_1_1 + 1)
   13FD                     944 00128$:
   13FD 8D 07               945 	mov	ar7,r5
   13FF 8E 00               946 	mov	ar0,r6
   1401 1D                  947 	dec	r5
   1402 BD FF 01            948 	cjne	r5,#0xff,00166$
   1405 1E                  949 	dec	r6
   1406                     950 00166$:
   1406 EF                  951 	mov	a,r7
   1407 48                  952 	orl	a,r0
   1408 60 17               953 	jz	00133$
                            954 ;	whirlygig.c:150: USB0DAT = *xpb++;
   140A 8A 82               955 	mov	dpl,r2
   140C 8B 83               956 	mov	dph,r3
   140E 8C F0               957 	mov	b,r4
   1410 12 16 33            958 	lcall	__gptrget
   1413 F5 97               959 	mov	_USB0DAT,a
   1415 A3                  960 	inc	dptr
   1416 AA 82               961 	mov	r2,dpl
   1418 AB 83               962 	mov	r3,dph
                            963 ;	whirlygig.c:151: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
   141A                     964 00125$:
   141A E5 96               965 	mov	a,_USB0ADR
   141C 30 E7 DE            966 	jnb	acc.7,00128$
   141F 80 F9               967 	sjmp	00125$
   1421                     968 00133$:
   1421 22                  969 	ret
                            970 ;------------------------------------------------------------
                            971 ;Allocation info for local variables in function 'UsbInterruptInToPcEndpointService'
                            972 ;------------------------------------------------------------
                            973 ;bEndpointNumber           Allocated to registers r2 
                            974 ;ControlReg                Allocated to registers r3 
                            975 ;------------------------------------------------------------
                            976 ;	whirlygig.c:161: void UsbInterruptInToPcEndpointService(BYTE bEndpointNumber)
                            977 ;	-----------------------------------------
                            978 ;	 function UsbInterruptInToPcEndpointService
                            979 ;	-----------------------------------------
   1422                     980 _UsbInterruptInToPcEndpointService:
   1422 AA 82               981 	mov	r2,dpl
                            982 ;	whirlygig.c:165: POLL_WRITE_BYTE(INDEX, bEndpointNumber);
   1424                     983 00101$:
   1424 E5 96               984 	mov	a,_USB0ADR
   1426 20 E7 FB            985 	jb	acc.7,00101$
   1429 75 96 0E            986 	mov	_USB0ADR,#0x0E
   142C 8A 97               987 	mov	_USB0DAT,r2
                            988 ;	whirlygig.c:166: POLL_READ_BYTE(EINCSR1, ControlReg);
   142E                     989 00104$:
   142E E5 96               990 	mov	a,_USB0ADR
   1430 20 E7 FB            991 	jb	acc.7,00104$
   1433 75 96 91            992 	mov	_USB0ADR,#0x91
   1436                     993 00107$:
   1436 E5 96               994 	mov	a,_USB0ADR
   1438 20 E7 FB            995 	jb	acc.7,00107$
                            996 ;	whirlygig.c:167: if (ControlReg & rbInINPRDY)
   143B E5 97               997 	mov	a,_USB0DAT
   143D FB                  998 	mov	r3,a
   143E 30 E0 01            999 	jnb	acc.0,00111$
                           1000 ;	whirlygig.c:168: return;
   1441 22                 1001 	ret
   1442                    1002 00111$:
                           1003 ;	whirlygig.c:170: switch (bEndpointNumber) {
   1442 BA 01 02           1004 	cjne	r2,#0x01,00143$
   1445 80 05              1005 	sjmp	00112$
   1447                    1006 00143$:
                           1007 ;	whirlygig.c:171: case 1:
   1447 BA 03 35           1008 	cjne	r2,#0x03,00123$
   144A 80 25              1009 	sjmp	00118$
   144C                    1010 00112$:
                           1011 ;	whirlygig.c:172: if (!did_send)
   144C E5 62              1012 	mov	a,_did_send
   144E 70 15              1013 	jnz	00115$
                           1014 ;	whirlygig.c:173: Fifo_Write(FIFO_EP0 + 1, 18, "Whirlygig RNG 1.0");
   1450 75 3C CC           1015 	mov	_Fifo_Write_PARM_3,#__str_0
   1453 75 3D 16           1016 	mov	(_Fifo_Write_PARM_3 + 1),#(__str_0 >> 8)
   1456 75 3E 80           1017 	mov	(_Fifo_Write_PARM_3 + 2),#0x80
   1459 75 3A 12           1018 	mov	_Fifo_Write_PARM_2,#0x12
   145C E4                 1019 	clr	a
   145D F5 3B              1020 	mov	(_Fifo_Write_PARM_2 + 1),a
   145F 75 82 21           1021 	mov	dpl,#0x21
   1462 12 0B 2A           1022 	lcall	_Fifo_Write
                           1023 ;	whirlygig.c:175: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
   1465                    1024 00115$:
   1465 E5 96              1025 	mov	a,_USB0ADR
   1467 20 E7 FB           1026 	jb	acc.7,00115$
   146A 75 96 11           1027 	mov	_USB0ADR,#0x11
   146D 75 97 01           1028 	mov	_USB0DAT,#0x01
                           1029 ;	whirlygig.c:180: break;
                           1030 ;	whirlygig.c:182: case 3:
   1470 22                 1031 	ret
   1471                    1032 00118$:
                           1033 ;	whirlygig.c:183: fill_usb = 1;
   1471 75 6B 01           1034 	mov	_fill_usb,#0x01
                           1035 ;	whirlygig.c:184: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
   1474                    1036 00119$:
   1474 E5 96              1037 	mov	a,_USB0ADR
   1476 20 E7 FB           1038 	jb	acc.7,00119$
   1479 75 96 11           1039 	mov	_USB0ADR,#0x11
   147C 75 97 01           1040 	mov	_USB0DAT,#0x01
                           1041 ;	whirlygig.c:188: }
   147F                    1042 00123$:
   147F 22                 1043 	ret
                           1044 ;------------------------------------------------------------
                           1045 ;Allocation info for local variables in function 'UsbInterruptOutFromPcEndpointService'
                           1046 ;------------------------------------------------------------
                           1047 ;bEndpointNumber           Allocated to registers r2 
                           1048 ;fCapture                  Allocated with name '_UsbInterruptOutFromPcEndpointService_fCapture_1_1'
                           1049 ;count                     Allocated to registers r2 
                           1050 ;pattern                   Allocated to registers r3 
                           1051 ;dw                        Allocated with name '_UsbInterruptOutFromPcEndpointService_dw_3_4'
                           1052 ;pb                        Allocated to registers r2 r3 r4 
                           1053 ;dr                        Allocated with name '_UsbInterruptOutFromPcEndpointService_dr_3_4'
                           1054 ;------------------------------------------------------------
                           1055 ;	whirlygig.c:193: void UsbInterruptOutFromPcEndpointService(BYTE bEndpointNumber)
                           1056 ;	-----------------------------------------
                           1057 ;	 function UsbInterruptOutFromPcEndpointService
                           1058 ;	-----------------------------------------
   1480                    1059 _UsbInterruptOutFromPcEndpointService:
   1480 AA 82              1060 	mov	r2,dpl
                           1061 ;	whirlygig.c:195: BYTE fCapture = 0;
   1482 75 6C 00           1062 	mov	_UsbInterruptOutFromPcEndpointService_fCapture_1_1,#0x00
                           1063 ;	whirlygig.c:199: did_send = 1;
   1485 75 62 01           1064 	mov	_did_send,#0x01
                           1065 ;	whirlygig.c:201: UsbSelectOutEndpointFifo(bEndpointNumber);
   1488 8A 82              1066 	mov	dpl,r2
   148A 12 12 A7           1067 	lcall	_UsbSelectOutEndpointFifo
                           1068 ;	whirlygig.c:203: switch(UsbReadFifo()) {
   148D 12 12 C8           1069 	lcall	_UsbReadFifo
   1490 AA 82              1070 	mov	r2,dpl
   1492 BA 65 02           1071 	cjne	r2,#0x65,00132$
   1495 80 15              1072 	sjmp	00101$
   1497                    1073 00132$:
   1497 BA 66 02           1074 	cjne	r2,#0x66,00133$
   149A 80 28              1075 	sjmp	00102$
   149C                    1076 00133$:
   149C BA 67 02           1077 	cjne	r2,#0x67,00134$
   149F 80 50              1078 	sjmp	00107$
   14A1                    1079 00134$:
   14A1 BA 68 02           1080 	cjne	r2,#0x68,00135$
   14A4 80 48              1081 	sjmp	00106$
   14A6                    1082 00135$:
   14A6 BA 69 02           1083 	cjne	r2,#0x69,00136$
   14A9 80 4C              1084 	sjmp	00108$
   14AB                    1085 00136$:
   14AB 22                 1086 	ret
                           1087 ;	whirlygig.c:205: case JEKTOR_GET_FIRMWARE_VERSION:
   14AC                    1088 00101$:
                           1089 ;	whirlygig.c:206: UsbReadingFifoDone();
   14AC 12 12 D1           1090 	lcall	_UsbReadingFifoDone
                           1091 ;	whirlygig.c:207: Fifo_Write(FIFO_EP0 + 1, 17 , "1Jektor         ");
   14AF 75 3C DE           1092 	mov	_Fifo_Write_PARM_3,#__str_1
   14B2 75 3D 16           1093 	mov	(_Fifo_Write_PARM_3 + 1),#(__str_1 >> 8)
   14B5 75 3E 80           1094 	mov	(_Fifo_Write_PARM_3 + 2),#0x80
   14B8 75 3A 11           1095 	mov	_Fifo_Write_PARM_2,#0x11
   14BB E4                 1096 	clr	a
   14BC F5 3B              1097 	mov	(_Fifo_Write_PARM_2 + 1),a
   14BE 75 82 21           1098 	mov	dpl,#0x21
                           1099 ;	whirlygig.c:208: break;
   14C1 02 0B 2A           1100 	ljmp	_Fifo_Write
                           1101 ;	whirlygig.c:210: case JEKTOR_MOVE_TO_STATE:
   14C4                    1102 00102$:
                           1103 ;	whirlygig.c:211: count = UsbReadFifo();
   14C4 12 12 C8           1104 	lcall	_UsbReadFifo
   14C7 AA 82              1105 	mov	r2,dpl
                           1106 ;	whirlygig.c:212: pattern = UsbReadFifo();
   14C9 C0 02              1107 	push	ar2
   14CB 12 12 C8           1108 	lcall	_UsbReadFifo
   14CE AB 82              1109 	mov	r3,dpl
                           1110 ;	whirlygig.c:213: UsbReadingFifoDone();
   14D0 C0 03              1111 	push	ar3
   14D2 12 12 D1           1112 	lcall	_UsbReadingFifoDone
   14D5 D0 03              1113 	pop	ar3
   14D7 D0 02              1114 	pop	ar2
                           1115 ;	whirlygig.c:214: while(count--) {
   14D9                    1116 00103$:
   14D9 8A 04              1117 	mov	ar4,r2
   14DB 1A                 1118 	dec	r2
   14DC EC                 1119 	mov	a,r4
   14DD 70 01              1120 	jnz	00137$
   14DF 22                 1121 	ret
   14E0                    1122 00137$:
                           1123 ;	whirlygig.c:215: JTAGTMSBIT = pattern & 1;
   14E0 EB                 1124 	mov	a,r3
   14E1 13                 1125 	rrc	a
   14E2 92 93              1126 	mov	_P1_3,c
                           1127 ;	whirlygig.c:216: JTAGTCKBIT = 0;
   14E4 C2 92              1128 	clr	_P1_2
                           1129 ;	whirlygig.c:217: JTAGTCKBIT = 1;
   14E6 D2 92              1130 	setb	_P1_2
                           1131 ;	whirlygig.c:218: pattern >>= 1;
   14E8 EB                 1132 	mov	a,r3
   14E9 C3                 1133 	clr	c
   14EA 13                 1134 	rrc	a
   14EB FB                 1135 	mov	r3,a
                           1136 ;	whirlygig.c:222: case JEKTOR_BOUNDARY_LOAD_CAPTURE_TDO:
   14EC 80 EB              1137 	sjmp	00103$
   14EE                    1138 00106$:
                           1139 ;	whirlygig.c:223: fCapture = 1;
   14EE 75 6C 01           1140 	mov	_UsbInterruptOutFromPcEndpointService_fCapture_1_1,#0x01
                           1141 ;	whirlygig.c:225: case JEKTOR_BOUNDARY_LOAD_IGNORE_TDO:
   14F1                    1142 00107$:
                           1143 ;	whirlygig.c:226: jektor_load(fCapture);
   14F1 85 6C 82           1144 	mov	dpl,_UsbInterruptOutFromPcEndpointService_fCapture_1_1
                           1145 ;	whirlygig.c:227: break;
   14F4 02 12 DA           1146 	ljmp	_jektor_load
                           1147 ;	whirlygig.c:230: case JEKTOR_BOUNDARY_JUST_CLOCK:
   14F7                    1148 00108$:
                           1149 ;	whirlygig.c:233: BYTE *pb = (BYTE *)&dw;
   14F7 7A 6D              1150 	mov	r2,#_UsbInterruptOutFromPcEndpointService_dw_3_4
   14F9 7B 00              1151 	mov	r3,#0x00
   14FB 7C 40              1152 	mov	r4,#0x40
                           1153 ;	whirlygig.c:234: int dr = UsbReadFifo();
   14FD C0 02              1154 	push	ar2
   14FF C0 03              1155 	push	ar3
   1501 C0 04              1156 	push	ar4
   1503 12 12 C8           1157 	lcall	_UsbReadFifo
   1506 AD 82              1158 	mov	r5,dpl
   1508 8D 71              1159 	mov	_UsbInterruptOutFromPcEndpointService_dr_3_4,r5
   150A 75 72 00           1160 	mov	(_UsbInterruptOutFromPcEndpointService_dr_3_4 + 1),#0x00
                           1161 ;	whirlygig.c:236: *pb++=UsbReadFifo();
   150D 12 12 C8           1162 	lcall	_UsbReadFifo
   1510 AF 82              1163 	mov	r7,dpl
   1512 D0 04              1164 	pop	ar4
   1514 D0 03              1165 	pop	ar3
   1516 D0 02              1166 	pop	ar2
   1518 8A 82              1167 	mov	dpl,r2
   151A 8B 83              1168 	mov	dph,r3
   151C 8C F0              1169 	mov	b,r4
   151E EF                 1170 	mov	a,r7
   151F 12 16 1A           1171 	lcall	__gptrput
   1522 A3                 1172 	inc	dptr
   1523 AA 82              1173 	mov	r2,dpl
   1525 AB 83              1174 	mov	r3,dph
                           1175 ;	whirlygig.c:237: *pb++=UsbReadFifo();
   1527 C0 02              1176 	push	ar2
   1529 C0 03              1177 	push	ar3
   152B C0 04              1178 	push	ar4
   152D 12 12 C8           1179 	lcall	_UsbReadFifo
   1530 AF 82              1180 	mov	r7,dpl
   1532 D0 04              1181 	pop	ar4
   1534 D0 03              1182 	pop	ar3
   1536 D0 02              1183 	pop	ar2
   1538 8A 82              1184 	mov	dpl,r2
   153A 8B 83              1185 	mov	dph,r3
   153C 8C F0              1186 	mov	b,r4
   153E EF                 1187 	mov	a,r7
   153F 12 16 1A           1188 	lcall	__gptrput
   1542 A3                 1189 	inc	dptr
   1543 AA 82              1190 	mov	r2,dpl
   1545 AB 83              1191 	mov	r3,dph
                           1192 ;	whirlygig.c:238: *pb++=UsbReadFifo();
   1547 C0 02              1193 	push	ar2
   1549 C0 03              1194 	push	ar3
   154B C0 04              1195 	push	ar4
   154D 12 12 C8           1196 	lcall	_UsbReadFifo
   1550 AF 82              1197 	mov	r7,dpl
   1552 D0 04              1198 	pop	ar4
   1554 D0 03              1199 	pop	ar3
   1556 D0 02              1200 	pop	ar2
   1558 8A 82              1201 	mov	dpl,r2
   155A 8B 83              1202 	mov	dph,r3
   155C 8C F0              1203 	mov	b,r4
   155E EF                 1204 	mov	a,r7
   155F 12 16 1A           1205 	lcall	__gptrput
   1562 A3                 1206 	inc	dptr
   1563 AA 82              1207 	mov	r2,dpl
   1565 AB 83              1208 	mov	r3,dph
                           1209 ;	whirlygig.c:239: *pb++=UsbReadFifo();
   1567 C0 02              1210 	push	ar2
   1569 C0 03              1211 	push	ar3
   156B C0 04              1212 	push	ar4
   156D 12 12 C8           1213 	lcall	_UsbReadFifo
   1570 AF 82              1214 	mov	r7,dpl
   1572 D0 04              1215 	pop	ar4
   1574 D0 03              1216 	pop	ar3
   1576 D0 02              1217 	pop	ar2
   1578 8A 82              1218 	mov	dpl,r2
   157A 8B 83              1219 	mov	dph,r3
   157C 8C F0              1220 	mov	b,r4
   157E EF                 1221 	mov	a,r7
   157F 12 16 1A           1222 	lcall	__gptrput
                           1223 ;	whirlygig.c:241: UsbReadingFifoDone();
   1582 12 12 D1           1224 	lcall	_UsbReadingFifoDone
                           1225 ;	whirlygig.c:243: if (dr) {
   1585 E5 71              1226 	mov	a,_UsbInterruptOutFromPcEndpointService_dr_3_4
   1587 45 72              1227 	orl	a,(_UsbInterruptOutFromPcEndpointService_dr_3_4 + 1)
   1589 60 37              1228 	jz	00110$
                           1229 ;	whirlygig.c:245: JTAGTMSBIT=0;
   158B C2 93              1230 	clr	_P1_3
                           1231 ;	whirlygig.c:246: JTAGTCKBIT=0;
   158D C2 92              1232 	clr	_P1_2
                           1233 ;	whirlygig.c:247: JTAGTCKBIT=1;
   158F D2 92              1234 	setb	_P1_2
                           1235 ;	whirlygig.c:249: JTAGTMSBIT=1;
   1591 D2 93              1236 	setb	_P1_3
                           1237 ;	whirlygig.c:250: JTAGTCKBIT=0;
   1593 C2 92              1238 	clr	_P1_2
                           1239 ;	whirlygig.c:251: JTAGTCKBIT=1;
   1595 D2 92              1240 	setb	_P1_2
                           1241 ;	whirlygig.c:253: JTAGTMSBIT=0;
   1597 C2 93              1242 	clr	_P1_3
                           1243 ;	whirlygig.c:254: JTAGTCKBIT=0;
   1599 C2 92              1244 	clr	_P1_2
                           1245 ;	whirlygig.c:255: JTAGTCKBIT=1;
   159B D2 92              1246 	setb	_P1_2
                           1247 ;	whirlygig.c:257: JTAGTMSBIT=1;
   159D D2 93              1248 	setb	_P1_3
                           1249 ;	whirlygig.c:258: JTAGTCKBIT=0;
   159F C2 92              1250 	clr	_P1_2
                           1251 ;	whirlygig.c:259: JTAGTCKBIT=1;
   15A1 D2 92              1252 	setb	_P1_2
                           1253 ;	whirlygig.c:261: JTAGTMSBIT=1;
   15A3 D2 93              1254 	setb	_P1_3
                           1255 ;	whirlygig.c:262: JTAGTCKBIT=0;
   15A5 C2 92              1256 	clr	_P1_2
                           1257 ;	whirlygig.c:263: JTAGTCKBIT=1;
   15A7 D2 92              1258 	setb	_P1_2
                           1259 ;	whirlygig.c:265: JTAGTMSBIT=0;
   15A9 C2 93              1260 	clr	_P1_3
                           1261 ;	whirlygig.c:266: JTAGTCKBIT=0;
   15AB C2 92              1262 	clr	_P1_2
                           1263 ;	whirlygig.c:267: JTAGTCKBIT=1;
   15AD D2 92              1264 	setb	_P1_2
                           1265 ;	whirlygig.c:269: dw--; // going to do this one afterwards
   15AF 15 6D              1266 	dec	_UsbInterruptOutFromPcEndpointService_dw_3_4
   15B1 74 FF              1267 	mov	a,#0xff
   15B3 B5 6D 0C           1268 	cjne	a,_UsbInterruptOutFromPcEndpointService_dw_3_4,00139$
   15B6 15 6E              1269 	dec	(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 1)
   15B8 B5 6E 07           1270 	cjne	a,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 1),00139$
   15BB 15 6F              1271 	dec	(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 2)
   15BD B5 6F 02           1272 	cjne	a,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 2),00139$
   15C0 15 70              1273 	dec	(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 3)
   15C2                    1274 00139$:
   15C2                    1275 00110$:
                           1276 ;	whirlygig.c:272: JTAGTMSBIT = 0;
   15C2 C2 93              1277 	clr	_P1_3
                           1278 ;	whirlygig.c:274: while(dw--) {
   15C4 AA 6D              1279 	mov	r2,_UsbInterruptOutFromPcEndpointService_dw_3_4
   15C6 AB 6E              1280 	mov	r3,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 1)
   15C8 AC 6F              1281 	mov	r4,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 2)
   15CA AF 70              1282 	mov	r7,(_UsbInterruptOutFromPcEndpointService_dw_3_4 + 3)
   15CC                    1283 00111$:
   15CC 8A 00              1284 	mov	ar0,r2
   15CE 8B 01              1285 	mov	ar1,r3
   15D0 8C 05              1286 	mov	ar5,r4
   15D2 8F 06              1287 	mov	ar6,r7
   15D4 1A                 1288 	dec	r2
   15D5 BA FF 09           1289 	cjne	r2,#0xff,00140$
   15D8 1B                 1290 	dec	r3
   15D9 BB FF 05           1291 	cjne	r3,#0xff,00140$
   15DC 1C                 1292 	dec	r4
   15DD BC FF 01           1293 	cjne	r4,#0xff,00140$
   15E0 1F                 1294 	dec	r7
   15E1                    1295 00140$:
   15E1 E8                 1296 	mov	a,r0
   15E2 49                 1297 	orl	a,r1
   15E3 4D                 1298 	orl	a,r5
   15E4 4E                 1299 	orl	a,r6
   15E5 60 06              1300 	jz	00113$
                           1301 ;	whirlygig.c:275: JTAGTCKBIT = 0;
   15E7 C2 92              1302 	clr	_P1_2
                           1303 ;	whirlygig.c:276: JTAGTCKBIT = 1;
   15E9 D2 92              1304 	setb	_P1_2
   15EB 80 DF              1305 	sjmp	00111$
   15ED                    1306 00113$:
                           1307 ;	whirlygig.c:281: if (dr) {
   15ED E5 71              1308 	mov	a,_UsbInterruptOutFromPcEndpointService_dr_3_4
   15EF 45 72              1309 	orl	a,(_UsbInterruptOutFromPcEndpointService_dr_3_4 + 1)
   15F1 60 12              1310 	jz	00115$
                           1311 ;	whirlygig.c:283: JTAGTMSBIT=1;
   15F3 D2 93              1312 	setb	_P1_3
                           1313 ;	whirlygig.c:284: JTAGTCKBIT=0;
   15F5 C2 92              1314 	clr	_P1_2
                           1315 ;	whirlygig.c:285: JTAGTCKBIT=1;
   15F7 D2 92              1316 	setb	_P1_2
                           1317 ;	whirlygig.c:287: JTAGTMSBIT=0;
   15F9 C2 93              1318 	clr	_P1_3
                           1319 ;	whirlygig.c:288: JTAGTCKBIT=0;
   15FB C2 92              1320 	clr	_P1_2
                           1321 ;	whirlygig.c:289: JTAGTCKBIT=1;
   15FD D2 92              1322 	setb	_P1_2
                           1323 ;	whirlygig.c:290: JTAGTMSBIT=0;
   15FF C2 93              1324 	clr	_P1_3
                           1325 ;	whirlygig.c:291: JTAGTCKBIT=0;
   1601 C2 92              1326 	clr	_P1_2
                           1327 ;	whirlygig.c:292: JTAGTCKBIT=1;
   1603 D2 92              1328 	setb	_P1_2
   1605                    1329 00115$:
                           1330 ;	whirlygig.c:297: Fifo_Write(FIFO_EP0 + 1, 1, &fCapture);
   1605 75 3C 6C           1331 	mov	_Fifo_Write_PARM_3,#_UsbInterruptOutFromPcEndpointService_fCapture_1_1
   1608 75 3D 00           1332 	mov	(_Fifo_Write_PARM_3 + 1),#0x00
   160B 75 3E 40           1333 	mov	(_Fifo_Write_PARM_3 + 2),#0x40
   160E 75 3A 01           1334 	mov	_Fifo_Write_PARM_2,#0x01
   1611 E4                 1335 	clr	a
   1612 F5 3B              1336 	mov	(_Fifo_Write_PARM_2 + 1),a
   1614 75 82 21           1337 	mov	dpl,#0x21
                           1338 ;	whirlygig.c:302: }
   1617 02 0B 2A           1339 	ljmp	_Fifo_Write
                           1340 	.area CSEG    (CODE)
                           1341 	.area CONST   (CODE)
   16CC                    1342 __str_0:
   16CC 57 68 69 72 6C 79  1343 	.ascii "Whirlygig RNG 1.0"
        67 69 67 20 52 4E
        47 20 31 2E 30
   16DD 00                 1344 	.db 0x00
   16DE                    1345 __str_1:
   16DE 31 4A 65 6B 74 6F  1346 	.ascii "1Jektor         "
        72 20 20 20 20 20
        20 20 20 20
   16EE 00                 1347 	.db 0x00
                           1348 	.area XINIT   (CODE)
                           1349 	.area CABS    (ABS,CODE)
