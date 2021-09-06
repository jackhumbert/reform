/*
  MNT Reform 2.0 Keyboard Firmware
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

#include "Config/LUFAConfig.h"
#include "Keyboard.h"
#include <avr/io.h>
#include "LUFA/Drivers/Peripheral/Serial.h"
#include "ssd1306.h"
#include "scancodes.h"
#include <stdlib.h>
#include <avr/sleep.h>

#define KBD_FW_REV "R1 20210815"
//#define KBD_VARIANT_STANDALONE
#define KBD_VARIANT_QWERTY_US
//#define KBD_VARIANT_NEO2

/** Buffer to hold the previously generated Keyboard HID report, for comparison purposes inside the HID class driver. */
static uint8_t PrevKeyboardHIDReportBuffer[sizeof(USB_KeyboardReport_Data_t)];

/** LUFA HID Class driver interface configuration and state information. This structure is
 *  passed to all HID Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
USB_ClassInfo_HID_Device_t Keyboard_HID_Interface =
  {
    .Config =
      {
        .InterfaceNumber              = INTERFACE_ID_Keyboard,
        .ReportINEndpoint             =
          {
            .Address              = KEYBOARD_EPADDR,
            .Size                 = KEYBOARD_EPSIZE,
            .Banks                = 1,
          },
        .PrevReportINBuffer           = PrevKeyboardHIDReportBuffer,
        .PrevReportINBufferSize       = sizeof(PrevKeyboardHIDReportBuffer),
      },
  };


#define output_low(port,pin) port &= ~(1<<pin)
#define output_high(port,pin) port |= (1<<pin)
#define set_input(portdir,pin) portdir &= ~(1<<pin)
#define set_output(portdir,pin) portdir |= (1<<pin)

uint8_t matrix[15*6] = {
  KEY_ESCAPE, KEY_F1, KEY_F2, KEY_F3, KEY_F4, KEY_F5, KEY_F6, KEY_F7, KEY_F8, KEY_F9, KEY_F10, KEY_F11, KEY_F12, HID_KEYBOARD_SC_EXSEL, HID_KEYBOARD_SC_EXSEL,

  KEY_GRAVE_ACCENT_AND_TILDE, KEY_1, KEY_2, KEY_3, KEY_4, KEY_5, KEY_6, KEY_7, KEY_8, KEY_9, KEY_0, KEY_MINUS_AND_UNDERSCORE, KEY_EQUAL_AND_PLUS, KEY_BACKSPACE, 0,

  KEY_TAB, KEY_Q, KEY_W, KEY_E, KEY_R, KEY_T, KEY_Y, KEY_U, KEY_I, KEY_O, KEY_P, KEY_OPENING_BRACKET_AND_OPENING_BRACE, KEY_CLOSING_BRACKET_AND_CLOSING_BRACE, KEY_BACKSLASH_AND_PIPE, 0,

  HID_KEYBOARD_SC_LEFT_CONTROL, HID_KEYBOARD_SC_APPLICATION, KEY_A, KEY_S, KEY_D, KEY_F, KEY_G, KEY_H, KEY_J, KEY_K, KEY_L, KEY_SEMICOLON_AND_COLON, KEY_APOSTROPHE_AND_QUOTE, KEY_ENTER, 0,

  HID_KEYBOARD_SC_LEFT_SHIFT, HID_KEYBOARD_SC_NON_US_BACKSLASH_AND_PIPE, KEY_Z, KEY_X, KEY_C, KEY_V, KEY_B, KEY_N, KEY_M, HID_KEYBOARD_SC_COMMA_AND_LESS_THAN_SIGN, HID_KEYBOARD_SC_DOT_AND_GREATER_THAN_SIGN, KEY_SLASH_AND_QUESTION_MARK,  HID_KEYBOARD_SC_UP_ARROW, HID_KEYBOARD_SC_RIGHT_SHIFT, 0,

  HID_KEYBOARD_SC_RIGHT_GUI, HID_KEYBOARD_SC_LEFT_GUI, HID_KEYBOARD_SC_RIGHT_CONTROL, KEY_SPACE, HID_KEYBOARD_SC_LEFT_ALT, HID_KEYBOARD_SC_RIGHT_ALT, KEY_SPACE, HID_KEYBOARD_SC_PAGE_UP, HID_KEYBOARD_SC_PAGE_DOWN, HID_KEYBOARD_SC_LEFT_ARROW, HID_KEYBOARD_SC_DOWN_ARROW, HID_KEYBOARD_SC_RIGHT_ARROW,  0,0,0
};

uint8_t matrix_debounce[15*6];
uint8_t matrix_state[15*6];

// f8 = sleep
// 49 = mute
// 84 = scroll lock

char r_inbuf[10];

void gfx_clear(void) {
  for (int y=0; y<4; y++) {
    for (int x=0; x<21; x++) {
      gfx_poke(x,y,' ');
    }
  }
  gfx_clear_invert();
}

void empty_serial(void) {
  int clock = 0;
  while (Serial_ReceiveByte()>=0 && clock<100) {
    // flush serial
    clock++;
  }
}

int term_x = 0;
int term_y = 0;

char response[64];

int remote_receive_string(int print) {
  char done = 0;
  int32_t clock = 0;
  int res_x = 0;
  response[0] = 0;

  while (!done) {
    int16_t chr = -1;
    clock = 0;
    while (chr==-1 || chr==0) {
      chr=Serial_ReceiveByte();
      clock++;
      if (clock>500000) goto timeout;
    }
    int poke_chr = chr;
    if (chr=='\n') poke_chr=' ';
    if (chr!='\r') {
      if (print) {
        gfx_poke(term_x,term_y,poke_chr);
        gfx_poke(term_x+1,term_y,' ');
        term_x++;
        if (term_x>=20) {
          term_x=0;
          term_y++;
          if (term_y>=3) {
            term_y=0;
          }
        }
      }
      if (res_x<63) {
        response[res_x++] = chr;
        response[res_x] = 0;
      }
    }
    if (chr=='\r') done = 1;
  }
timeout:
  if (!done && print) gfx_poke(20,0,'T');
  empty_serial();
  if (print) {
    gfx_flush();
  }
  return done;
}

void anim_hello(void) {
  gfx_clear();
  gfx_on();
  for (int y=0; y<3; y++) {
    for (int x=0; x<12; x++) {
      gfx_poke(x+4,y+1,(5+y)*32+x);
      gfx_flush();
    }
  }
  for (int y=0; y<0xff; y++) {
    gfx_contrast(y);
    Delay_MS(2);
  }
  for (int y=0; y<0xff; y++) {
    gfx_contrast(0xff-y);
    Delay_MS(2);
  }
}

void anim_goodbye(void) {
  gfx_clear();
  gfx_on();
  for (int y=0; y<3; y++) {
    for (int x=0; x<12; x++) {
      gfx_poke(x+4,y+1,(5+y)*32+x);
    }
  }
  for (int y=0; y<3; y++) {
    for (int x=0; x<12; x++) {
      gfx_poke(x+4,y+1,' ');
      gfx_flush();
    }
  }
  gfx_off();
}

float voltages[8];

void insert_bat_icon(char* str, int x, float v) {
  char icon = 0;
  if (v>=3.3) {
    icon = 8;
  } else if (v>=3.1) {
    icon = 6;
  } else if (v>=3.0) {
    icon = 4;
  } else if (v>=2.9) {
    icon = 2;
  } else {
    icon = 0;
  }
  str[x]   = 4*32+icon;
  str[x+1] = 4*32+icon+1;
}

void remote_get_voltages(void) {
  empty_serial();

  term_x = 0;
  term_y = 0;

  float bat_volts = 0;
  float bat_amps = 0;
  char bat_gauge[5] = {0,0,0,0,0};

  Serial_SendByte('c');
  Serial_SendByte('\r');
  Delay_MS(1);
  remote_receive_string(0);

  // lpc format: 32 32 32 32 32 32 32 32 mA 0256mV26143 ???%
  //             |  |  |  |  |  |  |  |  | |      |     |
  //             0  3  6  9  12 15 18 21 24|      |     |
  //                                       26     33    39
  //                                       |
  //                                       `- can be a minus
  float sum_volts = 0;

  for (int i=0; i<8; i++) {
    voltages[i] = ((float)((response[i*3]-'0')*10 + (response[i*3+1]-'0')))/10.0;
    if (voltages[i]<0) voltages[i]=0;
    if (voltages[i]>=10) voltages[i]=9.9;
    sum_volts += voltages[i];
  }

  int amps_offset = 3*8+2;
  // cut off string
  response[amps_offset+5]=0;
  bat_amps = ((float)atoi(&response[amps_offset]))/1000.0;
  int volts_offset = amps_offset+5+2;
  response[volts_offset+5]=0;
  bat_volts = ((float)atoi(&response[volts_offset]))/1000.0;
  int gauge_offset = volts_offset+5+1;
  strncpy(bat_gauge, &response[gauge_offset], 4);

  // plot
  gfx_clear();
  char str[32];

  sprintf(str,"[] %.1f  [] %.1f %s",voltages[0],voltages[4],bat_gauge);
  insert_bat_icon(str,0,voltages[0]);
  insert_bat_icon(str,8,voltages[4]);
  gfx_poke_str(0,0,str);

  sprintf(str,"[] %.1f  [] %.1f  ",voltages[1],voltages[5]);
  insert_bat_icon(str,0,voltages[1]);
  insert_bat_icon(str,8,voltages[5]);
  gfx_poke_str(0,1,str);

  sprintf(str,"[] %.1f  [] %.1f %2.2fA",voltages[2],voltages[6],bat_amps);
  insert_bat_icon(str,0,voltages[2]);
  insert_bat_icon(str,8,voltages[6]);
  gfx_poke_str(0,2,str);

  sprintf(str,"[] %.1f  [] %.1f %2.2fV",voltages[3],voltages[7],bat_volts);
  insert_bat_icon(str,0,voltages[3]);
  insert_bat_icon(str,8,voltages[7]);
  gfx_poke_str(0,3,str);
  gfx_flush();
}

int low_battery_alert = 0;

void remote_check_for_low_battery(void) {
  char bat_gauge[5] = {0,0,0,0,0};

  low_battery_alert = 0;
  empty_serial();

  Serial_SendByte('c');
  Serial_SendByte('\r');
  Delay_MS(1);
  remote_receive_string(0);

  for (int i=0; i<8; i++) {
    voltages[i] = ((float)((response[i*3]-'0')*10 + (response[i*3+1]-'0')))/10.0;
    if (voltages[i]<0) voltages[i]=0;
    if (voltages[i]>=10) voltages[i]=9.9;
    if (voltages[i]<3.0) {
      low_battery_alert = 1;
    }
  }

  int gauge_offset = 3*8+2+5+2+5+1;
  strncpy(bat_gauge, &response[gauge_offset], 3);

  if (bat_gauge[0] == '?') {
    // battery charge level unknown
  } else {
    int percent = atoi(bat_gauge);
    if (percent<10) {
      low_battery_alert = 1;
    }
  }
}

void remote_get_status(void) {
  gfx_clear();
  empty_serial();

  gfx_poke_str(0, 2, "MNT Reform Keyboard");
  gfx_poke_str(0, 3, KBD_FW_REV);
  gfx_on();
  gfx_flush();

#ifndef KBD_VARIANT_STANDALONE
  term_x = 0;
  term_y = 0;
  Serial_SendByte('s');
  Serial_SendByte('\r');
  Delay_MS(1);
  remote_receive_string(1);
#endif
}

int oledbrt=0;
void oled_brightness_inc(void) {
  oledbrt+=10;
  if (oledbrt>=0xff) oledbrt = 0xff;
  gfx_contrast(oledbrt);
}
void oled_brightness_dec(void) {
  oledbrt-=10;
  if (oledbrt<0) oledbrt = 0;
  gfx_contrast(oledbrt);
}

int16_t pwmval = 8;

void kbd_brightness_init(void) {
  // initial brightness
  OCR0A = pwmval;

  // clear/set, WGM1:0 set (Phase correct PWM)
  TCCR0A = (1 << 7) | (0 << 6) | (0<<1) | 1;

  // 3=WGM02, (cs02 2:0 -> clock/256 = 100)
  TCCR0B = /*(1 << 3) |*/ (1 << 0) | (0 << 1) | 1;
}

