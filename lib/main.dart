import 'package:flutter/material.dart';

import 'every_chip_widgets.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger: true,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: ActionChipWidget(),
    );
  }
}
