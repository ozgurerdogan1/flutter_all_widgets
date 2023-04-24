import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({super.key});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  bool isdeleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Visibility(
          maintainAnimation: true,
          maintainState: true,
          visible: !isdeleted,
          child: Chip(
            label: Text("This is a flutter course"),
            onDeleted: () {
              isdeleted = true;
              debugPrint("on deleted");
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
