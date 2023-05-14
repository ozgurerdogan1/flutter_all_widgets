import 'package:flutter/material.dart';

class MouseRegionWidget extends StatefulWidget {
  const MouseRegionWidget({super.key});

  @override
  State<MouseRegionWidget> createState() => _MouseRegionWidgetState();
}

class _MouseRegionWidgetState extends State<MouseRegionWidget> {
  Offset _mouseOffset = Offset(0, 0);
  int _enterCount = 0;
  int _exitCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          opaque: false,
          onEnter: (event) {
            print("onEnter");
            setState(() {
              _enterCount++;
            });
          },
          onExit: (event) {
            print("onExit");
            setState(() {
              _exitCount++;
            });
          },
          onHover: (event) {
            setState(() {
              _mouseOffset = event.position;
            });
            print("onHover");
          },
          child: Container(
            color: Colors.amber,
            height: 300,
            width: 300,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("enter count: $_enterCount"),
                Text("exit count: $_exitCount"),
                Text(_mouseOffset.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
