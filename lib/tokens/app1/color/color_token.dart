import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokens_playground/app/modules/core/extensions_color_entension.dart';

import '../../base_token_parser.dart';
import '../../color/color.dart';

final class FAppColorData extends BaseTokenParser<FAppColor, Color> {
  @override
  final defaultData = const {
    FAppColor.white: Color(0xFFFFFFFF),
    FAppColor.green1: Color(0xFF035D59),
    FAppColor.green2: Color(0xFF06847B),
    FAppColor.green3: Color(0xFF06847B),
    FAppColor.green4: Color(0xFFB3EFEC),
    FAppColor.green5: Color(0xFF7DBCB7),
    FAppColor.green6: Color(0xFF88B844),
    FAppColor.green7: Color(0xFF88B844),
    FAppColor.green8: Color(0xFFC0DCDA),
    FAppColor.orange1: Color(0xFFF2B166),
    FAppColor.orange2: Color(0xFFFC8D66),
    FAppColor.orange3: Color(0xFFF5DDD4),
    FAppColor.orange4: Color(0xFFFCEEDD),
    FAppColor.orange5: Color(0xFFFEE6DD),
    FAppColor.blue1: Color(0xFF1877F2),
    FAppColor.blue2: Color(0xFF56616B),
    FAppColor.yellow1: Color(0xFFFBEEC1),
    FAppColor.red1: Color(0xFFF26C66),
    FAppColor.red2: Color(0xFFFFE0DF),
    FAppColor.gray1: Color(0x003E3E3E),
    FAppColor.gray2: Color(0x00666666),
    FAppColor.gray3: Color(0x00808080),
    FAppColor.gray4: Color(0x00B9B9B9),
    FAppColor.gray5: Color(0x00E3E3E3),
    FAppColor.gray6: Color(0x00F4F4F4),
    FAppColor.gray7: Color(0x00F3F3F3),
    FAppColor.gray8: Color(0x00EEEEEE),
    FAppColor.gray9: Color(0x00D9DBDE),
    FAppColor.backgroundModal: Color(0x007A8590),
    FAppColor.backgroundLoading: Color(0x007A8590),
  };

  const FAppColorData([super.newData]);

  @override
  factory FAppColorData.fromMap(Map<String, dynamic> map) {
    var newValue = Map<FAppColor, Color>.fromEntries(map.entries
        .where((entry) => FAppColor.anyToken(entry.key))
        .map((entry) => MapEntry(
              FAppColor.getByToken(entry.key),
              entry.value.toString().convertHexToColor(),
            )));
    return FAppColorData(newValue);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FAppColorData && mapEquals(other.data, data);
  }

  @override
  int get hashCode => data.hashCode;
}
