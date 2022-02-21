
var COLS = 14
var ROWS = 6

var scancodes = {
  "RESERVED":0x00,
  "ERROR_ROLLOVER":0x01,
  "POST_FAIL":0x02,
  "ERROR_UNDEFINED":0x03,
  "A":0x04,
  "B":0x05,
  "C":0x06,
  "D":0x07,
  "E":0x08,
  "F":0x09,
  "G":0x0A,
  "H":0x0B,
  "I":0x0C,
  "J":0x0D,
  "K":0x0E,
  "L":0x0F,
  "M":0x10,
  "N":0x11,
  "O":0x12,
  "P":0x13,
  "Q":0x14,
  "R":0x15,
  "S":0x16,
  "T":0x17,
  "U":0x18,
  "V":0x19,
  "W":0x1A,
  "X":0x1B,
  "Y":0x1C,
  "Z":0x1D,
  "1_AND_EXCLAMATION":0x1E,
  "2_AND_AT":0x1F,
  "3_AND_HASHMARK":0x20,
  "4_AND_DOLLAR":0x21,
  "5_AND_PERCENTAGE":0x22,
  "6_AND_CARET":0x23,
  "7_AND_AMPERSAND":0x24,
  "8_AND_ASTERISK":0x25,
  "9_AND_OPENING_PARENTHESIS":0x26,
  "0_AND_CLOSING_PARENTHESIS":0x27,
  "ENTER":0x28,
  "ESCAPE":0x29,
  "BACKSPACE":0x2A,
  "TAB":0x2B,
  "SPACE":0x2C,
  "MINUS_AND_UNDERSCORE":0x2D,
  "EQUAL_AND_PLUS":0x2E,
  "OPENING_BRACKET_AND_OPENING_BRACE":0x2F,
  "CLOSING_BRACKET_AND_CLOSING_BRACE":0x30,
  "BACKSLASH_AND_PIPE":0x31,
  "NON_US_HASHMARK_AND_TILDE":0x32,
  "SEMICOLON_AND_COLON":0x33,
  "APOSTROPHE_AND_QUOTE":0x34,
  "GRAVE_ACCENT_AND_TILDE":0x35,
  "COMMA_AND_LESS_THAN_SIGN":0x36,
  "DOT_AND_GREATER_THAN_SIGN":0x37,
  "SLASH_AND_QUESTION_MARK":0x38,
  "CAPS_LOCK":0x39,
  "F1":0x3A,
  "F2":0x3B,
  "F3":0x3C,
  "F4":0x3D,
  "F5":0x3E,
  "F6":0x3F,
  "F7":0x40,
  "F8":0x41,
  "F9":0x42,
  "F10":0x43,
  "F11":0x44,
  "F12":0x45,
  "PRINT_SCREEN":0x46,
  "SCROLL_LOCK":0x47,
  "PAUSE":0x48,
  "INSERT":0x49,
  "HOME":0x4A,
  "PAGE_UP":0x4B,
  "DELETE":0x4C,
  "END":0x4D,
  "PAGE_DOWN":0x4E,
  "RIGHT_ARROW":0x4F,
  "LEFT_ARROW":0x50,
  "DOWN_ARROW":0x51,
  "UP_ARROW":0x52,
  "NUM_LOCK":0x53,
  "KEYPAD_SLASH":0x54,
  "KEYPAD_ASTERISK":0x55,
  "KEYPAD_MINUS":0x56,
  "KEYPAD_PLUS":0x57,
  "KEYPAD_ENTER":0x58,
  "KEYPAD_1_AND_END":0x59,
  "KEYPAD_2_AND_DOWN_ARROW":0x5A,
  "KEYPAD_3_AND_PAGE_DOWN":0x5B,
  "KEYPAD_4_AND_LEFT_ARROW":0x5C,
  "KEYPAD_5":0x5D,
  "KEYPAD_6_AND_RIGHT_ARROW":0x5E,
  "KEYPAD_7_AND_HOME":0x5F,
  "KEYPAD_8_AND_UP_ARROW":0x60,
  "KEYPAD_9_AND_PAGE_UP":0x61,
  "KEYPAD_0_AND_INSERT":0x62,
  "KEYPAD_DOT_AND_DELETE":0x63,
  "NON_US_BACKSLASH_AND_PIPE":0x64,
  "APPLICATION":0x65,
  "POWER":0x66,
  "KEYPAD_EQUAL_SIGN":0x67,
  "F13":0x68,
  "F14":0x69,
  "F15":0x6A,
  "F16":0x6B,
  "F17":0x6C,
  "F18":0x6D,
  "F19":0x6E,
  "F20":0x6F,
  "F21":0x70,
  "F22":0x71,
  "F23":0x72,
  "F24":0x73,
  "EXECUTE":0x74,
  "HELP":0x75,
  "MENU":0x76,
  "SELECT":0x77,
  "STOP":0x78,
  "AGAIN":0x79,
  "UNDO":0x7A,
  "CUT":0x7B,
  "COPY":0x7C,
  "PASTE":0x7D,
  "FIND":0x7E,
  "MUTE":0x7F,
  "VOLUME_UP":0x80,
  "VOLUME_DOWN":0x81,
  "LOCKING_CAPS_LOCK":0x82,
  "LOCKING_NUM_LOCK":0x83,
  "LOCKING_SCROLL_LOCK":0x84,
  "KEYPAD_COMMA":0x85,
  "KEYPAD_EQUAL_SIGN_AS400":0x86,
  "INTERNATIONAL1":0x87,
  "INTERNATIONAL2":0x88,
  "INTERNATIONAL3":0x89,
  "INTERNATIONAL4":0x8A,
  "INTERNATIONAL5":0x8B,
  "INTERNATIONAL6":0x8C,
  "INTERNATIONAL7":0x8D,
  "INTERNATIONAL8":0x8E,
  "INTERNATIONAL9":0x8F,
  "LANG1":0x90,
  "LANG2":0x91,
  "LANG3":0x92,
  "LANG4":0x93,
  "LANG5":0x94,
  "LANG6":0x95,
  "LANG7":0x96,
  "LANG8":0x97,
  "LANG9":0x98,
  "ALTERNATE_ERASE":0x99,
  "SYSREQ":0x9A,
  "CANCEL":0x9B,
  "CLEAR":0x9C,
  "PRIOR":0x9D,
  "RETURN":0x9E,
  "SEPARATOR":0x9F,
  "OUT":0xA0,
  "OPER":0xA1,
  "CLEAR_AND_AGAIN":0xA2,
  "CRSEL_AND_PROPS":0xA3,
  "EXSEL":0xA4,
  "KEYPAD_00":0xB0,
  "KEYPAD_000":0xB1,
  "THOUSANDS_SEPARATOR":0xB2,
  "DECIMAL_SEPARATOR":0xB3,
  "CURRENCY_UNIT":0xB4,
  "CURRENCY_SUB_UNIT":0xB5,
  "KEYPAD_OPENING_PARENTHESIS":0xB6,
  "KEYPAD_CLOSING_PARENTHESIS":0xB7,
  "KEYPAD_OPENING_BRACE":0xB8,
  "KEYPAD_CLOSING_BRACE":0xB9,
  "KEYPAD_TAB":0xBA,
  "KEYPAD_BACKSPACE":0xBB,
  "KEYPAD_A":0xBC,
  "KEYPAD_B":0xBD,
  "KEYPAD_C":0xBE,
  "KEYPAD_D":0xBF,
  "KEYPAD_E":0xC0,
  "KEYPAD_F":0xC1,
  "KEYPAD_XOR":0xC2,
  "KEYPAD_CARET":0xC3,
  "KEYPAD_PERCENTAGE":0xC4,
  "KEYPAD_LESS_THAN_SIGN":0xC5,
  "KEYPAD_GREATER_THAN_SIGN":0xC6,
  "KEYPAD_AMP":0xC7,
  "KEYPAD_AMP_AMP":0xC8,
  "KEYPAD_PIPE":0xC9,
  "KEYPAD_PIPE_PIPE":0xCA,
  "KEYPAD_COLON":0xCB,
  "KEYPAD_HASHMARK":0xCC,
  "KEYPAD_SPACE":0xCD,
  "KEYPAD_AT":0xCE,
  "KEYPAD_EXCLAMATION_SIGN":0xCF,
  "KEYPAD_MEMORY_STORE":0xD0,
  "KEYPAD_MEMORY_RECALL":0xD1,
  "KEYPAD_MEMORY_CLEAR":0xD2,
  "KEYPAD_MEMORY_ADD":0xD3,
  "KEYPAD_MEMORY_SUBTRACT":0xD4,
  "KEYPAD_MEMORY_MULTIPLY":0xD5,
  "KEYPAD_MEMORY_DIVIDE":0xD6,
  "KEYPAD_PLUS_AND_MINUS":0xD7,
  "KEYPAD_CLEAR":0xD8,
  "KEYPAD_CLEAR_ENTRY":0xD9,
  "KEYPAD_BINARY":0xDA,
  "KEYPAD_OCTAL":0xDB,
  "KEYPAD_DECIMAL":0xDC,
  "KEYPAD_HEXADECIMAL":0xDD,
  "LEFT_CONTROL":0xE0,
  "LEFT_SHIFT":0xE1,
  "LEFT_ALT":0xE2,
  "LEFT_GUI":0xE3,
  "RIGHT_CONTROL":0xE4,
  "RIGHT_SHIFT":0xE5,
  "RIGHT_ALT":0xE6,
  "RIGHT_GUI":0xE7,
  "MEDIA_PLAY":0xE8,
  "MEDIA_STOP":0xE9,
  "MEDIA_PREVIOUS_TRACK":0xEA,
  "MEDIA_NEXT_TRACK":0xEB,
  "MEDIA_EJECT":0xEC,
  "MEDIA_VOLUME_UP":0xED,
  "MEDIA_VOLUME_DOWN":0xEE,
  "MEDIA_MUTE":0xEF,
  "MEDIA_WWW":0xF0,
  "MEDIA_BACKWARD":0xF1,
  "MEDIA_FORWARD":0xF2,
  "MEDIA_CANCEL":0xF3,
  "MEDIA_SEARCH":0xF4,
  "MEDIA_SLEEP":0xF8,
  "MEDIA_LOCK":0xF9,
  "MEDIA_RELOAD":0xFA,
  "MEDIA_CALCULATOR":0xFB
}

