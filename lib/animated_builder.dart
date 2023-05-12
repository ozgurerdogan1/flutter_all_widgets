import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
      reverseDuration: const Duration(milliseconds: 2000),
      animationBehavior: AnimationBehavior.normal,
      lowerBound: 0.2,
      upperBound: 0.99,
    )..repeat(reverse: true);

    _controller.addListener(() {
      _controllerListener();
    });

    _controller.addStatusListener((status) {
      _controllerStatusListener(status);
    });

    super.initState();
  }

  void _controllerListener() {
    // print("_controller.value: ${_controller.value}");
    //print("_controller.lowerBound: ${_controller.lowerBound}");
    //print("_controller.upperBound: ${_controller.upperBound}");
    // print("_controller.upperBound: ${_controller.duration}");
    //  print("_controller.lastElapsedDuration: ${_controller.lastElapsedDuration}");
    //print("_controller.reverseDuration: ${_controller.reverseDuration}");
    //print("_controller.velocity: ${_controller.velocity}");
    //print("_controller.view: ${_controller.view}");

    //print("_controller.isCompleted: ${_controller.isCompleted}");

    //print("_controller.isAnimating: ${_controller.isAnimating}");
    // print("_controller.isDismissed: ${_controller.isDismissed}");
  }

  void _controllerStatusListener(AnimationStatus status) {
    print("AnimationStatus:${status}");
    print("AnimationStatus:${status.index}");
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
    _controller.removeListener(() {
      _controllerListener();
    });
  }

  bool isForward = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _controller.value - 0.2,
                child: Transform.translate(
                  offset: Offset(
                    (_controller.value - 0.7) * 500,
                    0,
                  ),
                  child: Transform.rotate(
                    angle: _controller.value * math.pi,
                    child: Transform.scale(
                      scale: _controller.value * math.pi,
                      child: child,
                    ),
                  ),
                ),
              );
            },
            child: const Center(
              child: FlutterLogo(
                size: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
