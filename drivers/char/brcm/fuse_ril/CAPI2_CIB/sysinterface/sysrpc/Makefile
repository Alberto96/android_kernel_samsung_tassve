#Makefile for capirpc sources
#EXTRA_CFLAGS := -Werror

# **FIXME** temp - to allow sysrpc to build...
ifdef CONFIG_MFD_MAX8986
EXTRA_CFLAGS += -DPMU_MAX8986
else
EXTRA_CFLAGS += -DPMU_BCM59038
endif

EXTRA_CFLAGS += -I drivers/char/brcm/fuse_rpc/rpc_CIB/public/
EXTRA_CFLAGS += -I drivers/char/brcm/fuse_rpc/rpc_CIB/arpc/inc/
#EXTRA_CFLAGS += -I drivers/char/brcm/fuse_rpc/rpc_CIB/srpc/inc/

# common definitons for all capi2 related include paths
include drivers/char/brcm/fuse_ril/CAPI2_CIB/capi2_include_paths.gmk


#**FIXME** MAG - used to prevent redefinition of U_CHAR in various CIB header files
EXTRA_CFLAGS += -D_BSDTYPES_DEFINED -DTYPEDEF_U_CHAR -DTYPEDEF_U_SHORT
# **FIXME** not sure if this one is needed in CIB...
EXTRA_CFLAGS += -DRPC_INCLUDED -DFUSE_APPS_PROCESSOR -DFUSE_DUAL_PROCESSOR_ARCHITECTURE

EXTRA_CFLAGS += -DUNDER_LINUX
EXTRA_CFLAGS += -DSTACK_wedge

obj-$(CONFIG_BRCM_FUSE_RIL_CIB) += \
	src/sys_gen_rpc.o \
	src/sys_hal_rpc.o \
	src/sys_msg.o \
	src/sys_rpc.o \