var engravings = {
  "ESCAPE": "ESC",
  "EXSEL": "◯",
  "BACKSPACE": "⌫",
  "DELETE": "DEL",
  "MINUS_AND_UNDERSCORE": "- _",
  "EQUAL_AND_PLUS": "= +",
  "OPENING_BRACKET_AND_OPENING_BRACE": "[ {",
  "CLOSING_BRACKET_AND_CLOSING_BRACE": "] }",
  "BACKSLASH_AND_PIPE": "\\ |",
  "NON_US_HASHMARK_AND_TILDE": "# ~",
  "NON_US_BACKSLASH_AND_PIPE": "\\ |",
  "SEMICOLON_AND_COLON": "; :",
  "APOSTROPHE_AND_QUOTE": "' \"",
  "GRAVE_ACCENT_AND_TILDE": "` ~",
  "COMMA_AND_LESS_THAN_SIGN": ", <",
  "DOT_AND_GREATER_THAN_SIGN": ". >",
  "SLASH_AND_QUESTION_MARK": "/ ?",

  "1_AND_EXCLAMATION": "1 !",
  "2_AND_AT": "2 @",
  "3_AND_HASHMARK": "3 #",
  "4_AND_DOLLAR": "4 $",
  "5_AND_PERCENTAGE": "5 %",
  "6_AND_CARET": "6 ^",
  "7_AND_AMPERSAND": "7 &",
  "8_AND_ASTERISK": "8 *",
  "9_AND_OPENING_PARENTHESIS": "9 (",
  "0_AND_CLOSING_PARENTHESIS": "0 )",

  "LEFT_CONTROL": "CTRL (L)",
  "RIGHT_CONTROL": "CTRL (R)",
  "LEFT_SHIFT": "SHIFT (L)",
  "RIGHT_SHIFT": "SHIFT (R)",
  "LEFT_ALT": "ALT (L)",
  "RIGHT_ALT": "ALT (R)",
  "LEFT_GUI": "SUPER (L)",
  "RIGHT_GUI": "SUPER (R)",
  "APPLICATION": "…",

  "RIGHT_ARROW": "→",
  "LEFT_ARROW": "←",
  "UP_ARROW": "↑",
  "DOWN_ARROW": "↓",
  "PAGE_UP": "PGUP",
  "PAGE_DOWN": "PGDN",
}

