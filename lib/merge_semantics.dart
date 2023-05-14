import 'package:flutter/material.dart';

class MergeSemanticsWidget extends StatelessWidget {
  const MergeSemanticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: MergeSemantics(
      child: Row(
        children: [
          TextButton(
              onPressed: () {
                print("button1");
              },
              child: Text("text button1")),
          TextButton(
              onPressed: () {
                print("button2");
              },
              child: Text("text button2"))
        ],
      ),
    )));
  }
}
