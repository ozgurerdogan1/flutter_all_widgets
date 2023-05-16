import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  late RangeValues _rangeValues;
  late RangeLabels _rangeLabels;

  @override
  void initState() {
    _rangeValues = const RangeValues(0.1, 0.9);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _rangeLabels = RangeLabels(_rangeValues.start.toString(), _rangeValues.end.toString());
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: RangeSlider(
          values: _rangeValues,
          labels: _rangeLabels,
          divisions: 10,
          onChanged: (value) {
            setState(() {
              _rangeValues = value;
            });
          },
        ),
      )),
    );
  }
}
