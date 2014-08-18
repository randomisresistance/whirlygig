/*
   File:    USB_ISR.c
   Author:  DM
   Created: 11/8/02

   Target Device: C8051F320

   Source file for USB firmware. Includes top level isr with Setup,
   and Endpoint data handlers.  Also includes routine for USB suspend,
   reset, and procedural stall.

	Ported to SDCC and modified to init pipe states correctly
	Andy Green <andy@warmcat.com> 2003-2007
*/

#include "c8051f320.h"
#include "uart.h"
typedef unsigned char bool;


BYTE USB_State;         // Holds the current USB State def. in USB_MAIN.h
setup_buffer Setup;     // Buffer for current device request information
unsigned int DataSize;  // Size of data to return
unsigned int DataSent;  // Amount of data sent so far
BYTE* DataPtr;          // Pointer to data to return

BYTE Ep_Status[4] = {EP_IDLE, EP_IDLE, EP_IDLE, EP_IDLE};
                                        // Holds the status for each endpoint

code BYTE ONES_PACKET[2] = {0x01, 0x00};        // These are response packets used for
code BYTE ZERO_PACKET[2] = {0x00, 0x00};        // communication with host

xdata char szBuffer[60];

// these are the user functions that are called on endpoint activity
// the user doesn't need to know the details of what happens in this file

extern BYTE UsbInterruptInToPcEndpointService(BYTE bEndpointNumber);
extern void UsbInterruptOutFromPcEndpointService(BYTE bEndpointNumber);

extern const endpoint_descriptor Endpoint3Desc;


// Function prototypes
// USB Routines
void Usb_Resume(void);   // This routine resumes USB operation
void Usb_Reset(void);    // Called after USB bus reset
void Handle_Setup(void); // Handle setup packet on Endpoint 0
void Handle_In(BYTE);    // Handle in packet on Endpoint 1
void HandleOut(BYTE);    // Handle out packet on Endpoint 2
void Usb_Suspend(void);  // This routine called when suspend signalling on bus

// Standard Requests
void Get_Status(void);   // These are called for each specific standard request
void Clear_Feature(void);
void Set_Feature(void);
void Set_Address(void);
void Get_Descriptor(void);
void Get_Configuration(void);
void Set_Configuration(void);
void Get_Interface(void);
void Set_Interface(void);




//-------------------------
// Usb_Reset
//-------------------------
// - Set state to default
// - Clear Usb Inhibit bit
//
void Usb_Reset(void)
{
   USB_State = DEV_DEFAULT;             // Set device state to default
   POLL_WRITE_BYTE(CMIE,	0x0D);  // SOF, reset, suspend

   POLL_WRITE_BYTE(POWER, 0x01);        // Clear usb inhibit bit to enable USB
                                        // suspend detection

   Ep_Status[0] = EP_IDLE;              // Set default Endpoint Status
   Ep_Status[1] = EP_HALT;
   Ep_Status[2] = EP_HALT;
}

void Handle_EP_HALT(void)
{
	BYTE ControlReg;

	// IN EP1
	POLL_WRITE_BYTE(INDEX, 1);				// Set index to endpoint 1 registers
	POLL_READ_BYTE(EINCSR1, ControlReg);	// Read contol register for EP
	if (Ep_Status[1] == EP_HALT)				// If endpoint is currently halted, send a stall
		POLL_WRITE_BYTE(EINCSR1, rbInSDSTL)
	else
		if (ControlReg & rbInSTSTL)			// Clear sent stall if last packet returned a stall
			POLL_WRITE_BYTE(EINCSR1, 0);
}

