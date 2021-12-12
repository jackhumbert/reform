/*
  MNT Reform 2.0 Keyboard Firmware
  See keyboard.c for Copyright
  SPDX-License-Identifier: MIT
*/

#include "keyboard.h"

// Every line of `matrix` is a row of the keyboard, starting from the top.
// Check keyboard.h for the definitions of the default rows.
uint8_t matrix[KBD_MATRIX_SZ] = {
  MATRIX_DEFAULT_ROW_1,
  MATRIX_DEFAULT_ROW_2,
  MATRIX_DEFAULT_ROW_3,
  MATRIX_DEFAULT_ROW_4,
  MATRIX_DEFAULT_ROW_5,

  // Marker for layout editor (FIXME)
  KBD_EDITOR_MARKER
};

// When holding down HYPER
uint8_t matrix_fn[KBD_MATRIX_SZ] = {
  // Media keys (not working, FIXME)
  KEY_ESCAPE,
  KEY_F1,
  KEY_F2,
  KEY_F3,
  KEY_F4,
  KEY_F5,
  KEY_F6,
  HID_KEYBOARD_SC_MEDIA_BACKWARD,
  HID_KEYBOARD_SC_MEDIA_PLAY,
  HID_KEYBOARD_SC_MEDIA_FORWARD,
  173, // mute
  174, // volume down
  175, // volume up
  KEY_CIRCLE,

  MATRIX_DEFAULT_ROW_2,
  MATRIX_DEFAULT_ROW_3,
  MATRIX_DEFAULT_ROW_4,
  MATRIX_DEFAULT_ROW_5,
  MATRIX_DEFAULT_ROW_6
};

// Second layer (toggled by HYPER+CIRCLE)
uint8_t matrix_fn_toggled[KBD_MATRIX_SZ] = {
  // Custom top row
  KEY_ESCAPE,
  KEY_F1,
  KEY_F2,
  KEY_F3,
  KEY_F4,
  KEY_F5,
  KEY_F6,
  HID_KEYBOARD_SC_MEDIA_BACKWARD,
  HID_KEYBOARD_SC_MEDIA_PLAY,
  HID_KEYBOARD_SC_MEDIA_FORWARD,
  173,
  174,
  175,
  KEY_CIRCLE,

  MATRIX_DEFAULT_ROW_2,
  MATRIX_DEFAULT_ROW_3,
  MATRIX_DEFAULT_ROW_4,
  MATRIX_DEFAULT_ROW_5,
  MATRIX_DEFAULT_ROW_6
};
