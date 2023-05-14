import 'package:flutter/material.dart';

class OverflowBoxWidget extends StatelessWidget {
  const OverflowBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.amber,
          child: OverflowBox(
            maxHeight: 200,
            maxWidth: 200,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.red.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