//-------------------------
// Usb_ISR
//-------------------------
// Called after any USB type interrupt, this handler determines which type
// of interrupt occurred, and calls the specific routine to handle it.
//
void Usb_ISR(void) interrupt 8         // Top-level USB ISR
{
	BYTE bCommon, bIn, bOut, bIndex;
	POLL_READ_BYTE(INDEX, bIndex);

	POLL_READ_BYTE(CMINT, bCommon);      // Read all interrupt registers
	POLL_READ_BYTE(IN1INT, bIn);         // this read also clears the register
	POLL_READ_BYTE(OUT1INT, bOut);

	if (bCommon & rbRSUINT)           // Handle Resume interrupt
		Usb_Resume();

	if (bCommon & rbRSTINT)           // Handle Reset interrupt
		Usb_Reset();

	/* Handle setup packet rx or tx */
	if (bIn & 1)
		Handle_Setup();

	if (bCommon & rbSOF) {  // SOF interrupt
		Handle_EP_HALT();
//		Handle_In(1);   // Handle IN1 EP (Notification)
	}


	if (bIn & 2)
		Handle_In(1);

	if (bIn & 4)
		Handle_In(2);
	if (bIn & 8)
		Handle_In(3);

	if (bOut & 2)
		HandleOut(1);
	if (bOut & 4)
		HandleOut(2);
	if (bOut & 8)
		HandleOut(3);

	if (bCommon & rbSUSINT)          // Handle Suspend interrupt
		Usb_Suspend();

	POLL_WRITE_BYTE(INDEX, bIndex);
	USB0ADR = FIFO_EP0 + 2;

}

void HandleOut(BYTE n) {
	BYTE Count = 0;
	BYTE ControlReg;

	POLL_WRITE_BYTE(INDEX, n);           // Set index to endpoint 2 registers
	POLL_READ_BYTE(EOUTCSR1, ControlReg);

	if (Ep_Status[n] == EP_HALT)  {       // If endpoint is halted, send a stall
		POLL_WRITE_BYTE(EOUTCSR1, rbOutSDSTL);
		return;
	}
                          // Otherwise read received packet from host
	if (ControlReg & rbOutSTSTL)     // Clear sent stall bit if last packet was a stall
		POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);

	POLL_READ_BYTE(EOUTCNTL, Count);
//		if (Count != EP2_PACKET_SIZE)     // If host did not send correct packet size, flush buffer
	if (Count == 0)    // If host did not send correct packet size, flush buffer
		POLL_WRITE_BYTE(EOUTCNTL, rbOutFLUSH)
	else                              // Otherwise get the data packet
		UsbInterruptOutFromPcEndpointService(n);
	POLL_WRITE_BYTE(EOUTCSR1, 0);     // Clear Out Packet ready bit
}

void Handle_In(BYTE n)                       // Handle in packet on Endpoint 1
{
		BYTE ControlReg;

		POLL_WRITE_BYTE(INDEX, n);           // Set index to endpoint 1 registers
		POLL_READ_BYTE(EINCSR1, ControlReg); // Read contol register for EP 1

		if (Ep_Status[n] == EP_HALT) {        // If endpoint is currently halted, send a stall
			POLL_WRITE_BYTE(EINCSR1, rbInSDSTL);
			return;
		}                                // Otherwise send last updated data to host
		if (ControlReg & rbInSTSTL)      // Clear sent stall if last packet returned a stall
			POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);

		if (ControlReg & rbInUNDRUN)     // Clear underrun bit if it was set
			POLL_WRITE_BYTE(EINCSR1, 0x00);
							// Put new data on Fifo
		UsbInterruptInToPcEndpointService(n);

}

//-------------------------
// Usb_Resume
//-------------------------
// Resume normal USB operation
//
void Usb_Resume(void)                   // Add code to turn on anything turned off when
{                                       // entering suspend mode
}

//extern bool SerTx(BYTE b);

