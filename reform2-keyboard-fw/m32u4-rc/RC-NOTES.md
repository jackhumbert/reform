# How to use the RC version of Atmega32U4

- We have to set fuses for external oscillator
- We have to burn a USB bootloader

## Desired fuse settings:

### Extended Fuse

0xF7
   `--- HWBE enabled, BOD disabled

### Fuse High Byte

0x99
  ``--- default

### Fuse Low Byte

0x5e
   `--- Low Power Crystal Oscillator
  `--- defaults

-U efuse:w:0xF7:m

### Problem: "Device signature = 0x000102"

Solution: go real slow with SPI clock (8000Hz)

avrdude: safemode: Fuses OK (E:F3, H:99, L:5E)

Real solution: solder 62 ohms Rs on each SPI line

`avrdude -p m32u4 -P /dev/ttyACM0 -c avrisp -b 19200 -U lfuse:w:0x5e:m -U hfuse:w:0x99:m -U efuse:w:0xF7:m`

efuse always changes to CB. but maybe ok?

- can flash caterina, but clock seems to be ~250khz? usb can't enumerate, but something happens

`avrdude -p m32u4 -P /dev/ttyACM0 -c avrisp -b 19200 -U lfuse:w:0x5e:m`

-> 5e is correct and enables 16mhz clock (visible on scope)!

1. Burn DFU bootloader via ISP: `avrdude -p m32u4 -c usbtiny -U flash:w:ATMega32U4-usbdevice_dfu-1_0_0.hex -B 1`
1. Burn DFU bootloader via ISP: `avrdude -p m32u4 -c usbasp -B 64 -U flash:w:ATMega32U4-usbdevice_dfu-1_0_0.hex`
2. Set the fuses: `avrdude -p m32u4 -c usbtiny  -U lfuse:w:0x5e:m -U hfuse:w:0x99:m -U efuse:w:0xF7:m`
2. Set the fuses: `avrdude -p m32u4 -c usbasp  -U lfuse:w:0x5e:m -U hfuse:w:0x99:m -U efuse:w:0xF7:m`
3. Flash via DFU: `dfu-programmer atmega32u4 flash ./keyboard.hex --suppress-bootloader-mem` (first erase!)

could also swap 2 and 3.

