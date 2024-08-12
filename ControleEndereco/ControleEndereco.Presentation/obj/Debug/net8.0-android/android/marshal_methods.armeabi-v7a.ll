; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [356 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [706 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 271
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 305
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 347
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 220
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 98325684, ; 13: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 198
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 289
	i32 114855350, ; 15: MediatR.Extensions.Microsoft.DependencyInjection.dll => 0x6d88db6 => 181
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 289
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 126276733, ; 19: Polly.Extensions.Http => 0x786d47d => 224
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 309
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 245
	i32 176265551, ; 25: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 26: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 291
	i32 184328833, ; 27: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 28: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 344
	i32 199333315, ; 29: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 345
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 243
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 33: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 197
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 265
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 39: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 183
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 248
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 267
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 264
	i32 280992041, ; 44: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 316
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 291275502, ; 46: Microsoft.Extensions.Http.dll => 0x115c82ee => 204
	i32 298918909, ; 47: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 48: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 344
	i32 318968648, ; 49: Xamarin.AndroidX.Activity.dll => 0x13031348 => 234
	i32 321597661, ; 50: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 51: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 329
	i32 342366114, ; 52: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 266
	i32 347068432, ; 53: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 227
	i32 350420333, ; 54: FluentValidation.DependencyInjectionExtensions => 0x14e2fd6d => 177
	i32 356389973, ; 55: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 328
	i32 360082299, ; 56: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 57: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 58: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 59: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 60: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 61: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 62: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 63: _Microsoft.Android.Resource.Designer => 0x17969339 => 352
	i32 403441872, ; 64: WindowsBase => 0x180c08d0 => 165
	i32 403493213, ; 65: MediatR.Contracts => 0x180cd15d => 180
	i32 435591531, ; 66: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 340
	i32 441335492, ; 67: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 249
	i32 442565967, ; 68: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 69: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 262
	i32 451504562, ; 70: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 71: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 72: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 73: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 74: System.dll => 0x1bff388e => 164
	i32 476646585, ; 75: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 264
	i32 480374825, ; 76: Polly.Extensions.Http.dll => 0x1ca1f029 => 224
	i32 486930444, ; 77: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 277
	i32 498788369, ; 78: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 79: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 327
	i32 503918385, ; 80: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 321
	i32 513247710, ; 81: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 213
	i32 526420162, ; 82: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 83: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 309
	i32 530272170, ; 84: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 85: Microsoft.Extensions.Logging => 0x20216150 => 208
	i32 540030774, ; 86: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 87: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 88: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 89: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 90: Jsr305Binding => 0x213954e7 => 302
	i32 569601784, ; 91: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 300
	i32 571435654, ; 92: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 201
	i32 577335427, ; 93: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 94: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 335
	i32 601371474, ; 95: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 96: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 605734184, ; 97: MediatR.Extensions.Microsoft.DependencyInjection => 0x241ac528 => 181
	i32 613668793, ; 98: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 99: Xamarin.AndroidX.CustomView => 0x2568904f => 254
	i32 627931235, ; 100: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 333
	i32 627941514, ; 101: ControleEndereco.Infrastructure => 0x256da08a => 351
	i32 639843206, ; 102: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 260
	i32 643868501, ; 103: System.Net => 0x2660a755 => 81
	i32 662205335, ; 104: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 105: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 296
	i32 666292255, ; 106: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 241
	i32 672442732, ; 107: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 108: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 109: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 315
	i32 690569205, ; 110: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 111: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 311
	i32 693804605, ; 112: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 113: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 114: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 306
	i32 700358131, ; 115: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 116: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 330
	i32 706809560, ; 117: ControleEndereco.Presentation => 0x2a210ed8 => 0
	i32 709557578, ; 118: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 318
	i32 720511267, ; 119: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 310
	i32 722857257, ; 120: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 121: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 212
	i32 735137430, ; 122: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 746488404, ; 123: FluentValidation.DependencyInjectionExtensions.dll => 0x2c7e8254 => 177
	i32 748832960, ; 124: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 225
	i32 752232764, ; 125: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 126: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 231
	i32 759454413, ; 127: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 128: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 129: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 130: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 339
	i32 789151979, ; 131: Microsoft.Extensions.Options => 0x2f0980eb => 211
	i32 790371945, ; 132: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 255
	i32 804008546, ; 133: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 187
	i32 804715423, ; 134: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 135: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 269
	i32 809064393, ; 136: CodeBeam.MudBlazor.Extensions => 0x303957c9 => 173
	i32 823281589, ; 137: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 138: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 139: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 140: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 141: Xamarin.AndroidX.Print => 0x3246f6cd => 282
	i32 865465478, ; 142: zxing.dll => 0x3395f486 => 313
	i32 873119928, ; 143: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 144: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 145: System.Net.Http.Json => 0x3463c971 => 63
	i32 898440345, ; 146: CsvHelper => 0x358d1c99 => 174
	i32 904024072, ; 147: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 148: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 149: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 342
	i32 928116545, ; 150: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 305
	i32 952186615, ; 151: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 152: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 310
	i32 966729478, ; 153: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 303
	i32 967690846, ; 154: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 266
	i32 975236339, ; 155: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 156: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 157: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 158: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 159: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 160: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 161: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 203
	i32 1001831731, ; 162: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 163: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 286
	i32 1019214401, ; 164: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 165: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 196
	i32 1029334545, ; 166: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 317
	i32 1031528504, ; 167: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 304
	i32 1035644815, ; 168: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 239
	i32 1036536393, ; 169: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 170: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048992957, ; 171: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 198
	i32 1052210849, ; 172: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 273
	i32 1067306892, ; 173: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 174: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 175: Xamarin.Kotlin.StdLib => 0x409e66d8 => 307
	i32 1098259244, ; 176: System => 0x41761b2c => 164
	i32 1106973742, ; 177: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 193
	i32 1118262833, ; 178: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 330
	i32 1121599056, ; 179: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 272
	i32 1127295045, ; 180: Polly.dll => 0x43312845 => 223
	i32 1127624469, ; 181: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 210
	i32 1135599774, ; 182: ControleEndereco.Presentation.dll => 0x43afe09e => 0
	i32 1149092582, ; 183: Xamarin.AndroidX.Window => 0x447dc2e6 => 299
	i32 1168523401, ; 184: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 336
	i32 1170634674, ; 185: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 186: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 199
	i32 1175144683, ; 187: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 295
	i32 1178241025, ; 188: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 280
	i32 1203215381, ; 189: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 334
	i32 1204270330, ; 190: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 241
	i32 1208641965, ; 191: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1215872864, ; 192: ControleEndereco.Infrastructure.dll => 0x4878bf60 => 351
	i32 1219128291, ; 193: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 194: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 332
	i32 1243150071, ; 195: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 300
	i32 1253011324, ; 196: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 197: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 316
	i32 1264511973, ; 198: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 290
	i32 1267360935, ; 199: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 294
	i32 1273260888, ; 200: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 246
	i32 1275534314, ; 201: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 311
	i32 1278448581, ; 202: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 238
	i32 1292207520, ; 203: SQLitePCLRaw.core.dll => 0x4d0585a0 => 226
	i32 1293217323, ; 204: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 257
	i32 1309188875, ; 205: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 206: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 299
	i32 1324164729, ; 207: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 208: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 209: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 210: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 346
	i32 1376866003, ; 211: Xamarin.AndroidX.SavedState => 0x52114ed3 => 286
	i32 1379779777, ; 212: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 213: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 214: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 250
	i32 1408764838, ; 215: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 216: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422461067, ; 217: ControleEndereco.Domain.dll => 0x54c9088b => 350
	i32 1422545099, ; 218: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 219: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 314
	i32 1434145427, ; 220: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 221: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 303
	i32 1439761251, ; 222: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 223: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 224: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 225: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 200
	i32 1457743152, ; 226: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 227: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 228: es\Microsoft.Maui.Controls.resources => 0x57152abe => 320
	i32 1461234159, ; 229: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 230: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 231: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 232: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 240
	i32 1470490898, ; 233: Microsoft.Extensions.Primitives => 0x57a5e912 => 213
	i32 1479771757, ; 234: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 235: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 236: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 237: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 287
	i32 1490351284, ; 238: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 189
	i32 1493001747, ; 239: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 324
	i32 1505131794, ; 240: Microsoft.Extensions.Http => 0x59b67d12 => 204
	i32 1514721132, ; 241: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 319
	i32 1521091094, ; 242: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 203
	i32 1529570276, ; 243: ControleEndereco.Crosscutting.IoC => 0x5b2b63e4 => 349
	i32 1536373174, ; 244: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 245: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 246: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 247: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 187
	i32 1550322496, ; 248: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 249: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 339
	i32 1565862583, ; 250: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 251: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 252: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 253: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 254: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 256
	i32 1592978981, ; 255: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 256: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 304
	i32 1601112923, ; 257: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 258: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 259: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 260: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 276
	i32 1622358360, ; 261: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 262: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 298
	i32 1632842087, ; 263: Microsoft.Extensions.Configuration.Json => 0x61533167 => 194
	i32 1635184631, ; 264: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 260
	i32 1636350590, ; 265: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 253
	i32 1639515021, ; 266: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 267: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 268: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 269: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 186
	i32 1657153582, ; 270: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 271: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 292
	i32 1658251792, ; 272: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 301
	i32 1670060433, ; 273: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 248
	i32 1675553242, ; 274: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 275: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 276: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 277: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 278: Microsoft.Data.Sqlite => 0x649e8ef3 => 189
	i32 1691477237, ; 279: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 280: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 281: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 308
	i32 1701541528, ; 282: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 283: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 227
	i32 1720223769, ; 284: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 269
	i32 1726116996, ; 285: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 286: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 287: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 244
	i32 1736233607, ; 288: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 337
	i32 1743415430, ; 289: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 315
	i32 1744735666, ; 290: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 291: System.IO.Pipelines.dll => 0x68139a0d => 229
	i32 1746316138, ; 292: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 293: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 294: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 295: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 185
	i32 1763938596, ; 296: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 297: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 298: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 291
	i32 1770582343, ; 299: Microsoft.Extensions.Logging.dll => 0x6988f147 => 208
	i32 1776026572, ; 300: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 301: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 302: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 303: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 331
	i32 1788241197, ; 304: Xamarin.AndroidX.Fragment => 0x6a96652d => 262
	i32 1793755602, ; 305: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 323
	i32 1808609942, ; 306: Xamarin.AndroidX.Loader => 0x6bcd3296 => 276
	i32 1813058853, ; 307: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 307
	i32 1813201214, ; 308: Xamarin.Google.Android.Material => 0x6c13413e => 301
	i32 1818569960, ; 309: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 281
	i32 1818787751, ; 310: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 311: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 312: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 313: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 209
	i32 1842015223, ; 314: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 343
	i32 1847515442, ; 315: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 231
	i32 1853025655, ; 316: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 340
	i32 1858542181, ; 317: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 318: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 319: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 322
	i32 1879696579, ; 320: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 321: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 242
	i32 1888955245, ; 322: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 323: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 324: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 325: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 326: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 327: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 328: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 329: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 288
	i32 1968388702, ; 330: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 190
	i32 1983156543, ; 331: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 308
	i32 1985761444, ; 332: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 233
	i32 1987243864, ; 333: FluentValidation => 0x7672ef58 => 176
	i32 2003115576, ; 334: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 319
	i32 2011961780, ; 335: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 336: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 273
	i32 2025202353, ; 337: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 314
	i32 2027795611, ; 338: ControleEndereco.AppCore => 0x78ddb49b => 348
	i32 2031763787, ; 339: Xamarin.Android.Glide => 0x791a414b => 230
	i32 2045470958, ; 340: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 341: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 192
	i32 2055257422, ; 342: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 268
	i32 2060060697, ; 343: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 344: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 318
	i32 2070888862, ; 345: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 346: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 202
	i32 2079903147, ; 347: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 348: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 349: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 228
	i32 2127167465, ; 350: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 351: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 352: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 353: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 354: Microsoft.Maui => 0x80bd55ad => 218
	i32 2169148018, ; 355: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 326
	i32 2181898931, ; 356: Microsoft.Extensions.Options.dll => 0x820d22b3 => 211
	i32 2192057212, ; 357: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 209
	i32 2193016926, ; 358: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 359: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 312
	i32 2201231467, ; 360: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 361: it\Microsoft.Maui.Controls.resources => 0x839595db => 328
	i32 2217644978, ; 362: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 295
	i32 2222056684, ; 363: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2237668184, ; 364: CodeBeam.MudBlazor.Extensions.dll => 0x85601b58 => 173
	i32 2244775296, ; 365: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 277
	i32 2252106437, ; 366: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 367: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 368: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 369: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 191
	i32 2267999099, ; 370: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 232
	i32 2270573516, ; 371: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 322
	i32 2279755925, ; 372: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 284
	i32 2293034957, ; 373: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 374: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 375: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 376: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 332
	i32 2305521784, ; 377: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 378: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 236
	i32 2320631194, ; 379: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 380: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 381: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 382: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 383: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 384: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 190
	i32 2378619854, ; 385: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 386: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 387: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 327
	i32 2401565422, ; 388: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 389: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 259
	i32 2411328690, ; 390: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 183
	i32 2421380589, ; 391: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 392: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 246
	i32 2427813419, ; 393: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 324
	i32 2435356389, ; 394: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 395: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 396: Microsoft.JSInterop.dll => 0x919672ca => 214
	i32 2454642406, ; 397: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 398: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 399: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2461713232, ; 400: ControleEndereco.AppCore.dll => 0x92bac350 => 348
	i32 2465273461, ; 401: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 225
	i32 2465532216, ; 402: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 249
	i32 2471841756, ; 403: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 404: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 405: Microsoft.Maui.Controls => 0x93dba8a1 => 216
	i32 2483903535, ; 406: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 407: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 408: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 409: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 410: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 271
	i32 2522472828, ; 411: Xamarin.Android.Glide.dll => 0x9659e17c => 230
	i32 2537015816, ; 412: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 182
	i32 2538310050, ; 413: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 414: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 325
	i32 2562349572, ; 415: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 416: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 417: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 272
	i32 2581819634, ; 418: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 294
	i32 2585220780, ; 419: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 420: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 421: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 184
	i32 2589602615, ; 422: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 423: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 199
	i32 2593496499, ; 424: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 334
	i32 2605712449, ; 425: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 312
	i32 2615233544, ; 426: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 263
	i32 2615519321, ; 427: MediatR => 0x9be5a859 => 179
	i32 2616218305, ; 428: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 210
	i32 2617129537, ; 429: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 430: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 431: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 253
	i32 2624644809, ; 432: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 258
	i32 2626831493, ; 433: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 329
	i32 2627185994, ; 434: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 435: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 436: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 267
	i32 2663391936, ; 437: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 232
	i32 2663698177, ; 438: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 439: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 440: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2669605357, ; 441: ControleEndereco.Crosscutting.IoC.dll => 0x9f1ef1ed => 349
	i32 2676780864, ; 442: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677943566, ; 443: MediatR.Contracts.dll => 0x9f9e2d0e => 180
	i32 2686887180, ; 444: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 445: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 186
	i32 2693849962, ; 446: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 447: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 292
	i32 2715334215, ; 448: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 449: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 450: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 451: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 452: Xamarin.AndroidX.Activity => 0xa2e0939b => 234
	i32 2734223671, ; 453: Microsoft.Extensions.Http.Polly.dll => 0xa2f8f137 => 205
	i32 2735172069, ; 454: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 455: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 182
	i32 2737747696, ; 456: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 240
	i32 2740948882, ; 457: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 458: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 459: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 335
	i32 2758225723, ; 460: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 217
	i32 2764765095, ; 461: Microsoft.Maui.dll => 0xa4caf7a7 => 218
	i32 2765824710, ; 462: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 463: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 306
	i32 2778768386, ; 464: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 297
	i32 2779977773, ; 465: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 285
	i32 2785988530, ; 466: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 341
	i32 2788224221, ; 467: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 263
	i32 2801831435, ; 468: Microsoft.Maui.Graphics => 0xa7008e0b => 220
	i32 2803228030, ; 469: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 470: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 320
	i32 2810250172, ; 471: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 250
	i32 2819470561, ; 472: System.Xml.dll => 0xa80db4e1 => 163
	i32 2820942282, ; 473: MudBlazor.dll => 0xa82429ca => 221
	i32 2821205001, ; 474: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 475: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 285
	i32 2824502124, ; 476: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 477: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 333
	i32 2833784645, ; 478: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 188
	i32 2838993487, ; 479: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 274
	i32 2849599387, ; 480: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 481: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 297
	i32 2855708567, ; 482: Xamarin.AndroidX.Transition => 0xaa36a797 => 293
	i32 2861098320, ; 483: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 484: Microsoft.Maui.Essentials => 0xaa8a4878 => 219
	i32 2870099610, ; 485: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 235
	i32 2875164099, ; 486: Jsr305Binding.dll => 0xab5f85c3 => 302
	i32 2875220617, ; 487: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 488: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 261
	i32 2887636118, ; 489: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 490: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 185
	i32 2899753641, ; 491: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 492: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 493: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 494: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 495: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 496: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 202
	i32 2916838712, ; 497: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 298
	i32 2919462931, ; 498: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 499: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 237
	i32 2936416060, ; 500: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 501: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 502: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2957275192, ; 503: Dapper => 0xb0447038 => 175
	i32 2959614098, ; 504: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 505: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2971004615, ; 506: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 212
	i32 2972252294, ; 507: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 508: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 257
	i32 2987532451, ; 509: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 288
	i32 2996846495, ; 510: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 270
	i32 3016983068, ; 511: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 290
	i32 3020703001, ; 512: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 197
	i32 3023353419, ; 513: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 514: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 265
	i32 3038032645, ; 515: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 352
	i32 3056245963, ; 516: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 287
	i32 3057625584, ; 517: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 278
	i32 3059408633, ; 518: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 519: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3060069052, ; 520: MudBlazor => 0xb664f2bc => 221
	i32 3075834255, ; 521: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 522: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 326
	i32 3090735792, ; 523: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 524: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 525: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 526: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 527: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 528: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 529: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 530: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 531: GoogleGson.dll => 0xbba64c02 => 178
	i32 3159123045, ; 532: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 533: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 534: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 279
	i32 3192346100, ; 535: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 536: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 537: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 538: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 539: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 256
	i32 3215347189, ; 540: zxing => 0xbfa64df5 => 313
	i32 3220365878, ; 541: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 542: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 543: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 544: Xamarin.AndroidX.CardView => 0xc235e84d => 244
	i32 3265493905, ; 545: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 546: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 547: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 548: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 549: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 550: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 551: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 552: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 553: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 321
	i32 3316684772, ; 554: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 555: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 254
	i32 3317144872, ; 556: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 557: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 242
	i32 3345895724, ; 558: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 283
	i32 3346324047, ; 559: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 280
	i32 3357674450, ; 560: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 338
	i32 3358260929, ; 561: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 562: SQLitePCLRaw.core => 0xc849ca45 => 226
	i32 3362336904, ; 563: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 235
	i32 3362522851, ; 564: Xamarin.AndroidX.Core => 0xc86c06e3 => 251
	i32 3366347497, ; 565: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 566: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 284
	i32 3381016424, ; 567: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 317
	i32 3395150330, ; 568: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 569: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 570: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 255
	i32 3406629867, ; 571: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 200
	i32 3421170118, ; 572: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 192
	i32 3428513518, ; 573: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 195
	i32 3429136800, ; 574: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 575: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 576: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 258
	i32 3445260447, ; 577: System.Formats.Tar => 0xcd5a809f => 39
	i32 3448896322, ; 578: Polly => 0xcd91fb42 => 223
	i32 3452344032, ; 579: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 215
	i32 3463511458, ; 580: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 325
	i32 3464190856, ; 581: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 184
	i32 3471940407, ; 582: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 583: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 584: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 338
	i32 3484440000, ; 585: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 337
	i32 3485117614, ; 586: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 587: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 588: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 247
	i32 3500000672, ; 589: Microsoft.JSInterop => 0xd09dc5a0 => 214
	i32 3509114376, ; 590: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 591: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 592: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 593: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 594: System.Threading.Timer => 0xd432d20b => 147
	i32 3564312303, ; 595: Dapper.dll => 0xd47316ef => 175
	i32 3570554715, ; 596: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 597: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 345
	i32 3592435036, ; 598: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 207
	i32 3597029428, ; 599: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 233
	i32 3598340787, ; 600: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 601: System.Linq.dll => 0xd715a361 => 61
	i32 3623953038, ; 602: FluentValidation.dll => 0xd801228e => 176
	i32 3624195450, ; 603: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 604: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 282
	i32 3633644679, ; 605: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 237
	i32 3638274909, ; 606: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 607: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 268
	i32 3643446276, ; 608: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 342
	i32 3643854240, ; 609: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 279
	i32 3645089577, ; 610: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 611: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 191
	i32 3660523487, ; 612: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 613: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 614: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 243
	i32 3684561358, ; 615: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 247
	i32 3697841164, ; 616: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 347
	i32 3700866549, ; 617: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 618: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 252
	i32 3716563718, ; 619: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 620: Xamarin.AndroidX.Annotation => 0xdda814c6 => 236
	i32 3722202641, ; 621: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 194
	i32 3724971120, ; 622: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 278
	i32 3732100267, ; 623: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 624: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 188
	i32 3737834244, ; 625: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3739814364, ; 626: MudBlazor.ThemeManager.dll => 0xdee909dc => 222
	i32 3748608112, ; 627: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 628: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 629: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 228
	i32 3758424670, ; 630: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 193
	i32 3776403777, ; 631: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 207
	i32 3786282454, ; 632: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 245
	i32 3792276235, ; 633: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 634: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 215
	i32 3802395368, ; 635: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3818918118, ; 636: CsvHelper.dll => 0xe3a010e6 => 174
	i32 3819260425, ; 637: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 638: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 639: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 640: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 196
	i32 3844307129, ; 641: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 642: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 643: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 644: System.Security.Principal => 0xe6e179fa => 128
	i32 3874296553, ; 645: ControleEndereco.Domain => 0xe6ed12e9 => 350
	i32 3875112723, ; 646: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 647: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 648: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 293
	i32 3888767677, ; 649: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 283
	i32 3889960447, ; 650: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 346
	i32 3894631010, ; 651: MudBlazor.ThemeManager => 0xe8235a62 => 222
	i32 3896106733, ; 652: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 653: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 251
	i32 3898971068, ; 654: Microsoft.Extensions.Localization.dll => 0xe86593bc => 206
	i32 3901907137, ; 655: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 656: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 657: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 296
	i32 3928044579, ; 658: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 659: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 660: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 281
	i32 3945713374, ; 661: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 662: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3954195687, ; 663: Microsoft.Extensions.Localization => 0xebb03ce7 => 206
	i32 3955647286, ; 664: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 239
	i32 3959773229, ; 665: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 270
	i32 3980434154, ; 666: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 341
	i32 3987592930, ; 667: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 323
	i32 4003436829, ; 668: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4008686814, ; 669: Microsoft.Extensions.Http.Polly => 0xeeefb4de => 205
	i32 4015948917, ; 670: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 238
	i32 4023392905, ; 671: System.IO.Pipelines => 0xefd01a89 => 229
	i32 4025784931, ; 672: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 673: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 217
	i32 4054681211, ; 674: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 675: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 676: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 677: Microsoft.Maui.Essentials.dll => 0xf40add04 => 219
	i32 4099507663, ; 678: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 679: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 680: Xamarin.AndroidX.Emoji2 => 0xf479582c => 259
	i32 4102112229, ; 681: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 336
	i32 4125707920, ; 682: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 331
	i32 4126470640, ; 683: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 195
	i32 4127667938, ; 684: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 685: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 686: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 687: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 343
	i32 4151237749, ; 688: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 689: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 690: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 691: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 692: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 693: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 275
	i32 4185676441, ; 694: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 695: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 696: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 697: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 252
	i32 4258378803, ; 698: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 274
	i32 4260525087, ; 699: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 700: Microsoft.Maui.Controls.dll => 0xfea12dee => 216
	i32 4274976490, ; 701: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 702: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 275
	i32 4292200793, ; 703: MediatR.dll => 0xffd5c959 => 179
	i32 4294648842, ; 704: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 201
	i32 4294763496 ; 705: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 261
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [706 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 271, ; 3
	i32 305, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 347, ; 9
	i32 124, ; 10
	i32 220, ; 11
	i32 102, ; 12
	i32 198, ; 13
	i32 289, ; 14
	i32 181, ; 15
	i32 107, ; 16
	i32 289, ; 17
	i32 139, ; 18
	i32 224, ; 19
	i32 309, ; 20
	i32 77, ; 21
	i32 124, ; 22
	i32 13, ; 23
	i32 245, ; 24
	i32 132, ; 25
	i32 291, ; 26
	i32 151, ; 27
	i32 344, ; 28
	i32 345, ; 29
	i32 18, ; 30
	i32 243, ; 31
	i32 26, ; 32
	i32 197, ; 33
	i32 265, ; 34
	i32 1, ; 35
	i32 59, ; 36
	i32 42, ; 37
	i32 91, ; 38
	i32 183, ; 39
	i32 248, ; 40
	i32 147, ; 41
	i32 267, ; 42
	i32 264, ; 43
	i32 316, ; 44
	i32 54, ; 45
	i32 204, ; 46
	i32 69, ; 47
	i32 344, ; 48
	i32 234, ; 49
	i32 83, ; 50
	i32 329, ; 51
	i32 266, ; 52
	i32 227, ; 53
	i32 177, ; 54
	i32 328, ; 55
	i32 131, ; 56
	i32 55, ; 57
	i32 149, ; 58
	i32 74, ; 59
	i32 145, ; 60
	i32 62, ; 61
	i32 146, ; 62
	i32 352, ; 63
	i32 165, ; 64
	i32 180, ; 65
	i32 340, ; 66
	i32 249, ; 67
	i32 12, ; 68
	i32 262, ; 69
	i32 125, ; 70
	i32 152, ; 71
	i32 113, ; 72
	i32 166, ; 73
	i32 164, ; 74
	i32 264, ; 75
	i32 224, ; 76
	i32 277, ; 77
	i32 84, ; 78
	i32 327, ; 79
	i32 321, ; 80
	i32 213, ; 81
	i32 150, ; 82
	i32 309, ; 83
	i32 60, ; 84
	i32 208, ; 85
	i32 51, ; 86
	i32 103, ; 87
	i32 114, ; 88
	i32 40, ; 89
	i32 302, ; 90
	i32 300, ; 91
	i32 201, ; 92
	i32 120, ; 93
	i32 335, ; 94
	i32 52, ; 95
	i32 44, ; 96
	i32 181, ; 97
	i32 119, ; 98
	i32 254, ; 99
	i32 333, ; 100
	i32 351, ; 101
	i32 260, ; 102
	i32 81, ; 103
	i32 136, ; 104
	i32 296, ; 105
	i32 241, ; 106
	i32 8, ; 107
	i32 73, ; 108
	i32 315, ; 109
	i32 155, ; 110
	i32 311, ; 111
	i32 154, ; 112
	i32 92, ; 113
	i32 306, ; 114
	i32 45, ; 115
	i32 330, ; 116
	i32 0, ; 117
	i32 318, ; 118
	i32 310, ; 119
	i32 109, ; 120
	i32 212, ; 121
	i32 129, ; 122
	i32 177, ; 123
	i32 225, ; 124
	i32 25, ; 125
	i32 231, ; 126
	i32 72, ; 127
	i32 55, ; 128
	i32 46, ; 129
	i32 339, ; 130
	i32 211, ; 131
	i32 255, ; 132
	i32 187, ; 133
	i32 22, ; 134
	i32 269, ; 135
	i32 173, ; 136
	i32 86, ; 137
	i32 43, ; 138
	i32 160, ; 139
	i32 71, ; 140
	i32 282, ; 141
	i32 313, ; 142
	i32 3, ; 143
	i32 42, ; 144
	i32 63, ; 145
	i32 174, ; 146
	i32 16, ; 147
	i32 53, ; 148
	i32 342, ; 149
	i32 305, ; 150
	i32 105, ; 151
	i32 310, ; 152
	i32 303, ; 153
	i32 266, ; 154
	i32 34, ; 155
	i32 158, ; 156
	i32 85, ; 157
	i32 32, ; 158
	i32 12, ; 159
	i32 51, ; 160
	i32 203, ; 161
	i32 56, ; 162
	i32 286, ; 163
	i32 36, ; 164
	i32 196, ; 165
	i32 317, ; 166
	i32 304, ; 167
	i32 239, ; 168
	i32 35, ; 169
	i32 58, ; 170
	i32 198, ; 171
	i32 273, ; 172
	i32 178, ; 173
	i32 17, ; 174
	i32 307, ; 175
	i32 164, ; 176
	i32 193, ; 177
	i32 330, ; 178
	i32 272, ; 179
	i32 223, ; 180
	i32 210, ; 181
	i32 0, ; 182
	i32 299, ; 183
	i32 336, ; 184
	i32 153, ; 185
	i32 199, ; 186
	i32 295, ; 187
	i32 280, ; 188
	i32 334, ; 189
	i32 241, ; 190
	i32 29, ; 191
	i32 351, ; 192
	i32 52, ; 193
	i32 332, ; 194
	i32 300, ; 195
	i32 5, ; 196
	i32 316, ; 197
	i32 290, ; 198
	i32 294, ; 199
	i32 246, ; 200
	i32 311, ; 201
	i32 238, ; 202
	i32 226, ; 203
	i32 257, ; 204
	i32 85, ; 205
	i32 299, ; 206
	i32 61, ; 207
	i32 112, ; 208
	i32 57, ; 209
	i32 346, ; 210
	i32 286, ; 211
	i32 99, ; 212
	i32 19, ; 213
	i32 250, ; 214
	i32 111, ; 215
	i32 101, ; 216
	i32 350, ; 217
	i32 102, ; 218
	i32 314, ; 219
	i32 104, ; 220
	i32 303, ; 221
	i32 71, ; 222
	i32 38, ; 223
	i32 32, ; 224
	i32 200, ; 225
	i32 103, ; 226
	i32 73, ; 227
	i32 320, ; 228
	i32 9, ; 229
	i32 123, ; 230
	i32 46, ; 231
	i32 240, ; 232
	i32 213, ; 233
	i32 9, ; 234
	i32 43, ; 235
	i32 4, ; 236
	i32 287, ; 237
	i32 189, ; 238
	i32 324, ; 239
	i32 204, ; 240
	i32 319, ; 241
	i32 203, ; 242
	i32 349, ; 243
	i32 31, ; 244
	i32 138, ; 245
	i32 92, ; 246
	i32 187, ; 247
	i32 93, ; 248
	i32 339, ; 249
	i32 49, ; 250
	i32 141, ; 251
	i32 112, ; 252
	i32 140, ; 253
	i32 256, ; 254
	i32 115, ; 255
	i32 304, ; 256
	i32 157, ; 257
	i32 76, ; 258
	i32 79, ; 259
	i32 276, ; 260
	i32 37, ; 261
	i32 298, ; 262
	i32 194, ; 263
	i32 260, ; 264
	i32 253, ; 265
	i32 64, ; 266
	i32 138, ; 267
	i32 15, ; 268
	i32 186, ; 269
	i32 116, ; 270
	i32 292, ; 271
	i32 301, ; 272
	i32 248, ; 273
	i32 48, ; 274
	i32 70, ; 275
	i32 80, ; 276
	i32 126, ; 277
	i32 189, ; 278
	i32 94, ; 279
	i32 121, ; 280
	i32 308, ; 281
	i32 26, ; 282
	i32 227, ; 283
	i32 269, ; 284
	i32 97, ; 285
	i32 28, ; 286
	i32 244, ; 287
	i32 337, ; 288
	i32 315, ; 289
	i32 149, ; 290
	i32 229, ; 291
	i32 169, ; 292
	i32 4, ; 293
	i32 98, ; 294
	i32 185, ; 295
	i32 33, ; 296
	i32 93, ; 297
	i32 291, ; 298
	i32 208, ; 299
	i32 21, ; 300
	i32 41, ; 301
	i32 170, ; 302
	i32 331, ; 303
	i32 262, ; 304
	i32 323, ; 305
	i32 276, ; 306
	i32 307, ; 307
	i32 301, ; 308
	i32 281, ; 309
	i32 2, ; 310
	i32 134, ; 311
	i32 111, ; 312
	i32 209, ; 313
	i32 343, ; 314
	i32 231, ; 315
	i32 340, ; 316
	i32 58, ; 317
	i32 95, ; 318
	i32 322, ; 319
	i32 39, ; 320
	i32 242, ; 321
	i32 25, ; 322
	i32 94, ; 323
	i32 89, ; 324
	i32 99, ; 325
	i32 10, ; 326
	i32 87, ; 327
	i32 100, ; 328
	i32 288, ; 329
	i32 190, ; 330
	i32 308, ; 331
	i32 233, ; 332
	i32 176, ; 333
	i32 319, ; 334
	i32 7, ; 335
	i32 273, ; 336
	i32 314, ; 337
	i32 348, ; 338
	i32 230, ; 339
	i32 88, ; 340
	i32 192, ; 341
	i32 268, ; 342
	i32 154, ; 343
	i32 318, ; 344
	i32 33, ; 345
	i32 202, ; 346
	i32 116, ; 347
	i32 82, ; 348
	i32 228, ; 349
	i32 20, ; 350
	i32 11, ; 351
	i32 162, ; 352
	i32 3, ; 353
	i32 218, ; 354
	i32 326, ; 355
	i32 211, ; 356
	i32 209, ; 357
	i32 84, ; 358
	i32 312, ; 359
	i32 64, ; 360
	i32 328, ; 361
	i32 295, ; 362
	i32 143, ; 363
	i32 173, ; 364
	i32 277, ; 365
	i32 157, ; 366
	i32 41, ; 367
	i32 117, ; 368
	i32 191, ; 369
	i32 232, ; 370
	i32 322, ; 371
	i32 284, ; 372
	i32 131, ; 373
	i32 75, ; 374
	i32 66, ; 375
	i32 332, ; 376
	i32 172, ; 377
	i32 236, ; 378
	i32 143, ; 379
	i32 106, ; 380
	i32 151, ; 381
	i32 70, ; 382
	i32 156, ; 383
	i32 190, ; 384
	i32 121, ; 385
	i32 127, ; 386
	i32 327, ; 387
	i32 152, ; 388
	i32 259, ; 389
	i32 183, ; 390
	i32 141, ; 391
	i32 246, ; 392
	i32 324, ; 393
	i32 20, ; 394
	i32 14, ; 395
	i32 214, ; 396
	i32 135, ; 397
	i32 75, ; 398
	i32 59, ; 399
	i32 348, ; 400
	i32 225, ; 401
	i32 249, ; 402
	i32 167, ; 403
	i32 168, ; 404
	i32 216, ; 405
	i32 15, ; 406
	i32 74, ; 407
	i32 6, ; 408
	i32 23, ; 409
	i32 271, ; 410
	i32 230, ; 411
	i32 182, ; 412
	i32 91, ; 413
	i32 325, ; 414
	i32 1, ; 415
	i32 136, ; 416
	i32 272, ; 417
	i32 294, ; 418
	i32 134, ; 419
	i32 69, ; 420
	i32 184, ; 421
	i32 146, ; 422
	i32 199, ; 423
	i32 334, ; 424
	i32 312, ; 425
	i32 263, ; 426
	i32 179, ; 427
	i32 210, ; 428
	i32 88, ; 429
	i32 96, ; 430
	i32 253, ; 431
	i32 258, ; 432
	i32 329, ; 433
	i32 31, ; 434
	i32 45, ; 435
	i32 267, ; 436
	i32 232, ; 437
	i32 109, ; 438
	i32 158, ; 439
	i32 35, ; 440
	i32 349, ; 441
	i32 22, ; 442
	i32 180, ; 443
	i32 114, ; 444
	i32 186, ; 445
	i32 57, ; 446
	i32 292, ; 447
	i32 144, ; 448
	i32 118, ; 449
	i32 120, ; 450
	i32 110, ; 451
	i32 234, ; 452
	i32 205, ; 453
	i32 139, ; 454
	i32 182, ; 455
	i32 240, ; 456
	i32 54, ; 457
	i32 105, ; 458
	i32 335, ; 459
	i32 217, ; 460
	i32 218, ; 461
	i32 133, ; 462
	i32 306, ; 463
	i32 297, ; 464
	i32 285, ; 465
	i32 341, ; 466
	i32 263, ; 467
	i32 220, ; 468
	i32 159, ; 469
	i32 320, ; 470
	i32 250, ; 471
	i32 163, ; 472
	i32 221, ; 473
	i32 132, ; 474
	i32 285, ; 475
	i32 161, ; 476
	i32 333, ; 477
	i32 188, ; 478
	i32 274, ; 479
	i32 140, ; 480
	i32 297, ; 481
	i32 293, ; 482
	i32 169, ; 483
	i32 219, ; 484
	i32 235, ; 485
	i32 302, ; 486
	i32 40, ; 487
	i32 261, ; 488
	i32 81, ; 489
	i32 185, ; 490
	i32 56, ; 491
	i32 37, ; 492
	i32 97, ; 493
	i32 166, ; 494
	i32 172, ; 495
	i32 202, ; 496
	i32 298, ; 497
	i32 82, ; 498
	i32 237, ; 499
	i32 98, ; 500
	i32 30, ; 501
	i32 159, ; 502
	i32 175, ; 503
	i32 18, ; 504
	i32 127, ; 505
	i32 212, ; 506
	i32 119, ; 507
	i32 257, ; 508
	i32 288, ; 509
	i32 270, ; 510
	i32 290, ; 511
	i32 197, ; 512
	i32 165, ; 513
	i32 265, ; 514
	i32 352, ; 515
	i32 287, ; 516
	i32 278, ; 517
	i32 170, ; 518
	i32 16, ; 519
	i32 221, ; 520
	i32 144, ; 521
	i32 326, ; 522
	i32 125, ; 523
	i32 118, ; 524
	i32 38, ; 525
	i32 115, ; 526
	i32 47, ; 527
	i32 142, ; 528
	i32 117, ; 529
	i32 34, ; 530
	i32 178, ; 531
	i32 95, ; 532
	i32 53, ; 533
	i32 279, ; 534
	i32 129, ; 535
	i32 153, ; 536
	i32 24, ; 537
	i32 161, ; 538
	i32 256, ; 539
	i32 313, ; 540
	i32 148, ; 541
	i32 104, ; 542
	i32 89, ; 543
	i32 244, ; 544
	i32 60, ; 545
	i32 142, ; 546
	i32 100, ; 547
	i32 5, ; 548
	i32 13, ; 549
	i32 122, ; 550
	i32 135, ; 551
	i32 28, ; 552
	i32 321, ; 553
	i32 72, ; 554
	i32 254, ; 555
	i32 24, ; 556
	i32 242, ; 557
	i32 283, ; 558
	i32 280, ; 559
	i32 338, ; 560
	i32 137, ; 561
	i32 226, ; 562
	i32 235, ; 563
	i32 251, ; 564
	i32 168, ; 565
	i32 284, ; 566
	i32 317, ; 567
	i32 101, ; 568
	i32 123, ; 569
	i32 255, ; 570
	i32 200, ; 571
	i32 192, ; 572
	i32 195, ; 573
	i32 163, ; 574
	i32 167, ; 575
	i32 258, ; 576
	i32 39, ; 577
	i32 223, ; 578
	i32 215, ; 579
	i32 325, ; 580
	i32 184, ; 581
	i32 17, ; 582
	i32 171, ; 583
	i32 338, ; 584
	i32 337, ; 585
	i32 137, ; 586
	i32 150, ; 587
	i32 247, ; 588
	i32 214, ; 589
	i32 155, ; 590
	i32 130, ; 591
	i32 19, ; 592
	i32 65, ; 593
	i32 147, ; 594
	i32 175, ; 595
	i32 47, ; 596
	i32 345, ; 597
	i32 207, ; 598
	i32 233, ; 599
	i32 79, ; 600
	i32 61, ; 601
	i32 176, ; 602
	i32 106, ; 603
	i32 282, ; 604
	i32 237, ; 605
	i32 49, ; 606
	i32 268, ; 607
	i32 342, ; 608
	i32 279, ; 609
	i32 14, ; 610
	i32 191, ; 611
	i32 68, ; 612
	i32 171, ; 613
	i32 243, ; 614
	i32 247, ; 615
	i32 347, ; 616
	i32 78, ; 617
	i32 252, ; 618
	i32 108, ; 619
	i32 236, ; 620
	i32 194, ; 621
	i32 278, ; 622
	i32 67, ; 623
	i32 188, ; 624
	i32 63, ; 625
	i32 222, ; 626
	i32 27, ; 627
	i32 160, ; 628
	i32 228, ; 629
	i32 193, ; 630
	i32 207, ; 631
	i32 245, ; 632
	i32 10, ; 633
	i32 215, ; 634
	i32 11, ; 635
	i32 174, ; 636
	i32 78, ; 637
	i32 126, ; 638
	i32 83, ; 639
	i32 196, ; 640
	i32 66, ; 641
	i32 107, ; 642
	i32 65, ; 643
	i32 128, ; 644
	i32 350, ; 645
	i32 122, ; 646
	i32 77, ; 647
	i32 293, ; 648
	i32 283, ; 649
	i32 346, ; 650
	i32 222, ; 651
	i32 8, ; 652
	i32 251, ; 653
	i32 206, ; 654
	i32 2, ; 655
	i32 44, ; 656
	i32 296, ; 657
	i32 156, ; 658
	i32 128, ; 659
	i32 281, ; 660
	i32 23, ; 661
	i32 133, ; 662
	i32 206, ; 663
	i32 239, ; 664
	i32 270, ; 665
	i32 341, ; 666
	i32 323, ; 667
	i32 29, ; 668
	i32 205, ; 669
	i32 238, ; 670
	i32 229, ; 671
	i32 62, ; 672
	i32 217, ; 673
	i32 90, ; 674
	i32 87, ; 675
	i32 148, ; 676
	i32 219, ; 677
	i32 36, ; 678
	i32 86, ; 679
	i32 259, ; 680
	i32 336, ; 681
	i32 331, ; 682
	i32 195, ; 683
	i32 50, ; 684
	i32 6, ; 685
	i32 90, ; 686
	i32 343, ; 687
	i32 21, ; 688
	i32 162, ; 689
	i32 96, ; 690
	i32 50, ; 691
	i32 113, ; 692
	i32 275, ; 693
	i32 130, ; 694
	i32 76, ; 695
	i32 27, ; 696
	i32 252, ; 697
	i32 274, ; 698
	i32 7, ; 699
	i32 216, ; 700
	i32 110, ; 701
	i32 275, ; 702
	i32 179, ; 703
	i32 201, ; 704
	i32 261 ; 705
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
