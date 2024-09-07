import 'package:flutter/material.dart';

import 'fApp_theme.dart';
import 'tokens/blur/blur_token.dart';
import 'tokens/color/color_token.dart';
import 'tokens/elevation/elevation_token.dart';
import 'tokens/size/sizes_token.dart';
import 'tokens/typography/typography_token.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        extensions: const <ThemeExtension<dynamic>>[
          FAPPTheme(
            colors: FAppColorData(),
            blurs: FAppBlurData(),
            elevations: FAppElevationData(),
            sizes: FAppSizeData(),
            typography: FAppTypographyData(),
          ),
        ],
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<FAPPTheme>()!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
              height: 100,
              width: 100,
              color: style.colors.getByToken(FAppColor.red2),
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
