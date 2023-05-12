import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({super.key});

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  double _size = 50;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSize(
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              size: _size,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _size += 10;
                });
              },
              child: Text("size change"))
        ],
      ),
    );
  }
}
