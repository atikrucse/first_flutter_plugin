import 'package:flutter/services.dart';

class OpenSetting {
  static const MethodChannel _channel = MethodChannel('open_setting');  // Ensure this matches the native code

  Future<String?> openPage(String pageName) async {
    try {
      final String version = await _channel.invokeMethod('openPage', {"type": pageName});
      return version;
    } on PlatformException catch (e) {
      print(e);
      return null;
    }
  }
}

