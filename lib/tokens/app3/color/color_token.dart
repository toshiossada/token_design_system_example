import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokens_playground/app/modules/core/extensions_color_entension.dart';

import '../../base_token_parser.dart';
import '../../color/color_token.dart';

final class App3ColorData extends BaseTokenParser<FAppColor, Color> {
  @override
  final defaultData = const {
    FAppColor.white: Color(0xFF000000), // Preto
    FAppColor.green1: Color(0xFFFF0000), // Vermelho
    FAppColor.green2: Color(0xFF0000FF), // Azul
    FAppColor.green3: Color(0xFFFFFF00), // Amarelo
    FAppColor.green4: Color(0xFFFFA500), // Laranja
    FAppColor.green5: Color(0xFF4B0082), // Índigo
    FAppColor.green6: Color(0xFF8A2BE2), // Azul violeta
    FAppColor.green7: Color(0xFFA52A2A), // Marrom
    FAppColor.green8: Color(0xFF00FFFF), // Ciano
    FAppColor.orange1: Color(0xFF008000), // Verde
    FAppColor.orange2: Color(0xFF808080), // Cinza
    FAppColor.orange3: Color(0xFF800080), // Roxo
    FAppColor.orange4: Color(0xFF00FF00), // Verde brilhante
    FAppColor.orange5: Color(0xFF000080), // Azul marinho
    FAppColor.blue1: Color(0xFFFFC0CB), // Rosa
    FAppColor.blue2: Color(0xFF696969), // Cinza escuro
    FAppColor.yellow1: Color(0xFF2F4F4F), // Cinza ardósia escuro
    FAppColor.red1: Color(0xFFB0C4DE), // Azul claro acinzentado
    FAppColor.red2: Color(0xFFE0E0E0), // Cinza claro pastel
    FAppColor.gray1: Color(0xFF778899), // Cinza ardósia claro
    FAppColor.gray2: Color(0xFF708090), // Cinza ardósia
    FAppColor.gray3: Color(0xFFD3D3D3), // Cinza muito claro
    FAppColor.gray4: Color(0xFFA9A9A9), // Cinza claro
    FAppColor.gray5: Color(0xFF808080), // Cinza médio
    FAppColor.gray6: Color(0xFF8B0000), // Vermelho escuro
    FAppColor.gray7: Color(0xFFFF4500), // Laranja avermelhado
    FAppColor.gray8: Color(0xFFFFD700), // Ouro
    FAppColor.gray9: Color(0xFF66FF66), // Verde claro
    FAppColor.backgroundModal: Color(0xFF00CC99), // Verde turquesa
    FAppColor.backgroundLoading: Color(0xFF33CC33), // Verde médio
  };

  const App3ColorData([super.newData]);

  @override
  factory App3ColorData.fromMap(Map<String, dynamic> map) {
    var newValue = Map<FAppColor, Color>.fromEntries(map.entries
        .where((entry) => FAppColor.anyToken(entry.key))
        .map((entry) => MapEntry(
              FAppColor.getByToken(entry.key),
              entry.value.toString().convertHexToColor(),
            )));
    return App3ColorData(newValue);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is App3ColorData && mapEquals(other.data, data);
  }

  @override
  int get hashCode => data.hashCode;
}
