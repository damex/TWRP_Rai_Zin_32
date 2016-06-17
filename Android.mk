LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),Rai_Zin_32)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
