/*
 * The MIT License (MIT)
 *
 * Copyright 2019 Ha Thach (tinyusb.org)
 * Copyright 2023 MNT Research GmbH (mntre.com)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "bsp/board.h"
#include "tusb.h"

#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/gpio.h"
#include "hardware/i2c.h"

#define PIN_SDA 0
#define PIN_SCL 1

#define PIN_BTN1 20
#define PIN_BTN2 21
#define PIN_BTN3 19
#define PIN_BTN4 18
#define PIN_BTN5 17

#define PIN_LEDS 24

#define ADDR_SENSOR (0x79)

//--------------------------------------------------------------------+
// MACRO CONSTANT TYPEDEF PROTYPES
//--------------------------------------------------------------------+

// Interface index depends on the order in configuration descriptor
enum {
  ITF_MOUSE = 0
};

void hid_task(void);

/*------------- MAIN -------------*/
int main(void)
{
  board_init();
  tusb_init();

  gpio_pull_up(PIN_BTN1);
  gpio_pull_up(PIN_BTN2);
  gpio_pull_up(PIN_BTN3);
  gpio_pull_up(PIN_BTN4);
  gpio_pull_up(PIN_BTN5);

  gpio_init(PIN_LEDS);
  gpio_set_dir(PIN_LEDS, true); // output

  i2c_init(i2c0, 100 * 1000);
  gpio_set_function(PIN_SDA, GPIO_FUNC_I2C);
  gpio_set_function(PIN_SCL, GPIO_FUNC_I2C);

  bi_decl(bi_2pins_with_func(PIN_SDA, PIN_SCL, GPIO_FUNC_I2C));

  char buf[] = {0x7f, 0x00, 0x00, 0x00};
  i2c_write_blocking(i2c0, ADDR_SENSOR, buf, 2, false);

  buf[0] = 0x05;
  buf[1] = 0x01;
  i2c_write_blocking(i2c0, ADDR_SENSOR, buf, 2, false);

  while (1)
  {
    tud_task(); // tinyusb device task

    hid_task();
  }

  return 0;
}

//--------------------------------------------------------------------+
// Device callbacks
//--------------------------------------------------------------------+

// Invoked when device is mounted
void tud_mount_cb(void)
{
}

// Invoked when device is unmounted
void tud_umount_cb(void)
{
}

// Invoked when usb bus is suspended
// remote_wakeup_en : if host allow us  to perform remote wakeup
// Within 7ms, device must draw an average of current less than 2.5 mA from bus
void tud_suspend_cb(bool remote_wakeup_en)
{
  (void) remote_wakeup_en;
}

// Invoked when usb bus is resumed
void tud_resume_cb(void)
{
}

//--------------------------------------------------------------------+
// USB HID
//--------------------------------------------------------------------+

typedef struct TU_ATTR_PACKED
{
  uint8_t buttons; /**< buttons mask for currently pressed buttons in the mouse. */
  int8_t  x;       /**< Current delta x movement of the mouse. */
  int8_t  y;       /**< Current delta y movement on the mouse. */
  int8_t  wheel;   /**< Current delta wheel movement on the mouse. */
  int8_t  pan;     // using AC Pan
} hid_trackball_report_t;

bool tud_hid_n_trackball_report(uint8_t instance, uint8_t report_id,
                            uint8_t buttons, int8_t x, int8_t y, int8_t vertical, int8_t horizontal)
{
  hid_trackball_report_t report =
  {
    .buttons = buttons,
    .x       = x,
    .y       = y,
    .wheel   = vertical,
    .pan     = horizontal
  };

  return tud_hid_n_report(instance, report_id, &report, sizeof(report));
}

uint8_t prev_buttons = 0;
uint8_t scroll_toggle = 0;

int __attribute__((optimize("Os"))) delay300ns() {
  // ~300ns
  asm volatile(
               "mov  r0, #10\n"    		// 1 cycle
               "loop1: sub  r0, r0, #1\n"	// 1 cycle
               "bne   loop1\n"          	// 2 cycles if loop taken, 1 if not
               );
  return 0;
}

