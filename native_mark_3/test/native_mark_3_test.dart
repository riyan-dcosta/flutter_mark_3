import 'package:flutter_test/flutter_test.dart';
import 'package:native_mark_3/native_mark_3.dart';
import 'package:native_mark_3/native_mark_3_platform_interface.dart';
import 'package:native_mark_3/native_mark_3_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeMark_3Platform
    with MockPlatformInterfaceMixin
    implements NativeMark_3Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NativeMark_3Platform initialPlatform = NativeMark_3Platform.instance;

  test('$MethodChannelNativeMark_3 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeMark_3>());
  });

  test('getPlatformVersion', () async {
    NativeMark_3 nativeMark_3Plugin = NativeMark_3();
    MockNativeMark_3Platform fakePlatform = MockNativeMark_3Platform();
    NativeMark_3Platform.instance = fakePlatform;

    expect(await nativeMark_3Plugin.getPlatformVersion(), '42');
  });
}
