import 'package:flutter/material.dart';

import 'every_chip_widgets.dart';
import 'interactive_viewer.dart';
import 'layout_builder.dart';
import 'limited_box.dart';
import 'linear_progress_indicator.dart';
import 'listener_widget.dart';

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
      home: ListenerWidget(),
    );
  }
}
