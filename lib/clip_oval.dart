import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  const ClipOvalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
          clipper: CustomClip(),
          child: Container(
            height: 60,
            width: 60,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // return Rect.fromCircle(center: Offset(size.width / 2 , size.height / 2), radius: 38);
    // return Rect.fromCenter(center: Offset(30, 30), width: size.width - 15, height: size.height);
    return Rect.fromLTWH(0, 0, size.width - 12, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
