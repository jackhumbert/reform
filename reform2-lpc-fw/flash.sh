#!/bin/bash

set -e

# replace the x with the drive that LPC actually shows up as (check dmesg -w when plugging in)
#
#mount /dev/sdx /mnt
dd if=bin/firmware.bin of="/mnt/firmware.bin" conv=nocreat,notrunc
sync
umount "/mnt"

