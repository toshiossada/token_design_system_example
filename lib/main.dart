import 'package:flutter/material.dart';
import 'package:modular_di/modular_di.dart';

import 'app/modules/core/app_store.dart';
import 'app/modules/core/core_module.dart';
import 'app/modules/home/home_module.dart';
import 'app_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Register and initialize modules
  await ModulesManager.instance.initModules([
    CoreModule(),
    AppModule(),
    HomeModule(),
  ]);

  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleWidget<AppModule>(
      child: Builder(
        builder: (context) => ModuleWidget<CoreModule>(
          child: Builder(
            builder: (context) => ModuleWidget<HomeModule>(
              child: ValueListenableBuilder(
                valueListenable: Module.get<AppStore>(context).themeNotifier,
                builder: (context, snapshot, _) {
                  return MaterialApp(
                    title: 'My Smart App',
                    theme: ThemeData(
                      colorScheme:
                          ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                      useMaterial3: true,
                      extensions: [snapshot],
                    ),
                    initialRoute: '/',
                    routes: {
                      '/': (context) {
                        return HomeModule.child(context);
                      },
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
