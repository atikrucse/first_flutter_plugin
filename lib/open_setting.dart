import 'package:flutter/services.dart';
import 'open_setting_platform_interface.dart';

class OpenSetting {
  static const MethodChannel _channel = MethodChannel('open_setting');  // Ensure this matches the native code

  Future<String?> openPage(String pageName) async {
    try {
      final String version = await _channel.invokeMethod('openPage', {"type": pageName});
      print('openPage result: $version');  // Debug logging
      return version;
    } on PlatformException catch (e) {
      print('Failed to open page: $e');  // Error logging
      return null;
    }
  }
}

