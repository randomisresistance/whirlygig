
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

// (c) 2003 andy@warmcat.com
// Thanks to Josh Stone for his original porting of the Cygnal example app to SDCC

// This file contains the USB descriptor information for the device
//  and the device initialization code


//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------

	// generic definition of the Cygnal C8051F320 chip registers, etc
#include "c8051f320.h"
#include "uart.h"
#include <string.h>
#include <stdio.h>

#define USB_VENDOR 0x16C0
#define USB_PRODUCT 0x09E2

xdata BYTE baRxCache[32];
volatile BYTE bRxCacheTail = 0, bRxCacheHead = 0;


//---------------------------
// USB Descriptor Declarations
//---------------------------

const device_descriptor DeviceDesc =
{
   sizeof(device_descriptor),  // bLength
   DSC_DEVICE,                 // bDescriptorType
   0x10, 0x01,                   // bcdUSB
   0xff,                       // bDeviceClass
   0xff,                       // bDeviceSubClass
   0xff,                       // bDeviceProtocol
   0x40,            // bMaxPacketSize0
   USB_VENDOR&0xff, (BYTE)((int)USB_VENDOR>>8),                   // idVendor
   USB_PRODUCT&0xff, (BYTE)((int)USB_PRODUCT>>8),                   // idProduct
   0x01, 0x00,                   // bcdDevice
   0x01,                       // iManufacturer
   0x02,                       // iProduct
   0x03,                       // iSerialNumber
   0x01                        // bNumConfigurations
}; //end of DeviceDesc

const configuration_descriptor ConfigDesc =
{
   sizeof(configuration_descriptor),  // Length
   DSC_CONFIG,                        // Type
   (sizeof(configuration_descriptor)  // Totallength
	   + sizeof(interface_descriptor)
		   + 3*sizeof(endpoint_descriptor))&0xff,
   ((int)((int)sizeof(configuration_descriptor)  // Totallength
	   + (int)sizeof(interface_descriptor)
	   + (int)3*(int)sizeof(endpoint_descriptor))>>8),

   0x01,                              // NumInterfaces
   0x01,                              // bConfigurationValue
   0x00,                              // iConfiguration
   0xc0,                              // bmAttributes
   0x20                               // MaxPower
}; //end of ConfigDesc

const interface_descriptor InterfaceDesc =
{
   sizeof(interface_descriptor),  // bLength
   DSC_INTERFACE,                 // bDescriptorType
   0x00,                          // bInterfaceNumber
   0x00,                          // bAlternateSetting
   0x03,                          // bNumEndpoints
   0xff,                          // bInterfaceClass
   0xff,                          // bInterfaceSubClass
   0xff,                          // bInterfaceProcotol
   0x00                           // iInterface
}; //end of InterfaceDesc

const endpoint_descriptor Endpoint1Desc =
{
   sizeof(endpoint_descriptor),  // bLength
   DSC_ENDPOINT,                 // bDescriptorType
   IN_EP1,                       // bEndpointAddress
   EP_TYPE_BULK,            // bmAttributes
   0x40, 0x00,            // MaxPacketSize
   0                            // bInterval
}; //end of Endpoint1Desc

const endpoint_descriptor Endpoint2Desc =
{
   sizeof(endpoint_descriptor),  // bLength
   DSC_ENDPOINT,                 // bDescriptorType
   OUT_EP2,                      // bEndpointAddress
   EP_TYPE_BULK,            // bmAttributes
   0x40 , 0x00,            // MaxPacketSizeconst
   0                            // bInterval
}; //end of Endpoint2Desc

const endpoint_descriptor Endpoint3Desc =
{
   sizeof(endpoint_descriptor),  // bLength
   DSC_ENDPOINT,                 // bDescriptorType
   IN_EP3,                      // bEndpointAddress
   EP_TYPE_BULK,            // bmAttributes
   0x00 , 0x04,            // MaxPacketSizeconst
   0                            // bInterval
}; //end of Endpoint3Desc

code const char * code const szaStringDescriptors[] =
{
	"\011\004",
	"Crash Barrier Ltd",
	"Whirlygig HW Random Gen",
	"000001"
};



#define SYSCLK 12000000    // SYSCLK frequency in Hz

// Interrupts from other source files
// they have to be imported here or they won't get a place in the system interrupt table
extern void Usb_ISR(void) interrupt 8  ;        // Top-level USB ISR

extern void UsbSelectInEndpointFifo(BYTE);