void kbd_brightness_inc(void) {
  pwmval+=2;
  if (pwmval>=10) pwmval = 10;
  OCR0A = pwmval;
}

void kbd_brightness_dec(void) {
  pwmval-=2;
  if (pwmval<0) pwmval = 0;
  OCR0A = pwmval;
}

void kbd_brightness_set(int brite) {
  pwmval=brite;
  if (pwmval<0) pwmval = 0;
  if (pwmval>=10) pwmval = 10;
  OCR0A = pwmval;
}

void remote_turn_on_som(void) {
  gfx_clear();
  empty_serial();

  term_x = 0;
  term_y = 0;

  Serial_SendByte('1');
  Serial_SendByte('p');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
  anim_hello();
  kbd_brightness_init();
}

void remote_turn_off_som(void) {
  anim_goodbye();
  empty_serial();

  term_x = 0;
  term_y = 0;

  Serial_SendByte('0');
  Serial_SendByte('p');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
}

void remote_reset_som(void) {
  empty_serial();

  term_x = 0;
  term_y = 0;

  Serial_SendByte('2');
  Serial_SendByte('p');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
}

void remote_wake_som(void) {
  empty_serial();

  term_x = 0;
  term_y = 0;

  Serial_SendByte('1');
  Serial_SendByte('w');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
  Serial_SendByte('0');
  Serial_SendByte('w');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
}