//-------------------------
// Handle_Setup
//-------------------------
// - Decode Incoming Setup requests
// - Load data packets on fifo while in transmit mode
//
void Handle_Setup(void)
{                                   
   BYTE ControlReg,TempReg;             // Temporary storage for EP control register

//	SerTx('\r');
//	SerTx('\n');

   POLL_WRITE_BYTE(INDEX, 0);           // Set Index to Endpoint Zero
   POLL_READ_BYTE(E0CSR, ControlReg);   // Read control register

   if (Ep_Status[0] == EP_ADDRESS)      // Handle Status Phase of Set Address command
   {
      POLL_WRITE_BYTE(FADDR, Setup.wValue.c[LSB]);
      Ep_Status[0] = EP_IDLE;
//	SerTx('a');
   }

   if (ControlReg & rbSTSTL) {           // If last packet was a sent stall, reset STSTL
                                    // bit and return EP0 to idle state
      POLL_WRITE_BYTE(E0CSR, 0);
      Ep_Status[0] = EP_IDLE;
      return;
   }

   if (ControlReg & rbSUEND)            // If last setup transaction was ended prematurely
   {                                    // then set
      POLL_WRITE_BYTE(E0CSR, rbDATAEND);
      POLL_WRITE_BYTE(E0CSR, rbSSUEND); // Serviced Setup End bit and return EP0
      Ep_Status[0] = EP_IDLE;           // to idle state
//	SerTx('p');

   }

   if (Ep_Status[0] == EP_IDLE)         // If Endpoint 0 is in idle mode
   {
      if (ControlReg & rbOPRDY)         // Make sure that EP 0 has an Out Packet ready from host
      {                                 // although if EP0 is idle, this should always be the case
         Fifo_Read(FIFO_EP0, 8, (BYTE *)&Setup);

//	SerTx('r');
//	SerTxHex(Setup.bRequest);

         switch(Setup.bRequest)         // Call correct subroutine to handle each kind of
         {                              // standard request
            case GET_STATUS:
               Get_Status();
               break;             
            case CLEAR_FEATURE:
               Clear_Feature();
               break;
            case SET_FEATURE:
               Set_Feature();
               break;
            case SET_ADDRESS:
               Set_Address();
               break;
            case GET_DESCRIPTOR: //0x06
               Get_Descriptor();
               break;
            case GET_CONFIGURATION:
               Get_Configuration();
               break;
            case SET_CONFIGURATION:
               Set_Configuration();
               break;
            case GET_INTERFACE:
               Get_Interface();
               break;
            case SET_INTERFACE:
               Set_Interface();
               break;
           default:
//		UsbInterruptInToPcEndpointService(0);
               break;
         }
      }
   } 

   if (Ep_Status[0] == EP_TX)           // See if the endpoint has data to transmit to host
   {

//	SerTx('T');

      if (!(ControlReg & rbINPRDY))     // Make sure you don't overwrite last packet
      {
                                        // Endpoint 0 transmit mode
         //Delay();
         POLL_READ_BYTE(E0CSR, ControlReg);
                                        // Read control register
		 
         if ((!(ControlReg & rbSUEND)) || (!(ControlReg & rbOPRDY)))
                                        // Check to see if Setup End or Out Packet received, if so			                      
                                        // do not put any new data on FIFO
         {     
            TempReg = rbINPRDY;         // Add In Packet ready flag to E0CSR bitmask              
			 
			                            // Break Data into multiple packets if larger than Max Packet
            if (DataSize >= EP0_PACKET_SIZE)
            {
//		SerTx('w');
               Fifo_Write(FIFO_EP0, EP0_PACKET_SIZE, (BYTE *)DataPtr);// Put Data on Fifo
               DataPtr  += EP0_PACKET_SIZE;                           // Advance data pointer
               DataSize -= EP0_PACKET_SIZE;                           // Decrement data size
               DataSent += EP0_PACKET_SIZE;                           // Increment data sent counter
            }
			else                        // If data is less than Max Packet size or zero
            {
//		SerTx('W');
               Fifo_Write(FIFO_EP0, DataSize, (BYTE *)DataPtr);       // Put Data on Fifo
               TempReg |= rbDATAEND;                                  // Add Data End bit to bitmask
               Ep_Status[0] = EP_IDLE;                                // Return EP 0 to idle state
            }
            if (DataSent == Setup.wLength.i)
			                            // This case exists when the host requests an even multiple of
                                        // your endpoint zero max packet size, and you need to exit
                                        // transmit mode without sending a zero length packet
            {
               TempReg |= rbDATAEND;    // Add Data End bit to mask
               Ep_Status[0] = EP_IDLE;  // and return Endpoint 0 to an idle state
            }
            POLL_WRITE_BYTE(E0CSR, TempReg);                          // Write mask to E0CSR
         }
      }
   }
}


//-------------------------
// Usb_Suspend
//-------------------------
// Enter suspend mode after suspend signalling is present on the bus
//
void Usb_Suspend(void)                  // Add power-down features here if you wish to 
{                                       // reduce power consumption during suspend mode
}



