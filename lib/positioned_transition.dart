import 'package:flutter/material.dart';

class PositionedTransitionWidget extends StatefulWidget {
  const PositionedTransitionWidget({super.key});

  @override
  State<PositionedTransitionWidget> createState() => _PositionedTransitionWidgetState();
}

class _PositionedTransitionWidgetState extends State<PositionedTransitionWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(vsync: this, duration: Duration(seconds: 2))
    ..repeat(reverse: true);

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double biglogo = 200;
    return LayoutBuilder(
      builder: (context, constraints) {
        final Size biggest = constraints.biggest;
        //final Size smallest = constraints.smallest;
        return Stack(
          children: [
            PositionedTransition(
              rect: RelativeRectTween(
                  begin: RelativeRect.fromSize(
                      Rect.fromLTWH(
                        biggest.width / 2 - smallLogo / 2,
                        0,
                        smallLogo,
                        smallLogo,
                      ),
                      biggest),
                  end: RelativeRect.fromSize(
                    Rect.fromLTWH(
                      biggest.width / 2 - biglogo / 2,
                      biggest.height - biglogo,
                      biglogo,
                      biglogo,
                    ),
                    biggest,
                  )).animate(CurvedAnimation(parent: _animationController, curve: Curves.slowMiddle)),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
