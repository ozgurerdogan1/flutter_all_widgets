import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/physical_model.dart';
import 'package:flutter_all_widgets/physical_shape.dart';
import 'package:flutter_all_widgets/platform_menu_bar.dart';
import 'package:flutter_all_widgets/popup_menu_button.dart';
import 'package:flutter_all_widgets/positioned_transition.dart';
import 'package:flutter_all_widgets/preferred_size.dart';
import 'package:flutter_all_widgets/radio.dart';
import 'package:flutter_all_widgets/range_slider.dart';
import 'package:flutter_all_widgets/raw_auto_complate.dart';
import 'package:flutter_all_widgets/reorderable_listview.dart';
import 'package:flutter_all_widgets/rich_text.dart';
import 'package:flutter_all_widgets/rotated_box.dart';
import 'package:flutter_all_widgets/rotation_transition.dart';
import 'package:flutter_all_widgets/scale_transition.dart';
import 'package:flutter_all_widgets/scrollbar.dart';
import 'package:flutter_all_widgets/selectable_text.dart';
import 'package:flutter_all_widgets/semantic.dart';
import 'package:flutter_all_widgets/shader_mask.dart';
import 'package:flutter_all_widgets/shortcuts.dart';
import 'package:flutter_all_widgets/size_transition.dart';
import 'package:flutter_all_widgets/sized_overflowbox.dart';
import 'package:flutter_all_widgets/slide_transition.dart';
import 'package:flutter_all_widgets/slider.dart';
import 'package:flutter_all_widgets/sliver_appbar.dart';
import 'package:flutter_all_widgets/stepper.dart';

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
      home: StepperWidget(),
    );
  }
}
