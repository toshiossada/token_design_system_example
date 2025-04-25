import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../base_token_parser.dart';
import '../../color/color.dart';
import '../../size/sizes_token.dart';
import '../../typography/typography.dart';
import '../color/color_token.dart';
import '../size/sizes_token.dart';

class App2TypographyData extends BaseTokenParser<FAppTypography, TextStyle> {
  static const colors = App2ColorData();
  static Color defaulColor() => colors.getByToken(FAppColor.gray1);

  final sizes = const App2SizeData();
  @override
  Map<FAppTypography, TextStyle> get defaultData => {
        FAppTypography.headline1: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s26),
          fontWeight: FontWeight.w700,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.headline2: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s26),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.headline3: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s20),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.headline4: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s20),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body1: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s18),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body2: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s18),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body3: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s16),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body4: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s16),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body5: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s14),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body6: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s14),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body7: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s12),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body8: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s12),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.captionSmall1: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s10),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.captionSmall2: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s8),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.captionSmall3: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s10),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.captionSmall4: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s8),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
      };

  const App2TypographyData([super.newData]);
  factory App2TypographyData.fromMap(Map<String, dynamic> json) {
    return const App2TypographyData({});
  }

  TextStyle getByTokenWithColor(
    FAppTypography token, {
    Color? color,
    TextDecoration? textDecoration,
  }) {
    if (data[token] == null) throw Exception('Token not found: $token');
    final style = data[token]!;

    return style.copyWith(color: color, decoration: textDecoration);
  }
}
