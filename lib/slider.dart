import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slider(
          label: _value.toString(),
          value: _value,
          min: 0,
          max: 100,
          divisions: 10,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
