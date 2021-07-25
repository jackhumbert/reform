/*
  MNT Reform 2.0 Trackball Firmware
  Copyright 2019-2021  Lukas F. Hartmann / MNT Research GmbH, Berlin
  lukas@mntre.com
*/
/*
             LUFA Library
     Copyright (C) Dean Camera, 2018.

  dean [at] fourwalledcubicle [dot] com
           www.lufa-lib.org
*/

/*
  Copyright 2018  Dean Camera (dean [at] fourwalledcubicle [dot] com)

  Permission to use, copy, modify, distribute, and sell this
  software and its documentation for any purpose is hereby granted
  without fee, provided that the above copyright notice appear in
  all copies and that both that the copyright notice and this
  permission notice and warranty disclaimer appear in supporting
  documentation, and that the name of the author not be used in
  advertising or publicity pertaining to distribution of the
  software without specific, written prior permission.

  The author disclaims all warranties with regard to this
  software, including all implied warranties of merchantability
  and fitness.  In no event shall the author be liable for any
  special, indirect or consequential damages or any damages
  whatsoever resulting from loss of use, data or profits, whether
  in an action of contract, negligence or other tortious action,
  arising out of or in connection with the use or performance of
  this software.
*/

#include <avr/pgmspace.h>
#include <avr/io.h>
#include <stdlib.h>

#include "i2cmaster/i2cmaster.h"

#define output_low(port,pin) port &= ~(1<<pin)
#define output_high(port,pin) port |= (1<<pin)
#define set_input(portdir,pin) portdir &= ~(1<<pin)
#define set_output(portdir,pin) portdir |= (1<<pin)

// Registers
#define Product_ID  0x00
#define Revision_ID 0x01
#define Motion  0x02
#define Delta_X_L 0x03
#define Delta_X_H 0x04
#define Delta_Y_L 0x05
#define Delta_Y_H 0x06
#define SQUAL 0x07
#define Raw_Data_Sum  0x08
#define Maximum_Raw_data  0x09
#define Minimum_Raw_data  0x0A
#define Shutter_Lower 0x0B
#define Shutter_Upper 0x0C
#define Control 0x0D
#define Config1 0x0F
#define Config2 0x10
#define Angle_Tune  0x11
#define Frame_Capture 0x12
#define SROM_Enable 0x13
#define Run_Downshift 0x14
#define Rest1_Rate_Lower  0x15
#define Rest1_Rate_Upper  0x16
#define Rest1_Downshift 0x17
#define Rest2_Rate_Lower  0x18
#define Rest2_Rate_Upper  0x19
#define Rest2_Downshift 0x1A
#define Rest3_Rate_Lower  0x1B
#define Rest3_Rate_Upper  0x1C
#define Observation 0x24
#define Data_Out_Lower  0x25
#define Data_Out_Upper  0x26
#define Raw_Data_Dump 0x29
#define SROM_ID 0x2A
#define Min_SQ_Run  0x2B
#define Raw_Data_Threshold  0x2C
#define Config5 0x2F
#define Power_Up_Reset  0x3A
#define Shutdown  0x3B
#define Inverse_Product_ID  0x3F
#define LiftCutoff_Tune3  0x41
#define Angle_Snap  0x42
#define LiftCutoff_Tune1  0x4A
#define Motion_Burst  0x50
#define LiftCutoff_Tune_Timeout 0x58
#define LiftCutoff_Tune_Min_Length  0x5A
#define SROM_Load_Burst 0x62
#define Lift_Config 0x63
#define Raw_Data_Burst  0x64
#define LiftCutoff_Tune2  0x65

uint8_t adns_init_complete=0;
volatile int xydat[2];

#include "Mouse.h"

/** Buffer to hold the previously generated Mouse HID report, for comparison purposes inside the HID class driver. */
static uint8_t PrevMouseHIDReportBuffer[sizeof(USB_WheelMouseReport_Data_t)];

