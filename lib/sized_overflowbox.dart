import 'package:flutter/material.dart';

class SizedOverflowBoxWidget extends StatelessWidget {
  const SizedOverflowBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        child: SizedOverflowBox(
            size: Size(100, 100), child: ElevatedButton(onPressed: () {}, child: Text("This is a button"))),
      ),
    );
  }
}
