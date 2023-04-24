import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChoiseChipWidget extends StatefulWidget {
  const ChoiseChipWidget({super.key});

  @override
  State<ChoiseChipWidget> createState() => _ChoiseChipWidgetState();
}

class _ChoiseChipWidgetState extends State<ChoiseChipWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChoiceChip(
          label: Text("choise chip"),
          selected: selected,
          selectedColor: Colors.amber,
          onSelected: (value) {
            setState(() {
              selected = value;
            });
          },
          avatar: FlutterLogo(),
        ),
      ),
    );
  }
}