void pull64(void)
{

		EA = 0;

		UsbSelectInEndpointFifo(3);

		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		SMB0DAT =  P2;
		P0_6 = 0;
		P0_6 = 1;
		USB0DAT =  P2;

		EA = 1;
}


extern BYTE fill_usb;

void main(void)
{
	PCA0MD &= ~0x40;                       // Disable Watchdog timer

	/*  oscillator init to 24MHz */

	OSCICN |= 0x83;                       // Configure internal oscillator for
										//  * its maximum frequency and enable
										//  * missing clock detector

	CLKMUL  = 0x00;                       // Select internal oscillator as
										//  * input to clock multiplier

	CLKMUL |= 0x80;                       // Enable clock multiplier
	CLKMUL |= 0xC0;                       // Initialize the clock multiplier
	Delay(300);                              // Delay for clock multiplier to begin

	while(!CLKMUL & 0x20);                // Wait for multiplier to lock
	CLKSEL  = 0x02; // SYS_INT_OSC;                // Select system clock
	CLKSEL |= USB_4X_CLOCK;               // Select USB clock

		// IO init

//	P1MDIN   = ~0x80;                       // Port 1 pin 7 set as analog input
	P1MDIN   = ~0x00;
	P0SKIP   = 0x40;                        // Port 1 pin 7 skipped by crossbar
//	P1SKIP   = 0x80;                        // Port 1 pin 7 skipped by crossbar
	P1SKIP = 0x00;
	P0=0xff; // b0=clk=high
	P1=0xff; // b0=clk=high
	P2=0xff; // b0=clk=high
	P0MDOUT  = 0xdf;                        // 0.4 = TX, 0.5 = RX
	P1MDOUT  = 0xde;                        // Port 1 pins 0, 2-3 set push-pull, 1 is floating
	P2MDOUT  = 0x00;                        // Port 2 pins 2,3 set push-pull

	XBR0     = 0x0b;  // enables SYSCLK
//	XBR0	 = 0x03; // disable SYSCLK
//	XBR0     = 0x01;
	XBR1     = 0x40;                        // Enable Crossbar

		// USB init

	POLL_WRITE_BYTE(POWER,  0x08);          // Force Asynchronous USB Reset
	POLL_WRITE_BYTE(IN1IE,  0x0f);          // Enable Endpoint 1+3 in interrupts
	POLL_WRITE_BYTE(OUT1IE, 0x08);          // Enable Endpoint 3 out interrupts
	POLL_WRITE_BYTE(CMIE,   0x07);          // Enable Reset, Resume, and Suspend interrupts
	USB0XCN = 0xE0;                         // Enable transceiver; select full speed
	POLL_WRITE_BYTE(CLKREC, 0x80);          // Enable clock recovery, single-step mode disabled
	EIE1 |= 0x02;                           // Enable USB0 Interrupts
//	EIP1&=~0x02;  // LOWER PRIORITY!

	POLL_WRITE_BYTE(POWER,  0x01);          // Enable USB0 by clearing the USB Inhibit bit
						// * and enable suspend detection

	// "Whirlygig RNG 1.0"


	{
		CKCON  &= ~0x13;                       // Timer1
		CKCON |= 1; // SYSCLK/4  (leave b0 = 0 for SYSCLK / 12)
			// 9600 bps = (-106) & 0xff
			// -9 = 3.1us bit time
			// -2 = 680ns bit time
		TH1 = (-1) & 0xff;              // Initialize reload value
		TL1 = 0xff;
		TMOD |= 0x20;
		TMOD &= ~0xd0;
		TR1 = 1;                           // Start Timer1
	/*
		IE |= 0x10;
		IP |= 0x10;
	*/
		IE = 0;

		SCON0 = 0x10;
//		ES0 = 0; // was 1
//		ET1 = 0;
//		TI0 = 1; // indicate ready for new TX
	}
//	UartInit();

	EA = 1;                                 // Global Interrupt enable

		// this is what executes when there is no interrupt happening
	while (1) {

		if (!fill_usb)
			continue;
			
		P1_7 = 0;

		pull64();
		pull64();
		pull64();
		pull64();
		pull64();
		pull64();
		pull64();
		pull64();


		EA = 0;

		UsbSelectInEndpointFifo(3);
		POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);
		// Set In Packet ready bit, indicating fresh data
		// on Fifo 1

		fill_usb = 0;
		
		EA = 1;

		P1_7 = 1;
	}
}
