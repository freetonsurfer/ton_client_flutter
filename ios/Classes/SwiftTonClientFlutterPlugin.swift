import Flutter
import UIKit

public class SwiftTonClientFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ton_client_flutter", binaryMessenger: registrar.messenger())
    let instance = SwiftTonClientFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public func dummyMethodToEnforceBundling() {
    // This will never be executed
    dart_string_free(UnsafeMutablePointer<Int8>(mutating: ("" as NSString).utf8String));
  }
}
