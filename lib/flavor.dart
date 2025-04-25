import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:tokens_playground/fapp_theme.dart';

// Classe singleton para gerenciar a configuração do flavor atual
class FlavorConfig {
  static final FlavorConfig instance =
      FlavorConfig._internal(); // Instância única
  factory FlavorConfig() => instance; // Construtor de fábrica
  FlavorConfig._internal(); // Construtor privado

  // Canal para comunicação com o código nativo Android
  static const MethodChannel _channel = MethodChannel(
    'com.example.tokens_playground/channel',
  );

  AppFlavorType? _flavor; // Armazena o flavor atual
  AppFlavorType get flavor => _flavor!; // Getter com acesso não-nulo

  // Inicializa o flavor consultando o valor no Android
  Future<void> init() async {
    final flavorName =
        await _channel.invokeMethod<String>('getFlavor'); // Chama método nativo
    _flavor = _mapFlavor(flavorName ?? 'Desconhecido'); // Mapeia para modelo
  }

  // Retorna o modelo de configuração baseado no nome do flavor
  AppFlavorType? _mapFlavor(String flavorName) {
    final app = AppFlavorType.values
        .firstWhereOrNull((flavor) => flavor.name == flavorName);

    return app;
  }
}

enum AppFlavorType {
  app1(theme: FAPPTheme.app1),
  app2(theme: FAPPTheme.app2),
  app3(theme: FAPPTheme.app3);

  final FAPPTheme theme;

  const AppFlavorType({
    required this.theme,
  });
}
