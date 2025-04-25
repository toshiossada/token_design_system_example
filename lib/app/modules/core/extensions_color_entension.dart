import 'package:flutter/material.dart';

extension ColorExtension on String {
  Color convertHexToColor() {
    // Remove o caractere '#' se ele existir
    var hexColor = replaceAll("#", "");

    // Verifica se o código hexadecimal é válido
    if (hexColor.length == 6) {
      hexColor =
          "FF$hexColor"; // Adiciona opacidade total se não for especificada
    } else if (hexColor.length != 8) {
      throw ArgumentError("Código hexadecimal inválido: $hexColor");
    }

    // Converte a string hexadecimal em um inteiro
    int colorInt = int.parse(hexColor, radix: 16);

    // Retorna um objeto Color
    return Color(colorInt);
  }
}
