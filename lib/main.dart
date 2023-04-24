import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/about_dialog.dart';
import 'package:flutter_all_widgets/animated_modal_barrier.dart';
import 'package:flutter_all_widgets/animated_opacity.dart';
import 'package:flutter_all_widgets/animated_rotation.dart';
import 'package:flutter_all_widgets/blocsemantics_widget.dart';
import 'package:flutter_all_widgets/bottom_sheet_widget.dart';
import 'package:flutter_all_widgets/clip_oval.dart';
import 'package:flutter_all_widgets/color_filtered.dart';

import 'abot_dialog_list_tile.dart';
import 'absorb_pointer.dart';
import 'animated_align.dart';
import 'animated_builder.dart';
import 'animated_container.dart';
import 'animated_cross_fade.dart';
import 'animated_default_textstyle.dart';
import 'animated_icon.dart';
import 'animated_list.dart';
import 'animated_padding.dart';
import 'animated_physical_model.dart';
import 'animated_positioned.dart';
import 'animated_size.dart';
import 'animated_switcher.dart';
import 'aspect_ratio.dart';
import 'auto_complate_widget.dart';
import 'back_drop_filter_widget.dart';
import 'banner_widget.dart';
import 'baseline_widget.dart';
import 'checkbox_listtile.dart';
import 'chip_widget.dart';
import 'choise_chip.dart';
import 'circle_avatar.dart';
import 'clip_path.dart';
import 'clip_rect.dart';
import 'clip_rrect.dart';
import 'container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger: true,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: ContainerWidget(),
    );
  }
}
