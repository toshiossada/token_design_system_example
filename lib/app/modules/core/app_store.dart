import 'package:flutter/material.dart';

import '../../../fApp_theme.dart';
import '../../../tokens/blur/blur_token.dart';
import '../../../tokens/color/color_token.dart';
import '../../../tokens/elevation/elevation_token.dart';
import '../../../tokens/size/sizes_token.dart';
import '../../../tokens/typography/typography_token.dart';

class AppStore {
  final ValueNotifier<FAPPTheme> _theme = ValueNotifier<FAPPTheme>(
    const FAPPTheme(
      colors: FAppColorData(),
      blurs: FAppBlurData(),
      elevations: FAppElevationData(),
      sizes: FAppSizeData(),
      typography: FAppTypographyData(),
    ),
  );

  set theme(FAPPTheme value) {
    _theme.value = value;
  }

  FAPPTheme get theme => _theme.value;
  ValueNotifier<FAPPTheme> get themeNotifier => _theme;
}