void remote_turn_off_aux(void) {
  empty_serial();

  Serial_SendByte('3');
  Serial_SendByte('p');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
}

void remote_turn_on_aux(void) {
  empty_serial();

  Serial_SendByte('4');
  Serial_SendByte('p');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
}

void remote_report_voltages(void) {
  empty_serial();

  Serial_SendByte('0');
  Serial_SendByte('c');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
}

void remote_enable_som_uart(void) {
  empty_serial();

  Serial_SendByte('1');
  Serial_SendByte('u');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
}

void remote_disable_som_uart(void) {
  empty_serial();

  Serial_SendByte('0');
  Serial_SendByte('u');
  Serial_SendByte('\r');
  Delay_MS(1);
  empty_serial();
}

typedef struct MenuItem {
  char* title;
  int keycode;
} MenuItem;

#ifdef KBD_VARIANT_STANDALONE
#define MENU_NUM_ITEMS 4
const MenuItem menu_items[] = {
  { "Exit Menu         ESC", KEY_ESCAPE },
  { "Key Backlight-     F1", KEY_F1 },
  { "Key Backlight+     F2", KEY_F2 },
  { "System Status       s", KEY_S }
};
#else
#define MENU_NUM_ITEMS 10
const MenuItem menu_items[] = {
  { "Exit Menu         ESC", KEY_ESCAPE },
  { "Power On            1", KEY_1 },
  { "Power Off           0", KEY_0 },
  { "Reset               r", KEY_R },
  { "Battery Status      b", KEY_B },
  { "Key Backlight-     F1", KEY_F1 },
  { "Key Backlight+     F2", KEY_F2 },
  { "Wake              SPC", KEY_SPACE },
  { "System Status       s", KEY_S },
  { "KBD Power-Off       p", KEY_P }
};
#endif

