#import "FlutterPluginTestPlugin.h"



@implementation FlutterPluginTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_plugin_test"
            binaryMessenger:[registrar messenger]];
  FlutterPluginTestPlugin* instance = [[FlutterPluginTestPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else if ([@"getTestDemo" isEqualToString:call.method]) {
      
      [self getTestDemo];
  } else if ([@"testName" isEqualToString:call.method]) {
      
        NSLog(@"我是flutter传过来的参数%@",call.arguments);
  } else {
    result(FlutterMethodNotImplemented);
  }



}


- (void)getTestDemo{
    
    
    NSLog(@"我的方法实现了");
    
    
}






@end
