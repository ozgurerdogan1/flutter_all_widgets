import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({super.key});

  @override
  State<AnimatedPositionedWidget> createState() => _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          height: _selected ? 50 : 150,
          width: _selected ? 150 : 50,
          top: _selected ? 50 : 150,
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(25)),
            ),
            onTap: () {
              setState(() {
                _selected = !_selected;
              });
            },
          ),
          duration: Duration(milliseconds: 500),
        )
      ],
    );
  }
}
