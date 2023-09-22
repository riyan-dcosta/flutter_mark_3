import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_mark_3_platform_interface.dart';

class MethodChannelNativeMark_3 extends NativeMark_3Platform {
  @visibleForTesting
  final methodChannel = const MethodChannel('native_mark_3');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  Future<String?> printInNative()async {
    return await methodChannel.invokeMethod('printNative');
  }
}
