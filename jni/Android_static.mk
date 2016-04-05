LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoCrypto
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoCrypto.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoData
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoData.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoDataSQLite
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoDataSQLite.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoJSON
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoJSON.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoMongoDB
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoMongoDB.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoNet
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoNet.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoNetSSL
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoNetSSL.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE    := PocoUtil
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoUtil.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoXML
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoXML.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoZip
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoZip.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoFoundation
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoFoundation.a
include $(PREBUILT_STATIC_LIBRARY)



include $(CLEAR_VARS)

LOCAL_MODULE    := pocoShared
LOCAL_SRC_FILES := pocoDemoJSON.cpp
#LOCAL_SRC_FILES := pocoDemoCrypto.cpp
#LOCAL_SRC_FILES := pocoDemoWorker.cpp


#
# Header Includes
#
LOCAL_C_INCLUDES := \
            $(LOCAL_PATH)/../include
#
# Compile Flags and Link Libraries
#
LOCAL_CFLAGS := -DANDROID_NDK -fexceptions -fpermissive

LOCAL_LDLIBS := -llog
LOCAL_STATIC_LIBRARIES:= PocoCrypto PocoData PocoDataSQLite PocoMongoDB PocoNet PocoNetSSL PocoUtil PocoXML PocoZip  PocoJSON PocoFoundation

include $(BUILD_SHARED_LIBRARY)
