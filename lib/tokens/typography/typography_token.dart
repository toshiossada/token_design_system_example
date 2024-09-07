import 'package:flutter/material.dart';

import '../../constants.dart';
import '../base_token.dart';
import '../base_token_parser.dart';
import '../color/color_token.dart';
import '../size/sizes_token.dart';

enum FAppTypography implements BaseToken {
  headline1(token: r'Headline 1'),
  headline2(token: r'Headline 2'),
  headline3(token: r'Headline 3'),
  headline4(token: r'Headline 4'),
  body1(token: r'Body 1'),
  body2(token: r'Body 2'),
  body3(token: r'Body 3'),
  body4(token: r'Body 4'),
  body5(token: r'Body 5'),
  body6(token: r'Body 6'),
  body7(token: r'Body 7'),
  body8(token: r'Body 8'),
  captionSmall1(token: r'Caption small 1'),
  captionSmall3(token: r'Caption small 3'),
  captionSmall2(token: r'Caption small 2'),
  captionSmall4(token: r'Caption small 4');

  const FAppTypography({
    required this.token,
  });

  @override
  final String token;
}

class FAppTypographyData extends BaseTokenParser<FAppTypography, TextStyle> {
  static const colors = FAppColorData();
  static Color defaulColor() => colors.getByToken(FAppColor.gray1);

  final sizes = const FAppSizeData();
  @override
  Map<FAppTypography, TextStyle> get data => {
        FAppTypography.headline1: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_26),
          fontWeight: FontWeight.w700,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.headline2: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_26),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.headline3: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_20),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.headline4: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_20),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body1: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_18),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body2: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_18),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body3: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_16),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body4: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_16),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body5: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_14),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body6: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_14),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body7: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_12),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.body8: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_12),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.captionSmall1: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_10),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.captionSmall2: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_8),
          fontWeight: FontWeight.w500,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.captionSmall3: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_10),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
        FAppTypography.captionSmall4: TextStyle(
          fontFamily: Constants.defaultFontFamily,
          fontSize: sizes.getByToken(FAppSize.s_8),
          fontWeight: FontWeight.w600,
          height: Constants.defaultFontHeight,
        ),
      };
  const FAppTypographyData({
    super.defaultData = FAppTypography.headline1,
  });

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