var customKeyboard = {
  title: "MNT Reform QWERTY-US",
  matrix: [
    "ESCAPE", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12", "EXSEL",

    "GRAVE_ACCENT_AND_TILDE", "1_AND_EXCLAMATION", "2_AND_AT", "3_AND_HASHMARK", "4_AND_DOLLAR", "5_AND_PERCENTAGE", "6_AND_CARET", "7_AND_AMPERSAND", "8_AND_ASTERISK", "9_AND_OPENING_PARENTHESIS", "0_AND_CLOSING_PARENTHESIS", "MINUS_AND_UNDERSCORE", "EQUAL_AND_PLUS", "BACKSPACE",

    "TAB", "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "OPENING_BRACKET_AND_OPENING_BRACE", "CLOSING_BRACKET_AND_CLOSING_BRACE", "BACKSLASH_AND_PIPE",

    "LEFT_CONTROL", "APPLICATION", "A", "S", "D", "F", "G", "H", "J", "K", "L", "SEMICOLON_AND_COLON", "APOSTROPHE_AND_QUOTE", "ENTER",

    "LEFT_SHIFT", "DELETE", "Z", "X", "C", "V", "B", "N", "M", "COMMA_AND_LESS_THAN_SIGN", "DOT_AND_GREATER_THAN_SIGN", "SLASH_AND_QUESTION_MARK", "UP_ARROW", "RIGHT_SHIFT",

    "RIGHT_GUI", "LEFT_GUI", "RIGHT_CONTROL", "SPACE", "LEFT_ALT", "RIGHT_ALT", "SPACE", "PAGE_UP", "PAGE_DOWN", "LEFT_ARROW", "DOWN_ARROW", "RIGHT_ARROW"
  ]
}

