; ModuleID = 'typemaps.arm64-v8a.ll'
source_filename = "typemaps.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 3, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 110, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [3 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x2f, i8 u0xd3, i8 u0x09, i8 u0xc4, i8 u0xda, i8 u0x42, i8 u0x65, i8 u0x4d, i8 u0x90, i8 u0xeb, i8 u0x50, i8 u0x9a, i8 u0x0b, i8 u0xe3, i8 u0xd0, i8 u0xb4 ], ; module_uuid: c409d32f-42da-4d65-90eb-509a0be3d0b4
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Celeste.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xa3, i8 u0x40, i8 u0x50, i8 u0x4e, i8 u0x29, i8 u0x7c, i8 u0xd4, i8 u0x48, i8 u0x84, i8 u0x19, i8 u0xb7, i8 u0xf8, i8 u0x53, i8 u0x89, i8 u0xe2, i8 u0x13 ], ; module_uuid: 4e5040a3-7c29-48d4-8419-b7f85389e213
		i32 105, ; uint32_t entry_count
		i32 36, ; uint32_t duplicate_count
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xc8, i8 u0x0a, i8 u0xf4, i8 u0x80, i8 u0x4a, i8 u0x11, i8 u0xb8, i8 u0x4d, i8 u0xab, i8 u0x65, i8 u0x90, i8 u0xcf, i8 u0x20, i8 u0x42, i8 u0x04, i8 u0xb6 ], ; module_uuid: 80f40ac8-114a-4db8-ab65-90cf204204b6
		i32 4, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: MonoGame.Framework
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	} ; 2
], align 8

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [110 x i64] [
	i64 u0x087fb80a227e5598, ; 0 => android/view/OrientationEventListener
	i64 u0x0b1da699fb29019a, ; 1 => android/os/BaseBundle
	i64 u0x0e06a6e8c0440173, ; 2 => crc64493ac3851fab1842/OrientationListener
	i64 u0x11487815b4917a9b, ; 3 => javax/microedition/khronos/egl/EGLConfig
	i64 u0x1759b71b41bc5f1b, ; 4 => android/content/pm/PackageItemInfo
	i64 u0x1e04bf19f9c14045, ; 5 => android/util/AttributeSet
	i64 u0x1e69018626ef9ffb, ; 6 => android/os/Handler
	i64 u0x1eef7492beaf81e2, ; 7 => android/os/IInterface
	i64 u0x1f60d95e7953fe94, ; 8 => android/media/AudioManager
	i64 u0x20c60d9d7d4c5026, ; 9 => android/provider/Settings$System
	i64 u0x22436d73eb9797a7, ; 10 => android/content/IntentFilter
	i64 u0x225c20a45cb91cd7, ; 11 => java/lang/Error
	i64 u0x228edb5145b4bbc1, ; 12 => android/view/InputEvent
	i64 u0x24d34cdbf04208f8, ; 13 => android/window/InputTransferToken
	i64 u0x2e53f681878e0c07, ; 14 => android/util/AndroidException
	i64 u0x321c29cf8c6f7a93, ; 15 => android/content/res/Resources
	i64 u0x32d6a1d6ee9f6d5a, ; 16 => android/content/Intent
	i64 u0x333aab094589d187, ; 17 => javax/microedition/khronos/egl/EGL10
	i64 u0x33eb4c8b20982c90, ; 18 => crc64493ac3851fab1842/AndroidGameActivity
	i64 u0x3eb16b7dcf56c048, ; 19 => android/provider/Settings$SettingNotFoundException
	i64 u0x406e54c64b3bee74, ; 20 => android/runtime/JavaProxyThrowable
	i64 u0x40c05cff47992547, ; 21 => android/view/ViewGroup
	i64 u0x48e1abb584b78c94, ; 22 => java/io/Writer
	i64 u0x4da4ac13d373d9d4, ; 23 => android/view/SurfaceHolder$Callback
	i64 u0x4f858ea9c9162f43, ; 24 => android/os/IBinder
	i64 u0x505b1379ff157a72, ; 25 => android/view/Surface
	i64 u0x5181b129b1a25949, ; 26 => java/lang/Class
	i64 u0x53fff212036ac456, ; 27 => javax/microedition/khronos/egl/EGL
	i64 u0x55ad657acdd3959a, ; 28 => javax/microedition/khronos/egl/EGLSurface
	i64 u0x56365290d5a06704, ; 29 => java/lang/LinkageError
	i64 u0x5681ede87251094b, ; 30 => android/graphics/Point
	i64 u0x57fe4a40460344db, ; 31 => android/os/Build$VERSION
	i64 u0x58f3414ff259c4b8, ; 32 => android/view/WindowManager
	i64 u0x5a6af884fe3c181e, ; 33 => android/os/Bundle
	i64 u0x5ada57ed19188a73, ; 34 => android/media/MediaPlayer
	i64 u0x5bfd65ae1a6e6ffc, ; 35 => android/app/Activity
	i64 u0x5c2a60c822a3770a, ; 36 => android/view/Choreographer
	i64 u0x5e1c513312ebc1b3, ; 37 => android/view/KeyEvent
	i64 u0x5e38b925960b7be9, ; 38 => android/graphics/Rect
	i64 u0x5f5a9fc3430795a4, ; 39 => android/content/ContextWrapper
	i64 u0x6149cc868c1eff6d, ; 40 => android/view/SurfaceControlInputReceiver
	i64 u0x62daf35c931c09d6, ; 41 => android/content/BroadcastReceiver
	i64 u0x65f6b14b7e978927, ; 42 => java/io/IOException
	i64 u0x6e0fb15bd0f04d15, ; 43 => java/lang/StackTraceElement
	i64 u0x6ef4975bdb7af18f, ; 44 => android/view/MotionEvent
	i64 u0x6ef7816e17e24358, ; 45 => android/graphics/Canvas
	i64 u0x703efa6e1ccb459a, ; 46 => android/window/TrustedPresentationThresholds
	i64 u0x71715828b1fce114, ; 47 => android/view/InputDevice
	i64 u0x75591c18ddf5e52d, ; 48 => mono/android/TypeManager
	i64 u0x76cbd2104dd555ed, ; 49 => android/content/Context
	i64 u0x7bc72d027e66ad3c, ; 50 => android/view/Display
	i64 u0x7e201ad40955df46, ; 51 => android/os/Parcel
	i64 u0x8088098b52e9f916, ; 52 => android/app/KeyguardManager
	i64 u0x852b5457ebdd5c87, ; 53 => android/view/ViewGroup$LayoutParams
	i64 u0x88f7510c649f4a97, ; 54 => java/io/InputStream
	i64 u0x89bb78ecf66b1453, ; 55 => android/view/SurfaceControl
	i64 u0x8c9cbedbb1657afd, ; 56 => android/content/pm/ApplicationInfo
	i64 u0x90b4aeb45636cd6a, ; 57 => mono/android/runtime/OutputStreamAdapter
	i64 u0x912b555aa0007288, ; 58 => android/view/ViewManager
	i64 u0x92188d393e2af2d2, ; 59 => java/lang/Throwable
	i64 u0x92b59c839bc46278, ; 60 => java/lang/Thread
	i64 u0x965bfaf1ff1da014, ; 61 => java/lang/ReflectiveOperationException
	i64 u0x966d53c70495b4c0, ; 62 => crc64493ac3851fab1842/MonoGameAndroidGameView
	i64 u0x99b4bc4a856dc9da, ; 63 => android/content/pm/PackageManager
	i64 u0x99df91bab800c287, ; 64 => mono/android/runtime/InputStreamAdapter
	i64 u0x9a68fa465ca8abf9, ; 65 => java/io/FileDescriptor
	i64 u0x9e10a0b3efa170dc, ; 66 => android/view/ContextThemeWrapper
	i64 u0x9fffe5ad5d77dedd, ; 67 => android/os/Vibrator
	i64 u0xa588668feb1b05b9, ; 68 => android/view/SurfaceView
	i64 u0xa865adbdd81d9951, ; 69 => java/io/OutputStream
	i64 u0xaa7b11cdd6000676, ; 70 => android/provider/Settings
	i64 u0xabc3cd0f40f748aa, ; 71 => java/lang/String
	i64 u0xb18d71343ca8e96f, ; 72 => java/lang/Exception
	i64 u0xb3af78a90094279d, ; 73 => crc64493ac3851fab1842/ScreenReceiver
	i64 u0xb69317d4cbae2478, ; 74 => android/content/res/Configuration
	i64 u0xb7f60ace3fa0816b, ; 75 => android/view/Window
	i64 u0xb8df224d6b778ca3, ; 76 => android/view/View
	i64 u0xbb84ccbe48f6c18b, ; 77 => android/os/Looper
	i64 u0xbf6d427143271cb3, ; 78 => java/lang/Object
	i64 u0xc00f4c2f11efdcff, ; 79 => java/lang/ClassNotFoundException
	i64 u0xc2a8e50a5f08afc6, ; 80 => mono/java/lang/RunnableImplementor
	i64 u0xc9907bd32c160fff, ; 81 => android/util/Log
	i64 u0xc99e090e60d66f58, ; 82 => java/io/StringWriter
	i64 u0xcb4af9b128fa333f, ; 83 => android/view/SurfaceHolder
	i64 u0xcc306823503920e9, ; 84 => android/app/Application
	i64 u0xccd0f5b101ef6e90, ; 85 => android/os/VibratorManager
	i64 u0xcf25eade7e8c1364, ; 86 => crc64e2621b4f9a3744e4/Activity1
	i64 u0xd209f455b02d0c6b, ; 87 => android/media/MediaPlayer$OnCompletionListener
	i64 u0xd5a28b8fa6d48e71, ; 88 => android/os/Build
	i64 u0xd7bf0ca2c70de05c, ; 89 => android/util/DisplayMetrics
	i64 u0xdbb76cb30e7b6509, ; 90 => android/content/ContentResolver
	i64 u0xe024b538ad65ea66, ; 91 => java/util/function/Consumer
	i64 u0xe0446bf91fb0c2dd, ; 92 => java/lang/NoClassDefFoundError
	i64 u0xe1b3c5871398eb28, ; 93 => java/nio/channels/FileChannel
	i64 u0xe38528954b158fff, ; 94 => java/util/concurrent/Executor
	i64 u0xe39829b35e720e04, ; 95 => java/util/function/IntConsumer
	i64 u0xe7c5168fd08808ad, ; 96 => android/content/res/AssetFileDescriptor
	i64 u0xe8d0c30ab85673ff, ; 97 => android/view/View$OnTouchListener
	i64 u0xe94dd9d7a0bada9f, ; 98 => android/content/res/AssetManager
	i64 u0xed49ed70aa9be1b3, ; 99 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 u0xeed97b1a03611806, ; 100 => javax/microedition/khronos/egl/EGLContext
	i64 u0xef2f2996a1d369cc, ; 101 => java/io/FileInputStream
	i64 u0xef953c41325a3428, ; 102 => java/io/PrintWriter
	i64 u0xf15bb28304fee21c, ; 103 => android/provider/Settings$NameValueTable
	i64 u0xf2c41c638398c823, ; 104 => mono/android/media/MediaPlayer_OnCompletionListenerImplementor
	i64 u0xfc1f778c1b18818c, ; 105 => android/view/KeyCharacterMap
	i64 u0xfd2b1a3de667eb51, ; 106 => java/lang/Runnable
	i64 u0xfd45cc49d3236300, ; 107 => android/os/IBinder$DeathRecipient
	i64 u0xfd853b4373fcc7f1, ; 108 => android/view/WindowMetrics
	i64 u0xff1fe60c1de18005 ; 109 => javax/microedition/khronos/egl/EGLDisplay
], align 8

