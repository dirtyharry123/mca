TOOLCHAIN := $(PWD)/../../../toolchain/Sourcery_G++_Lite-2011.03-41/bin/
KERNEL := $(PWD)/../../KERNEL/linux-2.6.28.2/
export PATH := $(PATH):$(TOOLCHAIN)
export CROSS_COMPILE = arm-none-linux-gnueabi-
export ARCH = arm
export INSTALL_MOD_PATH := $(PWD)/../../../ROOTFS

all: fixsci.ko

$(TOOLCHAIN):
	$(MAKE) -C ../../../toolchain

$(KERNEL):
	$(MAKE) -C ../../KERNEL

obj-m += fixsci.o
fixsci-objs := fix-sci.o hook.o

fixsci.ko: $(KERNEL) $(TOOLCHAIN)
	make -C $(KERNEL) M=$(PWD) modules

.PHONY: clean
clean: $(KERNEL) $(TOOLCHAIN)
	make -C $(KERNEL)  M=$(PWD) clean

.PHONY: distclean
distclean: clean
	rm -rf modules.order
