import 'package:flutter_test/flutter_test.dart';
// import 'package:open_setting/open_setting.dart';
import 'package:open_setting/open_setting_platform_interface.dart';
import 'package:open_setting/open_setting_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenSettingPlatform
    with MockPlatformInterfaceMixin
    implements OpenSettingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpenSettingPlatform initialPlatform = OpenSettingPlatform.instance;

  test('$MethodChannelOpenSetting is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenSetting>());
  });

  test('getPlatformVersion', () async {
    // OpenSetting openSettingPlugin = OpenSetting();
    MockOpenSettingPlatform fakePlatform = MockOpenSettingPlatform();
    OpenSettingPlatform.instance = fakePlatform;

    // expect(await openSettingPlugin.getPlatformVersion(), '42');
  });
}