@module0_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000002, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	} ; 0
], align 4

@module1_managed_to_java = internal dso_local constant [105 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 100; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 109; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 13; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 103; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 19; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 81; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 14; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 89; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 67; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 88; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 107; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 77; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 51; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 87; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 104; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 76; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 97; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 47; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 105; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 44; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 66; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 50; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 12; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 58; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 25; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 68; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 108; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 64; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 57; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 45; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 30; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 49; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 16; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 90; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 96; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 98; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 74; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 15; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020000db, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020000df, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 35; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 84; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 52; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 93; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 99; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 65; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 101; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020000f2, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 102; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x020000f6, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x020000f8, ; uint32_t type_token_id
		i32 91; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x020000fa, ; uint32_t type_token_id
		i32 95; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x020000fc, ; uint32_t type_token_id
		i32 94; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 79; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000100, ; uint32_t type_token_id
		i32 72; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000101, ; uint32_t type_token_id
		i32 78; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000102, ; uint32_t type_token_id
		i32 71; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000104, ; uint32_t type_token_id
		i32 60; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000105, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x02000106, ; uint32_t type_token_id
		i32 59; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x02000107, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x02000108, ; uint32_t type_token_id
		i32 106; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x0200010a, ; uint32_t type_token_id
		i32 29; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x0200010b, ; uint32_t type_token_id
		i32 92; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 61; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x0200010d, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000119, ; uint32_t type_token_id
		i32 48; uint32_t java_map_index
	} ; 104
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [36 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 100; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 109; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 107; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 67; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 87; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 97; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 12; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 58; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 90; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 49; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 93; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 99; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020000f7, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 91; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020000fb, ; uint32_t type_token_id
		i32 95; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020000fd, ; uint32_t type_token_id
		i32 94; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000109, ; uint32_t type_token_id
		i32 106; uint32_t java_map_index
	} ; 35
], align 4

