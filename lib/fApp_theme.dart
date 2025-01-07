// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

import 'tokens/blur/blur_token.dart';
import 'tokens/color/color_token.dart';
import 'tokens/elevation/elevation_token.dart';
import 'tokens/size/sizes_token.dart';
import 'tokens/typography/typography_token.dart';

class FAPPTheme extends ThemeExtension<FAPPTheme> {
  const FAPPTheme({
    required this.colors,
    required this.blurs,
    required this.elevations,
    required this.sizes,
    required this.typography,
  });

  final FAppColorData colors;
  final FAppBlurData blurs;
  final FAppElevationData elevations;
  final FAppSizeData sizes;
  final FAppTypographyData typography;

  @override
  FAPPTheme copyWith({
    FAppColorData? colors,
    FAppBlurData? blurs,
    FAppElevationData? elevations,
    FAppSizeData? sizes,
    FAppTypographyData? typography,
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
