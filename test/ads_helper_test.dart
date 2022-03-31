import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ads_helper/ads_helper.dart';

void main() {
  const MethodChannel channel = MethodChannel('ads_helper');

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
    expect(await AdsHelper.platformVersion, '42');
  });
}
