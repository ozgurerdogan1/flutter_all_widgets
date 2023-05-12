// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class FloatingBallPaint extends StatefulWidget {
  const FloatingBallPaint({super.key});

  @override
  State<FloatingBallPaint> createState() => _FloatingBallPaintState();
}

class _FloatingBallPaintState extends State<FloatingBallPaint> {
  double heightBox = 200;
  double widthBox = 200;

  double dyCircleR = 100;
  double dxCircleR = 100;


  double dxContext = 0;
  double dyContext = 0;

  List<Widget> drawList = [];

  @override
  void initState() {
    // Stream<Offset> offsetStream = streamDrawCircle();

    // offsetStream.listen((event) {
    //   var draw = CustomPaint(
    //     painter: MultiPaintCircle(centerOffset: Offset(event.dx, event.dy), height: height, width: width),
    //   );

    //   drawList.add(draw);

    //   print("drawList.length ${drawList.length}");

    //   setState(() {});
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dxContext = MediaQuery.of(context).size.width;
    dyContext = MediaQuery.of(context).size.height;


    var drawMultiCircleStream = SizedBox(
      height: dyContext,
      width: dxContext,
      child: StreamBuilder<Offset>(
        stream: streamDrawCircle(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            double dx = snapshot.data!.dx;
            double dy = snapshot.data!.dy;

            var draw = CustomPaint(
              painter: FloatingPainterCircle(
                centerOffset: Offset(dx, dy),
                dyCircleR: dyCircleR,
                dxCircleR: dxCircleR,
              ),
            );

            // drawList.add(draw);

            return Stack(
              children: [
                draw
                // ...drawList
                //drawList.last,
              ],
            );
          }
          return SizedBox();
        },
      ),
    );

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
         
            drawMultiCircleStream,

          
          ],
        ),
      ),
    );
  }



  Stream<Offset> streamDrawCircle() async* {
    print("streamDrawCircle");
    print("contextWidth: $dxContext");
    print("contextHeight: $dyContext");

    int dxPoint = 3;
    int dyPoint = 3;
    randomPoint() {
      dxPoint = Random().nextInt(2);
      dyPoint = 3 - dxPoint;

      print("random point _> dx:$dxPoint , dy:$dyPoint");
    }

    double dxCenterCircle = dxContext / 2;
    double dyCenterCircle = dyContext / 2;

    bool isRight = true;
    bool isBottom = true;

    int i = 0;
    while (true) {
      await Future.delayed(const Duration(milliseconds: 30));
      if (dxCenterCircle + dxCircleR / 2 >= dxContext) {
        print("///////// parent /////////////");
        print("dxCenterCircle: $dxCenterCircle");
        print("dxCircleR: $dxCircleR");
        print("dxContext: $dxContext");

        randomPoint();

        isRight = false;
      }

      if (dxCenterCircle - dxCircleR / 2 <= 0) {
        isRight = true;
        randomPoint();
      }

      if (dyCenterCircle + dyCircleR / 2 >= dyContext) {
        isBottom = false;
        randomPoint();
      }

      if (dyCenterCircle - dyCircleR / 2 <= 0) {
        isBottom = true;
        randomPoint();
      }

      if (isBottom) {
        dyCenterCircle = dyCenterCircle + dyPoint;
      } else {
        dyCenterCircle = dyCenterCircle - dyPoint;
      }

      if (isRight) {
        dxCenterCircle = dxCenterCircle + dxPoint;
      } else {
        dxCenterCircle = dxCenterCircle - dxPoint;
      }

      yield Offset(dxCenterCircle, dyCenterCircle);

      print("streamDrawCircle offset ${Offset(dxCenterCircle, dyCenterCircle)}");

      i++;
    }
  }
}



class FloatingPainterCircle extends CustomPainter {
  double dxCircleR;
  double dyCircleR;
  Offset centerOffset;
  FloatingPainterCircle({
    required this.dxCircleR,
    required this.dyCircleR,
    required this.centerOffset,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerOffset.dx, centerOffset.dy),
          width: dxCircleR,
          height: dyCircleR,
        ),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
