import 'dart:async';

import 'package:flutter/material.dart';
import 'package:modular_di/modular_di.dart';

import '../core/app_store.dart';
import '../core/core_module.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  List<Type> get imports => [CoreModule];

  @override
  FutureOr<void> registerBinds(InjectorRegister i) {}

  static Widget child(BuildContext context) => ModuleWidget<HomeModule>(
        child: MyHomePage(
          appStore: Module.get<AppStore>(context),
        ),
      );
}
