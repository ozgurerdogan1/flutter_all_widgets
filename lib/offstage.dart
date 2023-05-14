import 'package:flutter/material.dart';

class OffStageWidget extends StatefulWidget {
  const OffStageWidget({super.key});

  @override
  State<OffStageWidget> createState() => _OffStageWidgetState();
}

class _OffStageWidgetState extends State<OffStageWidget> {
  bool _isHided = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Offstage(
                  offstage: _isHided,
                  child: Icon(
                    Icons.flutter_dash,
                    size: 100,
                  ),
                ),
                Visibility(
                  visible: !_isHided,
                  child: Icon(
                    Icons.flutter_dash,
                    size: 100,
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isHided = !_isHided;
                });
              },
              child: Text("isHided = $_isHided"),
            ),
          ],
        ),
      ),
    );
  }
}
