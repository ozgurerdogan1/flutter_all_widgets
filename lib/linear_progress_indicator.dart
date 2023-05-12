import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatefulWidget {
  const LinearProgressIndicatorWidget({super.key});

  @override
  State<LinearProgressIndicatorWidget> createState() => _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState extends State<LinearProgressIndicatorWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(vsync: this, duration: Duration(seconds: 3))
    ..addListener(() {
      setState(() {});
    })
    ..repeat(reverse: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LinearProgressIndicator(
                value: _animationController.value,
              ),
              const LinearProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
