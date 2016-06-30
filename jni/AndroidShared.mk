LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoNet
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoNet.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoJSON
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoJSON.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoFoundation
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoFoundation.so
include $(PREBUILT_SHARED_LIBRARY)



include $(CLEAR_VARS)

LOCAL_MODULE    := pocoShared
LOCAL_SRC_FILES :=  pocoMainShared.cpp	
#LOCAL_SRC_FILES := pocoDemoJSON.cpp
#LOCAL_SRC_FILES := pocoDemoCrypto.cpp
#LOCAL_SRC_FILES := pocoDemoWorker.cpp


#
# Header Includes
#
LOCAL_C_INCLUDES := \
            $(LOCAL_PATH)/../include 	\
	     /Users/saba/usr/local/Cellar/openssl/1.0.2d_1/include
#
# Compile Flags and Link Libraries
#
LOCAL_CFLAGS := -DANDROID_NDK -fexceptions -fpermissive -frtti 

LOCAL_LDLIBS := -llog
LOCAL_SHARED_LIBRARIES:= PocoNet PocoJSON PocoFoundation

include $(BUILD_SHARED_LIBRARY)