int current_menu_y = 0;
int current_scroll_y = 0;
int active_meta_mode = 0;

int execute_meta_function(int keycode);

void render_menu(int y) {
  gfx_clear();
  gfx_invert_row(current_menu_y-y);
  for (int i=0; i<MENU_NUM_ITEMS; i++) {
    gfx_poke_str(0,i-y,menu_items[i].title);
  }
  gfx_on();
  gfx_flush();
}

int execute_menu_function(int y) {
  if (y>=0 && y<MENU_NUM_ITEMS) {
    return execute_meta_function(menu_items[y].keycode);
  }
  return execute_meta_function(KEY_ESCAPE);
}

// returns 1 for navigation function (stay in meta mode), 0 for terminal function
int execute_meta_function(int keycode) {
  if (keycode == KEY_0) {
    // TODO: are you sure?
    remote_turn_off_som();
    EnterPowerOff();
  }
  else if (keycode == KEY_1) {
    remote_turn_on_som();
    return 0;
  }
  else if (keycode == KEY_R) {
    // TODO: are you sure?
    remote_reset_som();
  }
  else if (keycode == KEY_SPACE) {
    remote_wake_som();
  }
  /*else if (keycode == KEY_X) {
    remote_turn_on_aux();
  }
  else if (keycode == KEY_V) {
    remote_turn_off_aux();
  }*/
  else if (keycode == KEY_B) {
    remote_get_voltages();
    return 0;
  }
  else if (keycode == KEY_S) {
    remote_get_status();
    return 0;
  }
  else if (keycode == KEY_F1) {
    kbd_brightness_dec();
    return 1;
  }
  else if (keycode == KEY_F2) {
    kbd_brightness_inc();
    return 1;
  }
  else if (keycode == HID_KEYBOARD_SC_UP_ARROW) {
    current_menu_y--;
    if (current_menu_y<0) current_menu_y = 0;
    if (current_menu_y<=current_scroll_y) current_scroll_y--;
    if (current_scroll_y<0) current_scroll_y = 0;
    render_menu(current_scroll_y);
    return 1;
  }
  else if (keycode == HID_KEYBOARD_SC_DOWN_ARROW) {
    current_menu_y++;
    if (current_menu_y>=MENU_NUM_ITEMS) current_menu_y = MENU_NUM_ITEMS-1;
    if (current_menu_y>=current_scroll_y+3) current_scroll_y++;
    render_menu(current_scroll_y);
    return 1;
  }
  else if (keycode == KEY_ENTER) {
    return execute_menu_function(current_menu_y);
  }
  else if (keycode == KEY_ESCAPE) {
    gfx_clear();
    gfx_flush();
  }
  else if (keycode == KEY_P) {
    EnterPowerOff();
  }

  gfx_clear();
  gfx_flush();

  return 0;
}

