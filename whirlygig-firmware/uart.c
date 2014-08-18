#include "c8051f320.h"
#include <string.h>
#include <stdio.h>

	// Serial interrupt routine buffers

xdata BYTE baTxBuffer[32];
volatile BYTE bTxTail = 0, bTxHead = 0, fTransmitImmediate = 1,
	bCountTxerrors = 0, bLastTxByte = 0;

xdata BYTE baRxBuffer[32];
volatile BYTE bRxTail = 0, bRxHead = 0, bCountRxSwallowAsEcho = 0,
	fRxOverflow = 0;


int SerTx(BYTE b)
{
	 /* would overflow */
	if (((bTxHead + 1) & (sizeof(baTxBuffer) - 1)) == bTxTail)
		return 0;

	baTxBuffer[bTxHead] = b;
	ES0 = 0;
	if (fTransmitImmediate)
		SBUF0 = b;
	else
		bTxHead = (bTxHead + 1) & (sizeof(baTxBuffer) - 1);
	fTransmitImmediate = 0;
	ES0 = 1;
	return 1;
}

void SerTxArray(BYTE *pb, BYTE bCount)
{
	while (bCount--) {
		while (!SerTx(*pb))
			;
		pb++;
	}
}


int SerRx(void)
{
	BYTE b;
	if (bRxHead == bRxTail)
		return -1;
	b = baRxBuffer[bRxTail];
	ES0 = 0;
	bRxTail = (bRxTail + 1) & (sizeof(baRxBuffer) - 1);
	ES0 = 1;
	return (int)b;
}

void Uart_ISR(void) interrupt 4
{
	if (RI0) { // RX action
//		if (bCountRxSwallowAsEcho) {
//			if (SBUF0 != bLastTxByte)
//				bCountTxerrors++;
//			bCountRxSwallowAsEcho--;
//		} else {
			if (((bRxHead+1) & (sizeof(baRxBuffer)-1)) == bRxTail) // overflowed Rx buffer
				fRxOverflow = 1;
			else {
				baRxBuffer[bRxHead] = SBUF0;
				bRxHead = (bRxHead+1) & (sizeof(baRxBuffer)-1);
			}
//		}
		RI0 = 0;
	}
	if (TI0) { // TX action
		if (bTxTail != bTxHead) {
			bLastTxByte = baTxBuffer[bTxTail];
			SBUF0 = baTxBuffer[bTxTail];
			bTxTail = (bTxTail + 1) & (sizeof(baTxBuffer) - 1);
//			bCountRxSwallowAsEcho++;
			fTransmitImmediate = 0;
		} else
			fTransmitImmediate = 1;  // buffer underflowed, force Tx interrupt when buffer reloaded
		TI0 = 0;
	}
}

void UartInit()
{
	CKCON  &= ~0x13;                       // Timer1
	CKCON |= 1; // SYSCLK/4  (leave b0 = 0 for SYSCLK / 12)
		// 9600 bps = (-106) & 0xff
		// -9 = 3.1us bit time
		// -2 = 680ns bit time
	TH1 = (-2) & 0xff;              // Initialize reload value
	TL1 = 0xff;
	TMOD |= 0x20;
	TMOD &= ~0xd0;
	TR1 = 1;                           // Start Timer1
/*
	IE |= 0x10;
	IP |= 0x10;
*/
	SCON0 = 0x10;
	ES0 = 1;
	TI0 = 1; // indicate ready for new TX
}
