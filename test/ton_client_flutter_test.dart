import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ton_client_flutter/ton_client_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('ton_client_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await TonClientFlutter.platformVersion, '42');
  });
}