//----------------------------------
//  FIFO Read
//----------------------------------
//
// Read from the selected endpoint FIFO
//
// Inputs:
// addr: target address
// uNumBytes: number of bytes to unload
// pData: read data destination
//
void Fifo_Read(BYTE addr, unsigned int uNumBytes, BYTE * pData)
{
   unsigned int i;

   if (uNumBytes)                         // Check if >0 bytes requested,
   {
      USB0ADR = (addr);                   // Set address
      USB0ADR |= 0xC0;                    // Set auto-read and initiate
                                          // first read

      // Unload <NumBytes> from the selected FIFO
      for(i=0;i<uNumBytes;i++)
      {
         while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
         pData[i] = USB0DAT;              // Copy data byte
      }

   USB0ADR = 0;                           // Clear auto-read
   }
}


//----------------------------------
//  FIFO Write
//----------------------------------
//
// Write to the selected endpoint FIFO
//
// Inputs:
// addr: target address
// uNumBytes: number of bytes to write
// pData: location of source data
//
void Fifo_Write(BYTE addr, unsigned int uNumBytes, BYTE * pData)
{
   unsigned int i;
                                          
   // If >0 bytes requested,
   if (uNumBytes)
   {
      while(USB0ADR & 0x80);              // Wait for BUSY->'0'
                                          // (register available)
      USB0ADR = (addr);                   // Set address (mask out bits7-6)

      // Write <NumBytes> to the selected FIFO
      for(i=0;i<uNumBytes;i++)
      {
         USB0DAT = pData[i];
         while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
      }
   }
}



//-------------------------
// Force_Stall
//-------------------------
// Force a procedural stall to be sent to the host
//
void Force_Stall(void)
{
   POLL_WRITE_BYTE(INDEX, 0);
   POLL_WRITE_BYTE(E0CSR, rbSDSTL);       // Set the send stall bit
   Ep_Status[0] = EP_STALL;               // Put the endpoint in stall status
}


void Get_Status(void)                           // This routine returns a two byte status packet
{                                               // to the host

   if (Setup.wValue.c[MSB] || Setup.wValue.c[LSB] ||
                                                // If non-zero return length or data length not
   Setup.wLength.c[MSB]    || (Setup.wLength.c[LSB] != 2))  
                                                // equal to 2 then send a stall
   {                                            // indicating invalid request
      Force_Stall();
   }

   switch(Setup.bmRequestType)                  // Determine if recipient was device, interface, or EP
   {
      case OUT_DEVICE:                // If recipient was device
         if (Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])
         {
            Force_Stall();                      // Send stall if request is invalid
         }
         else
         {
            DataPtr = (BYTE*)&ZERO_PACKET;      // Otherwise send 0x00, indicating bus power and no
            DataSize = 2;                       // remote wake-up supported
         }
         break;

      case OUT_INTERFACE:                       // See if recipient was interface
         if ((USB_State != DEV_CONFIGURED) ||
         Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])
                                                // Only valid if device is configured and non-zero index 
         {
            Force_Stall();                      // Otherwise send stall to host
         }
         else
         {
            DataPtr = (BYTE*)&ZERO_PACKET;      // Status packet always returns 0x00
            DataSize = 2;
         }
         break;

      case OUT_ENDPOINT:                        // See if recipient was an endpoint
         if ((USB_State != DEV_CONFIGURED) ||
         Setup.wIndex.c[MSB])                   // Make sure device is configured and index msb = 0x00
         {                                      // otherwise return stall to host
            Force_Stall();                      
         }
         else
         {
            if (Setup.wIndex.c[LSB] == IN_EP1)  // Handle case if request is directed to EP 1
            {
               if (Ep_Status[1] == EP_HALT)
               {                                // If endpoint is halted, return 0x01,0x00
                  DataPtr = (BYTE*)&ONES_PACKET;
                  DataSize = 2;
               }
               else
               {
                  DataPtr = (BYTE*)&ZERO_PACKET;// Otherwise return 0x00,0x00 to indicate endpoint active
                  DataSize = 2;
               }
            }
            else
            {
               if (Setup.wIndex.c[LSB] == OUT_EP2)
                                                // If request is directed to endpoint 2, send either
               {                                // 0x01,0x00 if endpoint halted or 0x00,0x00 if 
                  if (Ep_Status[2] == EP_HALT)  // endpoint is active
                  {
                     DataPtr = (BYTE*)&ONES_PACKET;
                     DataSize = 2;
                  }
                  else
                  {
                     DataPtr = (BYTE*)&ZERO_PACKET;
                     DataSize = 2;
                  }
               }
               else
               {
                  Force_Stall();                // Send stall if unexpected data encountered
               }
            }
         }
         break;

      default:
         Force_Stall();
         break;
   }
   if (Ep_Status[0] != EP_STALL)
   {
      POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set serviced Setup Packet, Endpoint 0 in                   
      Ep_Status[0] = EP_TX;                     // transmit mode, and reset DataSent counter
      DataSent = 0;
   }
}