uint8_t last_meta_key = 0;

void process_keyboard(char usb_report_mode, USB_KeyboardReport_Data_t* KeyboardReport) {
  // how many keys are pressed this round
  uint8_t total_pressed = 0;
  uint8_t used_key_codes = 0;

  // pull ROWs low one after the other
  for (int y=0; y<6; y++) {

    switch (y) {
    case 0: output_low(PORTB, 6); break;
    case 1: output_low(PORTB, 5); break;
    case 2: output_low(PORTB, 4); break;
    case 3: output_low(PORTD, 7); break;
    case 4: output_low(PORTD, 6); break;
    case 5: output_low(PORTD, 4); break;
    }

    // wait for signal to stabilize
    // TODO maybe not necessary
    _delay_us(10);

     // check input COLs
    for (int x=0; x<14; x++) {
      uint16_t loc = y*15+x;
      uint16_t keycode = matrix[loc];
      uint8_t  pressed = 0;
      uint8_t  debounced_pressed = 0;

      // column pins are all over the place
      switch (x) {
      case 0:  pressed = !(PIND&(1<<5)); break;
      case 1:  pressed = !(PINF&(1<<7)); break;
      case 2:  pressed = !(PINE&(1<<6)); break;
      case 3:  pressed = !(PINC&(1<<7)); break;
      case 4:  pressed = !(PINB&(1<<3)); break;
      case 5:  pressed = !(PINB&(1<<2)); break;
      case 6:  pressed = !(PINB&(1<<1)); break;
      case 7:  pressed = !(PINB&(1<<0)); break;
      case 8:  pressed = !(PINF&(1<<0)); break;
      case 9:  pressed = !(PINF&(1<<1)); break;
      case 10: pressed = !(PINF&(1<<4)); break;
      case 11: pressed = !(PINF&(1<<5)); break;
      case 12: pressed = !(PINF&(1<<6)); break;
      case 13: pressed = !(PINC&(1<<6)); break;
      }

      // shift new state as bit into debounce "register"
      matrix_debounce[loc] = (matrix_debounce[loc]<<1)|pressed;

      // if unclear state, we need to keep the last state of the key
      if (matrix_debounce[loc] == 0x00) {
        matrix_state[loc] = 0;
      } else if (matrix_debounce[loc] == 0x01) {
        matrix_state[loc] = 1;
      }
      debounced_pressed = matrix_state[loc];

      if (debounced_pressed) {
        total_pressed++;

        // circle key?
        if (keycode == HID_KEYBOARD_SC_EXSEL) {
          if (!active_meta_mode && !last_meta_key) {
            current_scroll_y = 0;
            current_menu_y = 0;
            active_meta_mode = 1;
            // render menu
            render_menu(current_scroll_y);
          }
        } else {
          if (active_meta_mode) {
            // not holding the same key?
            if (last_meta_key!=keycode) {
              // hyper/circle/menu functions
              int stay_meta = execute_meta_function(keycode);
              // don't repeat action while key is held down
              last_meta_key = keycode;

              // exit meta mode
              if (!stay_meta) {
                active_meta_mode = 0;
              }
            }
          } else if (!last_meta_key) {
            // not meta mode, regular key: report keypress via USB
            // 6 keys is a hard limit in the HID descriptor :/
            if (usb_report_mode && KeyboardReport && used_key_codes<6) {
              KeyboardReport->KeyCode[used_key_codes++] = keycode;
            }
          }
        }
      }
    }

    switch (y) {
    case 0: output_high(PORTB, 6); break;
    case 1: output_high(PORTB, 5); break;
    case 2: output_high(PORTB, 4); break;
    case 3: output_high(PORTD, 7); break;
    case 4: output_high(PORTD, 6); break;
    case 5: output_high(PORTD, 4); break;
    }
  }

  // if no more keys are held down, allow a new meta command
  if (total_pressed<1) last_meta_key = 0;
}

