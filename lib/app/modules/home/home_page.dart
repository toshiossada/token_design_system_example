import 'package:flutter/material.dart';
import 'package:tokens_playground/app/modules/core/app_store.dart';

import '../../../fapp_theme.dart';
import '../../../tokens/color/color_token.dart';

class MyHomePage extends StatefulWidget {
  final AppStore appStore;
  const MyHomePage({super.key, required this.appStore});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;

      final remoteTheme = FAPPTheme.fromJson('''
      {
        "colors": {
          "\$color-red-1": "${_counter.isEven ? '#FFF26C66' : '#F4EFFF41'}",
          "\$color-blue-1": "${_counter.isEven ? '#FF1877F2' : '#FF683AB7'}",
          "\$color-orange-1": "${_counter.isEven ? '#FFF2B166' : '#FF3F51B5'}"
        }
      }
      ''');
      final newTheme = widget.appStore.theme.copyWith(
        colors: remoteTheme.colors,
      );
      widget.appStore.theme = newTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<FAPPTheme>()!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Teste'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: style.colors.getByToken(FAppColor.orange1),
                  ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: style.colors.getByToken(FAppColor.blue1),
                  ),
            ),
            Container(
              height: 100,
              width: 100,
              color: style.colors.getByToken(FAppColor.red1),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
