#import "TonClientFlutterPlugin.h"
#if __has_include(<ton_client_flutter/ton_client_flutter-Swift.h>)
#import <ton_client_flutter/ton_client_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ton_client_flutter-Swift.h"
#endif

@implementation TonClientFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTonClientFlutterPlugin registerWithRegistrar:registrar];
}
@end
