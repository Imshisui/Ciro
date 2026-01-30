; ModuleID = 'compressed_assemblies.arm64-v8a.ll'
source_filename = "compressed_assemblies.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.CompressedAssemblies = type {
	i32, ; uint32_t count
	ptr ; CompressedAssemblyDescriptor descriptors
}

%struct.CompressedAssemblyDescriptor = type {
	i32, ; uint32_t uncompressed_file_size
	i1, ; bool loaded
	ptr ; uint8_t data
}

@compressed_assemblies = dso_local local_unnamed_addr global %struct.CompressedAssemblies {
	i32 22, ; uint32_t count
	ptr @compressed_assembly_descriptors; CompressedAssemblyDescriptor* descriptors
}, align 8

@compressed_assembly_descriptors = internal dso_local global [22 x %struct.CompressedAssemblyDescriptor] [
	%struct.CompressedAssemblyDescriptor {
		i32 2560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_0; uint8_t* data
	}, ; 0: _Microsoft.Android.Resource.Designer
	%struct.CompressedAssemblyDescriptor {
		i32 550400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_1; uint8_t* data
	}, ; 1: MonoGame.Framework
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_2; uint8_t* data
	}, ; 2: Celeste.Core
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_3; uint8_t* data
	}, ; 3: Celeste.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_4; uint8_t* data
	}, ; 4: System.Collections.Concurrent
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_5; uint8_t* data
	}, ; 5: System.Collections
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_6; uint8_t* data
	}, ; 6: System.ComponentModel.TypeConverter
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_7; uint8_t* data
	}, ; 7: System.ComponentModel
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_8; uint8_t* data
	}, ; 8: System.Console
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_9; uint8_t* data
	}, ; 9: System.Drawing.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_10; uint8_t* data
	}, ; 10: System.Drawing
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_11; uint8_t* data
	}, ; 11: System.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_12; uint8_t* data
	}, ; 12: System.ObjectModel
	%struct.CompressedAssemblyDescriptor {
		i32 64000, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_13; uint8_t* data
	}, ; 13: System.Private.Uri
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_14; uint8_t* data
	}, ; 14: System.Runtime.InteropServices
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_15; uint8_t* data
	}, ; 15: System.Runtime.Serialization.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_16; uint8_t* data
	}, ; 16: System.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 142848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_17; uint8_t* data
	}, ; 17: System.Text.RegularExpressions
	%struct.CompressedAssemblyDescriptor {
		i32 1492480, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_18; uint8_t* data
	}, ; 18: System.Private.CoreLib
	%struct.CompressedAssemblyDescriptor {
		i32 156160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_19; uint8_t* data
	}, ; 19: Java.Interop
	%struct.CompressedAssemblyDescriptor {
		i32 19512, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_20; uint8_t* data
	}, ; 20: Mono.Android.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 396800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_21; uint8_t* data
	} ; 21: Mono.Android
], align 8

@__compressedAssemblyData_0 = internal dso_local global [2560 x i8] zeroinitializer, align 1
@__compressedAssemblyData_1 = internal dso_local global [550400 x i8] zeroinitializer, align 1
@__compressedAssemblyData_2 = internal dso_local global [4096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_3 = internal dso_local global [6656 x i8] zeroinitializer, align 1
@__compressedAssemblyData_4 = internal dso_local global [16384 x i8] zeroinitializer, align 1
@__compressedAssemblyData_5 = internal dso_local global [9728 x i8] zeroinitializer, align 1
@__compressedAssemblyData_6 = internal dso_local global [5632 x i8] zeroinitializer, align 1
@__compressedAssemblyData_7 = internal dso_local global [5120 x i8] zeroinitializer, align 1
@__compressedAssemblyData_8 = internal dso_local global [12288 x i8] zeroinitializer, align 1
@__compressedAssemblyData_9 = internal dso_local global [6656 x i8] zeroinitializer, align 1
@__compressedAssemblyData_10 = internal dso_local global [4608 x i8] zeroinitializer, align 1
@__compressedAssemblyData_11 = internal dso_local global [18944 x i8] zeroinitializer, align 1
@__compressedAssemblyData_12 = internal dso_local global [6144 x i8] zeroinitializer, align 1
@__compressedAssemblyData_13 = internal dso_local global [64000 x i8] zeroinitializer, align 1
@__compressedAssemblyData_14 = internal dso_local global [9728 x i8] zeroinitializer, align 1
@__compressedAssemblyData_15 = internal dso_local global [5632 x i8] zeroinitializer, align 1
@__compressedAssemblyData_16 = internal dso_local global [6144 x i8] zeroinitializer, align 1
@__compressedAssemblyData_17 = internal dso_local global [142848 x i8] zeroinitializer, align 1
@__compressedAssemblyData_18 = internal dso_local global [1492480 x i8] zeroinitializer, align 1
@__compressedAssemblyData_19 = internal dso_local global [156160 x i8] zeroinitializer, align 1
@__compressedAssemblyData_20 = internal dso_local global [19512 x i8] zeroinitializer, align 1
@__compressedAssemblyData_21 = internal dso_local global [396800 x i8] zeroinitializer, align 1

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
