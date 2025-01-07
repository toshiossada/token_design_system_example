import 'dart:async';

import 'package:modular_di/modular_di.dart';
import 'package:tokens_playground/app/modules/core/app_store.dart';

class CoreModule extends Module {
  @override
  FutureOr<void> registerBinds(InjectorRegister i) {
    i.addLazySingleton(AppStore.new);
  }

  @override
  List<Type> get imports => [];
}
