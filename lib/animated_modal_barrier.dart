import 'package:flutter/material.dart';

class AnimatedModalBarrierWidget extends StatefulWidget {
  const AnimatedModalBarrierWidget({super.key});

  @override
  State<AnimatedModalBarrierWidget> createState() => _AnimatedModalBarrierWidgetState();
}

class _AnimatedModalBarrierWidgetState extends State<AnimatedModalBarrierWidget> with SingleTickerProviderStateMixin {
  bool _isPressed = false;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  late Widget _animatedModalBarrier;

  @override
  void initState() {
    ColorTween _colorTween =
        ColorTween(begin: Colors.orangeAccent.withOpacity(0.5), end: Colors.blueGrey.withOpacity(.5));

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 3));

    _colorAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    WidgetsBinding.instance.addPostFrameCallback(((timeStamp) => singleAnimate()));

    super.initState();
  }

  singleAnimate() {
    setState(() {
      _isPressed = true;
      _animationController.reset();
     _animationController.forward();
   

      Future.delayed(
        Duration(seconds: 3),
        () {
          setState(() {
            _isPressed = false;
          });
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 250,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                    onPressed: singleAnimate,
                    child: const Text("Press"),
                  ),
                  if (_isPressed) _animatedModalBarrier,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