void Clear_Feature()                            // This routine can clear Halt Endpoint features
{                                               // on endpoint 1 and 2.

   if ((USB_State != DEV_CONFIGURED)          ||// Send procedural stall if device isn't configured
   (Setup.bmRequestType == IN_DEVICE)         ||// or request is made to host(remote wakeup not supported)
   (Setup.bmRequestType == IN_INTERFACE)      ||// or request is made to interface
   Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||// or msbs of value or index set to non-zero value
   Setup.wLength.c[MSB] || Setup.wLength.c[LSB])// or data length set to non-zero.
   {
      Force_Stall();
   }

   else
   {
      if ((Setup.bmRequestType == IN_ENDPOINT)&&// Verify that packet was directed at an endpoint
      (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// the feature selected was HALT_ENDPOINT
      ((Setup.wIndex.c[LSB] == IN_EP1) ||       // and that the request was directed at EP 1 in
      (Setup.wIndex.c[LSB] == OUT_EP2)))        // or EP 2 out
      {
         if (Setup.wIndex.c[LSB] == IN_EP1)
         {
            POLL_WRITE_BYTE (INDEX, 1);         // Clear feature endpoint 1 halt
            POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
            Ep_Status[1] = EP_IDLE;             // Set endpoint 1 status back to idle
         }
         else
         {
            POLL_WRITE_BYTE (INDEX, 2);         // Clear feature endpoint 2 halt
            POLL_WRITE_BYTE (EOUTCSR1, rbOutCLRDT);
            Ep_Status[2] = EP_IDLE;             // Set endpoint 2 status back to idle
         }
      }
      else
      {
         Force_Stall();                         // Send procedural stall
      }
   }
   POLL_WRITE_BYTE(INDEX, 0);                   // Reset Index to 0
   if (Ep_Status[0] != EP_STALL)
   {
      POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
	                                            // Set Serviced Out packet ready and data end to
                                                // indicate transaction is over
   }
}


void Set_Feature(void)                          // This routine will set the EP Halt feature for
{                                               // endpoints 1 and 2

   if ((USB_State != DEV_CONFIGURED)          ||// Make sure device is configured, setup data
   (Setup.bmRequestType == IN_DEVICE)         ||// is all valid and that request is directed at
   (Setup.bmRequestType == IN_INTERFACE)      ||// an endpoint
   Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||
   Setup.wLength.c[MSB] || Setup.wLength.c[LSB])
   {
      Force_Stall();                            // Otherwise send stall to host
   }

   else
   {
      if ((Setup.bmRequestType == IN_ENDPOINT)&&// Make sure endpoint exists and that halt
      (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// endpoint feature is selected
      ((Setup.wIndex.c[LSB] == IN_EP1)        ||
      (Setup.wIndex.c[LSB] == OUT_EP2)))
      {
         if (Setup.wIndex.c[LSB] == IN_EP1)
         {
            POLL_WRITE_BYTE (INDEX, 1);         // Set feature endpoint 1 halt
            POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
            Ep_Status[1] = EP_HALT;                                  
         }
         else
         {
            POLL_WRITE_BYTE (INDEX, 2);         // Set feature Ep2 halt
            POLL_WRITE_BYTE (EOUTCSR1, rbOutSDSTL);
            Ep_Status[2] = EP_HALT;  		    
         }
      }
      else
      {
         Force_Stall();                         // Send procedural stall
      }
   }
   POLL_WRITE_BYTE(INDEX, 0);
   if (Ep_Status[0] != EP_STALL)
   {
      POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
                                                // Indicate setup packet has been serviced
   }
}

void Set_Address(void)                          // Set new function address
{
   if ((Setup.bmRequestType != IN_DEVICE)     ||// Request must be directed to device
   Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// with index and length set to zero.
   Setup.wLength.c[MSB] || Setup.wLength.c[LSB]||
   Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] & 0x80))
   {
     Force_Stall();                             // Send stall if setup data invalid
   }

   Ep_Status[0] = EP_ADDRESS;                   // Set endpoint zero to update address next status phase
   if (Setup.wValue.c[LSB] != 0)
   {
      USB_State = DEV_ADDRESS;                  // Indicate that device state is now address
   }
   else
   {
      USB_State = DEV_DEFAULT;                  // If new address was 0x00, return device to default
   }                                            // state
   if (Ep_Status[0] != EP_STALL)
   {
      POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
                                                // Indicate setup packet has been serviced
   }
}

