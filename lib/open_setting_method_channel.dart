import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_setting_platform_interface.dart';

/// An implementation of [OpenSettingPlatform] that uses method channels.
class MethodChannelOpenSetting extends OpenSettingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_setting');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
