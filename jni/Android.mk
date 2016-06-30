LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoCrypto
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoCrypto.a
include $(PREBUILT_STATIC_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoData
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoData.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoDataSQLite
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoDataSQLite.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoJSON
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoJSON.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoMongoDB
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoMongoDB.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoNet
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoNet.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoNetSSL
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoNetSSL.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoUtil
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoUtil.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoXML
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoXML.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := PocoZip
#LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoZip.a
#include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PocoFoundation
LOCAL_SRC_FILES := ../prebuilt/$(TARGET_ARCH_ABI)/libPocoFoundation.a
include $(PREBUILT_STATIC_LIBRARY)



include $(CLEAR_VARS)

LOCAL_MODULE    := pocoStatic
LOCAL_SRC_FILES := \
					pocoMainStatic.cpp\
Crypto/Cipher.cpp                    \
Crypto/CipherFactory.cpp             \
Crypto/CipherImpl.cpp                \
Crypto/CipherKey.cpp                 \
Crypto/CipherKeyImpl.cpp             \
Crypto/CryptoStream.cpp              \
Crypto/CryptoTransform.cpp           \
Crypto/DigestEngine.cpp              \
Crypto/OpenSSLInitializer.cpp        \
Crypto/RSACipherImpl.cpp             \
Crypto/RSADigestEngine.cpp           \
Crypto/RSAKey.cpp                    \
Crypto/RSAKeyImpl.cpp                \
Crypto/X509Certificate.cpp           \
Foundation/ASCIIEncoding.cpp						    \
Foundation/AbstractObserver.cpp                         \
Foundation/ActiveDispatcher.cpp                         \
Foundation/ArchiveStrategy.cpp                          \
Foundation/Ascii.cpp                                    \
Foundation/AsyncChannel.cpp                             \
Foundation/AtomicCounter.cpp                            \
Foundation/Base32Decoder.cpp                            \
Foundation/Base32Encoder.cpp                            \
Foundation/Base64Decoder.cpp                            \
Foundation/Base64Encoder.cpp                            \
Foundation/BinaryReader.cpp                             \
Foundation/BinaryWriter.cpp                             \
Foundation/Bugcheck.cpp                                 \
Foundation/ByteOrder.cpp                                \
Foundation/Channel.cpp                                  \
Foundation/Checksum.cpp                                 \
Foundation/Clock.cpp                                    \
Foundation/Condition.cpp                                \
Foundation/Configurable.cpp                             \
Foundation/ConsoleChannel.cpp                           \
Foundation/CountingStream.cpp                           \
Foundation/DateTime.cpp                                 \
Foundation/DateTimeFormat.cpp                           \
Foundation/DateTimeFormatter.cpp                        \
Foundation/DateTimeParser.cpp                           \
Foundation/Debugger.cpp                                 \
Foundation/DeflatingStream.cpp                          \
Foundation/DigestEngine.cpp                             \
Foundation/DigestStream.cpp                             \
Foundation/DirectoryIterator.cpp                        \
Foundation/DirectoryIteratorStrategy.cpp                \
Foundation/DirectoryIterator_UNIX.cpp                   \
Foundation/DirectoryIterator_VMS.cpp                    \
Foundation/DirectoryIterator_WIN32.cpp                  \
Foundation/DirectoryIterator_WIN32U.cpp                 \
Foundation/DirectoryWatcher.cpp                         \
Foundation/Environment.cpp                              \
Foundation/Environment_UNIX.cpp                         \
Foundation/Environment_VMS.cpp                          \
Foundation/Environment_VX.cpp                           \
Foundation/Environment_WIN32.cpp                        \
Foundation/Environment_WIN32U.cpp                       \
Foundation/Environment_WINCE.cpp                        \
Foundation/Error.cpp                                    \
Foundation/ErrorHandler.cpp                             \
Foundation/Event.cpp                                    \
Foundation/EventArgs.cpp                                \
Foundation/EventChannel.cpp                             \
Foundation/EventLogChannel.cpp                          \
Foundation/Event_POSIX.cpp                              \
Foundation/Event_VX.cpp                                 \
Foundation/Event_WIN32.cpp                              \
Foundation/Exception.cpp                                \
Foundation/FIFOBufferStream.cpp                         \
Foundation/FPEnvironment.cpp                            \
Foundation/FPEnvironment_C99.cpp                        \
Foundation/FPEnvironment_DEC.cpp                        \
Foundation/FPEnvironment_DUMMY.cpp                      \
Foundation/FPEnvironment_SUN.cpp                        \
Foundation/FPEnvironment_WIN32.cpp                      \
Foundation/File.cpp                                     \
Foundation/FileChannel.cpp                              \
Foundation/FileStream.cpp                               \
Foundation/FileStreamFactory.cpp                        \
Foundation/FileStream_POSIX.cpp                         \
Foundation/FileStream_WIN32.cpp                         \
Foundation/File_UNIX.cpp                                \
Foundation/File_VMS.cpp                                 \
Foundation/File_VX.cpp                                  \
Foundation/File_WIN32.cpp                               \
Foundation/File_WIN32U.cpp                              \
Foundation/File_WINCE.cpp                               \
Foundation/Format.cpp                                   \
Foundation/Formatter.cpp                                \
Foundation/FormattingChannel.cpp                        \
Foundation/Glob.cpp                                     \
Foundation/Hash.cpp                                     \
Foundation/HashStatistic.cpp                            \
Foundation/HexBinaryDecoder.cpp                         \
Foundation/HexBinaryEncoder.cpp                         \
Foundation/InflatingStream.cpp                          \
Foundation/Latin1Encoding.cpp                           \
Foundation/Latin2Encoding.cpp                           \
Foundation/Latin9Encoding.cpp                           \
Foundation/LineEndingConverter.cpp                      \
Foundation/LocalDateTime.cpp                            \
Foundation/LogFile.cpp                                  \
Foundation/LogFile_STD.cpp                              \
Foundation/LogFile_VMS.cpp                              \
Foundation/LogFile_WIN32.cpp                            \
Foundation/LogFile_WIN32U.cpp                           \
Foundation/LogStream.cpp                                \
Foundation/Logger.cpp                                   \
Foundation/LoggingFactory.cpp                           \
Foundation/LoggingRegistry.cpp                          \
Foundation/MD4Engine.cpp                                \
Foundation/MD5Engine.cpp                                \
Foundation/MSG00001.bin                                 \
Foundation/Manifest.cpp                                 \
Foundation/MemoryPool.cpp                               \
Foundation/MemoryStream.cpp                             \
Foundation/Message.cpp                                  \
Foundation/Mutex.cpp                                    \
Foundation/Mutex_POSIX.cpp                              \
Foundation/Mutex_VX.cpp                                 \
Foundation/Mutex_WIN32.cpp                              \
Foundation/Mutex_WINCE.cpp                              \
Foundation/NamedEvent.cpp                               \
Foundation/NamedEvent_Android.cpp                       \
Foundation/NamedEvent_UNIX.cpp                          \
Foundation/NamedEvent_VMS.cpp                           \
Foundation/NamedEvent_WIN32.cpp                         \
Foundation/NamedEvent_WIN32U.cpp                        \
Foundation/NamedMutex.cpp                               \
Foundation/NamedMutex_Android.cpp                       \
Foundation/NamedMutex_UNIX.cpp                          \
Foundation/NamedMutex_VMS.cpp                           \
Foundation/NamedMutex_WIN32.cpp                         \
Foundation/NamedMutex_WIN32U.cpp                        \
Foundation/NestedDiagnosticContext.cpp                  \
Foundation/Notification.cpp                             \
Foundation/NotificationCenter.cpp                       \
Foundation/NotificationQueue.cpp                        \
Foundation/NullChannel.cpp                              \
Foundation/NullStream.cpp                               \
Foundation/NumberFormatter.cpp                          \
Foundation/NumberParser.cpp                             \
Foundation/NumericString.cpp                            \
Foundation/OpcomChannel.cpp                             \
Foundation/Path.cpp                                     \
Foundation/Path_UNIX.cpp                                \
Foundation/Path_VMS.cpp                                 \
Foundation/Path_WIN32.cpp                               \
Foundation/Path_WIN32U.cpp                              \
Foundation/Path_WINCE.cpp                               \
Foundation/PatternFormatter.cpp                         \
Foundation/Pipe.cpp                                     \
Foundation/PipeImpl.cpp                                 \
Foundation/PipeImpl_DUMMY.cpp                           \
Foundation/PipeImpl_POSIX.cpp                           \
Foundation/PipeImpl_WIN32.cpp                           \
Foundation/PipeStream.cpp                               \
Foundation/PriorityNotificationQueue.cpp                \
Foundation/Process.cpp                                  \
Foundation/Process_UNIX.cpp                             \
Foundation/Process_VMS.cpp                              \
Foundation/Process_VX.cpp                               \
Foundation/Process_WIN32.cpp                            \
Foundation/Process_WIN32U.cpp                           \
Foundation/Process_WINCE.cpp                            \
Foundation/PurgeStrategy.cpp                            \
Foundation/RWLock.cpp                                   \
Foundation/RWLock_Android.cpp                           \
Foundation/RWLock_POSIX.cpp                             \
Foundation/RWLock_VX.cpp                                \
Foundation/RWLock_WIN32.cpp                             \
Foundation/RWLock_WINCE.cpp                             \
Foundation/Random.cpp                                   \
Foundation/RandomStream.cpp                             \
Foundation/RefCountedObject.cpp                         \
Foundation/RegularExpression.cpp                        \
Foundation/RotateStrategy.cpp                           \
Foundation/Runnable.cpp                                 \
Foundation/SHA1Engine.cpp                               \
Foundation/Semaphore.cpp                                \
Foundation/Semaphore_POSIX.cpp                          \
Foundation/Semaphore_VX.cpp                             \
Foundation/Semaphore_WIN32.cpp                          \
Foundation/SharedLibrary.cpp                            \
Foundation/SharedLibrary_HPUX.cpp                       \
Foundation/SharedLibrary_UNIX.cpp                       \
Foundation/SharedLibrary_VMS.cpp                        \
Foundation/SharedLibrary_VX.cpp                         \
Foundation/SharedLibrary_WIN32.cpp                      \
Foundation/SharedLibrary_WIN32U.cpp                     \
Foundation/SharedMemory.cpp                             \
Foundation/SharedMemory_DUMMY.cpp                       \
Foundation/SharedMemory_POSIX.cpp                       \
Foundation/SharedMemory_WIN32.cpp                       \
Foundation/SignalHandler.cpp                            \
Foundation/SimpleFileChannel.cpp                        \
Foundation/SortedDirectoryIterator.cpp                  \
Foundation/SplitterChannel.cpp                          \
Foundation/Stopwatch.cpp                                \
Foundation/StreamChannel.cpp                            \
Foundation/StreamConverter.cpp                          \
Foundation/StreamCopier.cpp                             \
Foundation/StreamTokenizer.cpp                          \
Foundation/String.cpp                                   \
Foundation/StringTokenizer.cpp                          \
Foundation/SynchronizedObject.cpp                       \
Foundation/SyslogChannel.cpp                            \
Foundation/Task.cpp                                     \
Foundation/TaskManager.cpp                              \
Foundation/TaskNotification.cpp                         \
Foundation/TeeStream.cpp                                \
Foundation/TemporaryFile.cpp                            \
Foundation/TextBufferIterator.cpp                       \
Foundation/TextConverter.cpp                            \
Foundation/TextEncoding.cpp                             \
Foundation/TextIterator.cpp                             \
Foundation/Thread.cpp                                   \
Foundation/ThreadLocal.cpp                              \
Foundation/ThreadPool.cpp                               \
Foundation/ThreadTarget.cpp                             \
Foundation/Thread_POSIX.cpp                             \
Foundation/Thread_VX.cpp                                \
Foundation/Thread_WIN32.cpp                             \
Foundation/Thread_WINCE.cpp                             \
Foundation/TimedNotificationQueue.cpp                   \
Foundation/Timer.cpp                                    \
Foundation/Timespan.cpp                                 \
Foundation/Timestamp.cpp                                \
Foundation/Timezone.cpp                                 \
Foundation/Timezone_UNIX.cpp                            \
Foundation/Timezone_VX.cpp                              \
Foundation/Timezone_WIN32.cpp                           \
Foundation/Timezone_WINCE.cpp                           \
Foundation/Token.cpp                                    \
Foundation/URI.cpp                                      \
Foundation/URIStreamFactory.cpp                         \
Foundation/URIStreamOpener.cpp                          \
Foundation/UTF16Encoding.cpp                            \
Foundation/UTF32Encoding.cpp                            \
Foundation/UTF8Encoding.cpp                             \
Foundation/UTF8String.cpp                               \
Foundation/UUID.cpp                                     \
Foundation/UUIDGenerator.cpp                            \
Foundation/Unicode.cpp                                  \
Foundation/UnicodeConverter.cpp                         \
Foundation/Var.cpp                                      \
Foundation/VarHolder.cpp                                \
Foundation/VarIterator.cpp                              \
Foundation/Void.cpp                                     \
Foundation/Windows1250Encoding.cpp                      \
Foundation/Windows1251Encoding.cpp                      \
Foundation/Windows1252Encoding.cpp                      \
Foundation/WindowsConsoleChannel.cpp                    \
Foundation/adler32.c                                    \
Foundation/bignum-dtoa.cc                               \
Foundation/bignum-dtoa.h                                \
Foundation/bignum.cc                                    \
Foundation/bignum.h                                     \
Foundation/cached-powers.cc                             \
Foundation/cached-powers.h                              \
Foundation/compress.c                                   \
Foundation/crc32.c                                      \
Foundation/crc32.h                                      \
Foundation/deflate.c                                    \
Foundation/deflate.h                                    \
Foundation/diy-fp.cc                                    \
Foundation/diy-fp.h                                     \
Foundation/double-conversion.cc                         \
Foundation/double-conversion.h                          \
Foundation/fast-dtoa.cc                                 \
Foundation/fast-dtoa.h                                  \
Foundation/fixed-dtoa.cc                                \
Foundation/fixed-dtoa.h                                 \
Foundation/gzguts.h                                     \
Foundation/ieee.h                                       \
Foundation/infback.c                                    \
Foundation/inffast.c                                    \
Foundation/inffast.h                                    \
Foundation/inffixed.h                                   \
Foundation/inflate.c                                    \
Foundation/inflate.h                                    \
Foundation/inftrees.c                                   \
Foundation/inftrees.h                                   \
Foundation/pcre.h                                       \
Foundation/pcre_byte_order.c                            \
Foundation/pcre_chartables.c                            \
Foundation/pcre_compile.c                               \
Foundation/pcre_config.c                                \
Foundation/pcre_config.h                                \
Foundation/pcre_dfa_exec.c                              \
Foundation/pcre_exec.c                                  \
Foundation/pcre_fullinfo.c                              \
Foundation/pcre_get.c                                   \
Foundation/pcre_globals.c                               \
Foundation/pcre_internal.h                              \
Foundation/pcre_jit_compile.c                           \
Foundation/pcre_maketables.c                            \
Foundation/pcre_newline.c                               \
Foundation/pcre_ord2utf8.c                              \
Foundation/pcre_refcount.c                              \
Foundation/pcre_string_utils.c                          \
Foundation/pcre_study.c                                 \
Foundation/pcre_tables.c                                \
Foundation/pcre_ucd.c                                   \
Foundation/pcre_valid_utf8.c                            \
Foundation/pcre_version.c                               \
Foundation/pcre_xclass.c                                \
Foundation/pocomsg.mc                                   \
Foundation/strtod.cc                                    \
Foundation/strtod.h                                     \
Foundation/trees.c                                      \
Foundation/trees.h                                      \
Foundation/trial.txt                                    \
Foundation/ucp.h                                        \
Foundation/utils.h                                      \
Foundation/zconf.h                                      \
Foundation/zlib.h                                       \
Foundation/zutil.c                                      \
Foundation/zutil.h                                      \

				   
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
LOCAL_CFLAGS := -DANDROID_NDK -fexceptions -fpermissive -frtti

LOCAL_LDLIBS := -llog
LOCAL_STATIC_LIBRARIES:= PocoCrypto PocoData PocoDataSQLite PocoMongoDB PocoNet PocoNetSSL PocoUtil PocoXML PocoZip  PocoJSON PocoFoundation

include $(BUILD_SHARED_LIBRARY)
