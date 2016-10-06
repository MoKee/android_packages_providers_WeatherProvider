LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_STATIC_JAVA_LIBRARIES := \
    org.mokee.platform.internal

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := WeatherProvider
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

LOCAL_AAPT_FLAGS += --rename-manifest-package org.mokee.weather.provider

include $(BUILD_PACKAGE)
