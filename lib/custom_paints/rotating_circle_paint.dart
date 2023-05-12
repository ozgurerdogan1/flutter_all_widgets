// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';

class RotatingCircle extends StatefulWidget {
  const RotatingCircle({super.key});

  @override
  State<RotatingCircle> createState() => _RotatingCircleState();
}

class _RotatingCircleState extends State<RotatingCircle> {
  double heightBox = 200;
  double widthBox = 200;

  bool forward = true;

  bool isRotatingStop = true;
  bool hasRunTimerPeriodic = false;



  @override
  Widget build(BuildContext context) {


    rotatingTimerPeriodic();

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isRotatingStop = !isRotatingStop;
                });
              },
              child: Container(
                  height: 250,
                  width: 250,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white, style: BorderStyle.solid, width: 5)),
                  child: CustomPaint(painter: RotatingCirclePaint(height: heightBox, width: widthBox))),
            )
          ],
        ),
      ),
    );
  }

  void rotatingTimerPeriodic() {
    if (isRotatingStop) return;
    if (hasRunTimerPeriodic) return;

    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      hasRunTimerPeriodic = timer.isActive;

      if (forward) {
        widthBox += 2;
      } else {
        widthBox -= 2;
      }

      if (widthBox >= 200) {
        forward = false;
      }

      if (widthBox <= 0) {
        forward = true;
      }
      print(widthBox);

      if (isRotatingStop) {
        timer.cancel();
        hasRunTimerPeriodic = timer.isActive;
      }

      setState(() {});
    });
  }
}

class RotatingCirclePaint extends CustomPainter {
  double width;
  double height;

  RotatingCirclePaint({required this.width, required this.height});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    canvas.drawOval(
        Rect.fromCenter(
          center: Offset(size.width / 2, size.height / 2),
          width: width,
          height: height,
        ),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
