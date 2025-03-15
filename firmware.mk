LOCAL_PATH := $(call my-dir)

ifneq ($(filter kvim3l kvim3l_car kvim3l_tab,$(TARGET_DEVICE)),)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))

endif
