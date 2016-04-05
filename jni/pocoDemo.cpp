#include <jni.h>
#include <string.h>
#include <stdlib.h>
//#include <android/log.h>

//#define LOG_TAG "pocoDemo"
//#define LOGI(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
//#define printf(...) LOGI(__VA_ARGS__)

#include "Poco/Logger.h"
#include "Poco/PatternFormatter.h"
#include "Poco/FormattingChannel.h"
#include "Poco/ConsoleChannel.h"
#include "Poco/FileChannel.h"
#include "Poco/Message.h"


using Poco::Logger;
using Poco::PatternFormatter;
using Poco::FormattingChannel;
using Poco::ConsoleChannel;
using Poco::FileChannel;
using Poco::Message;

extern "C" {

JNIEXPORT void Java_com_demo_pocodemo_MainActivity_SamplePOCO(JNIEnv* env, jobject thiz) {
	// set up two channel chains - one to the
		// console and the other one to a log file.
		FormattingChannel* pFCConsole = new FormattingChannel(new PatternFormatter("%s: %p: %t"));
		pFCConsole->setChannel(new ConsoleChannel());
		pFCConsole->open();

		FormattingChannel* pFCFile = new FormattingChannel(new PatternFormatter("%Y-%m-%d %H:%M:%S.%c %N[%P]:%s:%q:%t"));
		pFCFile->setChannel(new FileChannel("sample.log"));
		pFCFile->open();

		// create two Logger objects - one for
		// each channel chain.
		Logger& consoleLogger = Logger::create("ConsoleLogger", pFCConsole, Message::PRIO_INFORMATION);
		Logger& fileLogger    = Logger::create("FileLogger", pFCFile, Message::PRIO_WARNING);

		// log some messages
		consoleLogger.error("An error message");
		fileLogger.error("An error message");

		consoleLogger.warning("A warning message");
		fileLogger.error("A warning message");

		consoleLogger.information("An information message");
		fileLogger.information("An information message");

		poco_information(consoleLogger, "Another informational message");
		poco_warning_f2(consoleLogger, "A warning message with arguments: %d, %d", 1, 2);

		Logger::get("ConsoleLogger").error("Another error message");

}

JNIEXPORT jstring Java_com_demo_pocodemo_MainActivity_stringFromJNI(JNIEnv* env, jobject thiz) {
	#if defined(__arm__)
	#if defined(__ARM_ARCH_7A__)
	#if defined(__ARM_NEON__)
	#if defined(__ARM_PCS_VFP)
	#define ABI "armeabi-v7a/NEON (hard-float)"
	#else
	#define ABI "armeabi-v7a/NEON"
	#endif
	#else
	#if defined(__ARM_PCS_VFP)
	#define ABI "armeabi-v7a (hard-float)"
	#else
	#define ABI "armeabi-v7a"
	#endif
	#endif
	#else
	#define ABI "armeabi"
	#endif
	#elif defined(__i386__)
	#define ABI "x86"
	#elif defined(__x86_64__)
	#define ABI "x86_64"
	#elif defined(__mips64)  /* mips64el-* toolchain defines __mips__ too */
	#define ABI "mips64"
	#elif defined(__mips__)
	#define ABI "mips"
	#elif defined(__aarch64__)
	#define ABI "arm64-v8a"
	#else
	#define ABI "unknown"
	#endif

	return env->NewStringUTF("Hello from JNI !  Compiled with ABI " ABI ".");
}
}
