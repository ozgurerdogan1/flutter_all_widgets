import 'package:flutter/material.dart';

class SlideTransitionWidget extends StatefulWidget {
  const SlideTransitionWidget({super.key});

  @override
  State<SlideTransitionWidget> createState() => _SlideTransitionWidgetState();
}

class _SlideTransitionWidgetState extends State<SlideTransitionWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))
    ..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(begin: Offset(0, 0), end: const Offset(0, -3))
      .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SlideTransition(
            position: _animation,
            child: FlutterLogo(
              size: 150,
            )),
      ),
    );
  }
}
