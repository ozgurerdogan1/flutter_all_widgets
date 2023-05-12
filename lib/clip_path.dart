import 'package:flutter/material.dart';

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);

    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: size.width,
              height: size.height,
              child: Image.network(
                "https://picsum.photos/400/900/",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(size.width * .25, size.height - 40, size.width * .50, size.height - 20)
      ..quadraticBezierTo(size.width * .75, size.height, size.width, size.height - 30)
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
