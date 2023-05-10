import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomPaintExample extends StatelessWidget {
  const CustomPaintExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: Painter1(),
          child: Container(
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}

class Painter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    var centerOffset = Offset(size.width / 2, size.height / 2);

    canvas.drawLine(Offset(10, size.height / 2), Offset(size.width - 10, size.height / 2), paint);

    canvas.drawCircle(centerOffset, size.width / 4, paint..color = Colors.pink);
    canvas.drawArc(Rect.fromCircle(center: Offset(20, 50), radius: size.width / 5), 0, math.pi / 2, false,
        paint..color = Colors.teal);

    // canvas.drawColor(Colors.blue, BlendMode.darken);
    canvas.drawDRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(center: centerOffset, width: size.width - 10, height: 200), const Radius.circular(10)),
        RRect.fromRectAndRadius(
            Rect.fromCenter(center: centerOffset, width: size.width - 30, height: 170), const Radius.circular(10)),
        paint..color = Colors.cyan);

    //canvas.drawImage(Image.network("https://picsum.photos/200/300"), centerOffset, paint);

    canvas.drawOval(Rect.fromCenter(center: centerOffset, width: 100, height: 200), paint..color = Colors.purpleAccent);
    // canvas.drawPaint(paint); //butun child'i verilen renge boyar

    Path path = Path()
      ..lineTo(0, 0)
      ..lineTo(size.width / 2, 200)
      ..arcTo(Rect.fromCircle(center: Offset(size.width / 2, 200), radius: size.width / 5), 0, math.pi, true);
    canvas.drawPath(path, paint);

    canvas.drawShadow(path, Colors.blue, 8, true);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