@module2_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000115, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000119, ; uint32_t type_token_id
		i32 62; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 2; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000123, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	} ; 3
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [110 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000092, ; uint32_t type_token_id
		i32 48; uint32_t java_name_index
	}, ; 0
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 18; uint32_t java_name_index
	}, ; 1
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000122, ; uint32_t type_token_id
		i32 108; uint32_t java_name_index
	}, ; 2
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000043, ; uint32_t type_token_id
		i32 1; uint32_t java_name_index
	}, ; 3
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000df, ; uint32_t type_token_id
		i32 73; uint32_t java_name_index
	}, ; 4
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 15; uint32_t java_name_index
	}, ; 5
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 16; uint32_t java_name_index
	}, ; 6
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 24; uint32_t java_name_index
	}, ; 7
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 28; uint32_t java_name_index
	}, ; 8
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 11; uint32_t java_name_index
	}, ; 9
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 66; uint32_t java_name_index
	}, ; 10
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000107, ; uint32_t type_token_id
		i32 98; uint32_t java_name_index
	}, ; 11
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 42; uint32_t java_name_index
	}, ; 12
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 6; uint32_t java_name_index
	}, ; 13
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 13; uint32_t java_name_index
	}, ; 14
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000da, ; uint32_t type_token_id
		i32 70; uint32_t java_name_index
	}, ; 15
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 62; uint32_t java_name_index
	}, ; 16
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 5; uint32_t java_name_index
	}, ; 17
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000115, ; uint32_t type_token_id
		i32 106; uint32_t java_name_index
	}, ; 18
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000052, ; uint32_t type_token_id
		i32 10; uint32_t java_name_index
	}, ; 19
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 56; uint32_t java_name_index
	}, ; 20
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 52; uint32_t java_name_index
	}, ; 21
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000f6, ; uint32_t type_token_id
		i32 86; uint32_t java_name_index
	}, ; 22
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 44; uint32_t java_name_index
	}, ; 23
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 23; uint32_t java_name_index
	}, ; 24
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000094, ; uint32_t type_token_id
		i32 49; uint32_t java_name_index
	}, ; 25
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 90; uint32_t java_name_index
	}, ; 26
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 4; uint32_t java_name_index
	}, ; 27
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 3; uint32_t java_name_index
	}, ; 28
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200010a, ; uint32_t type_token_id
		i32 100; uint32_t java_name_index
	}, ; 29
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 59; uint32_t java_name_index
	}, ; 30
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 20; uint32_t java_name_index
	}, ; 31
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 47; uint32_t java_name_index
	}, ; 32
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 21; uint32_t java_name_index
	}, ; 33
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 29; uint32_t java_name_index
	}, ; 34
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 74; uint32_t java_name_index
	}, ; 35
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000080, ; uint32_t type_token_id
		i32 39; uint32_t java_name_index
	}, ; 36
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 36; uint32_t java_name_index
	}, ; 37
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 60; uint32_t java_name_index
	}, ; 38
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 65; uint32_t java_name_index
	}, ; 39
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 43; uint32_t java_name_index
	}, ; 40
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 63; uint32_t java_name_index
	}, ; 41
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 82; uint32_t java_name_index
	}, ; 42
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200010d, ; uint32_t type_token_id
		i32 103; uint32_t java_name_index
	}, ; 43
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 37; uint32_t java_name_index
	}, ; 44
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 58; uint32_t java_name_index
	}, ; 45
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 7; uint32_t java_name_index
	}, ; 46
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 34; uint32_t java_name_index
	}, ; 47
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000119, ; uint32_t type_token_id
		i32 104; uint32_t java_name_index
	}, ; 48
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 61; uint32_t java_name_index
	}, ; 49
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000082, ; uint32_t type_token_id
		i32 41; uint32_t java_name_index
	}, ; 50
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 26; uint32_t java_name_index
	}, ; 51
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 76; uint32_t java_name_index
	}, ; 52
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 53; uint32_t java_name_index
	}, ; 53
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 81; uint32_t java_name_index
	}, ; 54
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000095, ; uint32_t type_token_id
		i32 50; uint32_t java_name_index
	}, ; 55
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 72; uint32_t java_name_index
	}, ; 56
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 57; uint32_t java_name_index
	}, ; 57
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 46; uint32_t java_name_index
	}, ; 58
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000106, ; uint32_t type_token_id
		i32 97; uint32_t java_name_index
	}, ; 59
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000104, ; uint32_t type_token_id
		i32 95; uint32_t java_name_index
	}, ; 60
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 102; uint32_t java_name_index
	}, ; 61
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000119, ; uint32_t type_token_id
		i32 107; uint32_t java_name_index
	}, ; 62
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000db, ; uint32_t type_token_id
		i32 71; uint32_t java_name_index
	}, ; 63
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 55; uint32_t java_name_index
	}, ; 64
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 79; uint32_t java_name_index
	}, ; 65
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000081, ; uint32_t type_token_id
		i32 40; uint32_t java_name_index
	}, ; 66
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 17; uint32_t java_name_index
	}, ; 67
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 51; uint32_t java_name_index
	}, ; 68
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000f2, ; uint32_t type_token_id
		i32 83; uint32_t java_name_index
	}, ; 69
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 8; uint32_t java_name_index
	}, ; 70
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000102, ; uint32_t type_token_id
		i32 94; uint32_t java_name_index
	}, ; 71
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000100, ; uint32_t type_token_id
		i32 92; uint32_t java_name_index
	}, ; 72
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000123, ; uint32_t type_token_id
		i32 109; uint32_t java_name_index
	}, ; 73
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 69; uint32_t java_name_index
	}, ; 74
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 38; uint32_t java_name_index
	}, ; 75
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000077, ; uint32_t type_token_id
		i32 32; uint32_t java_name_index
	}, ; 76
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 25; uint32_t java_name_index
	}, ; 77
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000101, ; uint32_t type_token_id
		i32 93; uint32_t java_name_index
	}, ; 78
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 91; uint32_t java_name_index
	}, ; 79
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000105, ; uint32_t type_token_id
		i32 96; uint32_t java_name_index
	}, ; 80
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 12; uint32_t java_name_index
	}, ; 81
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 85; uint32_t java_name_index
	}, ; 82
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 45; uint32_t java_name_index
	}, ; 83
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 75; uint32_t java_name_index
	}, ; 84
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 27; uint32_t java_name_index
	}, ; 85
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000002, ; uint32_t type_token_id
		i32 105; uint32_t java_name_index
	}, ; 86
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 30; uint32_t java_name_index
	}, ; 87
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 19; uint32_t java_name_index
	}, ; 88
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 14; uint32_t java_name_index
	}, ; 89
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 64; uint32_t java_name_index
	}, ; 90
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 87; uint32_t java_name_index
	}, ; 91
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200010b, ; uint32_t type_token_id
		i32 101; uint32_t java_name_index
	}, ; 92
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 77; uint32_t java_name_index
	}, ; 93
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 89; uint32_t java_name_index
	}, ; 94
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 88; uint32_t java_name_index
	}, ; 95
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 67; uint32_t java_name_index
	}, ; 96
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 33; uint32_t java_name_index
	}, ; 97
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 68; uint32_t java_name_index
	}, ; 98
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 78; uint32_t java_name_index
	}, ; 99
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 0; uint32_t java_name_index
	}, ; 100
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 80; uint32_t java_name_index
	}, ; 101
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 84; uint32_t java_name_index
	}, ; 102
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 9; uint32_t java_name_index
	}, ; 103
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 31; uint32_t java_name_index
	}, ; 104
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 35; uint32_t java_name_index
	}, ; 105
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 99; uint32_t java_name_index
	}, ; 106
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 22; uint32_t java_name_index
	}, ; 107
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 54; uint32_t java_name_index
	}, ; 108
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 2; uint32_t java_name_index
	} ; 109
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [110 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109 ; 109
], align 8

