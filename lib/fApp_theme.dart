import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tokens_playground/tokens/base_token.dart';
import 'package:tokens_playground/tokens/base_token_parser.dart';

import 'tokens/app1/app1.dart';
import 'tokens/app2/app2.dart';
import 'tokens/app3/app3.dart';

class FAPPTheme extends ThemeExtension<FAPPTheme> {
  const FAPPTheme({
    required this.colors,
    required this.blurs,
    required this.elevations,
    required this.sizes,
    required this.typography,
  });

  final BaseTokenParser<BaseToken, Color> colors;
  final BaseTokenParser<BaseToken, int> blurs;
  final BaseTokenParser<BaseToken, int> elevations;
  final BaseTokenParser<BaseToken, double> sizes;
  final BaseTokenParser<BaseToken, TextStyle> typography;

  static const app1 = FAPPTheme(
    colors: FAppColorData(),
    blurs: FAppBlurData(),
    elevations: FAppElevationData(),
    sizes: FAppSizeData(),
    typography: FAppTypographyData(),
  );

  static const app2 = FAPPTheme(
    colors: App2ColorData(),
    blurs: App2BlurData(),
    elevations: App2ElevationData(),
    sizes: App2SizeData(),
    typography: App2TypographyData(),
  );

  static const app3 = FAPPTheme(
    colors: App3ColorData(),
    blurs: App3BlurData(),
    elevations: App3ElevationData(),
    sizes: App3SizeData(),
    typography: App3TypographyData(),
  );

  @override
  FAPPTheme copyWith({
    BaseTokenParser<BaseToken, Color>? colors,
    BaseTokenParser<BaseToken, int>? blurs,
    BaseTokenParser<BaseToken, int>? elevations,
    BaseTokenParser<BaseToken, double>? sizes,
    BaseTokenParser<BaseToken, TextStyle>? typography,
  }) {
    return FAPPTheme(
      colors: colors ?? this.colors,
      blurs: blurs ?? this.blurs,
      elevations: elevations ?? this.elevations,
      sizes: sizes ?? this.sizes,
      typography: typography ?? this.typography,
    );
  }

  @override
  FAPPTheme lerp(FAPPTheme? other, double t) {
    if (other is! FAPPTheme) {
      return this;
    }
    return FAPPTheme(
      colors: other.colors,
      blurs: other.blurs,
      elevations: other.elevations,
      sizes: other.sizes,
      typography: other.typography,
    );
  }

  factory FAPPTheme.fromMap(Map<String, dynamic> map) {
    return FAPPTheme(
      colors: FAppColorData.fromMap(map['colors'] ?? {}),
      blurs: FAppBlurData.fromMap(map['blurs'] ?? {}),
      elevations: FAppElevationData.fromMap(map['elevations'] ?? {}),
      sizes: FAppSizeData.fromMap(map['sizes'] ?? {}),
      typography: FAppTypographyData.fromMap(map['typography'] ?? {}),
    );
  }

  factory FAPPTheme.fromJson(String source) =>
      FAPPTheme.fromMap(json.decode(source) as Map<String, dynamic>);
}
