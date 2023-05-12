import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlWidget extends StatefulWidget {
  const CupertinoSegmentedControlWidget({super.key});

  @override
  State<CupertinoSegmentedControlWidget> createState() => _CupertinoSegmentedControlWidgetState();
}

class _CupertinoSegmentedControlWidgetState extends State<CupertinoSegmentedControlWidget> {
  String? _currentText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              CupertinoSegmentedControl(
                unselectedColor: Colors.white,
                selectedColor: Colors.black54,
                pressedColor: Colors.orange.shade300,
                children: {
                  "Flutter": Container(
                    // margin: EdgeInsets.all(8),
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    color: _currentText == "Flutter" ? Colors.orange.shade300 : null,

                    child: Text("Flutter"),
                  ),
                  "Mapp": Container(
                    color: _currentText == "Mapp" ? Colors.orange.shade300 : null,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Map"),
                  ),
                  "YouTube": Container(
                    color: _currentText == "YouTube" ? Colors.orange.shade300 : null,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(" YouTube "),
                  ),
                },
                onValueChanged: (value) {
                  setState(() {
                    _currentText = value;
                  });
                },
              ),
              const SizedBox(height: 50),
              Visibility(
                visible: _currentText != null,
                child: Text(
                  _currentText.toString(),
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
