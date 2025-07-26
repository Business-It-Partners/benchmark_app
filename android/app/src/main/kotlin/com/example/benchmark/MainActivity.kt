package com.example.benchmark  // <- Replace with your actual package

import android.os.Bundle
import android.view.WindowManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "secure_screen"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "enableSecurity" -> {
                        window.setFlags(
                            WindowManager.LayoutParams.FLAG_SECURE,
                            WindowManager.LayoutParams.FLAG_SECURE
                        )
                        result.success(null)
                    }
                    "disableSecurity" -> {
                        window.clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
                        result.success(null)
                    }
                    else -> result.notImplemented()
                }
            }
    }
}
