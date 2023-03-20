import 'package:flutter/services.dart';

class FlutterRootJailbreakDetection {
  static const MethodChannel _channel =
      MethodChannel('flutter_root_jailbreak_detection');

  static Future<bool> get isJailbreak async {
    bool? isJailbreak = await _channel.invokeMethod<bool>('isJailbreak');
    return isJailbreak ?? true;
  }
}
