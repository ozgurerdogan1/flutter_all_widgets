import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionChipWidget extends StatefulWidget {
  const ActionChipWidget({super.key});

  @override
  State<ActionChipWidget> createState() => _ActionChipWidgetState();
}

class _ActionChipWidgetState extends State<ActionChipWidget> {
  bool isdeleted = false;
  bool isSelected = false;
  bool isEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              onDeleted: () {
                print("chip on deleted");
              },
              materialTapTargetSize: MaterialTapTargetSize.padded,
              label: Text("Chip"),
            ),
            ActionChip(
              onPressed: () {
                print("click chip");
              },
              label: Text("Action Chip"),
            ),
            ChoiceChip(
              label: Text("choise chip"),
              selected: isSelected,
              selectedColor: Colors.cyan,
              onSelected: (value) {
                setState(() {
                  isSelected = value;
                  if (isSelected) isEnable = true;
                });
              },
            ),
            RawChip(
              onDeleted: () {
                print("raw chip on deleted");
                setState(() {
                  isEnable = false;
                });
              },
              onPressed: () {
                print("raw chip on pressed");
              },
              onSelected: (value) {
                setState(() {
                  isSelected = value;
                });
                print("raw chip on selected, value: $value");
              },
              selected: isSelected,
              label: Text("Raw Chip"),
              // checkmarkColor: Colors.pink,
              isEnabled: isEnable,
              showCheckmark: true,
            ),
            InputChip(
              isEnabled: true,
              selected: isSelected,
              onDeleted: () {
                print("input chip on deleted");
              },
              onPressed: () {
                print("input chip on pressed");
              },
              onSelected: (value) {
                setState(() {
                  isSelected = value;
                });
                print("input chip on selected, value: $value");
              },
              label: Text("input chip"),
            ),
            FilterChip(
              selected: isSelected,
              selectedColor: Colors.cyan,
              label: Text("filter chip"),
              onSelected: (value) {
                setState(() {
                  isSelected = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
