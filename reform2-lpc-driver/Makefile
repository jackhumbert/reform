KPATH := /usr/src/linux-headers-`uname -r`
obj-m := ./src/lpc-reform2.o

.PHONY: all clean doc

all:
	make -C $(KPATH) M=$(CURDIR) modules

clean:
	make -C $(KPATH) M=$(CURDIR) clean

install:
	mkdir -p /lib/modules/`uname -r`/misc
	cp ./src/lpc-reform2.ko /lib/modules/`uname -r`/misc
	depmod -a
	modprobe -r lpc-reform2
	modprobe lpc-reform2

remove:
	modprobe -r lpc-reform2
	$(RM) /lib/modules/`uname -r`/misc/lpc-reform2.ko
	depmod -a

read:
	cat /sys/bus/spi/drivers/lpc-reform2/spi1.0/status

