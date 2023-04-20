import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({super.key});

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double _paddingValue = 30;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedPadding(
              padding: EdgeInsets.all(_paddingValue),
              duration: Duration(seconds: 1),
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _paddingValue = _paddingValue == 0 ? 100 : 0;
                  });
                },
                child: Text("change padding $_paddingValue"))
          ],
        ),
      ),
    );
  }
}
