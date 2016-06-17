LOCAL_PATH := device/Onkyo/Rai_Zin_32

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := Rai_Zin_32
