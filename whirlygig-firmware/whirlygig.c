/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

// (c) 2003-2007 Andy Green andy@warmcat.com


//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------

#include "c8051f320.h"
#include <string.h>
#include <stdio.h>


//
// API for Jektor firrmware <-> Jektor app
//

typedef enum {
	JEKTOR_NO_COMMAND=100,
	JEKTOR_GET_FIRMWARE_VERSION,
	JEKTOR_MOVE_TO_STATE,
	JEKTOR_BOUNDARY_LOAD_IGNORE_TDO,
	JEKTOR_BOUNDARY_LOAD_CAPTURE_TDO,
	JEKTOR_BOUNDARY_JUST_CLOCK
} JEKTOR_COMMAND;



//-----------------------------------------------------------------------------
// Global vars
//-----------------------------------------------------------------------------

BYTE bMixer = 0;

void Delay(unsigned int n)
{
	int x;
	for (x = 0; x < n; )
		x++;
}

#define JTAGTDIBIT P1_4
#define JTAGTCKBIT P1_2
#define JTAGTMSBIT P1_3
#define JTAGTDOBIT P1_5


	// USB interface helper functions

void UsbSelectInEndpointFifo(BYTE bEndpointNumber) {
	while (USB0ADR & 0x80)
		;
	USB0ADR = FIFO_EP0 + bEndpointNumber;
	while (USB0ADR & 0x80)
		;
}
void UsbSelectOutEndpointFifo(BYTE bEndpointNumber) {
	while (USB0ADR & 0x80)
		;
	USB0ADR = (FIFO_EP0 + bEndpointNumber) | 0xc0;
	while (USB0ADR & 0x80)
		;
}
void UsbWriteFifo(BYTE b) {
	USB0DAT = b;
	while (USB0ADR & 0x80)
		;
}
BYTE UsbReadFifo(void) {
	while (USB0ADR & 0x80)
		;
	return USB0DAT;
}
void UsbReadingFifoDone(void) {
	while (USB0ADR & 0x80)
		;
	USB0ADR = 0;
}

static BYTE sendbuf[32];
static BYTE did_send = 0; 

void jektor_load(BYTE fCapture)
{
	short w;
	BYTE *pb=(BYTE *)&w;
	BYTE bMask = 0x01;
	BYTE byte;
	BYTE send = 0;
	BYTE * xpb = sendbuf;

	pb[0] = UsbReadFifo();
	pb[1] = UsbReadFifo();
	
	byte = UsbReadFifo();

	JTAGTMSBIT = 0;
	JTAGTDOBIT = 1;

	while (w--) {

		if (!w)
			JTAGTMSBIT = 1;

		if(byte & bMask)
			JTAGTDIBIT = 1;
		else
			JTAGTDIBIT = 0;
		JTAGTCKBIT = 0;
		JTAGTCKBIT = 1;

		if(fCapture) {
			if(JTAGTDOBIT)
				send |= bMask;
			else
				send &= ~bMask;
		}

		if (w && (bMask & 0x80)) {
			bMask = 0x01;
			byte = UsbReadFifo();
			*xpb++ = send;
		} else
			bMask <<= 1;
	}

	if(fCapture)
		if (bMask != 1)
			*xpb++ = send;

	UsbReadingFifoDone();

	if(fCapture) {
		w = xpb - sendbuf;
		xpb = sendbuf;

		while(USB0ADR & 0x80);              // Wait for BUSY->'0'
							// (register available)
		USB0ADR = FIFO_EP0 + 1;                   // Set address (mask out bits7-6)

		while (w--) {
			USB0DAT = *xpb++;
			while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
		}
	}
}


BYTE fill_usb = 1;

// called when the PC is asking for new data on an In endpoint

void UsbInterruptInToPcEndpointService(BYTE bEndpointNumber)
{
	BYTE ControlReg;

	POLL_WRITE_BYTE(INDEX, bEndpointNumber);
	POLL_READ_BYTE(EINCSR1, ControlReg);
	if (ControlReg & rbInINPRDY)
		return;

	switch (bEndpointNumber) {
	case 1:
		if (!did_send)
			Fifo_Write(FIFO_EP0 + 1, 18, "Whirlygig RNG 1.0");

		POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
		// Set In Packet ready bit, indicating fresh data
		// on Fifo 1


		break;

	case 3:
		fill_usb = 1;
		POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
		// Set In Packet ready bit, indicating fresh data
		// on Fifo 1
		break;
	}
}

// called when the PC has sent new data on an Out endpoint

void UsbInterruptOutFromPcEndpointService(BYTE bEndpointNumber)
{
	BYTE fCapture = 0;
	BYTE count;
	BYTE pattern;

	did_send = 1;

        UsbSelectOutEndpointFifo(bEndpointNumber);

	switch(UsbReadFifo()) {

	case JEKTOR_GET_FIRMWARE_VERSION:
		UsbReadingFifoDone();
		Fifo_Write(FIFO_EP0 + 1, 17 , "1Jektor         ");
		break;

	case JEKTOR_MOVE_TO_STATE:
		count = UsbReadFifo();
		pattern = UsbReadFifo();
		UsbReadingFifoDone();
		while(count--) {
			JTAGTMSBIT = pattern & 1;
			JTAGTCKBIT = 0;
			JTAGTCKBIT = 1;
			pattern >>= 1;
		}
		break;

	case JEKTOR_BOUNDARY_LOAD_CAPTURE_TDO:
		fCapture = 1;
			// FALLTHRU
	case JEKTOR_BOUNDARY_LOAD_IGNORE_TDO:
		jektor_load(fCapture);
		break;


	case JEKTOR_BOUNDARY_JUST_CLOCK:
		{
			unsigned long dw;
			BYTE *pb = (BYTE *)&dw;
			int dr = UsbReadFifo();

			*pb++=UsbReadFifo();
			*pb++=UsbReadFifo();
			*pb++=UsbReadFifo();
			*pb++=UsbReadFifo();

			UsbReadingFifoDone();

			if (dr) {
					// do the Jtag retry sequence.. we are already at exit-1DR
				JTAGTMSBIT=0;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;
					// pause dr
				JTAGTMSBIT=1;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;
					// exit2 dr
				JTAGTMSBIT=0;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;
					// shift dr
				JTAGTMSBIT=1;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;
					// exit-1 DR (again!)
				JTAGTMSBIT=1;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;
					// update
				JTAGTMSBIT=0;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;
					// idle
				dw--; // going to do this one afterwards
			}

			JTAGTMSBIT = 0;

			while(dw--) {
				JTAGTCKBIT = 0;
				JTAGTCKBIT = 1;
			}



			if (dr) {
				// last one has TMS set
				JTAGTMSBIT=1;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;

				JTAGTMSBIT=0;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;
				JTAGTMSBIT=0;
				JTAGTCKBIT=0;
				JTAGTCKBIT=1;
			}

				// signal our completion

		Fifo_Write(FIFO_EP0 + 1, 1, &fCapture);

		}
		break;

	}
}
