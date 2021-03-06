LOCAL_PATH:= $(call my-dir)

# build device static library
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	reboot.c

LOCAL_MODULE:= libreboot

ifneq ($(TARGET_RECOVERY_PRE_COMMAND),)
	LOCAL_CFLAGS += -DRECOVERY_PRE_COMMAND='$(TARGET_RECOVERY_PRE_COMMAND)'
endif

ifneq ($(TARGET_RECOVERY_PRE_COMMAND_CLEAR_REASON),)
	LOCAL_CFLAGS += -DRECOVERY_PRE_COMMAND_CLEAR_REASON
endif

include $(BUILD_STATIC_LIBRARY)
