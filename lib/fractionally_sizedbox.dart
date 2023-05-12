import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatelessWidget {
  const FractionallySizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
            heightFactor: .5,
            widthFactor: .5,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.amber,
            )),
      ),
    );
  }
}
