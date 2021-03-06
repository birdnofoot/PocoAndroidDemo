#include <jni.h>
#include <string.h>
#include <stdlib.h>
#include <iostream>
#include <android/log.h>

#define LOG_TAG "PocoDemo"
#define LOGI(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define printf(...) LOGI(__VA_ARGS__)

using namespace std;

#include <Poco/JSON/Object.h>
#include <Poco/JSON/Array.h>
#include <Poco/JSON/JSON.h>
#include <Poco/JSON/Stringifier.h>
#include <Poco/JSON/Parser.h>
#include <Poco/JSON/JSONException.h>
#include <Poco/Dynamic/Var.h>
#include <Poco/JSON/Handler.h>
#include <Poco/JSON/PrintHandler.h>
#include "Poco/DateTime.h"
#include "Poco/DateTimeFormat.h"
#include "Poco/DateTimeFormatter.h"
#include "Poco/Uri.h"


#include "Poco/Runnable.h"
#include "Poco/Thread.h"
using Poco::Runnable;


//#include "Poco/Crypto/Cipher.h"
//#include "Poco/Crypto/CipherFactory.h"
//#include "Poco/Crypto/RSAKey.h"
//using Poco::Crypto::Cipher;
//using Poco::Crypto::CipherFactory;
//using Poco::Crypto::RSAKey;




#include "Poco/Net/StreamSocket.h"
#include "Poco/Net/SocketStream.h"
#include "Poco/Net/SocketAddress.h"
#include "Poco/StreamCopier.h"
#include "Poco/Path.h"
#include "Poco/Exception.h"
#include "Poco/Net/Context.h"
#include "Poco/Net/HTTPSClientSession.h"
#include "Poco/Net/HTTPRequest.h"
#include "Poco/Net/SSLException.h"
#include "Poco/Net/HTTPCookie.h"
#include "Poco/Net/HTTPResponse.h"

using Poco::Net::StreamSocket;
using Poco::Net::SocketStream;
using Poco::Net::SocketAddress;
using Poco::StreamCopier;
using Poco::Path;
using Poco::Exception;

#ifdef __cplusplus
extern "C"
{



JNIEXPORT jstring Java_com_demo_pocodemo_MainActivity_SamplePOCO(JNIEnv* env, jobject thiz) {

	std::ostringstream strStream;

	//	strStream << " was at " << Poco::DateTimeFormatter::format(Poco::Timestamp, "%d/%n/%y");
	strStream << " and days has passed since than!";

	//	CAppLogger::Instance().Log(strStream, Poco::Message::PRIO_NOTICE);

	const char* str = strStream.str().c_str();
	return env->NewStringUTF(str);
}

//JNIEXPORT void Java_com_demo_pocodemo_MainActivity_NetDictDemo(JNIEnv* env, jobject thiz) {
//
//	try
//	{
//		const Poco::URI uri( "https://localhost.com" );
//		const Poco::Net::Context::Ptr context( new Poco::Net::Context( Poco::Net::Context::CLIENT_USE, "", "", "rootcert.pem" ) );
//		Poco::Net::HTTPSClientSession session(uri.getHost(), uri.getPort(), context );
//		Poco::Net::HTTPRequest req(Poco::Net::HTTPRequest::HTTP_POST, "/login.php" );
//		req.setContentType("Content-Type: application/x-www-form-urlencoded\r\n");
//		req.setKeepAlive(true);
//
//		std::string reqBody("username=???&password=???&action_login=Log+In\r\n\r\n");
//		req.setContentLength( reqBody.length() );
//
//		//Poco::Net::HTTPBasicCredentials cred("???", "???");
//		//cred.authenticate(req);
//		session.sendRequest(req) << reqBody;
//		Poco::Net::HTTPResponse res;
//		std::istream& rs = session.receiveResponse(res);
//		std::string resp;
//
//		std::vector<Poco::Net::HTTPCookie> cookies;
//		res.getCookies( cookies );
//	}
//	catch( const Poco::Net::SSLException& e )
//	{
//		std::cerr << e.what() << ": " << e.message() << std::endl;
//	}
//	catch( const std::exception& e )
//	{
//		std::cerr << e.what() << std::endl;;
//	}
//
//}

class Worker:public Poco::Runnable{
public:
	Worker(int n):_id(n){}
	virtual void run() {
		printf("i'm worker: %d", _id);
	}
private:
	int _id;
};

JNIEXPORT jstring Java_com_demo_pocodemo_MainActivity_WorkerThreadDemo(JNIEnv* env, jobject thiz) {

	Worker work1(100);
	Worker work2(200);

	Poco::Thread thread1;
	Poco::Thread thread2;

	thread1.start(work1);
	thread2.start(work2);

	thread1.join();
	thread2.join();

}

JNIEXPORT void Java_com_demo_pocodemo_MainActivity_JSONDemo(JNIEnv* env, jobject thiz) {

	// smart pointer, so don't worry about cleaning up
	Poco::JSON::Object::Ptr inner = new Poco::JSON::Object;
	inner->set("some_number", 5);
	inner->set("some_string", "xyz");

	std::string key = "new_object";
	Poco::JSON::Object::Ptr result = new Poco::JSON::Object;
	result->set(key, inner);
	printf("isObject: %i\n", result->isObject(key)); // true

	printf("size of inner json obj : %i\n", inner->size()); // true
}

//JNIEXPORT void Java_com_demo_pocodemo_MainActivity_CryptoDemo(JNIEnv* env, jobject thiz) {
//
//	CipherFactory& factory = CipherFactory::defaultFactory();
//	// Creates a 256-bit AES cipher
//	Cipher* pCipher = factory.createCipher(CipherKey("aes-256"));
//	Cipher* pRSACipher = factory.createCipher(RSAKey(RSAKey::KL_1024, RSAKey::EXP_SMALL));
//
//	std::string plainText = "This is my secret information";
//	std::string encrypted = pCipher->encryptString(plainText, Cipher::ENC_BASE64);
//	std::string decrypted = pCipher->decryptString(encrypted, Cipher::ENC_BASE64);
//
//	printf("Plain text is %s\n", plainText.c_str());
//	printf("Plain text encrypted is %s", encrypted.c_str());
//	printf("Plain text decrypted is %s", decrypted.c_str());
//
//}


JNIEXPORT void Java_com_demo_pocodemo_MainActivity_DateTimeSample(JNIEnv* env, jobject thiz)
{
	Poco::DateTime dt(2006, 10, 22, 15, 22, 34);
	std::string s(Poco::DateTimeFormatter::format(dt, "%e %b %Y %H:%M"));
	printf("String 1 = %s",s.c_str());
	//EXPECT_EQ("22 Oct 2006 15:22", s);
	// "22 Oct 2006 15:22"

	Poco::Timestamp now;
	s = Poco::DateTimeFormatter::format(now, Poco::DateTimeFormat::SORTABLE_FORMAT);
	std::string ssss = Poco::DateTimeFormatter::format(now, Poco::DateTimeFormat::SORTABLE_FORMAT);
	printf("String 2 = %s",ssss.c_str());
	//EXPECT_EQ(ssss, s);
	// "2006-10-30 09:27:44"

	Poco::Timespan span(5, 11, 33, 0, 0);
	s = Poco::DateTimeFormatter::format(span, "%d days, %H hours, %M minutes");
	printf("String 3 = %s",s.c_str());
	//EXPECT_EQ("5 days, 11 hours, 33 minutes", s);
	// "5 days, 11 hours, 33 minutes"
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
