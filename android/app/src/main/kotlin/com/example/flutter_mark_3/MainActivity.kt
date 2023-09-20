package com.example.flutter_mark_3

import io.flutter.embedding.android.FlutterActivity
import com.sanket.digiface.ClassMain
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val channel = "samples.flutter.dev/battery"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            channel
        ).setMethodCallHandler { call, result ->
            if (call.method == "hello") {
                getAarClass()
                result.success("found function")
            }

        }
    }
}

private fun getAarClass() {
    ClassMain.funB()
}