void Get_Descriptor(void)                       // This routine sets the data pointer and size to correct
{                                               // descriptor and sets the endpoint status to transmit

   switch(Setup.wValue.c[MSB])                  // Determine which type of descriptor
   {                                            // was requested, and set data ptr and
      case DSC_DEVICE:                          // size accordingly
         DataPtr = (BYTE*) &DeviceDesc;
         DataSize = sizeof(device_descriptor);
         break;

      case DSC_CONFIG:
#ifdef CONFIG_DESC_AS_ARRAY
	
	{ extern const code BYTE ConfigDescArray[];

         DataPtr = (BYTE*) &ConfigDescArray[0];
	 DataSize = 0x43; // sizeof(ConfigDescArray);
	}
#else
	 DataPtr = (BYTE*) &ConfigDesc;
	 DataSize = ConfigDesc.bTotalLength1|(ConfigDesc.bTotalLength2<<8);
#endif
         break;

	  case DSC_STRING:
	  {
	  	BYTE b = Setup.wValue.c[LSB];
	  	char code * sz = szaStringDescriptors[b];
		int n1 = 2;
	 	szBuffer[0] = 2;
	 	szBuffer[1] = 3; // string descriptor type

		while (*sz) {
			szBuffer[n1++] = *sz++;
			szBuffer[n1++] = 0;
			szBuffer[0] += 2;
		}
	}

         DataPtr = szBuffer;
         DataSize = *DataPtr;
         break;

      case DSC_INTERFACE:
         DataPtr = (BYTE*) &InterfaceDesc;
         DataSize = InterfaceDesc.bLength;
         break;

      case DSC_ENDPOINT:
         if ((Setup.wValue.c[LSB] == IN_EP1) ||
         (Setup.wValue.c[LSB] == OUT_EP2) ||
	 (Setup.wValue.c[LSB] == IN_EP3))
         {
            if (Setup.wValue.c[LSB] == IN_EP1)
            {
               DataPtr = (BYTE*) &Endpoint1Desc;
               DataSize = Endpoint1Desc.bLength;
            }
            else
            {
		if (Setup.wValue.c[LSB] == OUT_EP2) {
               DataPtr = (BYTE*) &Endpoint2Desc;
               DataSize = Endpoint2Desc.bLength;
		} else {
               DataPtr = (BYTE*) &Endpoint3Desc;
               DataSize = Endpoint3Desc.bLength;
		}
            }
         }
         else
         {
            Force_Stall();
         }
         break;

      default:
         Force_Stall();                         // Send Stall if unsupported request
         break;
   }

//   if(DataSize) {

	if (Setup.wValue.c[MSB] == DSC_DEVICE ||     // Verify that the requested descriptor is
	Setup.wValue.c[MSB] == DSC_CONFIG     ||     // valid
	Setup.wValue.c[MSB] == DSC_STRING     ||
	Setup.wValue.c[MSB] == DSC_INTERFACE  ||
	Setup.wValue.c[MSB] == DSC_ENDPOINT)
	{
		if ((Setup.wLength.c[LSB] < DataSize) && 
		(Setup.wLength.c[MSB] == 0))
		{
			DataSize = Setup.wLength.i;       // Send only requested amount of data
		}
	}


	if (Ep_Status[0] != EP_STALL)  {               // Make sure endpoint not in stall mode
		POLL_WRITE_BYTE(E0CSR, rbSOPRDY);          // Service Setup Packet
		Ep_Status[0] = EP_TX;                      // Put endpoint in transmit mode
		DataSent = 0;                              // Reset Data Sent counter
	}
//    } else {
 //        Force_Stall();                         // Send Stall if unsupported request
  //  }
}


