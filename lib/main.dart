import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/physical_model.dart';

import 'animated_modal_barrier.dart';
import 'every_chip_widgets.dart';
import 'interactive_viewer.dart';
import 'layout_builder.dart';
import 'limited_box.dart';
import 'linear_progress_indicator.dart';
import 'list_wheel_scroll_view.dart';
import 'listener_widget.dart';
import 'long_press_draggable.dart';
import 'material_banner.dart';
import 'material_button.dart';
import 'merge_semantics.dart';
import 'modal_barrier.dart';
import 'mouse_region.dart';
import 'notification_listener.dart';
import 'offstage.dart';
import 'opacity.dart';
import 'orientation_builder.dart';
import 'overflow_bar.dart';
import 'overflowbox.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: PyhsicalModelWidget(),
    );
  }
}
