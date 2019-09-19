import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginTest {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_test');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get testDemo async {
    final String demoString = await _channel.invokeMethod('getTestDemo');
    return demoString;
  }

  static Future  testName(String name) async {

    return await _channel.invokeMethod('testName',name);

  }





}