void Get_Configuration(void)                    // This routine returns current configuration value
{
   if ((Setup.bmRequestType != OUT_DEVICE)    ||// This request must be directed to the device
   Setup.wValue.c[MSB]  || Setup.wValue.c[LSB]||// with value word set to zero
   Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// and index set to zero
   Setup.wLength.c[MSB] || (Setup.wLength.c[LSB] != 1))// and setup length set to one
   {
      Force_Stall();                            // Otherwise send a stall to host
   }

   else 
   {
      if (USB_State == DEV_CONFIGURED)          // If the device is configured, then return value 0x01
      {                                         // since this software only supports one configuration
         DataPtr = (BYTE*)&ONES_PACKET;
         DataSize = 1;
      }
      if (USB_State == DEV_ADDRESS)             // If the device is in address state, it is not
      {                                         // configured, so return 0x00
         DataPtr = (BYTE*)&ZERO_PACKET;
         DataSize = 1;
      }
   }
   if (Ep_Status[0] != EP_STALL)
   {
      POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Out Packet bit
      Ep_Status[0] = EP_TX;                     // Put endpoint into transmit mode
      DataSent = 0;                             // Reset Data Sent counter to zero
   }
}

void Set_Configuration(void)                    // This routine allows host to change current
{
   if ((USB_State == DEV_DEFAULT)             ||// Device must be addressed before configured
     (Setup.bmRequestType != IN_DEVICE)         ||// and request recipient must be the device
       Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// the index and length words must be zero
       Setup.wLength.c[MSB] || Setup.wLength.c[LSB] || 
       Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] > 1)) { // This software only supports config = 0,1
	Force_Stall();                            // Send stall if setup data is invalid
   }

   else
   {
      if (Setup.wValue.c[LSB] > 0)              // Any positive configuration request
      {                                         // results in configuration being set to 1
         USB_State = DEV_CONFIGURED;
	POLL_WRITE_BYTE(INDEX, 1);				// Select EP1
	POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);	// Set DIRSEL to indicate endpoint 1 is IN
	POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle
	Ep_Status[1] = EP_IDLE;					// Set endpoint status to idle (enabled)
	UsbInterruptInToPcEndpointService(1);
	POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);

//			Handle_In1();

	POLL_WRITE_BYTE(INDEX, 2);				// Select EP2
	POLL_WRITE_BYTE(EINCSR2, 0);
	POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle, SDSTL, STSTL
	POLL_WRITE_BYTE(EOUTCSR2, rbOutDBOEN);	// double buffer
	POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);	// clear data toggle

	POLL_WRITE_BYTE(EINCSR2, 0);	// Clear DIRSEL to indicate endpoint 1 is OUT
//	POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle

	Ep_Status[2] = EP_IDLE;
	UsbInterruptInToPcEndpointService(2);
//	POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);

	POLL_WRITE_BYTE(INDEX, 3);				// Select EP3
/*	POLL_WRITE_BYTE(EINCSR2, rbInDBIEN | rbInSPLIT);	// split, double buffer
	POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle, SDSTL, STSTL
	POLL_WRITE_BYTE(EOUTCSR2, rbOutDBOEN);	// double buffer
	POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);	// clear data toggle
*/
	POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);	// Set DIRSEL to indicate endpoint 1 is IN
	POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);	// clear data toggle

	Ep_Status[3] = EP_IDLE;
	UsbInterruptInToPcEndpointService(3);
	POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);




