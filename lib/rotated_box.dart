import 'package:flutter/material.dart';

class RotatedBoxWidget extends StatelessWidget {
  const RotatedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: RotatedBox(
        quarterTurns: 1,
        child: FlutterLogo(
          size: 100,
        ),
      )),
    );
  }
}
