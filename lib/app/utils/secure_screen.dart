import 'dart:developer';

import 'package:flutter/services.dart';

class SecureScreen {
  static const _channel = MethodChannel('secure_screen');

  static Future<void> enableSecurity() async {
    try {
      await _channel.invokeMethod('enableSecurity');
    } catch (e) {
      log("Error enabling screen security: $e");
    }
  }

  static Future<void> disableSecurity() async {
    try {
      await _channel.invokeMethod('disableSecurity');
    } catch (e) {
      log("Error disabling screen security: $e");
    }
  }
}
