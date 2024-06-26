import Flutter
import UIKit

public class OpenSettingPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "open_setting", binaryMessenger: registrar.messenger())
    let instance = OpenSettingPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "openPage":
        if let url = URL(string: "App-Prefs:root=General") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            result("Success")
        } else {
            result(FlutterError(code: "URL_ERROR", message: "Could not create URL for settings", details: nil))
        }
    default:
        result(FlutterMethodNotImplemented)
    }
  }
}
