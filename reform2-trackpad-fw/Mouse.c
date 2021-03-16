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

// LM PD0 input pullup
// RM PD1 input pullup

#define ADDR_SENSOR (0x74<<1)

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
  DDRB = 0b00000100;
  DDRC = 0b00000000;

  //output_high(PORTC, 5);

  // no jtag plox
  //MCUCR |=(1<<JTD);
  //MCUCR |=(1<<JTD);

  i2c_init();
  USB_Init();

  Delay_MS(100);

  i2c_start_wait(ADDR_SENSOR|I2C_WRITE);
  i2c_write(0x04);
  i2c_write(0x32);
  i2c_write(2); // reset
  i2c_stop();

  i2c_start_wait(ADDR_SENSOR|I2C_WRITE);
  i2c_write(0x04);
  i2c_write(0x32);
  i2c_write(0); // reset
  i2c_stop();

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

uint8_t addr1 = 0x00;
uint8_t addr2 = 0x11;
uint8_t buf[80];
float dx2 = 0, dy2 = 0;
float dx3 = 0, dy3 = 0;
float dx4 = 0, dy4 = 0;
float dxx = 0, dyy = 0;
float dx = 0, dy = 0;
int16_t lastx = 0, lasty = 0;
int16_t lastx2 = 0, lasty2 = 0;
unsigned int cycle = 0;
int wheeling = 0;
int touched_time = 0;
int touched_time2 = 0;
int last_num_fingers = 0;
int start_num_fingers = 0;
int report_lift = 0;

#define PRESS_TIME 6
#define MOTION_CLIP 127

//#define READ_LEN 8
#define READ_LEN 20

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
  if (ReportType==HID_REPORT_ITEM_Feature) return false;

  USB_WheelMouseReport_Data_t* MouseReport = (USB_WheelMouseReport_Data_t*)ReportData;

  // note: look for IQS550

  MouseReport->Button = 0;
  MouseReport->Wheel = 0;
  MouseReport->X = 0;
  MouseReport->Y = 0;

  // sensor ready?
  uint8_t rdy = PINB&(1<<5);
  if (!rdy) {
    if (report_lift) {
      // we still have to end a short click event
      report_lift = 0;
      *ReportSize = sizeof(USB_WheelMouseReport_Data_t);
      return true;
    }
    return false;
  }

  i2c_start_wait(ADDR_SENSOR|I2C_WRITE);
  i2c_write(addr1);
  i2c_write(addr2);
  i2c_rep_start(ADDR_SENSOR|I2C_READ);

  for (int i=0; i<READ_LEN; i++) {
    buf[i] = i2c_readAck();
  }
  buf[READ_LEN] = i2c_readNak();
  i2c_stop();

  int num_fingers = buf[0];

  // touched?
  if (num_fingers) {
    touched_time++;
    touched_time2++;
    wheeling = 0;

    if (num_fingers != last_num_fingers) {
      touched_time2 = 0;
    }

    if (start_num_fingers < num_fingers) {
      start_num_fingers = num_fingers;
    }

    if (start_num_fingers == 2) {
      // wheel
      wheeling = 1;
    } else if (start_num_fingers == 3) {
      MouseReport->Button |= 1;
    } else if (start_num_fingers == 4) {
      // right mouse button
      //MouseReport->Button |= 2;
    }

    // fingers are 7 bytes apart, up to 5 fingers
    // absolute x and y coordinates are signed 16-bit integers
    int16_t xpos = ((uint16_t)buf[5]<<8)|((uint16_t)buf[6]);
    int16_t ypos = ((uint16_t)buf[7]<<8)|((uint16_t)buf[8]);
    int16_t xpos2 = ((uint16_t)buf[12]<<8)|((uint16_t)buf[13]);
    int16_t ypos2 = ((uint16_t)buf[14]<<8)|((uint16_t)buf[15]);

    // skip the first motion reading(s) immediately after
    // touchdown because they often have skips
    if (touched_time2 > 4) {
      if (num_fingers>=2) {
        dx = ((float)xpos2+(float)xpos)/2-((float)lastx2+(float)lastx)/2;
        dy = ((float)ypos2+(float)ypos)/2-((float)lasty2+(float)lasty)/2;
      } else {
        dx = (float)(xpos-lastx);
        dy = (float)(ypos-lasty);
      }

      dxx = (dx+dx2+dx3+dx4)/4.0;
      dyy = (dy+dy2+dy3+dy4)/4.0;

      //if (dxx>MOTION_CLIP) dxx=MOTION_CLIP;
      //if (dxx<=-MOTION_CLIP) dxx=-MOTION_CLIP;
      //if (dyy>MOTION_CLIP) dyy=MOTION_CLIP;
      //if (dyy<=-MOTION_CLIP) dyy=-MOTION_CLIP;

      if (wheeling) {
        float sgn = 1;
        if (dyy<0) sgn = -1;
        if (dyy>=2 || dyy<=-2) {
          MouseReport->Wheel = (-sgn) * sqrt(sgn*dyy);
        }
      } else {
        // normal movement
        MouseReport->X = dxx;
        MouseReport->Y = dyy;
      }
    }

    lastx = xpos; lasty = ypos;
    lastx2 = xpos2; lasty2 = ypos2;
  } else {
    // no (more) touches

    if (start_num_fingers == 1 && touched_time > 0 && touched_time <= PRESS_TIME) {
      // tapped for a short time with 1 finger? left click
      MouseReport->Button |= 1;
    } else if (start_num_fingers == 2 && touched_time > 0 && touched_time <= PRESS_TIME) {
      // tapped for a short time with 2 fingers? right click
      MouseReport->Button |= 2;
    } else if (start_num_fingers == 3 && touched_time > 0 && touched_time <= PRESS_TIME) {
      // tapped for a short time with 3 fingers? middle click
      MouseReport->Button |= 4;
    }
    touched_time = 0;
    start_num_fingers = 0;
    report_lift = 1;
    dx = 0;
    dy = 0;
  }

  dx4 = dx3; dy4 = dy3;
  dx3 = dx2; dy3 = dy2;
  dx2 = dx;  dy2 = dy;

  last_num_fingers = num_fingers;

  // end cycle
  i2c_start_wait(ADDR_SENSOR|I2C_WRITE);
  i2c_write(0xee);
  i2c_write(0xee);
  i2c_write(0xff);
  i2c_stop();

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
	// Unused (but mandatory for the HID class driver) in this demo, since there are no Host->Device reports
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
