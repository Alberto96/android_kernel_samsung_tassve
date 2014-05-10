#
# Makefile for the Linux kernel device drivers.
#
# 15 Sep 2000, Christoph Hellwig <hch@infradead.org>
# Rewritten to use lists instead of if-statements.
#

obj-y				+= gpio/
obj-$(CONFIG_PCI)		+= pci/
obj-$(CONFIG_PARISC)		+= parisc/
obj-$(CONFIG_RAPIDIO)		+= rapidio/
obj-y				+= video/
obj-y				+= idle/
obj-$(CONFIG_ACPI)		+= acpi/
obj-$(CONFIG_SFI)		+= sfi/
# PnP must come after ACPI since it will eventually need to check if acpi
# was used and do nothing if so
obj-$(CONFIG_PNP)		+= pnp/
obj-$(CONFIG_ARM_AMBA)		+= amba/

obj-$(CONFIG_VIRTIO)		+= virtio/
obj-$(CONFIG_XEN)		+= xen/

# regulators early, since some subsystems rely on them to initialize
obj-$(CONFIG_REGULATOR)		+= regulator/

# char/ comes before serial/ etc so that the VT console is the boot-time
# default.
obj-y				+= char/

# gpu/ comes after char for AGP vs DRM startup
obj-y				+= gpu/

obj-$(CONFIG_CONNECTOR)		+= connector/

# i810fb and intelfb depend on char/agp/
obj-$(CONFIG_FB_I810)           += video/i810/
obj-$(CONFIG_FB_INTEL)          += video/intelfb/

obj-y				+= serial/
obj-$(CONFIG_PARPORT)		+= parport/
obj-y				+= base/ block/ misc/ mfd/
obj-$(CONFIG_NUBUS)		+= nubus/
obj-y				+= macintosh/
obj-$(CONFIG_IDE)		+= ide/
obj-$(CONFIG_SCSI)		+= scsi/
obj-$(CONFIG_ATA)		+= ata/
obj-$(CONFIG_MTD)		+= mtd/
obj-$(CONFIG_SPI)		+= spi/
obj-y				+= net/
obj-$(CONFIG_ATM)		+= atm/
obj-$(CONFIG_FUSION)		+= message/
obj-$(CONFIG_FIREWIRE)		+= firewire/
obj-y				+= ieee1394/
obj-$(CONFIG_UIO)		+= uio/
obj-y				+= cdrom/
obj-y				+= auxdisplay/
obj-$(CONFIG_PCCARD)		+= pcmcia/
obj-$(CONFIG_DIO)		+= dio/
obj-$(CONFIG_SBUS)		+= sbus/
obj-$(CONFIG_ZORRO)		+= zorro/
obj-$(CONFIG_MAC)		+= macintosh/
obj-$(CONFIG_ATA_OVER_ETH)	+= block/aoe/
obj-$(CONFIG_PARIDE) 		+= block/paride/
obj-$(CONFIG_TC)		+= tc/
obj-$(CONFIG_UWB)		+= uwb/
obj-$(CONFIG_USB_OTG_UTILS)	+= usb/otg/
obj-$(CONFIG_USB)		+= usb/
obj-$(CONFIG_USB_MUSB_HDRC)	+= usb/musb/
obj-$(CONFIG_PCI)		+= usb/
obj-$(CONFIG_USB_GADGET)	+= usb/gadget_brcm/
obj-$(CONFIG_SERIO)		+= input/serio/
obj-$(CONFIG_GAMEPORT)		+= input/gameport/
obj-$(CONFIG_INPUT)		+= input/
obj-$(CONFIG_I2O)		+= message/
obj-$(CONFIG_RTC_LIB)		+= rtc/
obj-y				+= i2c/ media/
obj-$(CONFIG_PPS)		+= pps/
obj-$(CONFIG_W1)		+= w1/
obj-$(CONFIG_POWER_SUPPLY)	+= power/
obj-$(CONFIG_HWMON)		+= hwmon/
obj-$(CONFIG_HAPTIC)		+= haptic/
obj-$(CONFIG_THERMAL)		+= thermal/
obj-$(CONFIG_WATCHDOG)		+= watchdog/
obj-$(CONFIG_PHONE)		+= telephony/
obj-$(CONFIG_MD)		+= md/
obj-$(CONFIG_BT)		+= bluetooth/
obj-$(CONFIG_ACCESSIBILITY)	+= accessibility/
obj-$(CONFIG_ISDN)		+= isdn/
obj-$(CONFIG_EDAC)		+= edac/
obj-$(CONFIG_MCA)		+= mca/
obj-$(CONFIG_EISA)		+= eisa/
obj-y				+= lguest/
obj-$(CONFIG_CPU_FREQ)		+= cpufreq/
obj-$(CONFIG_CPU_IDLE)		+= cpuidle/
obj-$(CONFIG_MMC)		+= mmc/
obj-$(CONFIG_MEMSTICK)		+= memstick/
obj-$(CONFIG_NEW_LEDS)		+= leds/
obj-$(CONFIG_SWITCH)		+= switch/
obj-$(CONFIG_INFINIBAND)	+= infiniband/
obj-$(CONFIG_SGI_SN)		+= sn/
obj-y				+= firmware/
obj-$(CONFIG_CRYPTO)		+= crypto/
obj-$(CONFIG_SUPERH)		+= sh/
obj-$(CONFIG_ARCH_SHMOBILE)	+= sh/
obj-$(CONFIG_GENERIC_TIME)	+= clocksource/
obj-$(CONFIG_DMA_ENGINE)	+= dma/
obj-$(CONFIG_DCA)		+= dca/
obj-$(CONFIG_HID)		+= hid/
obj-$(CONFIG_PPC_PS3)		+= ps3/
obj-$(CONFIG_OF)		+= of/
obj-$(CONFIG_SSB)		+= ssb/
obj-$(CONFIG_VHOST_NET)		+= vhost/
obj-$(CONFIG_VLYNQ)		+= vlynq/
obj-$(CONFIG_STAGING)		+= staging/
obj-y				+= platform/
obj-y				+= ieee802154/

