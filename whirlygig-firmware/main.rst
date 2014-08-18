                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Sat Jul 12 02:11:19 2014
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _szaStringDescriptors
                             13 	.globl _Endpoint3Desc
                             14 	.globl _Endpoint2Desc
                             15 	.globl _Endpoint1Desc
                             16 	.globl _InterfaceDesc
                             17 	.globl _ConfigDesc
                             18 	.globl _DeviceDesc
                             19 	.globl _main
                             20 	.globl _pull64
                             21 	.globl _SPIF
                             22 	.globl _WCOL
                             23 	.globl _MODF
                             24 	.globl _RXOVRN
                             25 	.globl _TXBSY
                             26 	.globl _SLVSEL
                             27 	.globl _TXBMT
                             28 	.globl _SPIEN
                             29 	.globl _B_7
                             30 	.globl _B_6
                             31 	.globl _B_5
                             32 	.globl _B_4
                             33 	.globl _B_3
                             34 	.globl _B_2
                             35 	.globl _B_1
                             36 	.globl _B_0
                             37 	.globl _AD0EN
                             38 	.globl _AD0TM
                             39 	.globl _AD0INT
                             40 	.globl _AD0BUSY
                             41 	.globl _AD0WINT
                             42 	.globl _AD0CM2
                             43 	.globl _AD0CM1
                             44 	.globl _AD0CM0
                             45 	.globl _ACC_7
                             46 	.globl _ACC_6
                             47 	.globl _ACC_5
                             48 	.globl _ACC_4
                             49 	.globl _ACC_3
                             50 	.globl _ACC_2
                             51 	.globl _ACC_1
                             52 	.globl _ACC_0
                             53 	.globl _CF
                             54 	.globl _CR
                             55 	.globl _CCF4
                             56 	.globl _CCF3
                             57 	.globl _CCF2
                             58 	.globl _CCF1
                             59 	.globl _CCF0
                             60 	.globl _CY
                             61 	.globl _AC
                             62 	.globl _F0
                             63 	.globl _RS1
                             64 	.globl _RS0
                             65 	.globl _OV
                             66 	.globl _F1
                             67 	.globl _P
                             68 	.globl _TF2H
                             69 	.globl _TF2L
                             70 	.globl _TF2LEN
                             71 	.globl _T2SOF
                             72 	.globl _T2SPLIT
                             73 	.globl _TR2
                             74 	.globl _T2XCLK
                             75 	.globl _MASTER
                             76 	.globl _TXMODE
                             77 	.globl _STA
                             78 	.globl _STO
                             79 	.globl _ACKRQ
                             80 	.globl _ARBLOST
                             81 	.globl _ACK
                             82 	.globl _SI
                             83 	.globl _PSPI0
                             84 	.globl _PT2
                             85 	.globl _PS0
                             86 	.globl _PT1
                             87 	.globl _PX1
                             88 	.globl _PT0
                             89 	.globl _PX0
                             90 	.globl _P3_7
                             91 	.globl _P3_6
                             92 	.globl _P3_5
                             93 	.globl _P3_4
                             94 	.globl _P3_3
                             95 	.globl _P3_2
                             96 	.globl _P3_1
                             97 	.globl _P3_0
                             98 	.globl _EA
                             99 	.globl _ESPI0
                            100 	.globl _ET2
                            101 	.globl _ES0
                            102 	.globl _ET1
                            103 	.globl _EX1
                            104 	.globl _ET0
                            105 	.globl _EX0
                            106 	.globl _P2_7
                            107 	.globl _P2_6
                            108 	.globl _P2_5
                            109 	.globl _P2_4
                            110 	.globl _P2_3
                            111 	.globl _P2_2
                            112 	.globl _P2_1
                            113 	.globl _P2_0
                            114 	.globl _S0MODE
                            115 	.globl _MCE0
                            116 	.globl _REN0
                            117 	.globl _TB80
                            118 	.globl _RB80
                            119 	.globl _TI0
                            120 	.globl _RI0
                            121 	.globl _P1_7
                            122 	.globl _P1_6
                            123 	.globl _P1_5
                            124 	.globl _P1_4
                            125 	.globl _P1_3
                            126 	.globl _P1_2
                            127 	.globl _P1_1
                            128 	.globl _P1_0
                            129 	.globl _TF1
                            130 	.globl _TR1
                            131 	.globl _TF0
                            132 	.globl _TR0
                            133 	.globl _IE1
                            134 	.globl _IT1
                            135 	.globl _IE0
                            136 	.globl _IT0
                            137 	.globl _P0_7
                            138 	.globl _P0_6
                            139 	.globl _P0_5
                            140 	.globl _P0_4
                            141 	.globl _P0_3
                            142 	.globl _P0_2
                            143 	.globl _P0_1
                            144 	.globl _P0_0
                            145 	.globl _VDM0CN
                            146 	.globl _PCA0CPH4
                            147 	.globl _PCA0CPL4
                            148 	.globl _PCA0CPH0
                            149 	.globl _PCA0CPL0
                            150 	.globl _PCA0H
                            151 	.globl _PCA0L
                            152 	.globl _SPI0CN
                            153 	.globl _EIP2
                            154 	.globl _EIP1
                            155 	.globl _P3MDIN
                            156 	.globl _P2MDIN
                            157 	.globl _P1MDIN
                            158 	.globl _P0MDIN
                            159 	.globl _B
                            160 	.globl _RSTSRC
                            161 	.globl _PCA0CPH3
                            162 	.globl _PCA0CPL3
                            163 	.globl _PCA0CPH2
                            164 	.globl _PCA0CPL2
                            165 	.globl _PCA0CPH1
                            166 	.globl _PCA0CPL1
                            167 	.globl _ADC0CN
                            168 	.globl _EIE2
                            169 	.globl _EIE1
                            170 	.globl _IT01CF
                            171 	.globl _XBR1
                            172 	.globl _XBR0
                            173 	.globl _ACC
                            174 	.globl _PCA0CPM4
                            175 	.globl _PCA0CPM3
                            176 	.globl _PCA0CPM2
                            177 	.globl _PCA0CPM1
                            178 	.globl _PCA0CPM0
                            179 	.globl _PCA0MD
                            180 	.globl _PCA0CN
                            181 	.globl _USB0XCN
                            182 	.globl _P2SKIP
                            183 	.globl _P1SKIP
                            184 	.globl _P0SKIP
                            185 	.globl _REF0CN
                            186 	.globl _PSW
                            187 	.globl _TMR2H
                            188 	.globl _TMR2L
                            189 	.globl _TMR2RLH
                            190 	.globl _TMR2RLL
                            191 	.globl _REG0CN
                            192 	.globl _TMR2CN
                            193 	.globl _ADC0LTH
                            194 	.globl _ADC0LTL
                            195 	.globl _ADC0GTH
                            196 	.globl _ADC0GTL
                            197 	.globl _SMB0DAT
                            198 	.globl _SMB0CF
                            199 	.globl _SMB0CN
                            200 	.globl _ADC0H
                            201 	.globl _ADC0L
                            202 	.globl _ADC0CF
                            203 	.globl _AMX0P
                            204 	.globl _AMX0N
                            205 	.globl _CLKMUL
                            206 	.globl _IP
                            207 	.globl _FLKEY
                            208 	.globl _FLSCL
                            209 	.globl _OSCICL
                            210 	.globl _OSCICN
                            211 	.globl _OSCXCN
                            212 	.globl _P3
                            213 	.globl _EMI0CN
                            214 	.globl _CLKSEL
                            215 	.globl _IE
                            216 	.globl _P3MDOUT
                            217 	.globl _P2MDOUT
                            218 	.globl _P1MDOUT
                            219 	.globl _P0MDOUT
                            220 	.globl _SPIODAT
                            221 	.globl _SPIDAT
                            222 	.globl _SPIOCKR
                            223 	.globl _SPICKR
                            224 	.globl _SPIOCFG
                            225 	.globl _SPICFG
                            226 	.globl _P2
                            227 	.globl _CPT0MX
                            228 	.globl _CPT1MX
                            229 	.globl _CPT0MD
                            230 	.globl _CPT1MD
                            231 	.globl _CPT0CN
                            232 	.globl _CPT1CN
                            233 	.globl _SBUF0
                            234 	.globl _SCON0
                            235 	.globl _USB0DAT
                            236 	.globl _USB0ADR
                            237 	.globl _TMR3H
                            238 	.globl _TMR3L
                            239 	.globl _TMR3RLH
                            240 	.globl _TMR3RLL
                            241 	.globl _TMR3CN
                            242 	.globl _P1
                            243 	.globl _PSCTL
                            244 	.globl _CKCON
                            245 	.globl _TH1
                            246 	.globl _TH0
                            247 	.globl _TL1
                            248 	.globl _TL0
                            249 	.globl _TMOD
                            250 	.globl _TCON
                            251 	.globl _PCON
                            252 	.globl _DPH
                            253 	.globl _DPL
                            254 	.globl _SP
                            255 	.globl _P0
                            256 	.globl _baRxCache
                            257 	.globl _bRxCacheHead
                            258 	.globl _bRxCacheTail
                            259 ;--------------------------------------------------------
                            260 ; special function registers
                            261 ;--------------------------------------------------------
                            262 	.area RSEG    (DATA)
                    0080    263 _P0	=	0x0080
                    0081    264 _SP	=	0x0081
                    0082    265 _DPL	=	0x0082
                    0083    266 _DPH	=	0x0083
                    0087    267 _PCON	=	0x0087
                    0088    268 _TCON	=	0x0088
                    0089    269 _TMOD	=	0x0089
                    008A    270 _TL0	=	0x008a
                    008B    271 _TL1	=	0x008b
                    008C    272 _TH0	=	0x008c
                    008D    273 _TH1	=	0x008d
                    008E    274 _CKCON	=	0x008e
                    008F    275 _PSCTL	=	0x008f
                    0090    276 _P1	=	0x0090
                    0091    277 _TMR3CN	=	0x0091
                    0092    278 _TMR3RLL	=	0x0092
                    0093    279 _TMR3RLH	=	0x0093
                    0094    280 _TMR3L	=	0x0094
                    0095    281 _TMR3H	=	0x0095
                    0096    282 _USB0ADR	=	0x0096
                    0097    283 _USB0DAT	=	0x0097
                    0098    284 _SCON0	=	0x0098
                    0099    285 _SBUF0	=	0x0099
                    009A    286 _CPT1CN	=	0x009a
                    009B    287 _CPT0CN	=	0x009b
                    009C    288 _CPT1MD	=	0x009c
                    009D    289 _CPT0MD	=	0x009d
                    009E    290 _CPT1MX	=	0x009e
                    009F    291 _CPT0MX	=	0x009f
                    00A0    292 _P2	=	0x00a0
                    00A1    293 _SPICFG	=	0x00a1
                    00A1    294 _SPIOCFG	=	0x00a1
                    00A2    295 _SPICKR	=	0x00a2
                    00A2    296 _SPIOCKR	=	0x00a2
                    00A3    297 _SPIDAT	=	0x00a3
                    00A3    298 _SPIODAT	=	0x00a3
                    00A4    299 _P0MDOUT	=	0x00a4
                    00A5    300 _P1MDOUT	=	0x00a5
                    00A6    301 _P2MDOUT	=	0x00a6
                    00A7    302 _P3MDOUT	=	0x00a7
                    00A8    303 _IE	=	0x00a8
                    00A9    304 _CLKSEL	=	0x00a9
                    00AA    305 _EMI0CN	=	0x00aa
                    00B0    306 _P3	=	0x00b0
                    00B1    307 _OSCXCN	=	0x00b1
                    00B2    308 _OSCICN	=	0x00b2
                    00B3    309 _OSCICL	=	0x00b3
                    00B6    310 _FLSCL	=	0x00b6
                    00B7    311 _FLKEY	=	0x00b7
                    00B8    312 _IP	=	0x00b8
                    00B9    313 _CLKMUL	=	0x00b9
                    00BA    314 _AMX0N	=	0x00ba
                    00BB    315 _AMX0P	=	0x00bb
                    00BC    316 _ADC0CF	=	0x00bc
                    00BD    317 _ADC0L	=	0x00bd
                    00BE    318 _ADC0H	=	0x00be
                    00C0    319 _SMB0CN	=	0x00c0
                    00C1    320 _SMB0CF	=	0x00c1
                    00C2    321 _SMB0DAT	=	0x00c2
                    00C3    322 _ADC0GTL	=	0x00c3
                    00C4    323 _ADC0GTH	=	0x00c4
                    00C5    324 _ADC0LTL	=	0x00c5
                    00C6    325 _ADC0LTH	=	0x00c6
                    00C8    326 _TMR2CN	=	0x00c8
                    00C9    327 _REG0CN	=	0x00c9
                    00CA    328 _TMR2RLL	=	0x00ca
                    00CB    329 _TMR2RLH	=	0x00cb
                    00CC    330 _TMR2L	=	0x00cc
                    00CD    331 _TMR2H	=	0x00cd
                    00D0    332 _PSW	=	0x00d0
                    00D1    333 _REF0CN	=	0x00d1
                    00D4    334 _P0SKIP	=	0x00d4
                    00D5    335 _P1SKIP	=	0x00d5
                    00D6    336 _P2SKIP	=	0x00d6
                    00D7    337 _USB0XCN	=	0x00d7
                    00D8    338 _PCA0CN	=	0x00d8
                    00D9    339 _PCA0MD	=	0x00d9
                    00DA    340 _PCA0CPM0	=	0x00da
                    00DB    341 _PCA0CPM1	=	0x00db
                    00DC    342 _PCA0CPM2	=	0x00dc
                    00DD    343 _PCA0CPM3	=	0x00dd
                    00DE    344 _PCA0CPM4	=	0x00de
                    00E0    345 _ACC	=	0x00e0
                    00E1    346 _XBR0	=	0x00e1
                    00E2    347 _XBR1	=	0x00e2
                    00E4    348 _IT01CF	=	0x00e4
                    00E6    349 _EIE1	=	0x00e6
                    00E7    350 _EIE2	=	0x00e7
                    00E8    351 _ADC0CN	=	0x00e8
                    00E9    352 _PCA0CPL1	=	0x00e9
                    00EA    353 _PCA0CPH1	=	0x00ea
                    00EB    354 _PCA0CPL2	=	0x00eb
                    00EC    355 _PCA0CPH2	=	0x00ec
                    00ED    356 _PCA0CPL3	=	0x00ed
                    00EE    357 _PCA0CPH3	=	0x00ee
                    00EF    358 _RSTSRC	=	0x00ef
                    00F0    359 _B	=	0x00f0
                    00F1    360 _P0MDIN	=	0x00f1
                    00F2    361 _P1MDIN	=	0x00f2
                    00F3    362 _P2MDIN	=	0x00f3
                    00F4    363 _P3MDIN	=	0x00f4
                    00F6    364 _EIP1	=	0x00f6
                    00F7    365 _EIP2	=	0x00f7
                    00F8    366 _SPI0CN	=	0x00f8
                    00F9    367 _PCA0L	=	0x00f9
                    00FA    368 _PCA0H	=	0x00fa
                    00FB    369 _PCA0CPL0	=	0x00fb
                    00FC    370 _PCA0CPH0	=	0x00fc
                    00FD    371 _PCA0CPL4	=	0x00fd
                    00FE    372 _PCA0CPH4	=	0x00fe
                    00FF    373 _VDM0CN	=	0x00ff
                            374 ;--------------------------------------------------------
                            375 ; special function bits
                            376 ;--------------------------------------------------------
                            377 	.area RSEG    (DATA)
                    0080    378 _P0_0	=	0x0080
                    0081    379 _P0_1	=	0x0081
                    0082    380 _P0_2	=	0x0082
                    0083    381 _P0_3	=	0x0083
                    0084    382 _P0_4	=	0x0084
                    0085    383 _P0_5	=	0x0085
                    0086    384 _P0_6	=	0x0086
                    0087    385 _P0_7	=	0x0087
                    0088    386 _IT0	=	0x0088
                    0089    387 _IE0	=	0x0089
                    008A    388 _IT1	=	0x008a
                    008B    389 _IE1	=	0x008b
                    008C    390 _TR0	=	0x008c
                    008D    391 _TF0	=	0x008d
                    008E    392 _TR1	=	0x008e
                    008F    393 _TF1	=	0x008f
                    0090    394 _P1_0	=	0x0090
                    0091    395 _P1_1	=	0x0091
                    0092    396 _P1_2	=	0x0092
                    0093    397 _P1_3	=	0x0093
                    0094    398 _P1_4	=	0x0094
                    0095    399 _P1_5	=	0x0095
                    0096    400 _P1_6	=	0x0096
                    0097    401 _P1_7	=	0x0097
                    0098    402 _RI0	=	0x0098
                    0099    403 _TI0	=	0x0099
                    009A    404 _RB80	=	0x009a
                    009B    405 _TB80	=	0x009b
                    009C    406 _REN0	=	0x009c
                    009D    407 _MCE0	=	0x009d
                    009F    408 _S0MODE	=	0x009f
                    00A0    409 _P2_0	=	0x00a0
                    00A1    410 _P2_1	=	0x00a1
                    00A2    411 _P2_2	=	0x00a2
                    00A3    412 _P2_3	=	0x00a3
                    00A4    413 _P2_4	=	0x00a4
                    00A5    414 _P2_5	=	0x00a5
                    00A6    415 _P2_6	=	0x00a6
                    00A7    416 _P2_7	=	0x00a7
                    00A8    417 _EX0	=	0x00a8
                    00A9    418 _ET0	=	0x00a9
                    00AA    419 _EX1	=	0x00aa
                    00AB    420 _ET1	=	0x00ab
                    00AC    421 _ES0	=	0x00ac
                    00AD    422 _ET2	=	0x00ad
                    00AE    423 _ESPI0	=	0x00ae
                    00AF    424 _EA	=	0x00af
                    00B0    425 _P3_0	=	0x00b0
                    00B1    426 _P3_1	=	0x00b1
                    00B2    427 _P3_2	=	0x00b2
                    00B3    428 _P3_3	=	0x00b3
                    00B4    429 _P3_4	=	0x00b4
                    00B5    430 _P3_5	=	0x00b5
                    00B6    431 _P3_6	=	0x00b6
                    00B7    432 _P3_7	=	0x00b7
                    00B8    433 _PX0	=	0x00b8
                    00B9    434 _PT0	=	0x00b9
                    00BA    435 _PX1	=	0x00ba
                    00BB    436 _PT1	=	0x00bb
                    00BC    437 _PS0	=	0x00bc
                    00BD    438 _PT2	=	0x00bd
                    00BE    439 _PSPI0	=	0x00be
                    00C0    440 _SI	=	0x00c0
                    00C1    441 _ACK	=	0x00c1
                    00C2    442 _ARBLOST	=	0x00c2
                    00C3    443 _ACKRQ	=	0x00c3
                    00C4    444 _STO	=	0x00c4
                    00C5    445 _STA	=	0x00c5
                    00C6    446 _TXMODE	=	0x00c6
                    00C7    447 _MASTER	=	0x00c7
                    00C8    448 _T2XCLK	=	0x00c8
                    00CA    449 _TR2	=	0x00ca
                    00CB    450 _T2SPLIT	=	0x00cb
                    00CC    451 _T2SOF	=	0x00cc
                    00CD    452 _TF2LEN	=	0x00cd
                    00CE    453 _TF2L	=	0x00ce
                    00CF    454 _TF2H	=	0x00cf
                    00D0    455 _P	=	0x00d0
                    00D1    456 _F1	=	0x00d1
                    00D2    457 _OV	=	0x00d2
                    00D3    458 _RS0	=	0x00d3
                    00D4    459 _RS1	=	0x00d4
                    00D5    460 _F0	=	0x00d5
                    00D6    461 _AC	=	0x00d6
                    00D7    462 _CY	=	0x00d7
                    00D8    463 _CCF0	=	0x00d8
                    00D9    464 _CCF1	=	0x00d9
                    00DA    465 _CCF2	=	0x00da
                    00DB    466 _CCF3	=	0x00db
                    00DC    467 _CCF4	=	0x00dc
                    00DE    468 _CR	=	0x00de
                    00DF    469 _CF	=	0x00df
                    00E0    470 _ACC_0	=	0x00e0
                    00E1    471 _ACC_1	=	0x00e1
                    00E2    472 _ACC_2	=	0x00e2
                    00E3    473 _ACC_3	=	0x00e3
                    00E4    474 _ACC_4	=	0x00e4
                    00E5    475 _ACC_5	=	0x00e5
                    00E6    476 _ACC_6	=	0x00e6
                    00E7    477 _ACC_7	=	0x00e7
                    00E8    478 _AD0CM0	=	0x00e8
                    00E9    479 _AD0CM1	=	0x00e9
                    00EA    480 _AD0CM2	=	0x00ea
                    00EB    481 _AD0WINT	=	0x00eb
                    00EC    482 _AD0BUSY	=	0x00ec
                    00ED    483 _AD0INT	=	0x00ed
                    00EE    484 _AD0TM	=	0x00ee
                    00EF    485 _AD0EN	=	0x00ef
                    00F0    486 _B_0	=	0x00f0
                    00F1    487 _B_1	=	0x00f1
                    00F2    488 _B_2	=	0x00f2
                    00F3    489 _B_3	=	0x00f3
                    00F4    490 _B_4	=	0x00f4
                    00F5    491 _B_5	=	0x00f5
                    00F6    492 _B_6	=	0x00f6
                    00F7    493 _B_7	=	0x00f7
                    00F8    494 _SPIEN	=	0x00f8
                    00F9    495 _TXBMT	=	0x00f9
                    00FA    496 _SLVSEL	=	0x00fa
                    00FB    497 _TXBSY	=	0x00fb
                    00FC    498 _RXOVRN	=	0x00fc
                    00FD    499 _MODF	=	0x00fd
                    00FE    500 _WCOL	=	0x00fe
                    00FF    501 _SPIF	=	0x00ff
                            502 ;--------------------------------------------------------
                            503 ; overlayable register banks
                            504 ;--------------------------------------------------------
                            505 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     506 	.ds 8
                            507 ;--------------------------------------------------------
                            508 ; internal ram data
                            509 ;--------------------------------------------------------
                            510 	.area DSEG    (DATA)
   0008                     511 _bRxCacheTail::
   0008                     512 	.ds 1
   0009                     513 _bRxCacheHead::
   0009                     514 	.ds 1
                            515 ;--------------------------------------------------------
                            516 ; overlayable items in internal ram 
                            517 ;--------------------------------------------------------
                            518 	.area OSEG    (OVR,DATA)
                            519 ;--------------------------------------------------------
                            520 ; Stack segment in internal ram 
                            521 ;--------------------------------------------------------
                            522 	.area	SSEG	(DATA)
   0080                     523 __start__stack:
   0080                     524 	.ds	1
                            525 
                            526 ;--------------------------------------------------------
                            527 ; indirectly addressable internal ram data
                            528 ;--------------------------------------------------------
                            529 	.area ISEG    (DATA)
                            530 ;--------------------------------------------------------
                            531 ; absolute internal ram data
                            532 ;--------------------------------------------------------
                            533 	.area IABS    (ABS,DATA)
                            534 	.area IABS    (ABS,DATA)
                            535 ;--------------------------------------------------------
                            536 ; bit data
                            537 ;--------------------------------------------------------
                            538 	.area BSEG    (BIT)
                            539 ;--------------------------------------------------------
                            540 ; paged external ram data
                            541 ;--------------------------------------------------------
                            542 	.area PSEG    (PAG,XDATA)
                            543 ;--------------------------------------------------------
                            544 ; external ram data
                            545 ;--------------------------------------------------------
                            546 	.area XSEG    (XDATA)
   0000                     547 _baRxCache::
   0000                     548 	.ds 32
                            549 ;--------------------------------------------------------
                            550 ; absolute external ram data
                            551 ;--------------------------------------------------------
                            552 	.area XABS    (ABS,XDATA)
                            553 ;--------------------------------------------------------
                            554 ; external initialized ram data
                            555 ;--------------------------------------------------------
                            556 	.area XISEG   (XDATA)
                            557 	.area HOME    (CODE)
                            558 	.area GSINIT0 (CODE)
                            559 	.area GSINIT1 (CODE)
                            560 	.area GSINIT2 (CODE)
                            561 	.area GSINIT3 (CODE)
                            562 	.area GSINIT4 (CODE)
                            563 	.area GSINIT5 (CODE)
                            564 	.area GSINIT  (CODE)
                            565 	.area GSFINAL (CODE)
                            566 	.area CSEG    (CODE)
                            567 ;--------------------------------------------------------
                            568 ; interrupt vector 
                            569 ;--------------------------------------------------------
                            570 	.area HOME    (CODE)
   0000                     571 __interrupt_vect:
   0000 02 00 4B            572 	ljmp	__sdcc_gsinit_startup
   0003 32                  573 	reti
   0004                     574 	.ds	7
   000B 32                  575 	reti
   000C                     576 	.ds	7
   0013 32                  577 	reti
   0014                     578 	.ds	7
   001B 32                  579 	reti
   001C                     580 	.ds	7
   0023 02 05 F9            581 	ljmp	_Uart_ISR
   0026                     582 	.ds	5
   002B 32                  583 	reti
   002C                     584 	.ds	7
   0033 32                  585 	reti
   0034                     586 	.ds	7
   003B 32                  587 	reti
   003C                     588 	.ds	7
   0043 02 07 07            589 	ljmp	_Usb_ISR
                            590 ;--------------------------------------------------------
                            591 ; global & static initialisations
                            592 ;--------------------------------------------------------
                            593 	.area HOME    (CODE)
                            594 	.area GSINIT  (CODE)
                            595 	.area GSFINAL (CODE)
                            596 	.area GSINIT  (CODE)
                            597 	.globl __sdcc_gsinit_startup
                            598 	.globl __sdcc_program_startup
                            599 	.globl __start__stack
                            600 	.globl __mcs51_genXINIT
                            601 	.globl __mcs51_genXRAMCLEAR
                            602 	.globl __mcs51_genRAMCLEAR
                            603 ;	main.c:32: volatile BYTE bRxCacheTail = 0, bRxCacheHead = 0;
   00A4 75 08 00            604 	mov	_bRxCacheTail,#0x00
                            605 ;	main.c:32: 
   00A7 75 09 00            606 	mov	_bRxCacheHead,#0x00
                            607 	.area GSFINAL (CODE)
   00DA 02 00 46            608 	ljmp	__sdcc_program_startup
                            609 ;--------------------------------------------------------
                            610 ; Home
                            611 ;--------------------------------------------------------
                            612 	.area HOME    (CODE)
                            613 	.area HOME    (CODE)
   0046                     614 __sdcc_program_startup:
   0046 12 04 68            615 	lcall	_main
                            616 ;	return from main will lock up
   0049 80 FE               617 	sjmp .
                            618 ;--------------------------------------------------------
                            619 ; code
                            620 ;--------------------------------------------------------
                            621 	.area CSEG    (CODE)
                            622 ;------------------------------------------------------------
                            623 ;Allocation info for local variables in function 'pull64'
                            624 ;------------------------------------------------------------
                            625 ;------------------------------------------------------------
                            626 ;	main.c:136: void pull64(void)
                            627 ;	-----------------------------------------
                            628 ;	 function pull64
                            629 ;	-----------------------------------------
   00DD                     630 _pull64:
                    0002    631 	ar2 = 0x02
                    0003    632 	ar3 = 0x03
                    0004    633 	ar4 = 0x04
                    0005    634 	ar5 = 0x05
                    0006    635 	ar6 = 0x06
                    0007    636 	ar7 = 0x07
                    0000    637 	ar0 = 0x00
                    0001    638 	ar1 = 0x01
                            639 ;	main.c:139: EA = 0;
   00DD C2 AF               640 	clr	_EA
                            641 ;	main.c:141: UsbSelectInEndpointFifo(3);
   00DF 75 82 03            642 	mov	dpl,#0x03
   00E2 12 12 95            643 	lcall	_UsbSelectInEndpointFifo
                            644 ;	main.c:143: P0_6 = 0;
   00E5 C2 86               645 	clr	_P0_6
                            646 ;	main.c:144: P0_6 = 1;
   00E7 D2 86               647 	setb	_P0_6
                            648 ;	main.c:145: SMB0DAT =  P2;
   00E9 85 A0 C2            649 	mov	_SMB0DAT,_P2
                            650 ;	main.c:146: P0_6 = 0;
   00EC C2 86               651 	clr	_P0_6
                            652 ;	main.c:147: P0_6 = 1;
   00EE D2 86               653 	setb	_P0_6
                            654 ;	main.c:148: USB0DAT =  P2;
   00F0 85 A0 97            655 	mov	_USB0DAT,_P2
                            656 ;	main.c:149: P0_6 = 0;
   00F3 C2 86               657 	clr	_P0_6
                            658 ;	main.c:150: P0_6 = 1;
   00F5 D2 86               659 	setb	_P0_6
                            660 ;	main.c:151: SMB0DAT =  P2;
   00F7 85 A0 C2            661 	mov	_SMB0DAT,_P2
                            662 ;	main.c:152: P0_6 = 0;
   00FA C2 86               663 	clr	_P0_6
                            664 ;	main.c:153: P0_6 = 1;
   00FC D2 86               665 	setb	_P0_6
                            666 ;	main.c:154: USB0DAT =  P2;
   00FE 85 A0 97            667 	mov	_USB0DAT,_P2
                            668 ;	main.c:155: P0_6 = 0;
   0101 C2 86               669 	clr	_P0_6
                            670 ;	main.c:156: P0_6 = 1;
   0103 D2 86               671 	setb	_P0_6
                            672 ;	main.c:157: SMB0DAT =  P2;
   0105 85 A0 C2            673 	mov	_SMB0DAT,_P2
                            674 ;	main.c:158: P0_6 = 0;
   0108 C2 86               675 	clr	_P0_6
                            676 ;	main.c:159: P0_6 = 1;
   010A D2 86               677 	setb	_P0_6
                            678 ;	main.c:160: USB0DAT =  P2;
   010C 85 A0 97            679 	mov	_USB0DAT,_P2
                            680 ;	main.c:161: P0_6 = 0;
   010F C2 86               681 	clr	_P0_6
                            682 ;	main.c:162: P0_6 = 1;
   0111 D2 86               683 	setb	_P0_6
                            684 ;	main.c:163: SMB0DAT =  P2;
   0113 85 A0 C2            685 	mov	_SMB0DAT,_P2
                            686 ;	main.c:164: P0_6 = 0;
   0116 C2 86               687 	clr	_P0_6
                            688 ;	main.c:165: P0_6 = 1;
   0118 D2 86               689 	setb	_P0_6
                            690 ;	main.c:166: USB0DAT =  P2;
   011A 85 A0 97            691 	mov	_USB0DAT,_P2
                            692 ;	main.c:167: P0_6 = 0;
   011D C2 86               693 	clr	_P0_6
                            694 ;	main.c:168: P0_6 = 1;
   011F D2 86               695 	setb	_P0_6
                            696 ;	main.c:169: SMB0DAT =  P2;
   0121 85 A0 C2            697 	mov	_SMB0DAT,_P2
                            698 ;	main.c:170: P0_6 = 0;
   0124 C2 86               699 	clr	_P0_6
                            700 ;	main.c:171: P0_6 = 1;
   0126 D2 86               701 	setb	_P0_6
                            702 ;	main.c:172: USB0DAT =  P2;
   0128 85 A0 97            703 	mov	_USB0DAT,_P2
                            704 ;	main.c:173: P0_6 = 0;
   012B C2 86               705 	clr	_P0_6
                            706 ;	main.c:174: P0_6 = 1;
   012D D2 86               707 	setb	_P0_6
                            708 ;	main.c:175: SMB0DAT =  P2;
   012F 85 A0 C2            709 	mov	_SMB0DAT,_P2
                            710 ;	main.c:176: P0_6 = 0;
   0132 C2 86               711 	clr	_P0_6
                            712 ;	main.c:177: P0_6 = 1;
   0134 D2 86               713 	setb	_P0_6
                            714 ;	main.c:178: USB0DAT =  P2;
   0136 85 A0 97            715 	mov	_USB0DAT,_P2
                            716 ;	main.c:179: P0_6 = 0;
   0139 C2 86               717 	clr	_P0_6
                            718 ;	main.c:180: P0_6 = 1;
   013B D2 86               719 	setb	_P0_6
                            720 ;	main.c:181: SMB0DAT =  P2;
   013D 85 A0 C2            721 	mov	_SMB0DAT,_P2
                            722 ;	main.c:182: P0_6 = 0;
   0140 C2 86               723 	clr	_P0_6
                            724 ;	main.c:183: P0_6 = 1;
   0142 D2 86               725 	setb	_P0_6
                            726 ;	main.c:184: USB0DAT =  P2;
   0144 85 A0 97            727 	mov	_USB0DAT,_P2
                            728 ;	main.c:185: P0_6 = 0;
   0147 C2 86               729 	clr	_P0_6
                            730 ;	main.c:186: P0_6 = 1;
   0149 D2 86               731 	setb	_P0_6
                            732 ;	main.c:187: SMB0DAT =  P2;
   014B 85 A0 C2            733 	mov	_SMB0DAT,_P2
                            734 ;	main.c:188: P0_6 = 0;
   014E C2 86               735 	clr	_P0_6
                            736 ;	main.c:189: P0_6 = 1;
   0150 D2 86               737 	setb	_P0_6
                            738 ;	main.c:190: USB0DAT =  P2;
   0152 85 A0 97            739 	mov	_USB0DAT,_P2
                            740 ;	main.c:191: P0_6 = 0;
   0155 C2 86               741 	clr	_P0_6
                            742 ;	main.c:192: P0_6 = 1;
   0157 D2 86               743 	setb	_P0_6
                            744 ;	main.c:193: SMB0DAT =  P2;
   0159 85 A0 C2            745 	mov	_SMB0DAT,_P2
                            746 ;	main.c:194: P0_6 = 0;
   015C C2 86               747 	clr	_P0_6
                            748 ;	main.c:195: P0_6 = 1;
   015E D2 86               749 	setb	_P0_6
                            750 ;	main.c:196: USB0DAT =  P2;
   0160 85 A0 97            751 	mov	_USB0DAT,_P2
                            752 ;	main.c:197: P0_6 = 0;
   0163 C2 86               753 	clr	_P0_6
                            754 ;	main.c:198: P0_6 = 1;
   0165 D2 86               755 	setb	_P0_6
                            756 ;	main.c:199: SMB0DAT =  P2;
   0167 85 A0 C2            757 	mov	_SMB0DAT,_P2
                            758 ;	main.c:200: P0_6 = 0;
   016A C2 86               759 	clr	_P0_6
                            760 ;	main.c:201: P0_6 = 1;
   016C D2 86               761 	setb	_P0_6
                            762 ;	main.c:202: USB0DAT =  P2;
   016E 85 A0 97            763 	mov	_USB0DAT,_P2
                            764 ;	main.c:203: P0_6 = 0;
   0171 C2 86               765 	clr	_P0_6
                            766 ;	main.c:204: P0_6 = 1;
   0173 D2 86               767 	setb	_P0_6
                            768 ;	main.c:205: SMB0DAT =  P2;
   0175 85 A0 C2            769 	mov	_SMB0DAT,_P2
                            770 ;	main.c:206: P0_6 = 0;
   0178 C2 86               771 	clr	_P0_6
                            772 ;	main.c:207: P0_6 = 1;
   017A D2 86               773 	setb	_P0_6
                            774 ;	main.c:208: USB0DAT =  P2;
   017C 85 A0 97            775 	mov	_USB0DAT,_P2
                            776 ;	main.c:209: P0_6 = 0;
   017F C2 86               777 	clr	_P0_6
                            778 ;	main.c:210: P0_6 = 1;
   0181 D2 86               779 	setb	_P0_6
                            780 ;	main.c:211: SMB0DAT =  P2;
   0183 85 A0 C2            781 	mov	_SMB0DAT,_P2
                            782 ;	main.c:212: P0_6 = 0;
   0186 C2 86               783 	clr	_P0_6
                            784 ;	main.c:213: P0_6 = 1;
   0188 D2 86               785 	setb	_P0_6
                            786 ;	main.c:214: USB0DAT =  P2;
   018A 85 A0 97            787 	mov	_USB0DAT,_P2
                            788 ;	main.c:215: P0_6 = 0;
   018D C2 86               789 	clr	_P0_6
                            790 ;	main.c:216: P0_6 = 1;
   018F D2 86               791 	setb	_P0_6
                            792 ;	main.c:217: SMB0DAT =  P2;
   0191 85 A0 C2            793 	mov	_SMB0DAT,_P2
                            794 ;	main.c:218: P0_6 = 0;
   0194 C2 86               795 	clr	_P0_6
                            796 ;	main.c:219: P0_6 = 1;
   0196 D2 86               797 	setb	_P0_6
                            798 ;	main.c:220: USB0DAT =  P2;
   0198 85 A0 97            799 	mov	_USB0DAT,_P2
                            800 ;	main.c:221: P0_6 = 0;
   019B C2 86               801 	clr	_P0_6
                            802 ;	main.c:222: P0_6 = 1;
   019D D2 86               803 	setb	_P0_6
                            804 ;	main.c:223: SMB0DAT =  P2;
   019F 85 A0 C2            805 	mov	_SMB0DAT,_P2
                            806 ;	main.c:224: P0_6 = 0;
   01A2 C2 86               807 	clr	_P0_6
                            808 ;	main.c:225: P0_6 = 1;
   01A4 D2 86               809 	setb	_P0_6
                            810 ;	main.c:226: USB0DAT =  P2;
   01A6 85 A0 97            811 	mov	_USB0DAT,_P2
                            812 ;	main.c:227: P0_6 = 0;
   01A9 C2 86               813 	clr	_P0_6
                            814 ;	main.c:228: P0_6 = 1;
   01AB D2 86               815 	setb	_P0_6
                            816 ;	main.c:229: SMB0DAT =  P2;
   01AD 85 A0 C2            817 	mov	_SMB0DAT,_P2
                            818 ;	main.c:230: P0_6 = 0;
   01B0 C2 86               819 	clr	_P0_6
                            820 ;	main.c:231: P0_6 = 1;
   01B2 D2 86               821 	setb	_P0_6
                            822 ;	main.c:232: USB0DAT =  P2;
   01B4 85 A0 97            823 	mov	_USB0DAT,_P2
                            824 ;	main.c:233: P0_6 = 0;
   01B7 C2 86               825 	clr	_P0_6
                            826 ;	main.c:234: P0_6 = 1;
   01B9 D2 86               827 	setb	_P0_6
                            828 ;	main.c:235: SMB0DAT =  P2;
   01BB 85 A0 C2            829 	mov	_SMB0DAT,_P2
                            830 ;	main.c:236: P0_6 = 0;
   01BE C2 86               831 	clr	_P0_6
                            832 ;	main.c:237: P0_6 = 1;
   01C0 D2 86               833 	setb	_P0_6
                            834 ;	main.c:238: USB0DAT =  P2;
   01C2 85 A0 97            835 	mov	_USB0DAT,_P2
                            836 ;	main.c:239: P0_6 = 0;
   01C5 C2 86               837 	clr	_P0_6
                            838 ;	main.c:240: P0_6 = 1;
   01C7 D2 86               839 	setb	_P0_6
                            840 ;	main.c:241: SMB0DAT =  P2;
   01C9 85 A0 C2            841 	mov	_SMB0DAT,_P2
                            842 ;	main.c:242: P0_6 = 0;
   01CC C2 86               843 	clr	_P0_6
                            844 ;	main.c:243: P0_6 = 1;
   01CE D2 86               845 	setb	_P0_6
                            846 ;	main.c:244: USB0DAT =  P2;
   01D0 85 A0 97            847 	mov	_USB0DAT,_P2
                            848 ;	main.c:245: P0_6 = 0;
   01D3 C2 86               849 	clr	_P0_6
                            850 ;	main.c:246: P0_6 = 1;
   01D5 D2 86               851 	setb	_P0_6
                            852 ;	main.c:247: SMB0DAT =  P2;
   01D7 85 A0 C2            853 	mov	_SMB0DAT,_P2
                            854 ;	main.c:248: P0_6 = 0;
   01DA C2 86               855 	clr	_P0_6
                            856 ;	main.c:249: P0_6 = 1;
   01DC D2 86               857 	setb	_P0_6
                            858 ;	main.c:250: USB0DAT =  P2;
   01DE 85 A0 97            859 	mov	_USB0DAT,_P2
                            860 ;	main.c:251: P0_6 = 0;
   01E1 C2 86               861 	clr	_P0_6
                            862 ;	main.c:252: P0_6 = 1;
   01E3 D2 86               863 	setb	_P0_6
                            864 ;	main.c:253: SMB0DAT =  P2;
   01E5 85 A0 C2            865 	mov	_SMB0DAT,_P2
                            866 ;	main.c:254: P0_6 = 0;
   01E8 C2 86               867 	clr	_P0_6
                            868 ;	main.c:255: P0_6 = 1;
   01EA D2 86               869 	setb	_P0_6
                            870 ;	main.c:256: USB0DAT =  P2;
   01EC 85 A0 97            871 	mov	_USB0DAT,_P2
                            872 ;	main.c:257: P0_6 = 0;
   01EF C2 86               873 	clr	_P0_6
                            874 ;	main.c:258: P0_6 = 1;
   01F1 D2 86               875 	setb	_P0_6
                            876 ;	main.c:259: SMB0DAT =  P2;
   01F3 85 A0 C2            877 	mov	_SMB0DAT,_P2
                            878 ;	main.c:260: P0_6 = 0;
   01F6 C2 86               879 	clr	_P0_6
                            880 ;	main.c:261: P0_6 = 1;
   01F8 D2 86               881 	setb	_P0_6
                            882 ;	main.c:262: USB0DAT =  P2;
   01FA 85 A0 97            883 	mov	_USB0DAT,_P2
                            884 ;	main.c:263: P0_6 = 0;
   01FD C2 86               885 	clr	_P0_6
                            886 ;	main.c:264: P0_6 = 1;
   01FF D2 86               887 	setb	_P0_6
                            888 ;	main.c:265: SMB0DAT =  P2;
   0201 85 A0 C2            889 	mov	_SMB0DAT,_P2
                            890 ;	main.c:266: P0_6 = 0;
   0204 C2 86               891 	clr	_P0_6
                            892 ;	main.c:267: P0_6 = 1;
   0206 D2 86               893 	setb	_P0_6
                            894 ;	main.c:268: USB0DAT =  P2;
   0208 85 A0 97            895 	mov	_USB0DAT,_P2
                            896 ;	main.c:269: P0_6 = 0;
   020B C2 86               897 	clr	_P0_6
                            898 ;	main.c:270: P0_6 = 1;
   020D D2 86               899 	setb	_P0_6
                            900 ;	main.c:271: SMB0DAT =  P2;
   020F 85 A0 C2            901 	mov	_SMB0DAT,_P2
                            902 ;	main.c:272: P0_6 = 0;
   0212 C2 86               903 	clr	_P0_6
                            904 ;	main.c:273: P0_6 = 1;
   0214 D2 86               905 	setb	_P0_6
                            906 ;	main.c:274: USB0DAT =  P2;
   0216 85 A0 97            907 	mov	_USB0DAT,_P2
                            908 ;	main.c:275: P0_6 = 0;
   0219 C2 86               909 	clr	_P0_6
                            910 ;	main.c:276: P0_6 = 1;
   021B D2 86               911 	setb	_P0_6
                            912 ;	main.c:277: SMB0DAT =  P2;
   021D 85 A0 C2            913 	mov	_SMB0DAT,_P2
                            914 ;	main.c:278: P0_6 = 0;
   0220 C2 86               915 	clr	_P0_6
                            916 ;	main.c:279: P0_6 = 1;
   0222 D2 86               917 	setb	_P0_6
                            918 ;	main.c:280: USB0DAT =  P2;
   0224 85 A0 97            919 	mov	_USB0DAT,_P2
                            920 ;	main.c:281: P0_6 = 0;
   0227 C2 86               921 	clr	_P0_6
                            922 ;	main.c:282: P0_6 = 1;
   0229 D2 86               923 	setb	_P0_6
                            924 ;	main.c:283: SMB0DAT =  P2;
   022B 85 A0 C2            925 	mov	_SMB0DAT,_P2
                            926 ;	main.c:284: P0_6 = 0;
   022E C2 86               927 	clr	_P0_6
                            928 ;	main.c:285: P0_6 = 1;
   0230 D2 86               929 	setb	_P0_6
                            930 ;	main.c:286: USB0DAT =  P2;
   0232 85 A0 97            931 	mov	_USB0DAT,_P2
                            932 ;	main.c:287: P0_6 = 0;
   0235 C2 86               933 	clr	_P0_6
                            934 ;	main.c:288: P0_6 = 1;
   0237 D2 86               935 	setb	_P0_6
                            936 ;	main.c:289: SMB0DAT =  P2;
   0239 85 A0 C2            937 	mov	_SMB0DAT,_P2
                            938 ;	main.c:290: P0_6 = 0;
   023C C2 86               939 	clr	_P0_6
                            940 ;	main.c:291: P0_6 = 1;
   023E D2 86               941 	setb	_P0_6
                            942 ;	main.c:292: USB0DAT =  P2;
   0240 85 A0 97            943 	mov	_USB0DAT,_P2
                            944 ;	main.c:293: P0_6 = 0;
   0243 C2 86               945 	clr	_P0_6
                            946 ;	main.c:294: P0_6 = 1;
   0245 D2 86               947 	setb	_P0_6
                            948 ;	main.c:295: SMB0DAT =  P2;
   0247 85 A0 C2            949 	mov	_SMB0DAT,_P2
                            950 ;	main.c:296: P0_6 = 0;
   024A C2 86               951 	clr	_P0_6
                            952 ;	main.c:297: P0_6 = 1;
   024C D2 86               953 	setb	_P0_6
                            954 ;	main.c:298: USB0DAT =  P2;
   024E 85 A0 97            955 	mov	_USB0DAT,_P2
                            956 ;	main.c:299: P0_6 = 0;
   0251 C2 86               957 	clr	_P0_6
                            958 ;	main.c:300: P0_6 = 1;
   0253 D2 86               959 	setb	_P0_6
                            960 ;	main.c:301: SMB0DAT =  P2;
   0255 85 A0 C2            961 	mov	_SMB0DAT,_P2
                            962 ;	main.c:302: P0_6 = 0;
   0258 C2 86               963 	clr	_P0_6
                            964 ;	main.c:303: P0_6 = 1;
   025A D2 86               965 	setb	_P0_6
                            966 ;	main.c:304: USB0DAT =  P2;
   025C 85 A0 97            967 	mov	_USB0DAT,_P2
                            968 ;	main.c:305: P0_6 = 0;
   025F C2 86               969 	clr	_P0_6
                            970 ;	main.c:306: P0_6 = 1;
   0261 D2 86               971 	setb	_P0_6
                            972 ;	main.c:307: SMB0DAT =  P2;
   0263 85 A0 C2            973 	mov	_SMB0DAT,_P2
                            974 ;	main.c:308: P0_6 = 0;
   0266 C2 86               975 	clr	_P0_6
                            976 ;	main.c:309: P0_6 = 1;
   0268 D2 86               977 	setb	_P0_6
                            978 ;	main.c:310: USB0DAT =  P2;
   026A 85 A0 97            979 	mov	_USB0DAT,_P2
                            980 ;	main.c:311: P0_6 = 0;
   026D C2 86               981 	clr	_P0_6
                            982 ;	main.c:312: P0_6 = 1;
   026F D2 86               983 	setb	_P0_6
                            984 ;	main.c:313: SMB0DAT =  P2;
   0271 85 A0 C2            985 	mov	_SMB0DAT,_P2
                            986 ;	main.c:314: P0_6 = 0;
   0274 C2 86               987 	clr	_P0_6
                            988 ;	main.c:315: P0_6 = 1;
   0276 D2 86               989 	setb	_P0_6
                            990 ;	main.c:316: USB0DAT =  P2;
   0278 85 A0 97            991 	mov	_USB0DAT,_P2
                            992 ;	main.c:317: P0_6 = 0;
   027B C2 86               993 	clr	_P0_6
                            994 ;	main.c:318: P0_6 = 1;
   027D D2 86               995 	setb	_P0_6
                            996 ;	main.c:319: SMB0DAT =  P2;
   027F 85 A0 C2            997 	mov	_SMB0DAT,_P2
                            998 ;	main.c:320: P0_6 = 0;
   0282 C2 86               999 	clr	_P0_6
                           1000 ;	main.c:321: P0_6 = 1;
   0284 D2 86              1001 	setb	_P0_6
                           1002 ;	main.c:322: USB0DAT =  P2;
   0286 85 A0 97           1003 	mov	_USB0DAT,_P2
                           1004 ;	main.c:323: P0_6 = 0;
   0289 C2 86              1005 	clr	_P0_6
                           1006 ;	main.c:324: P0_6 = 1;
   028B D2 86              1007 	setb	_P0_6
                           1008 ;	main.c:325: SMB0DAT =  P2;
   028D 85 A0 C2           1009 	mov	_SMB0DAT,_P2
                           1010 ;	main.c:326: P0_6 = 0;
   0290 C2 86              1011 	clr	_P0_6
                           1012 ;	main.c:327: P0_6 = 1;
   0292 D2 86              1013 	setb	_P0_6
                           1014 ;	main.c:328: USB0DAT =  P2;
   0294 85 A0 97           1015 	mov	_USB0DAT,_P2
                           1016 ;	main.c:329: P0_6 = 0;
   0297 C2 86              1017 	clr	_P0_6
                           1018 ;	main.c:330: P0_6 = 1;
   0299 D2 86              1019 	setb	_P0_6
                           1020 ;	main.c:331: SMB0DAT =  P2;
   029B 85 A0 C2           1021 	mov	_SMB0DAT,_P2
                           1022 ;	main.c:332: P0_6 = 0;
   029E C2 86              1023 	clr	_P0_6
                           1024 ;	main.c:333: P0_6 = 1;
   02A0 D2 86              1025 	setb	_P0_6
                           1026 ;	main.c:334: USB0DAT =  P2;
   02A2 85 A0 97           1027 	mov	_USB0DAT,_P2
                           1028 ;	main.c:335: P0_6 = 0;
   02A5 C2 86              1029 	clr	_P0_6
                           1030 ;	main.c:336: P0_6 = 1;
   02A7 D2 86              1031 	setb	_P0_6
                           1032 ;	main.c:337: SMB0DAT =  P2;
   02A9 85 A0 C2           1033 	mov	_SMB0DAT,_P2
                           1034 ;	main.c:338: P0_6 = 0;
   02AC C2 86              1035 	clr	_P0_6
                           1036 ;	main.c:339: P0_6 = 1;
   02AE D2 86              1037 	setb	_P0_6
                           1038 ;	main.c:340: USB0DAT =  P2;
   02B0 85 A0 97           1039 	mov	_USB0DAT,_P2
                           1040 ;	main.c:341: P0_6 = 0;
   02B3 C2 86              1041 	clr	_P0_6
                           1042 ;	main.c:342: P0_6 = 1;
   02B5 D2 86              1043 	setb	_P0_6
                           1044 ;	main.c:343: SMB0DAT =  P2;
   02B7 85 A0 C2           1045 	mov	_SMB0DAT,_P2
                           1046 ;	main.c:344: P0_6 = 0;
   02BA C2 86              1047 	clr	_P0_6
                           1048 ;	main.c:345: P0_6 = 1;
   02BC D2 86              1049 	setb	_P0_6
                           1050 ;	main.c:346: USB0DAT =  P2;
   02BE 85 A0 97           1051 	mov	_USB0DAT,_P2
                           1052 ;	main.c:347: P0_6 = 0;
   02C1 C2 86              1053 	clr	_P0_6
                           1054 ;	main.c:348: P0_6 = 1;
   02C3 D2 86              1055 	setb	_P0_6
                           1056 ;	main.c:349: SMB0DAT =  P2;
   02C5 85 A0 C2           1057 	mov	_SMB0DAT,_P2
                           1058 ;	main.c:350: P0_6 = 0;
   02C8 C2 86              1059 	clr	_P0_6
                           1060 ;	main.c:351: P0_6 = 1;
   02CA D2 86              1061 	setb	_P0_6
                           1062 ;	main.c:352: USB0DAT =  P2;
   02CC 85 A0 97           1063 	mov	_USB0DAT,_P2
                           1064 ;	main.c:353: P0_6 = 0;
   02CF C2 86              1065 	clr	_P0_6
                           1066 ;	main.c:354: P0_6 = 1;
   02D1 D2 86              1067 	setb	_P0_6
                           1068 ;	main.c:355: SMB0DAT =  P2;
   02D3 85 A0 C2           1069 	mov	_SMB0DAT,_P2
                           1070 ;	main.c:356: P0_6 = 0;
   02D6 C2 86              1071 	clr	_P0_6
                           1072 ;	main.c:357: P0_6 = 1;
   02D8 D2 86              1073 	setb	_P0_6
                           1074 ;	main.c:358: USB0DAT =  P2;
   02DA 85 A0 97           1075 	mov	_USB0DAT,_P2
                           1076 ;	main.c:359: P0_6 = 0;
   02DD C2 86              1077 	clr	_P0_6
                           1078 ;	main.c:360: P0_6 = 1;
   02DF D2 86              1079 	setb	_P0_6
                           1080 ;	main.c:361: SMB0DAT =  P2;
   02E1 85 A0 C2           1081 	mov	_SMB0DAT,_P2
                           1082 ;	main.c:362: P0_6 = 0;
   02E4 C2 86              1083 	clr	_P0_6
                           1084 ;	main.c:363: P0_6 = 1;
   02E6 D2 86              1085 	setb	_P0_6
                           1086 ;	main.c:364: USB0DAT =  P2;
   02E8 85 A0 97           1087 	mov	_USB0DAT,_P2
                           1088 ;	main.c:365: P0_6 = 0;
   02EB C2 86              1089 	clr	_P0_6
                           1090 ;	main.c:366: P0_6 = 1;
   02ED D2 86              1091 	setb	_P0_6
                           1092 ;	main.c:367: SMB0DAT =  P2;
   02EF 85 A0 C2           1093 	mov	_SMB0DAT,_P2
                           1094 ;	main.c:368: P0_6 = 0;
   02F2 C2 86              1095 	clr	_P0_6
                           1096 ;	main.c:369: P0_6 = 1;
   02F4 D2 86              1097 	setb	_P0_6
                           1098 ;	main.c:370: USB0DAT =  P2;
   02F6 85 A0 97           1099 	mov	_USB0DAT,_P2
                           1100 ;	main.c:371: P0_6 = 0;
   02F9 C2 86              1101 	clr	_P0_6
                           1102 ;	main.c:372: P0_6 = 1;
   02FB D2 86              1103 	setb	_P0_6
                           1104 ;	main.c:373: SMB0DAT =  P2;
   02FD 85 A0 C2           1105 	mov	_SMB0DAT,_P2
                           1106 ;	main.c:374: P0_6 = 0;
   0300 C2 86              1107 	clr	_P0_6
                           1108 ;	main.c:375: P0_6 = 1;
   0302 D2 86              1109 	setb	_P0_6
                           1110 ;	main.c:376: USB0DAT =  P2;
   0304 85 A0 97           1111 	mov	_USB0DAT,_P2
                           1112 ;	main.c:377: P0_6 = 0;
   0307 C2 86              1113 	clr	_P0_6
                           1114 ;	main.c:378: P0_6 = 1;
   0309 D2 86              1115 	setb	_P0_6
                           1116 ;	main.c:379: SMB0DAT =  P2;
   030B 85 A0 C2           1117 	mov	_SMB0DAT,_P2
                           1118 ;	main.c:380: P0_6 = 0;
   030E C2 86              1119 	clr	_P0_6
                           1120 ;	main.c:381: P0_6 = 1;
   0310 D2 86              1121 	setb	_P0_6
                           1122 ;	main.c:382: USB0DAT =  P2;
   0312 85 A0 97           1123 	mov	_USB0DAT,_P2
                           1124 ;	main.c:383: P0_6 = 0;
   0315 C2 86              1125 	clr	_P0_6
                           1126 ;	main.c:384: P0_6 = 1;
   0317 D2 86              1127 	setb	_P0_6
                           1128 ;	main.c:385: SMB0DAT =  P2;
   0319 85 A0 C2           1129 	mov	_SMB0DAT,_P2
                           1130 ;	main.c:386: P0_6 = 0;
   031C C2 86              1131 	clr	_P0_6
                           1132 ;	main.c:387: P0_6 = 1;
   031E D2 86              1133 	setb	_P0_6
                           1134 ;	main.c:388: USB0DAT =  P2;
   0320 85 A0 97           1135 	mov	_USB0DAT,_P2
                           1136 ;	main.c:389: P0_6 = 0;
   0323 C2 86              1137 	clr	_P0_6
                           1138 ;	main.c:390: P0_6 = 1;
   0325 D2 86              1139 	setb	_P0_6
                           1140 ;	main.c:391: SMB0DAT =  P2;
   0327 85 A0 C2           1141 	mov	_SMB0DAT,_P2
                           1142 ;	main.c:392: P0_6 = 0;
   032A C2 86              1143 	clr	_P0_6
                           1144 ;	main.c:393: P0_6 = 1;
   032C D2 86              1145 	setb	_P0_6
                           1146 ;	main.c:394: USB0DAT =  P2;
   032E 85 A0 97           1147 	mov	_USB0DAT,_P2
                           1148 ;	main.c:395: P0_6 = 0;
   0331 C2 86              1149 	clr	_P0_6
                           1150 ;	main.c:396: P0_6 = 1;
   0333 D2 86              1151 	setb	_P0_6
                           1152 ;	main.c:397: SMB0DAT =  P2;
   0335 85 A0 C2           1153 	mov	_SMB0DAT,_P2
                           1154 ;	main.c:398: P0_6 = 0;
   0338 C2 86              1155 	clr	_P0_6
                           1156 ;	main.c:399: P0_6 = 1;
   033A D2 86              1157 	setb	_P0_6
                           1158 ;	main.c:400: USB0DAT =  P2;
   033C 85 A0 97           1159 	mov	_USB0DAT,_P2
                           1160 ;	main.c:401: P0_6 = 0;
   033F C2 86              1161 	clr	_P0_6
                           1162 ;	main.c:402: P0_6 = 1;
   0341 D2 86              1163 	setb	_P0_6
                           1164 ;	main.c:403: SMB0DAT =  P2;
   0343 85 A0 C2           1165 	mov	_SMB0DAT,_P2
                           1166 ;	main.c:404: P0_6 = 0;
   0346 C2 86              1167 	clr	_P0_6
                           1168 ;	main.c:405: P0_6 = 1;
   0348 D2 86              1169 	setb	_P0_6
                           1170 ;	main.c:406: USB0DAT =  P2;
   034A 85 A0 97           1171 	mov	_USB0DAT,_P2
                           1172 ;	main.c:407: P0_6 = 0;
   034D C2 86              1173 	clr	_P0_6
                           1174 ;	main.c:408: P0_6 = 1;
   034F D2 86              1175 	setb	_P0_6
                           1176 ;	main.c:409: SMB0DAT =  P2;
   0351 85 A0 C2           1177 	mov	_SMB0DAT,_P2
                           1178 ;	main.c:410: P0_6 = 0;
   0354 C2 86              1179 	clr	_P0_6
                           1180 ;	main.c:411: P0_6 = 1;
   0356 D2 86              1181 	setb	_P0_6
                           1182 ;	main.c:412: USB0DAT =  P2;
   0358 85 A0 97           1183 	mov	_USB0DAT,_P2
                           1184 ;	main.c:413: P0_6 = 0;
   035B C2 86              1185 	clr	_P0_6
                           1186 ;	main.c:414: P0_6 = 1;
   035D D2 86              1187 	setb	_P0_6
                           1188 ;	main.c:415: SMB0DAT =  P2;
   035F 85 A0 C2           1189 	mov	_SMB0DAT,_P2
                           1190 ;	main.c:416: P0_6 = 0;
   0362 C2 86              1191 	clr	_P0_6
                           1192 ;	main.c:417: P0_6 = 1;
   0364 D2 86              1193 	setb	_P0_6
                           1194 ;	main.c:418: USB0DAT =  P2;
   0366 85 A0 97           1195 	mov	_USB0DAT,_P2
                           1196 ;	main.c:419: P0_6 = 0;
   0369 C2 86              1197 	clr	_P0_6
                           1198 ;	main.c:420: P0_6 = 1;
   036B D2 86              1199 	setb	_P0_6
                           1200 ;	main.c:421: SMB0DAT =  P2;
   036D 85 A0 C2           1201 	mov	_SMB0DAT,_P2
                           1202 ;	main.c:422: P0_6 = 0;
   0370 C2 86              1203 	clr	_P0_6
                           1204 ;	main.c:423: P0_6 = 1;
   0372 D2 86              1205 	setb	_P0_6
                           1206 ;	main.c:424: USB0DAT =  P2;
   0374 85 A0 97           1207 	mov	_USB0DAT,_P2
                           1208 ;	main.c:425: P0_6 = 0;
   0377 C2 86              1209 	clr	_P0_6
                           1210 ;	main.c:426: P0_6 = 1;
   0379 D2 86              1211 	setb	_P0_6
                           1212 ;	main.c:427: SMB0DAT =  P2;
   037B 85 A0 C2           1213 	mov	_SMB0DAT,_P2
                           1214 ;	main.c:428: P0_6 = 0;
   037E C2 86              1215 	clr	_P0_6
                           1216 ;	main.c:429: P0_6 = 1;
   0380 D2 86              1217 	setb	_P0_6
                           1218 ;	main.c:430: USB0DAT =  P2;
   0382 85 A0 97           1219 	mov	_USB0DAT,_P2
                           1220 ;	main.c:431: P0_6 = 0;
   0385 C2 86              1221 	clr	_P0_6
                           1222 ;	main.c:432: P0_6 = 1;
   0387 D2 86              1223 	setb	_P0_6
                           1224 ;	main.c:433: SMB0DAT =  P2;
   0389 85 A0 C2           1225 	mov	_SMB0DAT,_P2
                           1226 ;	main.c:434: P0_6 = 0;
   038C C2 86              1227 	clr	_P0_6
                           1228 ;	main.c:435: P0_6 = 1;
   038E D2 86              1229 	setb	_P0_6
                           1230 ;	main.c:436: USB0DAT =  P2;
   0390 85 A0 97           1231 	mov	_USB0DAT,_P2
                           1232 ;	main.c:437: P0_6 = 0;
   0393 C2 86              1233 	clr	_P0_6
                           1234 ;	main.c:438: P0_6 = 1;
   0395 D2 86              1235 	setb	_P0_6
                           1236 ;	main.c:439: SMB0DAT =  P2;
   0397 85 A0 C2           1237 	mov	_SMB0DAT,_P2
                           1238 ;	main.c:440: P0_6 = 0;
   039A C2 86              1239 	clr	_P0_6
                           1240 ;	main.c:441: P0_6 = 1;
   039C D2 86              1241 	setb	_P0_6
                           1242 ;	main.c:442: USB0DAT =  P2;
   039E 85 A0 97           1243 	mov	_USB0DAT,_P2
                           1244 ;	main.c:443: P0_6 = 0;
   03A1 C2 86              1245 	clr	_P0_6
                           1246 ;	main.c:444: P0_6 = 1;
   03A3 D2 86              1247 	setb	_P0_6
                           1248 ;	main.c:445: SMB0DAT =  P2;
   03A5 85 A0 C2           1249 	mov	_SMB0DAT,_P2
                           1250 ;	main.c:446: P0_6 = 0;
   03A8 C2 86              1251 	clr	_P0_6
                           1252 ;	main.c:447: P0_6 = 1;
   03AA D2 86              1253 	setb	_P0_6
                           1254 ;	main.c:448: USB0DAT =  P2;
   03AC 85 A0 97           1255 	mov	_USB0DAT,_P2
                           1256 ;	main.c:449: P0_6 = 0;
   03AF C2 86              1257 	clr	_P0_6
                           1258 ;	main.c:450: P0_6 = 1;
   03B1 D2 86              1259 	setb	_P0_6
                           1260 ;	main.c:451: SMB0DAT =  P2;
   03B3 85 A0 C2           1261 	mov	_SMB0DAT,_P2
                           1262 ;	main.c:452: P0_6 = 0;
   03B6 C2 86              1263 	clr	_P0_6
                           1264 ;	main.c:453: P0_6 = 1;
   03B8 D2 86              1265 	setb	_P0_6
                           1266 ;	main.c:454: USB0DAT =  P2;
   03BA 85 A0 97           1267 	mov	_USB0DAT,_P2
                           1268 ;	main.c:455: P0_6 = 0;
   03BD C2 86              1269 	clr	_P0_6
                           1270 ;	main.c:456: P0_6 = 1;
   03BF D2 86              1271 	setb	_P0_6
                           1272 ;	main.c:457: SMB0DAT =  P2;
   03C1 85 A0 C2           1273 	mov	_SMB0DAT,_P2
                           1274 ;	main.c:458: P0_6 = 0;
   03C4 C2 86              1275 	clr	_P0_6
                           1276 ;	main.c:459: P0_6 = 1;
   03C6 D2 86              1277 	setb	_P0_6
                           1278 ;	main.c:460: USB0DAT =  P2;
   03C8 85 A0 97           1279 	mov	_USB0DAT,_P2
                           1280 ;	main.c:461: P0_6 = 0;
   03CB C2 86              1281 	clr	_P0_6
                           1282 ;	main.c:462: P0_6 = 1;
   03CD D2 86              1283 	setb	_P0_6
                           1284 ;	main.c:463: SMB0DAT =  P2;
   03CF 85 A0 C2           1285 	mov	_SMB0DAT,_P2
                           1286 ;	main.c:464: P0_6 = 0;
   03D2 C2 86              1287 	clr	_P0_6
                           1288 ;	main.c:465: P0_6 = 1;
   03D4 D2 86              1289 	setb	_P0_6
                           1290 ;	main.c:466: USB0DAT =  P2;
   03D6 85 A0 97           1291 	mov	_USB0DAT,_P2
                           1292 ;	main.c:467: P0_6 = 0;
   03D9 C2 86              1293 	clr	_P0_6
                           1294 ;	main.c:468: P0_6 = 1;
   03DB D2 86              1295 	setb	_P0_6
                           1296 ;	main.c:469: SMB0DAT =  P2;
   03DD 85 A0 C2           1297 	mov	_SMB0DAT,_P2
                           1298 ;	main.c:470: P0_6 = 0;
   03E0 C2 86              1299 	clr	_P0_6
                           1300 ;	main.c:471: P0_6 = 1;
   03E2 D2 86              1301 	setb	_P0_6
                           1302 ;	main.c:472: USB0DAT =  P2;
   03E4 85 A0 97           1303 	mov	_USB0DAT,_P2
                           1304 ;	main.c:473: P0_6 = 0;
   03E7 C2 86              1305 	clr	_P0_6
                           1306 ;	main.c:474: P0_6 = 1;
   03E9 D2 86              1307 	setb	_P0_6
                           1308 ;	main.c:475: SMB0DAT =  P2;
   03EB 85 A0 C2           1309 	mov	_SMB0DAT,_P2
                           1310 ;	main.c:476: P0_6 = 0;
   03EE C2 86              1311 	clr	_P0_6
                           1312 ;	main.c:477: P0_6 = 1;
   03F0 D2 86              1313 	setb	_P0_6
                           1314 ;	main.c:478: USB0DAT =  P2;
   03F2 85 A0 97           1315 	mov	_USB0DAT,_P2
                           1316 ;	main.c:479: P0_6 = 0;
   03F5 C2 86              1317 	clr	_P0_6
                           1318 ;	main.c:480: P0_6 = 1;
   03F7 D2 86              1319 	setb	_P0_6
                           1320 ;	main.c:481: SMB0DAT =  P2;
   03F9 85 A0 C2           1321 	mov	_SMB0DAT,_P2
                           1322 ;	main.c:482: P0_6 = 0;
   03FC C2 86              1323 	clr	_P0_6
                           1324 ;	main.c:483: P0_6 = 1;
   03FE D2 86              1325 	setb	_P0_6
                           1326 ;	main.c:484: USB0DAT =  P2;
   0400 85 A0 97           1327 	mov	_USB0DAT,_P2
                           1328 ;	main.c:485: P0_6 = 0;
   0403 C2 86              1329 	clr	_P0_6
                           1330 ;	main.c:486: P0_6 = 1;
   0405 D2 86              1331 	setb	_P0_6
                           1332 ;	main.c:487: SMB0DAT =  P2;
   0407 85 A0 C2           1333 	mov	_SMB0DAT,_P2
                           1334 ;	main.c:488: P0_6 = 0;
   040A C2 86              1335 	clr	_P0_6
                           1336 ;	main.c:489: P0_6 = 1;
   040C D2 86              1337 	setb	_P0_6
                           1338 ;	main.c:490: USB0DAT =  P2;
   040E 85 A0 97           1339 	mov	_USB0DAT,_P2
                           1340 ;	main.c:491: P0_6 = 0;
   0411 C2 86              1341 	clr	_P0_6
                           1342 ;	main.c:492: P0_6 = 1;
   0413 D2 86              1343 	setb	_P0_6
                           1344 ;	main.c:493: SMB0DAT =  P2;
   0415 85 A0 C2           1345 	mov	_SMB0DAT,_P2
                           1346 ;	main.c:494: P0_6 = 0;
   0418 C2 86              1347 	clr	_P0_6
                           1348 ;	main.c:495: P0_6 = 1;
   041A D2 86              1349 	setb	_P0_6
                           1350 ;	main.c:496: USB0DAT =  P2;
   041C 85 A0 97           1351 	mov	_USB0DAT,_P2
                           1352 ;	main.c:497: P0_6 = 0;
   041F C2 86              1353 	clr	_P0_6
                           1354 ;	main.c:498: P0_6 = 1;
   0421 D2 86              1355 	setb	_P0_6
                           1356 ;	main.c:499: SMB0DAT =  P2;
   0423 85 A0 C2           1357 	mov	_SMB0DAT,_P2
                           1358 ;	main.c:500: P0_6 = 0;
   0426 C2 86              1359 	clr	_P0_6
                           1360 ;	main.c:501: P0_6 = 1;
   0428 D2 86              1361 	setb	_P0_6
                           1362 ;	main.c:502: USB0DAT =  P2;
   042A 85 A0 97           1363 	mov	_USB0DAT,_P2
                           1364 ;	main.c:503: P0_6 = 0;
   042D C2 86              1365 	clr	_P0_6
                           1366 ;	main.c:504: P0_6 = 1;
   042F D2 86              1367 	setb	_P0_6
                           1368 ;	main.c:505: SMB0DAT =  P2;
   0431 85 A0 C2           1369 	mov	_SMB0DAT,_P2
                           1370 ;	main.c:506: P0_6 = 0;
   0434 C2 86              1371 	clr	_P0_6
                           1372 ;	main.c:507: P0_6 = 1;
   0436 D2 86              1373 	setb	_P0_6
                           1374 ;	main.c:508: USB0DAT =  P2;
   0438 85 A0 97           1375 	mov	_USB0DAT,_P2
                           1376 ;	main.c:509: P0_6 = 0;
   043B C2 86              1377 	clr	_P0_6
                           1378 ;	main.c:510: P0_6 = 1;
   043D D2 86              1379 	setb	_P0_6
                           1380 ;	main.c:511: SMB0DAT =  P2;
   043F 85 A0 C2           1381 	mov	_SMB0DAT,_P2
                           1382 ;	main.c:512: P0_6 = 0;
   0442 C2 86              1383 	clr	_P0_6
                           1384 ;	main.c:513: P0_6 = 1;
   0444 D2 86              1385 	setb	_P0_6
                           1386 ;	main.c:514: USB0DAT =  P2;
   0446 85 A0 97           1387 	mov	_USB0DAT,_P2
                           1388 ;	main.c:515: P0_6 = 0;
   0449 C2 86              1389 	clr	_P0_6
                           1390 ;	main.c:516: P0_6 = 1;
   044B D2 86              1391 	setb	_P0_6
                           1392 ;	main.c:517: SMB0DAT =  P2;
   044D 85 A0 C2           1393 	mov	_SMB0DAT,_P2
                           1394 ;	main.c:518: P0_6 = 0;
   0450 C2 86              1395 	clr	_P0_6
                           1396 ;	main.c:519: P0_6 = 1;
   0452 D2 86              1397 	setb	_P0_6
                           1398 ;	main.c:520: USB0DAT =  P2;
   0454 85 A0 97           1399 	mov	_USB0DAT,_P2
                           1400 ;	main.c:521: P0_6 = 0;
   0457 C2 86              1401 	clr	_P0_6
                           1402 ;	main.c:522: P0_6 = 1;
   0459 D2 86              1403 	setb	_P0_6
                           1404 ;	main.c:523: SMB0DAT =  P2;
   045B 85 A0 C2           1405 	mov	_SMB0DAT,_P2
                           1406 ;	main.c:524: P0_6 = 0;
   045E C2 86              1407 	clr	_P0_6
                           1408 ;	main.c:525: P0_6 = 1;
   0460 D2 86              1409 	setb	_P0_6
                           1410 ;	main.c:526: USB0DAT =  P2;
   0462 85 A0 97           1411 	mov	_USB0DAT,_P2
                           1412 ;	main.c:528: EA = 1;
   0465 D2 AF              1413 	setb	_EA
   0467 22                 1414 	ret
                           1415 ;------------------------------------------------------------
                           1416 ;Allocation info for local variables in function 'main'
                           1417 ;------------------------------------------------------------
                           1418 ;------------------------------------------------------------
                           1419 ;	main.c:534: void main(void)
                           1420 ;	-----------------------------------------
                           1421 ;	 function main
                           1422 ;	-----------------------------------------
   0468                    1423 _main:
                           1424 ;	main.c:536: PCA0MD &= ~0x40;                       // Disable Watchdog timer
   0468 53 D9 BF           1425 	anl	_PCA0MD,#0xBF
                           1426 ;	main.c:540: OSCICN |= 0x83;                       // Configure internal oscillator for
   046B 43 B2 83           1427 	orl	_OSCICN,#0x83
                           1428 ;	main.c:544: CLKMUL  = 0x00;                       // Select internal oscillator as
   046E 75 B9 00           1429 	mov	_CLKMUL,#0x00
                           1430 ;	main.c:547: CLKMUL |= 0x80;                       // Enable clock multiplier
   0471 43 B9 80           1431 	orl	_CLKMUL,#0x80
                           1432 ;	main.c:548: CLKMUL |= 0xC0;                       // Initialize the clock multiplier
   0474 43 B9 C0           1433 	orl	_CLKMUL,#0xC0
                           1434 ;	main.c:549: Delay(300);                              // Delay for clock multiplier to begin
   0477 90 01 2C           1435 	mov	dptr,#0x012C
   047A 12 12 7A           1436 	lcall	_Delay
                           1437 ;	main.c:551: while(!CLKMUL & 0x20);                // Wait for multiplier to lock
   047D                    1438 00101$:
   047D E5 B9              1439 	mov	a,_CLKMUL
   047F B4 01 00           1440 	cjne	a,#0x01,00150$
   0482                    1441 00150$:
   0482 E4                 1442 	clr	a
   0483 33                 1443 	rlc	a
   0484 FA                 1444 	mov	r2,a
   0485 20 E5 F5           1445 	jb	acc.5,00101$
                           1446 ;	main.c:552: CLKSEL  = 0x02; // SYS_INT_OSC;                // Select system clock
   0488 75 A9 02           1447 	mov	_CLKSEL,#0x02
                           1448 ;	main.c:553: CLKSEL |= USB_4X_CLOCK;               // Select USB clock
   048B 85 A9 A9           1449 	mov	_CLKSEL,_CLKSEL
                           1450 ;	main.c:558: P1MDIN   = ~0x00;
   048E 75 F2 FF           1451 	mov	_P1MDIN,#0xFF
                           1452 ;	main.c:559: P0SKIP   = 0x40;                        // Port 1 pin 7 skipped by crossbar
   0491 75 D4 40           1453 	mov	_P0SKIP,#0x40
                           1454 ;	main.c:561: P1SKIP = 0x00;
   0494 75 D5 00           1455 	mov	_P1SKIP,#0x00
                           1456 ;	main.c:562: P0=0xff; // b0=clk=high
   0497 75 80 FF           1457 	mov	_P0,#0xFF
                           1458 ;	main.c:563: P1=0xff; // b0=clk=high
   049A 75 90 FF           1459 	mov	_P1,#0xFF
                           1460 ;	main.c:564: P2=0xff; // b0=clk=high
   049D 75 A0 FF           1461 	mov	_P2,#0xFF
                           1462 ;	main.c:565: P0MDOUT  = 0xdf;                        // 0.4 = TX, 0.5 = RX
   04A0 75 A4 DF           1463 	mov	_P0MDOUT,#0xDF
                           1464 ;	main.c:566: P1MDOUT  = 0xde;                        // Port 1 pins 0, 2-3 set push-pull, 1 is floating
   04A3 75 A5 DE           1465 	mov	_P1MDOUT,#0xDE
                           1466 ;	main.c:567: P2MDOUT  = 0x00;                        // Port 2 pins 2,3 set push-pull
   04A6 75 A6 00           1467 	mov	_P2MDOUT,#0x00
                           1468 ;	main.c:569: XBR0     = 0x0b;  // enables SYSCLK
   04A9 75 E1 0B           1469 	mov	_XBR0,#0x0B
                           1470 ;	main.c:572: XBR1     = 0x40;                        // Enable Crossbar
   04AC 75 E2 40           1471 	mov	_XBR1,#0x40
                           1472 ;	main.c:576: POLL_WRITE_BYTE(POWER,  0x08);          // Force Asynchronous USB Reset
   04AF                    1473 00104$:
   04AF E5 96              1474 	mov	a,_USB0ADR
   04B1 20 E7 FB           1475 	jb	acc.7,00104$
   04B4 75 96 01           1476 	mov	_USB0ADR,#0x01
   04B7 75 97 08           1477 	mov	_USB0DAT,#0x08
                           1478 ;	main.c:577: POLL_WRITE_BYTE(IN1IE,  0x0f);          // Enable Endpoint 1+3 in interrupts
   04BA                    1479 00107$:
   04BA E5 96              1480 	mov	a,_USB0ADR
   04BC 20 E7 FB           1481 	jb	acc.7,00107$
   04BF 75 96 07           1482 	mov	_USB0ADR,#0x07
   04C2 75 97 0F           1483 	mov	_USB0DAT,#0x0F
                           1484 ;	main.c:578: POLL_WRITE_BYTE(OUT1IE, 0x08);          // Enable Endpoint 3 out interrupts
   04C5                    1485 00110$:
   04C5 E5 96              1486 	mov	a,_USB0ADR
   04C7 20 E7 FB           1487 	jb	acc.7,00110$
   04CA 75 96 09           1488 	mov	_USB0ADR,#0x09
   04CD 75 97 08           1489 	mov	_USB0DAT,#0x08
                           1490 ;	main.c:579: POLL_WRITE_BYTE(CMIE,   0x07);          // Enable Reset, Resume, and Suspend interrupts
   04D0                    1491 00113$:
   04D0 E5 96              1492 	mov	a,_USB0ADR
   04D2 20 E7 FB           1493 	jb	acc.7,00113$
   04D5 75 96 0B           1494 	mov	_USB0ADR,#0x0B
   04D8 75 97 07           1495 	mov	_USB0DAT,#0x07
                           1496 ;	main.c:580: USB0XCN = 0xE0;                         // Enable transceiver; select full speed
   04DB 75 D7 E0           1497 	mov	_USB0XCN,#0xE0
                           1498 ;	main.c:581: POLL_WRITE_BYTE(CLKREC, 0x80);          // Enable clock recovery, single-step mode disabled
   04DE                    1499 00116$:
   04DE E5 96              1500 	mov	a,_USB0ADR
   04E0 20 E7 FB           1501 	jb	acc.7,00116$
   04E3 75 96 0F           1502 	mov	_USB0ADR,#0x0F
   04E6 75 97 80           1503 	mov	_USB0DAT,#0x80
                           1504 ;	main.c:582: EIE1 |= 0x02;                           // Enable USB0 Interrupts
   04E9 43 E6 02           1505 	orl	_EIE1,#0x02
                           1506 ;	main.c:585: POLL_WRITE_BYTE(POWER,  0x01);          // Enable USB0 by clearing the USB Inhibit bit
   04EC                    1507 00119$:
   04EC E5 96              1508 	mov	a,_USB0ADR
   04EE 20 E7 FB           1509 	jb	acc.7,00119$
   04F1 75 96 01           1510 	mov	_USB0ADR,#0x01
   04F4 75 97 01           1511 	mov	_USB0DAT,#0x01
                           1512 ;	main.c:592: CKCON  &= ~0x13;                       // Timer1
   04F7 53 8E EC           1513 	anl	_CKCON,#0xEC
                           1514 ;	main.c:593: CKCON |= 1; // SYSCLK/4  (leave b0 = 0 for SYSCLK / 12)
   04FA 43 8E 01           1515 	orl	_CKCON,#0x01
                           1516 ;	main.c:597: TH1 = (-1) & 0xff;              // Initialize reload value
   04FD 75 8D FF           1517 	mov	_TH1,#0xFF
                           1518 ;	main.c:598: TL1 = 0xff;
   0500 75 8B FF           1519 	mov	_TL1,#0xFF
                           1520 ;	main.c:599: TMOD |= 0x20;
   0503 43 89 20           1521 	orl	_TMOD,#0x20
                           1522 ;	main.c:600: TMOD &= ~0xd0;
   0506 53 89 2F           1523 	anl	_TMOD,#0x2F
                           1524 ;	main.c:601: TR1 = 1;                           // Start Timer1
   0509 D2 8E              1525 	setb	_TR1
                           1526 ;	main.c:606: IE = 0;
   050B 75 A8 00           1527 	mov	_IE,#0x00
                           1528 ;	main.c:608: SCON0 = 0x10;
   050E 75 98 10           1529 	mov	_SCON0,#0x10
                           1530 ;	main.c:615: EA = 1;                                 // Global Interrupt enable
   0511 D2 AF              1531 	setb	_EA
                           1532 ;	main.c:618: while (1) {
   0513                    1533 00128$:
                           1534 ;	main.c:620: if (!fill_usb)
   0513 E5 6B              1535 	mov	a,_fill_usb
   0515 60 FC              1536 	jz	00128$
                           1537 ;	main.c:623: P1_7 = 0;
   0517 C2 97              1538 	clr	_P1_7
                           1539 ;	main.c:625: pull64();
   0519 12 00 DD           1540 	lcall	_pull64
                           1541 ;	main.c:626: pull64();
   051C 12 00 DD           1542 	lcall	_pull64
                           1543 ;	main.c:627: pull64();
   051F 12 00 DD           1544 	lcall	_pull64
                           1545 ;	main.c:628: pull64();
   0522 12 00 DD           1546 	lcall	_pull64
                           1547 ;	main.c:629: pull64();
   0525 12 00 DD           1548 	lcall	_pull64
                           1549 ;	main.c:630: pull64();
   0528 12 00 DD           1550 	lcall	_pull64
                           1551 ;	main.c:631: pull64();
   052B 12 00 DD           1552 	lcall	_pull64
                           1553 ;	main.c:632: pull64();
   052E 12 00 DD           1554 	lcall	_pull64
                           1555 ;	main.c:635: EA = 0;
   0531 C2 AF              1556 	clr	_EA
                           1557 ;	main.c:637: UsbSelectInEndpointFifo(3);
   0533 75 82 03           1558 	mov	dpl,#0x03
   0536 12 12 95           1559 	lcall	_UsbSelectInEndpointFifo
                           1560 ;	main.c:638: POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
   0539                    1561 00124$:
   0539 E5 96              1562 	mov	a,_USB0ADR
   053B 20 E7 FB           1563 	jb	acc.7,00124$
   053E 75 96 11           1564 	mov	_USB0ADR,#0x11
   0541 75 97 01           1565 	mov	_USB0DAT,#0x01
                           1566 ;	main.c:642: fill_usb = 0;
   0544 75 6B 00           1567 	mov	_fill_usb,#0x00
                           1568 ;	main.c:644: EA = 1;
   0547 D2 AF              1569 	setb	_EA
                           1570 ;	main.c:646: P1_7 = 1;
   0549 D2 97              1571 	setb	_P1_7
   054B 80 C6              1572 	sjmp	00128$
                           1573 	.area CSEG    (CODE)
                           1574 	.area CONST   (CODE)
   1653                    1575 _DeviceDesc:
   1653 12                 1576 	.db #0x12
   1654 01                 1577 	.db #0x01
   1655 10                 1578 	.db #0x10
   1656 01                 1579 	.db #0x01
   1657 FF                 1580 	.db #0xFF
   1658 FF                 1581 	.db #0xFF
   1659 FF                 1582 	.db #0xFF
   165A 40                 1583 	.db #0x40
   165B C0                 1584 	.db #0xC0
   165C 16                 1585 	.db #0x16
   165D E2                 1586 	.db #0xE2
   165E 09                 1587 	.db #0x09
   165F 01                 1588 	.db #0x01
   1660 00                 1589 	.db #0x00
   1661 01                 1590 	.db #0x01
   1662 02                 1591 	.db #0x02
   1663 03                 1592 	.db #0x03
   1664 01                 1593 	.db #0x01
   1665                    1594 _ConfigDesc:
   1665 09                 1595 	.db #0x09
   1666 02                 1596 	.db #0x02
   1667 27                 1597 	.db #0x27
   1668 00                 1598 	.db #0x00
   1669 01                 1599 	.db #0x01
   166A 01                 1600 	.db #0x01
   166B 00                 1601 	.db #0x00
   166C C0                 1602 	.db #0xC0
   166D 20                 1603 	.db #0x20
   166E                    1604 _InterfaceDesc:
   166E 09                 1605 	.db #0x09
   166F 04                 1606 	.db #0x04
   1670 00                 1607 	.db #0x00
   1671 00                 1608 	.db #0x00
   1672 03                 1609 	.db #0x03
   1673 FF                 1610 	.db #0xFF
   1674 FF                 1611 	.db #0xFF
   1675 FF                 1612 	.db #0xFF
   1676 00                 1613 	.db #0x00
   1677                    1614 _Endpoint1Desc:
   1677 07                 1615 	.db #0x07
   1678 05                 1616 	.db #0x05
   1679 81                 1617 	.db #0x81
   167A 02                 1618 	.db #0x02
   167B 40                 1619 	.db #0x40
   167C 00                 1620 	.db #0x00
   167D 00                 1621 	.db #0x00
   167E                    1622 _Endpoint2Desc:
   167E 07                 1623 	.db #0x07
   167F 05                 1624 	.db #0x05
   1680 02                 1625 	.db #0x02
   1681 02                 1626 	.db #0x02
   1682 40                 1627 	.db #0x40
   1683 00                 1628 	.db #0x00
   1684 00                 1629 	.db #0x00
   1685                    1630 _Endpoint3Desc:
   1685 07                 1631 	.db #0x07
   1686 05                 1632 	.db #0x05
   1687 83                 1633 	.db #0x83
   1688 02                 1634 	.db #0x02
   1689 00                 1635 	.db #0x00
   168A 04                 1636 	.db #0x04
   168B 00                 1637 	.db #0x00
   168C                    1638 _szaStringDescriptors:
   168C 94 16              1639 	.byte _str_0,(_str_0 >> 8)
   168E 97 16              1640 	.byte _str_1,(_str_1 >> 8)
   1690 A9 16              1641 	.byte _str_2,(_str_2 >> 8)
   1692 C1 16              1642 	.byte _str_3,(_str_3 >> 8)
   1694                    1643 _str_0:
   1694 09                 1644 	.db 0x09
   1695 04                 1645 	.db 0x04
   1696 00                 1646 	.db 0x00
   1697                    1647 _str_1:
   1697 43 72 61 73 68 20  1648 	.ascii "Crash Barrier Ltd"
        42 61 72 72 69 65
        72 20 4C 74 64
   16A8 00                 1649 	.db 0x00
   16A9                    1650 _str_2:
   16A9 57 68 69 72 6C 79  1651 	.ascii "Whirlygig HW Random Gen"
        67 69 67 20 48 57
        20 52 61 6E 64 6F
        6D 20 47 65 6E
   16C0 00                 1652 	.db 0x00
   16C1                    1653 _str_3:
   16C1 30 30 30 30 30 31  1654 	.ascii "000001"
   16C7 00                 1655 	.db 0x00
                           1656 	.area XINIT   (CODE)
                           1657 	.area CABS    (ABS,CODE)