/** LUFA HID Class driver interface configuration and state information. This structure is
 *  passed to all HID Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
USB_ClassInfo_HID_Device_t Mouse_HID_Interface =
	{
		.Config =
			{
				.InterfaceNumber              = INTERFACE_ID_Mouse,
				.ReportINEndpoint             =
					{
						.Address              = MOUSE_EPADDR,
						.Size                 = MOUSE_EPSIZE,
						.Banks                = 1,
					},
				.PrevReportINBuffer           = PrevMouseHIDReportBuffer,
				.PrevReportINBufferSize       = sizeof(PrevMouseHIDReportBuffer),
			},
	};

void led_error(void) {
  DDRC = 0b11110100;
}

void led_ok(void) {
  DDRC = 0;
}

void led_set(uint8_t bits) {
  DDRC = ((bits&0b11110)<<3)|((bits&1)<<2);
}

// FIXME QUESTIONABLE
int convTwosComp(int b) {
  //Convert from 2's complement
  if (b & 0x80) {
    b = -1 * ((b ^ 0xff) + 1);
  }
  return b;
}

// LM PD0 input pullup
// RM PD1 input pullup

#define ADDR_SENSOR (0x79<<1)

uint8_t twi_write_reg[1];
uint8_t twi_write_buf[10];
uint8_t twi_read_buf[10];

void SetupHardware(void)
{
	/* Disable watchdog if enabled by bootloader/fuses */
	MCUSR &= ~(1 << WDRF);
	wdt_disable();

	// Disable clock division
  // this should yield 8Mhz with internal osc
	clock_prescale_set(clock_div_1);

  DDRD = 0b00000000;
  //DDRB = 0b11000110;
  DDRC = 0b00000000;

  output_high(PORTD, 0); // enable input pullup for LMB
  output_high(PORTD, 1); // enable input pullup for RMB
  output_high(PORTD, 2); // enable input pullup for RMB
  output_high(PORTD, 3); // enable input pullup for RMB
  output_high(PORTD, 4); // enable input pullup for RMB

  // no jtag plox
  //MCUCR |=(1<<JTD);
  //MCUCR |=(1<<JTD);

  i2c_init();

  USB_Init();

  Delay_MS(1000);
  led_error();
  Delay_MS(1000);

  if (!i2c_start(ADDR_SENSOR|I2C_WRITE)) {
    i2c_write(0x7f);
    i2c_write(0x0);
    i2c_stop();

    led_ok();
  }
  if (!i2c_start(ADDR_SENSOR|I2C_WRITE)) {
    i2c_write(0x05);
    i2c_write(0x01);
    i2c_stop();

    led_ok();
  }
  Delay_MS(100);
}

/** Event handler for the library USB Connection event. */
void EVENT_USB_Device_Connect(void)
{
}

/** Event handler for the library USB Disconnection event. */
void EVENT_USB_Device_Disconnect(void)
{
}

/** Event handler for the library USB Configuration Changed event. */
void EVENT_USB_Device_ConfigurationChanged(void)
{
	bool ConfigSuccess = true;

	ConfigSuccess &= HID_Device_ConfigureEndpoints(&Mouse_HID_Interface);

	USB_Device_EnableSOFEvents();
}

/** Event handler for the library USB Control Request reception event. */
void EVENT_USB_Device_ControlRequest(void)
{
	HID_Device_ProcessControlRequest(&Mouse_HID_Interface);
}

/** Event handler for the USB device Start Of Frame event. */
void EVENT_USB_Device_StartOfFrame(void)
{
	HID_Device_MillisecondElapsed(&Mouse_HID_Interface);
}

/** HID class driver callback function for the creation of HID reports to the host.
 *
 *  \param[in]     HIDInterfaceInfo  Pointer to the HID class interface configuration structure being referenced
 *  \param[in,out] ReportID    Report ID requested by the host if non-zero, otherwise callback should set to the generated report ID
 *  \param[in]     ReportType  Type of the report to create, either HID_REPORT_ITEM_In or HID_REPORT_ITEM_Feature
 *  \param[out]    ReportData  Pointer to a buffer where the created report should be stored
 *  \param[out]    ReportSize  Number of bytes written in the report (or zero if no report is to be sent)
 *
 *  \return Boolean \c true to force the sending of the report, \c false to let the library determine if it needs to be sent
 */
