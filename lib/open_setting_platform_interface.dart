import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_setting_method_channel.dart';

abstract class OpenSettingPlatform extends PlatformInterface {
  /// Constructs a OpenSettingPlatform.
  OpenSettingPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenSettingPlatform _instance = MethodChannelOpenSetting();

  /// The default instance of [OpenSettingPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenSetting].
  static OpenSettingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenSettingPlatform] when
  /// they register themselves.
  static set instance(OpenSettingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
