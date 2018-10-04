usbhid-y	:= hid-core.o
usbhid-y 	+= hiddev.o
usbhid-y	+= hid-pidff.o

hid-y		:= hid-core-hid.o hid-input.o hid-quirks.o
hid-y		+= hid-debug.o
hid-y       += hidraw.o

obj-m		+= hid.o
obj-m		+= uhid.o

obj-m		+= hid-generic.o

obj-m		+= usbhid.o
obj-m		+= usbkbd.o
obj-m		+= usbmouse.o

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD       := $(shell pwd)

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD)

clean:
	rm -f *.o .*.o.d *~ core .depend .*.cmd *.ko *.mod.c
	rm -f Module.markers Module.symvers modules.order
	rm -rf .tmp_versions

