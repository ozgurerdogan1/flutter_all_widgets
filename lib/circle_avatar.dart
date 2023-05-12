import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 55,
      )),
    );
  }
}