int blink = 0;

void process_alerts(void) {
  if (low_battery_alert) {
    gfx_on();
    for (int x=8;x<=11;x++) {
      gfx_poke( x,0,' ');
    }
    if (blink) {
      gfx_poke( 9,0,4*32+2);
      gfx_poke(10,0,4*32+3);
    }
    gfx_flush();
  }
  blink = 1-blink;
}

int main(void)
{
#ifdef KBD_VARIANT_QWERTY_US
  matrix[15*4+1]=KEY_DELETE;
#endif
#ifdef KBD_VARIANT_NEO2
  matrix[15*3+0]=HID_KEYBOARD_SC_CAPS_LOCK; // M3
  matrix[15*2+13]=KEY_ENTER;
  matrix[15*3+13]=KEY_BACKSLASH_AND_PIPE; // M3
#endif

  SetupHardware();
  GlobalInterruptEnable();

  int counter = 0;

  for (;;)
  {
    process_keyboard(0, NULL);
    HID_Device_USBTask(&Keyboard_HID_Interface);
    USB_USBTask();
    counter++;
#ifndef KBD_VARIANT_STANDALONE
      if (counter>=30000) {
        remote_check_for_low_battery();
        counter = 0;
      }
      if (counter%750 == 0) {
        process_alerts();
      }
#endif
  }
}

void SetupHardware()
{
  // Disable watchdog if enabled by bootloader/fuses
  MCUSR &= ~(1 << WDRF);
  wdt_disable();

  // Disable clock division
  clock_prescale_set(clock_div_1);

  // declare port pins as inputs (0) and outputs (1)
  DDRB  = 0b11110000;
  DDRC  = 0b00000000;
  DDRD  = 0b11011001;
  DDRE  = 0b00000000;
  DDRF  = 0b00000000;

  // initial pin states
  PORTB = 0b10001111;
  PORTC = 0b11000000;
  PORTD = 0b00100000;
  PORTE = 0b01000000;
  PORTF = 0b11111111;

  // disable JTAG
  MCUCR |=(1<<JTD);
  MCUCR |=(1<<JTD);

  kbd_brightness_init();
  gfx_init(false);

  anim_hello();

  Serial_Init(57600, false);
  USB_Init();
}

/* Setup the AVR to enter the Power-Down state to greatly save power.
 * Configures all outputs to be in the low state if possible, and disables
 * services like USB and Serial.
 *
 * Will leave the ports setup so that the Circle key row is being scanned
 * so when the watchdog wakes up it can quickly check and go back to sleep if not
 * Added by Chartreuse - 2021/08/14
 *
 */
