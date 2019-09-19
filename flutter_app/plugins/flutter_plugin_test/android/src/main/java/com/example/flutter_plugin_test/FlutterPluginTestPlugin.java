package com.example.flutter_plugin_test;

import io.flutter.Log;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterPluginTestPlugin */
public class FlutterPluginTestPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutter_plugin_test");
    channel.setMethodCallHandler(new FlutterPluginTestPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android " + android.os.Build.VERSION.RELEASE);
    } else if (call.method.equals("testName")) {
      test111(call.arguments.toString());

    }else if (call.method.equals("getTestDemo")) {

      test();

    } else {
      result.notImplemented();
    }



  }

  void test(){
    Log.d("我被调用了","我被调用了");


  }

  void  test111(String name) {
    Log.d("我会返回的方法",name);

  }


}
