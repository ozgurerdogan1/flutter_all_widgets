import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({super.key});

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          height: 200,
          width: double.infinity,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.fastOutSlowIn,
            onEnd: () => print("animetd end"),
            child: const FlutterLogo(size: 50),
          ),
        ),
      ),
    );
  }
}