void EnterPowerOff(void)
{
  USB_Disable(); // Stop USB stack so it doesn't wake us up
  
  kbd_brightness_set(0);
  // Turn off OLED to save power
  gfx_clear_screen();
  gfx_off();
  // Disable ADC to save even more power
  ADCSRA=0;

  cli();    // No interrupts 

  // Set all ports not floating if possible, leaving pullups alone
  PORTB=0x3F; // Leave pull-up on all the columns on PB0-3, drive rows 2-3 high, 1-low
  PORTC=0xC0; 
  PORTD=0xF0; // Keep pullup on PD5 like setup did, drive rows 4,5,6 high
  PORTE=0x40; // Pullup on PE6
  PORTF=0xFF; // Pullups on PF (columns)
  // ROW1 is the only row driven low and left low, thus is always ready to be read out
  // We just need to check COL14 (PC6) if it is low (pressed) or high

  // Unfortunatly the circle key is on COL14(PC6) which doesn't have pin change interrupt
  // capabilities, so we need to wake up every so often to check if it is pressed, and
  // if so bring us out of power-off
  // We can use the Watchdog timer to do this.

  do {
    wdt_reset();
    WDTCSR = (1<<WDCE) | (1<<WDE); // Enable writes to watchdog
    WDTCSR = (1<<WDIE) | (1<<WDE) | (1<<WDP2) | (1<<WDP1) | (1<<WDP0); // Interrupt mode, 1s timeout

    // Enter Power-save mode
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    sei();              // Enable interrupts so we can actually wake
    sleep_cpu();        // Actually go to sleep
    // Zzzzzz
    sleep_disable();    // We've woken up
    sei();  
    // Check if circle key has been pressed (active-low)
    // If not reset the watchdog and try again
  } while(PINC&(1<<6));
  
  // Resume and reinitialize hardware
  SetupHardware();
}

ISR(WDT_vect)
{
  // WDT interrupt enable and flag cleared on entry
  wdt_disable(); // Disable watchdog for now
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

  ConfigSuccess &= HID_Device_ConfigureEndpoints(&Keyboard_HID_Interface);

  USB_Device_EnableSOFEvents();
}

/** Event handler for the library USB Control Request reception event. */
void EVENT_USB_Device_ControlRequest(void)
{
  HID_Device_ProcessControlRequest(&Keyboard_HID_Interface);
}

/** Event handler for the USB device Start Of Frame event. */
void EVENT_USB_Device_StartOfFrame(void)
{
  HID_Device_MillisecondElapsed(&Keyboard_HID_Interface);
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
  USB_KeyboardReport_Data_t* KeyboardReport = (USB_KeyboardReport_Data_t*)ReportData;

  process_keyboard(1, KeyboardReport);

  *ReportSize = sizeof(USB_KeyboardReport_Data_t);
  return false;
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
  uint8_t* data = (uint8_t*)ReportData;
  if (ReportSize<4) return;

  if (data[0]=='O' && data[1]=='L' && data[2]=='E' && data[3]=='D') {
    // OLED: write characters on display
    gfx_on();
    for (int y=0; y<4; y++) {
      for (int x=0; x<21; x++) {
        gfx_poke(x,y,data[4+y*21+x]);
      }
    }
    gfx_flush();
  }
  if (data[0]=='O' && data[1]=='I' && data[2]=='N' && data[3]=='V') {
    gfx_clear_invert();
    gfx_invert_row(data[4]-'0');
  }
  else if (data[0]=='L' && data[1]=='I' && data[2]=='T' && data[3]=='E') {
    char brite = data[4]-'0';
    brite++;
    if (brite<=1) brite=0;
    if (brite>9) brite=9;
    kbd_brightness_set(brite);
  }
  else if (data[0]=='P' && data[1]=='W' && data[2]=='R' && data[3]=='0') {
    // PWR0: shutdown (turn off power rails)
    remote_turn_off_som();
  }
  else if (data[0]=='P' && data[1]=='W' && data[2]=='R' && data[3]=='3') {
    // PWR3: aux power off
    remote_turn_off_aux();
  }
  else if (data[0]=='P' && data[1]=='W' && data[2]=='R' && data[3]=='4') {
    // PWR4: aux power on
    remote_turn_on_aux();
  }
  else if (data[0]=='U' && data[1]=='A' && data[2]=='R' && data[3]=='1') {
    // UAR1: UART reporting on
    remote_enable_som_uart();
  }
  else if (data[0]=='U' && data[1]=='A' && data[2]=='R' && data[3]=='0') {
    // UAR0: UART reporting off
    remote_disable_som_uart();
  }
  else if (data[0]=='R' && data[1]=='P' && data[2]=='R' && data[3]=='T') {
    // RPRT: Report power stats to UART
    remote_report_voltages();
  }
}