bool CALLBACK_HID_Device_CreateHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                         uint8_t* const ReportID,
                                         const uint8_t ReportType,
                                         void* ReportData,
                                         uint16_t* const ReportSize)
{
  if (ReportType==HID_REPORT_ITEM_Feature) {
    if (*ReportID==0) {
      *ReportID=2;
    }
    
    if (*ReportID==2) {
      USB_WheelMouseFeatureReport_Data_t* FeatureReport = (USB_WheelMouseFeatureReport_Data_t*)ReportData;
      FeatureReport->Multiplier = 2;
      *ReportSize = sizeof(USB_WheelMouseFeatureReport_Data_t);
      return true;
    } else {
      led_set(0x2);
      return false;
    }
  }

  if (*ReportID==0) {
    *ReportID=1;
  }
  
  if (*ReportID!=1) {
    led_set(0x1);
    return false;
  }

  int8_t nx = 0;
  int8_t ny = 0;

  i2c_start_wait(ADDR_SENSOR|I2C_WRITE);
  i2c_write(0x02);
  i2c_rep_start(ADDR_SENSOR|I2C_READ);
  uint8_t ret = i2c_readNak();
  i2c_stop();
  if (ret & 0xf0) {
    i2c_start_wait(ADDR_SENSOR|I2C_WRITE);
    i2c_write(0x03);
    i2c_rep_start(ADDR_SENSOR|I2C_READ);
    nx = i2c_readAck();
    ny = i2c_readNak();
    i2c_stop();
  }

  USB_WheelMouseReport_Data_t* MouseReport = (USB_WheelMouseReport_Data_t*)ReportData;

  if (!(PIND&(1<<4))) {
    MouseReport->Button |= 1;
  }
  if (!(PIND&(1<<3))) {
    MouseReport->Button |= 2;
  }
  if (!(PIND&(1<<1))) {
    MouseReport->Button |= 4;
  }

  MouseReport->Pan = 0;
  MouseReport->Wheel = 0;
  
  if (!(PIND&1) || !(PIND&(1<<2))) {
    // wheel
    MouseReport->Pan = 2*nx;
    MouseReport->Wheel = 2*-ny;
  } else {
    MouseReport->X = 2*abs(nx)*nx;
    MouseReport->Y = 2*abs(ny)*ny;
  }

  *ReportSize = sizeof(USB_WheelMouseReport_Data_t);

  return true;
}

/** HID class driver callback function for the processing of HID reports from the host.
 *
 *  \param[in] HIDInterfaceInfo  Pointer to the HID class interface configuration structure being referenced
 *  \param[in] ReportID    Report ID of the received report from the host
 *  \param[in] ReportType  The type of report that the host has sent, either HID_REPORT_ITEM_Out or HID_REPORT_ITEM_Feature
 *  \param[in] ReportData  Pointer to a buffer where the received report has been stored
 *  \param[in] ReportSize  Size in bytes of the received HID report
 */
void CALLBACK_HID_Device_ProcessHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                          const uint8_t ReportID,
                                          const uint8_t ReportType,
                                          const void* ReportData,
                                          const uint16_t ReportSize)
{
  if (ReportSize<4) return;
  char* d = (char*)ReportData;
  if (d[0]=='L' && d[1]=='E' && d[2]=='D' && d[3]=='S') {
    uint8_t bits = ((d[4]=='1')<<4)|((d[5]=='1')<<3)|((d[6]=='1')<<2)|((d[7]=='1')<<1)|(d[8]=='1');
    led_set(bits);
  }
}

int main(void)
{
	SetupHardware();
	GlobalInterruptEnable();

	for (;;)
	{
		HID_Device_USBTask(&Mouse_HID_Interface);
		USB_USBTask();
	}
}
