import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() => _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState extends State<AnimatedDefaultTextStyleWidget> {
  double _fontSize = 24.0;

  double _wordSpacing = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              _fontSize += 1;
              _wordSpacing += 0.05;
            });
          },
          child: Text("change text style"),
        ),
        AnimatedDefaultTextStyle(
            overflow: TextOverflow.clip,
            softWrap: true,
            //maxLines: 2,
            textAlign: TextAlign.center,
            child: Text("benim adım özgür"),
            style: TextStyle(
              fontSize: _fontSize,
              wordSpacing: _wordSpacing,
            ),
            duration: Duration(milliseconds: 500))
      ],
    );
  }
}