; Strings
@.str.0 = private unnamed_addr constant [42 x i8] c"javax/microedition/khronos/egl/EGLContext\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"javax/microedition/khronos/egl/EGLConfig\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"javax/microedition/khronos/egl/EGLDisplay\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"javax/microedition/khronos/egl/EGLSurface\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"javax/microedition/khronos/egl/EGL\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"javax/microedition/khronos/egl/EGL10\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"android/window/InputTransferToken\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"android/window/TrustedPresentationThresholds\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"android/provider/Settings\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"android/provider/Settings$NameValueTable\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"android/provider/Settings$SettingNotFoundException\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"android/provider/Settings$System\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"android/util/Log\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"android/util/AndroidException\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"android/os/Vibrator\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"android/os/VibratorManager\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"android/media/AudioManager\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"android/media/MediaPlayer\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"android/media/MediaPlayer$OnCompletionListener\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"mono/android/media/MediaPlayer_OnCompletionListenerImplementor\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"android/view/InputDevice\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"android/view/KeyCharacterMap\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"android/view/Choreographer\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"android/view/SurfaceControlInputReceiver\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"android/view/SurfaceHolder$Callback\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"android/view/SurfaceHolder\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"android/view/Surface\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"android/view/SurfaceControl\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"android/view/SurfaceView\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"android/content/res/AssetFileDescriptor\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"android/app/KeyguardManager\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.78 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"java/lang/ClassNotFoundException\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.96 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"java/lang/LinkageError\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"java/lang/NoClassDefFoundError\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"java/lang/ReflectiveOperationException\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.105 = private unnamed_addr constant [32 x i8] c"crc64e2621b4f9a3744e4/Activity1\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"crc64493ac3851fab1842/AndroidGameActivity\00", align 1
@.str.107 = private unnamed_addr constant [46 x i8] c"crc64493ac3851fab1842/MonoGameAndroidGameView\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"crc64493ac3851fab1842/OrientationListener\00", align 1
@.str.109 = private unnamed_addr constant [37 x i8] c"crc64493ac3851fab1842/ScreenReceiver\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [16 x i8] c"Celeste.Android\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [19 x i8] c"MonoGame.Framework\00", align 1

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 1dcfb6f8779c33b6f768c996495cb90ecd729329"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
