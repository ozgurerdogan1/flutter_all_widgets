import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.amber,
          child: FittedBox(
            child: Text(
              "This is fitted box widget example",
            ),
          ),
        ),
      ),
    );
  }
}
