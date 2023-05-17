import 'package:flutter/material.dart';

class ScaleTransitionWidget extends StatefulWidget {
  const ScaleTransitionWidget({super.key});

  @override
  State<ScaleTransitionWidget> createState() => _ScaleTransitionWidgetState();
}

class _ScaleTransitionWidgetState extends State<ScaleTransitionWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))
    ..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOutQuart);

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
        child: ScaleTransition(
            scale: _animation,
            child: FlutterLogo(
              size: 100,
            )),
      ),
    );
  }
}
