import 'package:flutter/material.dart';

class SizeTransitionWidget extends StatefulWidget {
  const SizeTransitionWidget({super.key});

  @override
  State<SizeTransitionWidget> createState() => _SizeTransitionWidgetState();
}

class _SizeTransitionWidgetState extends State<SizeTransitionWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))
    ..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.decelerate);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizeTransition(
                sizeFactor: _animation,
                axis: Axis.vertical,
                axisAlignment: 0,
                child: FlutterLogo(
                  size: 300,
                )),
          ],
        ),
      ),
    );
  }
}
