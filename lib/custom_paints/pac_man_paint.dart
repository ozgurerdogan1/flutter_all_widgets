import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math' as math;

class CustomPaintWidget extends StatelessWidget {
  const CustomPaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                height: 250,
                alignment: Alignment.center,
                child: CustomPaint(
                  painter: DemoPainter(),
                  child: const Text(
                    "This is Pac-Man",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      backgroundColor: Colors.white54,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    var rect = Rect.fromCenter(center: Offset(center.width, center.height), width: 250, height: 250);

    canvas.drawArc(rect, 0.4, 2 * math.pi - 0.8, true, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
