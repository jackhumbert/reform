# MNT Reform Trackball Firmware (RP2040 version)

## Build dependencies

Required: `cmake`, `tinyusb`, `pico-sdk`.

Two folders up (next to the main `reform` repo), clone the following:

`git clone https://github.com/hathach/tinyusb`
`git clone https://github.com/raspberrypi/pico-sdk`

## Building

Then, just run `build.sh`.

This yields the firmware in `build`.

## Flashing

For flashing, you can use: https://github.com/raspberrypi/picotool

See the convenience script `flash.sh`.

If the trackball should not enter flashing mode (i.e. present itself as USB storage), you can try pressing reset twice in quick succession.

