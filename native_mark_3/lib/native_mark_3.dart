import 'native_mark_3_method_channel.dart';
import 'native_mark_3_platform_interface.dart';

class NativeMark_3 {
  Future<String?> getPlatformVersion() {
    return NativeMark_3Platform.instance.getPlatformVersion();
  }

  Future<void> printInNative() async {
    final resp = await MethodChannelNativeMark_3().printInNative();
    print("printInNative() $resp");
  }
}