POLL_WRITE_BYTE(INDEX, 0);				// Select EP1

//         POLL_WRITE_BYTE(INDEX, 1);             // Change index to endpoint 1
 //        POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);  // Set DIRSEL to indicate endpoint 1 is IN
  //       Handle_In(1);                          // Put first data packet on fifo

         POLL_WRITE_BYTE(INDEX, 0);             // Set index back to endpoint 0
      }
      else
      {
         USB_State = DEV_ADDRESS;               // Unconfigures device by setting state to
         Ep_Status[1] = EP_HALT;                // address, and changing endpoint 1 and 2
         Ep_Status[2] = EP_HALT;                // status to halt
      }
   }
   if (Ep_Status[0] != EP_STALL)
   {
      POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
                                                // Indicate setup packet has been serviced
   }

}

void Get_Interface(void)                        // This routine returns 0x00, since only one interface
{                                               // is supported by this firmware

   if ((USB_State != DEV_CONFIGURED)      ||    // If device is not configured
   (Setup.bmRequestType != OUT_INTERFACE) ||    // or recipient is not an interface
   Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||// or non-zero value or index fields
   Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB] ||// or data length not equal to one
   Setup.wLength.c[MSB] ||(Setup.wLength.c[LSB] != 1))
   {
      Force_Stall();                            // Then return stall due to invalid request
   }

   else
   {
      DataPtr = (BYTE*)&ZERO_PACKET;            // Otherwise, return 0x00 to host
      DataSize = 1;
   }
   if (Ep_Status[0] != EP_STALL)
   {
      POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Setup packet, put endpoint in transmit
      Ep_Status[0] = EP_TX;                     // mode and reset Data sent counter
      DataSent = 0;
   }
}

void Set_Interface(void)
{
   BYTE bIndex;

   // Save current INDEX value
   POLL_READ_BYTE (INDEX, bIndex);

   if ((Setup.bmRequestType != IN_INTERFACE)  ||// Make sure request is directed at interface
       Setup.wLength.c[MSB] ||Setup.wLength.c[LSB]||// and all other packet values are set to zero
       Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||
       Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB])
   {
      Force_Stall();                            // Othewise send a stall to host
   }
   if (Ep_Status[0] != EP_STALL) {

//		SerTx(0x81);

         // Configure Endpoint1 IN
         POLL_WRITE_BYTE(INDEX, 1);           // Index to Endpoint1 registers
         POLL_WRITE_BYTE(EINCSR1, 0x40);      // clear toggle
         POLL_WRITE_BYTE(EINCSR2, 0x20);      // FIFO split disabled,
                                          // direction = IN
         POLL_WRITE_BYTE(EOUTCSR2, 0);        // Double-buffering disabled
         Ep_Status[1] = EP_IDLE; // Set endpoint state
	UsbInterruptInToPcEndpointService(1);
	POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);

         // Configure Endpoint3 IN
         POLL_WRITE_BYTE(INDEX, 3);           // Index to Endpoint1 registers
         POLL_WRITE_BYTE(EINCSR1, 0x40);      // clear toggle
         POLL_WRITE_BYTE(EINCSR2, 0x20);      // FIFO split disabled,
                                          // direction = IN
         POLL_WRITE_BYTE(EOUTCSR2, 0);        // Double-buffering disabled
         Ep_Status[3] = EP_IDLE; // Set endpoint state
	UsbInterruptInToPcEndpointService(3);
	POLL_WRITE_BYTE(EINCSR1, rbInINPRDY);

         // Endpoint2 OUT
         POLL_WRITE_BYTE(INDEX, 2);           // Index to Endpoint2 registers
         POLL_WRITE_BYTE(EINCSR2, 0x04);      // FIFO split enabled,
                                          // direction = OUT
         Ep_Status[2] = EP_IDLE;// Set endpoint state

	UsbInterruptInToPcEndpointService(2);


	POLL_WRITE_BYTE(INDEX, 0);           // Return to index 0
	POLL_WRITE_BYTE (INDEX, bIndex);           // Restore INDEX
	POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
                                                // Indicate setup packet has been serviced
   }
}