function getKey(idx) {
  return document.getElementsByClassName("kbd-key")[idx]
}

function getKeyIdx(key) {
  return key.id.split("key-")[1]
}

function getSelectedKey() {
  return document.getElementsByClassName("selected")[0]
}

function deselectKeys() {
  var allKeys = document.getElementsByClassName("kbd-key")
  for (k of allKeys) {
    k.classList.remove("selected")
  }
}

var swapMode = false

function enableSwapMode() {
  document.getElementById("swap-message").innerHTML = "Now click on a key to swap with selected key."
  swapMode = true
}

function disableSwapMode() {
  document.getElementById("swap-message").innerHTML = ""
  swapMode = false
}

function selectKey() {
  if (swapMode) {
    disableSwapMode()

    var swapKey = getSelectedKey()
    var swapIdx = getKeyIdx(swapKey)
    var idx = getKeyIdx(this)

    var swapKeyCode = customKeyboard.matrix[swapIdx]
    customKeyboard.matrix[swapIdx] = customKeyboard.matrix[idx]
    customKeyboard.matrix[idx] = swapKeyCode
    renderKeyboard(customKeyboard)
  }
  deselectKeys()
  this.classList.add("selected")
  applyKeyToSettings()
}

function selectKeyEl(el) {
  deselectKeys()
  el.classList.add("selected")
  applyKeyToSettings()
}

function applySettingsToKey() {
  var selectedKey = getSelectedKey()
  var idx = getKeyIdx(selectedKey)

  var scanCodeName = document.getElementById("key-scancodename").value
  customKeyboard.matrix[idx] = scanCodeName

  renderKeyboard(customKeyboard)
}

function applyKeyToSettings() {
  var selectedKey = getSelectedKey()
  var idx = getKeyIdx(selectedKey)

  document.getElementById("key-scancodename").value = customKeyboard.matrix[idx]
}

function populateSettingsForm() {
  var scancodeEl = document.getElementById("key-scancodes")
  var html = ""
  for ([k,v] of Object.entries(scancodes)) {
    html+="<option value='"+k+"'>Code: "+v+"</option>"
  }
  scancodeEl.innerHTML = html
}

function renderKeyboard(kbd) {
  document.getElementById("title").value = kbd.title

  var rows = document.getElementsByClassName("kbd-row")
  var defaultKeys = kbd.matrix

  for (var y=0; y<rows.length; y++) {
    var row = rows[y]
    var cols = rows[y].getElementsByClassName("kbd-key")
    for (var x=0; x<cols.length; x++) {
      var col = cols[x]
      var idx = y*COLS+x
      var key = defaultKeys[idx]

      if (engravings[key]) {
        col.innerHTML = engravings[key]
      } else {
        col.innerHTML = key
      }
      col.id = "key-"+idx

      col.onclick = selectKey
    }
  }
}

function generateFirmware() {
  var fw = Base64Binary.decode(defaultFirmware)
  var idx = 0
  for (var i=0; i<fw.length-3; i++) {
    if (fw[i]==0xfe && fw[i+1]==0xed && fw[i+2]==0xca && fw[i+3]==0xfe) {
      console.log("magic number found at",i)
      idx = i-14*6+2
      console.log("first keycodes in matrix:",fw[idx],fw[idx+1],fw[idx+2],fw[idx+3])
      break
    }
  }

  if (idx) {
    // patch the firmware!
    for (var i=0; i<14*6-2; i++) {
      sc = scancodes[customKeyboard.matrix[i]]
      fw[idx+i] = sc

      if (!sc) {
        alert("Warning: No scancode for key "+customKeyboard.matrix[i])
      }
    }

    var blob = new Blob([fw], {type: "application/octet-stream"})
    var link = document.createElement('a')
    link.href = window.URL.createObjectURL(blob)
    link.download = "Keyboard.elf"
    link.click()
  }
}

function initKeyboard() {
  populateSettingsForm()
  renderKeyboard(customKeyboard)
  selectKeyEl(getKey(0))
}
