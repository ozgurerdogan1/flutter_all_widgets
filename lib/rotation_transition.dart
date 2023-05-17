import 'package:flutter/material.dart';

class RotationTransitionWidget extends StatefulWidget {
  const RotationTransitionWidget({super.key});

  @override
  State<RotationTransitionWidget> createState() => _RotationTransitionWidgetState();
}

class _RotationTransitionWidgetState extends State<RotationTransitionWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))
    ..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: RotationTransition(
            turns: _animation,
            child: FlutterLogo(
              size: 100,
            )),
      ),
    );
  }
}