// TODO to use LEDs, rather implement PIOs like in Pocket Reform's pocket-hid
void led_test(uint32_t rgb) {
  for (int y=0; y<5; y++) {
    for (int i=23; i>=0; i--) {
      uint32_t bit = !!(rgb & (1<<i));
      if (bit) {
        // one
        gpio_put(PIN_LEDS, 1);
        delay300ns();
        delay300ns();
        delay300ns();
        gpio_put(PIN_LEDS, 0);
        // ~600ms delay
        delay300ns();
        delay300ns();
      } else {
        // zero
        gpio_put(PIN_LEDS, 1);
        delay300ns();
        gpio_put(PIN_LEDS, 0);
        // ~1.2ms delay
        delay300ns();
        delay300ns();
        delay300ns();
        delay300ns();
        //delay300ns();
      }
    }
  }
}

int rgb_channel = 0;
int rgb_val = 0;

void hid_task(void)
{
  // Poll every 10ms
  const uint32_t interval_ms = 10;
  static uint32_t start_ms = 0;

  int8_t buf[] = {0x7f, 0x00, 0x00, 0x00};

  if ( board_millis() - start_ms < interval_ms) return; // not enough time

  start_ms += interval_ms;

  int btn = !gpio_get(PIN_BTN1);

  // Remote wakeup
  if ( tud_suspended() && btn )
  {
    // Wake up host if we are in suspend mode
    // and REMOTE_WAKEUP feature is enabled by host
    tud_remote_wakeup();
  }

  // LED test
  /*led_test(rgb_val<<rgb_channel);
  rgb_val++;
  if (rgb_val > 0xff) {
    rgb_val = 0;
    rgb_channel += 8;
    if (rgb_channel > 16) {
      rgb_channel = 0;
    }
  }*/

  /*------------- Mouse -------------*/
  if ( tud_hid_n_ready(ITF_MOUSE) )
  {
    buf[0] = 0x02;
    i2c_write_blocking(i2c0, ADDR_SENSOR, buf, 1, true);
    i2c_read_blocking(i2c0, ADDR_SENSOR, buf, 1, false);

    int btn1 = !gpio_get(PIN_BTN1);
    int btn2 = !gpio_get(PIN_BTN2);
    int btn3 = !gpio_get(PIN_BTN3);
    int btn4 = !gpio_get(PIN_BTN4);
    int btn5 = !gpio_get(PIN_BTN5);

    // pressing both wheel buttons together turns on sticky wheel mode
    if (btn1 || btn2 || btn4) {
      scroll_toggle = 0;
    } else if (btn5 && btn3) {
      scroll_toggle = 1;
    }

    uint8_t buttons = btn1 | (btn2<<1) | (btn4<<2);

    if (buf[0] & 0xf0) {
      buf[0] = 0x03;
      i2c_write_blocking(i2c0, ADDR_SENSOR, buf, 1, true);
      i2c_read_blocking(i2c0, ADDR_SENSOR, buf, 2, false);

      int8_t nx = buf[0];
      int8_t ny = buf[1];

      // no button, right + down, no scroll pan
      if (btn3 || btn5 || scroll_toggle) {
        tud_hid_n_trackball_report(ITF_MOUSE, 1, buttons, 0, 0, -2*ny, 2*nx);
      } else {
        tud_hid_n_trackball_report(ITF_MOUSE, 1, buttons, 2*nx, 2*ny, 0, 0);
      }
    } else {
      if (buttons != prev_buttons) {
        tud_hid_n_mouse_report(ITF_MOUSE, 1, buttons, 0, 0, 0, 0);
      }
    }

    prev_buttons = buttons;
  }
}


// Invoked when received GET_REPORT control request
// Application must fill buffer report's content and return its length.
// Return zero will cause the stack to STALL request
uint16_t tud_hid_get_report_cb(uint8_t itf, uint8_t report_id, hid_report_type_t report_type, uint8_t* buffer, uint16_t reqlen)
{
  // TODO not Implemented
  (void) itf;
  (void) reqlen;

  if (report_type != HID_REPORT_TYPE_FEATURE) return 0;

  if (report_id == 2) {
    //buffer[0] = 2; // multiplier
    //return 1;
  }

  return 0;
}

// Invoked when received SET_REPORT control request or
// received data on OUT endpoint ( Report ID = 0, Type = 0 )
void tud_hid_set_report_cb(uint8_t itf, uint8_t report_id, hid_report_type_t report_type, uint8_t const* buffer, uint16_t bufsize)
{
  // TODO set LED based on CAPLOCK, NUMLOCK etc...
  (void) itf;
  (void) report_id;
  (void) report_type;
  (void) buffer;
  (void) bufsize;
}
