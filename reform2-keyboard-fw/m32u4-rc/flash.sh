#!/bin/bash

avrdude -p m32u4 -c usbasp -B 64 -U lfuse:w:0x5e:m -U hfuse:w:0x99:m -U efuse:w:0xF7:m
avrdude -p m32u4 -c usbasp -U flash:w:ATMega32U4-usbdevice_dfu-1_0_0.hex

sleep 1

cd ..
sudo ./flash.sh
cd -

