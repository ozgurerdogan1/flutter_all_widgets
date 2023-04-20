import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _isPlay = true;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (_isPlay) {
            _isPlay = !_isPlay;
            _controller.reverse();
          } else {
            _isPlay = !_isPlay;
            _controller.forward();
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedIcon(
                icon: AnimatedIcons.pause_play,
                progress: _controller,
                size: 64,
              ),
            ],
          ),
        ));
  }
}
