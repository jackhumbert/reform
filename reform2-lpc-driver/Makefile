KPATH := /usr/src/linux-headers-`uname -r`
obj-m := ./src/reform2-lpc.o

.PHONY: all clean doc

all:
	make -C $(KPATH) M=$(CURDIR) modules

clean:
	make -C $(KPATH) M=$(CURDIR) clean

install:
	mkdir -p /lib/modules/`uname -r`/misc
	cp ./src/reform2-lpc.ko /lib/modules/`uname -r`/misc
	depmod -a
	modprobe -r reform2-lpc
	modprobe reform2-lpc

remove:
	modprobe -r reform2-lpc
	$(RM) /lib/modules/`uname -r`/misc/reform2-lpc.ko
	depmod -a

read:
	cat /sys/bus/spi/drivers/reform2-lpc/spi1.0/status
	@echo 
	cat /sys/bus/spi/drivers/reform2-lpc/spi1.0/cells
	@echo 
	cat /sys/bus/spi/drivers/reform2-lpc/spi1.0/firmware
	@echo 
	cat /sys/bus/spi/drivers/reform2-lpc/spi1.0/capacity
	@echo 
