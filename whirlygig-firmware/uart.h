
extern int SerTx(BYTE b);
extern void SerTxArray(BYTE *pb, BYTE bCount);
extern int SerRx(void);
extern void Uart_ISR(void) interrupt 4;
extern void UartInit(void);
