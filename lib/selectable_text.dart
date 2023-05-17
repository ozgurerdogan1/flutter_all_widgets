import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SelectableText(
        "This is selectable text",
        style: TextStyle(fontSize: 30),
        onSelectionChanged: (selection, cause) {
          print(selection.toString());
          print(cause);
        },
        onTap: () {
          print("ontab");
        },
      )),
    );
  }
}
