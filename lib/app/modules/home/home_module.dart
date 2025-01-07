import 'dart:async';

import 'package:modular_di/modular_di.dart';

import '../core/core_module.dart';

class HomeModule extends Module {
  @override
  List<Type> get imports => [CoreModule];

  @override
  FutureOr<void> registerBinds(InjectorRegister i) {}
}
