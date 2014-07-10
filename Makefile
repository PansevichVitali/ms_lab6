obj-m := device.o 

KDIR  := /lib/modules/$(shell uname -r)/build
PWD   := $(shell pwd)

modules:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean