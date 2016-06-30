#include <jni.h>
#include <string.h>
#include <stdlib.h>
//#include <android/log.h>

//#define LOG_TAG "pocoDemo"
//#define LOGI(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
//#define printf(...) LOGI(__VA_ARGS__)


#include "Poco/Crypto/Cipher.h"
#include "Poco/Crypto/CipherFactory.h"
#include "Poco/Crypto/RSAKey.h"
#include <iostream>

using Poco::Crypto::Cipher;
using Poco::Crypto::CipherFactory;
using Poco::Crypto::RSAKey;
using namespace std;

#ifdef __cplusplus
extern "C"
{



	JNIEXPORT void Java_com_demo_pocodemo_MainActivity_SamplePOCO(JNIEnv* env, jobject thiz) {

		CipherFactory& factory = CipherFactory::defaultFactory();
		// Creates a 256-bit AES cipher
		Cipher* pCipher = factory.createCipher(CipherKey("aes-256"));
		Cipher* pRSACipher = factory.createCipher(RSAKey(RSAKey::KL_1024, RSAKey::EXP_SMALL));

		std::string plainText = "This is my secret information";
		std::string encrypted = pCipher->encryptString(plainText, Cipher::ENC_BASE64);
		std::string decrypted = pCipher->decryptString(encrypted, Cipher::ENC_BASE64);



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
#endif