# Broadcom Modules
obj-$(CONFIG_BMEM) += video/bmem/
obj-$(CONFIG_HANTRO) += video/hantro/
obj-$(CONFIG_GE) += video/ge/

obj-$(CONFIG_BRCM_HAL_CAM)  += char/brcm/hal_cam/
obj-$(CONFIG_VIDEO_CAMACQ)  += char/brcm/camacq/
obj-$(CONFIG_BRCM_HAL_CAM_WITH_STILL_YUV) += char/brcm/hal_cam/

obj-$(CONFIG_DPRAM) += char/sec/dpram/

obj-$(CONFIG_BRCM_FUSE_IPC_2153SDB) += char/brcm/fuse_ipc/
obj-$(CONFIG_BRCM_FUSE_IPC_2157SDB) += char/brcm/fuse_ipc/
obj-$(CONFIG_BRCM_FUSE_RPC_2157SDB) += char/brcm/fuse_rpc/
obj-$(CONFIG_BRCM_FUSE_RIL_2157SDB) += char/brcm/fuse_ril/
obj-$(CONFIG_BRCM_FUSE_IPC_CIB) += char/brcm/fuse_ipc/
obj-$(CONFIG_BRCM_FUSE_RPC_CIB) += char/brcm/fuse_rpc/
obj-$(CONFIG_BRCM_FUSE_RIL_CIB) += char/brcm/fuse_ril/
obj-$(CONFIG_BRCM_FUSE_NET) += char/brcm/fuse_net/
obj-$(CONFIG_BRCM_FUSE_AT) += char/brcm/fuse_at/
obj-$(CONFIG_BRCM_FUSE_PDP_CIB) += char/brcm/fuse_pdp/


obj-$(CONFIG_BRCM_FUSE_RIL_2153SDB) += char/brcm/fuse_rpc/

obj-$(CONFIG_BRCM_FUSE_RIL_2153SDB) += char/brcm/fuse_ril/
obj-$(CONFIG_BRCM_FUSE_LOG) += char/brcm/fuse_log/
obj-$(CONFIG_BRCM_FUSE_SYSPARM) += char/brcm/fuse_sysparm/
obj-$(CONFIG_BRCM_FUSE_VSP) += char/brcm/fuse_vsp/
obj-$(CONFIG_BRCM_XSCRIPT) += char/brcm/xscript/
obj-$(CONFIG_BRCM_V3D) += char/brcm/v3d/
ifeq ($(CONFIG_ARCH_BCM2157), y)
obj-$(CONFIG_BRCM_SOUND_ALSA) += sound/brcm/alsa/
endif

ifeq ($(CONFIG_ARCH_BCM215XX), y)
obj-$(CONFIG_BRCM_SOUND_ATHENA_ALSA) += sound/brcm/alsa_athena/
endif
# Headset module
obj-$(CONFIG_BRCM_HEADSET) += sound/brcm/headset/
#cntin
obj-$(CONFIG_BRCM_CNTIN) += gps/brcm/
