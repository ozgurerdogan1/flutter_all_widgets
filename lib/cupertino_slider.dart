import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CupertinoSliderWidget extends StatefulWidget {
  const CupertinoSliderWidget({super.key});

  @override
  State<CupertinoSliderWidget> createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_selectedValue.toString()),
            const SizedBox(height: 50),
            CupertinoSlider(
              value: _selectedValue,
              max: 100,
              min: 0,
              divisions: 10,
              thumbColor: Colors.teal,
              activeColor: Colors.teal,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
