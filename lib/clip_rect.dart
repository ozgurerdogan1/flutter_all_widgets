import 'package:flutter/material.dart';

class ClipRectWidget extends StatelessWidget {
  const ClipRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);

    return Scaffold(
      body: Center(
        child: ClipRect(
          clipper: CustomClipRect(),
          child: Image.network(
            "https://picsum.photos/400/900/",
          ),
        ),
      ),
    );
  }
}

class CustomClipRect extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // return Rect.fromPoints(Offset.zero, Offset(size.width, size.height / 2));
    return const Rect.fromLTRB(100, 100, 400, 400);
   // return Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: 50);
   // return Rect.fromCenter(center: Offset(size.width / 2, size.height / 2), width: 200, height: 400);
   // return Rect.fromLTWH(0, 200, 200, 400);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
