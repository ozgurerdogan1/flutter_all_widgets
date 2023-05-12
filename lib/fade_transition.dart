import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  const FadeTransitionWidget({super.key});

  @override
  State<FadeTransitionWidget> createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget> with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(reverse: true);
      
  late final Animation<double> _animation = CurvedAnimation(curve: Curves.easeIn, parent: _animationController);

  @override
  void initState() {
    // _animationController.dispose();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}
