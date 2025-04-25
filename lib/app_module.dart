import 'dart:async';

import 'package:modular_di/modular_di.dart';
import 'package:tokens_playground/app/modules/core/core_module.dart';

class AppModule extends Module {
  @override
  List<Type> get imports => [CoreModule];

  @override
  FutureOr<void> registerBinds(InjectorRegister i) {}
}
