import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/about_dialog.dart';
import 'package:flutter_all_widgets/animated_modal_barrier.dart';
import 'package:flutter_all_widgets/animated_opacity.dart';
import 'package:flutter_all_widgets/animated_rotation.dart';

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

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      home: const AnimatedSwitcherWidget(),
    );
  }
}
