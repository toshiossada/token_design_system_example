import 'package:flutter/material.dart';
import 'package:tokens_playground/flavor.dart';

import '../../../fapp_theme.dart';

class AppStore {
  final ValueNotifier<FAPPTheme> _theme =
      ValueNotifier<FAPPTheme>(FlavorConfig.instance.flavor.theme);

  set theme(FAPPTheme value) {
    _theme.value = value;
  }

  FAPPTheme get theme => _theme.value;
  ValueNotifier<FAPPTheme> get themeNotifier => _theme;
}
