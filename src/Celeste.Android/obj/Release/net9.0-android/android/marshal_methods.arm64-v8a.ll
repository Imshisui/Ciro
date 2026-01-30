; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [22 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [66 x i64] [
	i64 u0x02abedc11addc1ed, ; 0: lib_Mono.Android.Runtime.dll.so => 20
	i64 u0x0581db89237110e9, ; 1: lib_System.Collections.dll.so => 5
	i64 u0x0c59ad9fbbd43abe, ; 2: Mono.Android => 21
	i64 u0x13f1e5e209e91af4, ; 3: lib_Java.Interop.dll.so => 19
	i64 u0x1a91866a319e9259, ; 4: lib_System.Collections.Concurrent.dll.so => 4
	i64 u0x1c753b5ff15bce1b, ; 5: Mono.Android.Runtime.dll => 20
	i64 u0x2174319c0d835bc9, ; 6: System.Runtime => 16
	i64 u0x2407aef2bbe8fadf, ; 7: System.Console => 8
	i64 u0x247619fe4413f8bf, ; 8: System.Runtime.Serialization.Primitives.dll => 15
	i64 u0x27b410442fad6cf1, ; 9: Java.Interop.dll => 19
	i64 u0x2af298f63581d886, ; 10: System.Text.RegularExpressions.dll => 17
	i64 u0x31195fef5d8fb552, ; 11: _Microsoft.Android.Resource.Designer.dll => 0
	i64 u0x3235427f8d12dae1, ; 12: lib_System.Drawing.Primitives.dll.so => 9
	i64 u0x434c4e1d9284cdae, ; 13: Mono.Android.dll => 21
	i64 u0x4499fa3c8e494654, ; 14: lib_System.Runtime.Serialization.Primitives.dll.so => 15
	i64 u0x490cffb50a3cc73e, ; 15: MonoGame.Framework => 1
	i64 u0x49e952f19a4e2022, ; 16: System.ObjectModel => 12
	i64 u0x4e32f00cb0937401, ; 17: Mono.Android.Runtime => 20
	i64 u0x51bb8a2afe774e32, ; 18: System.Drawing => 10
	i64 u0x54795225dd1587af, ; 19: lib_System.Runtime.dll.so => 16
	i64 u0x571c5cfbec5ae8e2, ; 20: System.Private.Uri => 13
	i64 u0x579a06fed6eec900, ; 21: System.Private.CoreLib.dll => 18
	i64 u0x5ae9cd33b15841bf, ; 22: System.ComponentModel => 7
	i64 u0x5b756cb5b65f1e10, ; 23: lib_Celeste.Core.dll.so => 2
	i64 u0x5db0cbbd1028510e, ; 24: lib_System.Runtime.InteropServices.dll.so => 14
	i64 u0x622eef6f9e59068d, ; 25: System.Private.CoreLib => 18
	i64 u0x6692e924eade1b29, ; 26: lib_System.Console.dll.so => 8
	i64 u0x6872ec7a2e36b1ac, ; 27: System.Drawing.Primitives.dll => 9
	i64 u0x6a4d7577b2317255, ; 28: System.Runtime.InteropServices.dll => 14
	i64 u0x7bef86a4335c4870, ; 29: System.ComponentModel.TypeConverter => 6
	i64 u0x7dfc3d6d9d8d7b70, ; 30: System.Collections => 5
	i64 u0x7e946809d6008ef2, ; 31: lib_System.ObjectModel.dll.so => 12
	i64 u0x7ecc13347c8fd849, ; 32: lib_System.ComponentModel.dll.so => 7
	i64 u0x82df8f5532a10c59, ; 33: lib_System.Drawing.dll.so => 10
	i64 u0x8da188285aadfe8e, ; 34: System.Collections.Concurrent => 4
	i64 u0x903101b46fb73a04, ; 35: _Microsoft.Android.Resource.Designer => 0
	i64 u0x90da922f4ccbc487, ; 36: lib_MonoGame.Framework.dll.so => 1
	i64 u0x915f2e68bb6ce9c0, ; 37: Celeste.Core.dll => 2
	i64 u0x91a74f07b30d37e2, ; 38: System.Linq.dll => 11
	i64 u0x974139e42d1356b1, ; 39: Celeste.Core => 2
	i64 u0x97b8c771ea3e4220, ; 40: System.ComponentModel.dll => 7
	i64 u0x97e144c9d3c6976e, ; 41: System.Collections.Concurrent.dll => 4
	i64 u0xa3c685f0f64f268a, ; 42: Celeste.Android.dll => 3
	i64 u0xadc90ab061a9e6e4, ; 43: System.ComponentModel.TypeConverter.dll => 6
	i64 u0xae282bcd03739de7, ; 44: Java.Interop => 19
	i64 u0xae53579c90db1107, ; 45: System.ObjectModel.dll => 12
	i64 u0xb220631954820169, ; 46: System.Text.RegularExpressions => 17
	i64 u0xb7212c4683a94afe, ; 47: System.Drawing.Primitives => 9
	i64 u0xb81a2c6e0aee50fe, ; 48: lib_System.Private.CoreLib.dll.so => 18
	i64 u0xba48785529705af9, ; 49: System.Collections.dll => 5
	i64 u0xc0d928351ab5ca77, ; 50: System.Console.dll => 8
	i64 u0xc12b8b3afa48329c, ; 51: lib_System.Linq.dll.so => 11
	i64 u0xc50fded0ded1418c, ; 52: lib_System.ComponentModel.TypeConverter.dll.so => 6
	i64 u0xc5a0f4b95a699af7, ; 53: lib_System.Private.Uri.dll.so => 13
	i64 u0xcbd4fdd9cef4a294, ; 54: lib__Microsoft.Android.Resource.Designer.dll.so => 0
	i64 u0xcc2876b32ef2794c, ; 55: lib_System.Text.RegularExpressions.dll.so => 17
	i64 u0xcc667334debe5bbf, ; 56: MonoGame.Framework.dll => 1
	i64 u0xd333d0af9e423810, ; 57: System.Runtime.InteropServices => 14
	i64 u0xd3651b6fc3125825, ; 58: System.Private.Uri.dll => 13
	i64 u0xdbf9607a441b4505, ; 59: System.Linq => 11
	i64 u0xdd2b722d78ef5f43, ; 60: System.Runtime.dll => 16
	i64 u0xe4f74a0b5bf9703f, ; 61: System.Runtime.Serialization.Primitives => 15
	i64 u0xe5434e8a119ceb69, ; 62: lib_Mono.Android.dll.so => 21
	i64 u0xe89a2a9ef110899b, ; 63: System.Drawing.dll => 10
	i64 u0xf0004b0cf2e0a4fa, ; 64: lib_Celeste.Android.dll.so => 3
	i64 u0xf577e84e848e1326 ; 65: Celeste.Android => 3
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [66 x i32] [
	i32 20, i32 5, i32 21, i32 19, i32 4, i32 20, i32 16, i32 8,
	i32 15, i32 19, i32 17, i32 0, i32 9, i32 21, i32 15, i32 1,
	i32 12, i32 20, i32 10, i32 16, i32 13, i32 18, i32 7, i32 2,
	i32 14, i32 18, i32 8, i32 9, i32 14, i32 6, i32 5, i32 12,
	i32 7, i32 10, i32 4, i32 0, i32 1, i32 2, i32 11, i32 2,
	i32 7, i32 4, i32 3, i32 6, i32 19, i32 12, i32 17, i32 9,
	i32 18, i32 5, i32 8, i32 11, i32 6, i32 13, i32 0, i32 17,
	i32 1, i32 14, i32 13, i32 11, i32 16, i32 15, i32 21, i32 10,
	i32 3, i32 3
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

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
