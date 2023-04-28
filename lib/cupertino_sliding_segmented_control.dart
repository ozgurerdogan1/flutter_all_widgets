import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CupertinoSlidingSegmentedControlWidget extends StatefulWidget {
  const CupertinoSlidingSegmentedControlWidget({super.key});

  @override
  State<CupertinoSlidingSegmentedControlWidget> createState() => _CupertinoSlidingSegmentedControlWidgetState();
}

class _CupertinoSlidingSegmentedControlWidgetState extends State<CupertinoSlidingSegmentedControlWidget> {
  String? _currentValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              CupertinoSlidingSegmentedControl(
                thumbColor: Colors.grey,
                padding: EdgeInsets.zero,
                children: const {
                  "Flutter": Text("Flutter"),
                  "Mapp": Text("Map"),
                  "YouTube": Text("YouTube"),
                },
                groupValue: _currentValue,
                onValueChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
              const SizedBox(height: 50),
              Visibility(
                visible: _currentValue != null,
                child: Text(
                  _currentValue.toString(),
                  style: const TextStyle(fontSize: 36),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
