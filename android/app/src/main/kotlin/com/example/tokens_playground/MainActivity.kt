package com.example.tokens_playground

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity(){
    val flavor = BuildConfig.FLAVOR_NAME // Obtém o nome do flavor definido no build.gradle
    private val channelName = "com.example.tokens_playground/channel" // Nome do canal para comunicação Flutter <-> Android

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Cria o canal de comunicação com o Flutter
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName).setMethodCallHandler {
            call, result ->
            if (call.method == "getFlavor") { // Se o Flutter solicitar o flavor
                result.success(flavor) // Retorna o flavor atual
            } else {
                result.notImplemented() // Método não implementado
            }
        }
    }
}
