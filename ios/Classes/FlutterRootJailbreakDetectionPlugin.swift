import Flutter
import UIKit
import IOSSecuritySuite

public class FlutterRootJailbreakDetectionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_root_jailbreak_detection", binaryMessenger: registrar.messenger())
    let instance = FlutterRootJailbreakDetectionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "isJailbreak") {
      result(IOSSecuritySuite.amIJailbroken())
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
