import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_mark_3_method_channel.dart';

abstract class NativeMark_3Platform extends PlatformInterface {
  NativeMark_3Platform() : super(token: _token);

  static final Object _token = Object();

  static NativeMark_3Platform _instance = MethodChannelNativeMark_3();

  static NativeMark_3Platform get instance => _instance;

  static set instance(NativeMark_3Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
