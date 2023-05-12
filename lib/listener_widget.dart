import 'package:flutter/material.dart';

class ListenerWidget extends StatefulWidget {
  const ListenerWidget({super.key});

  @override
  State<ListenerWidget> createState() => _ListenerWidgetState();
}

class _ListenerWidgetState extends State<ListenerWidget> {
  int _onPan = 0;
  int _onRelease = 0;
  double _x = 0;
  double _y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        onPointerCancel: (event) {
          print("onPointerCancel: ${event}");
          _x = event.localPosition.dx;
          _y = event.localPosition.dy;
          setState(() {});
        },
        onPointerDown: (event) {
          _onPan++;
          print("onPointerDown: ${event}");
          _x = event.localPosition.dx;
          _y = event.localPosition.dy;
          setState(() {});
        },
        onPointerMove: (event) {
          print("onPointerMove: ${event}");
          _x = event.localPosition.dx;
          _y = event.localPosition.dy;
          setState(() {});
        },
        onPointerUp: (event) {
          _onRelease++;
          print("onPointerUp: ${event}");
          _x = event.localPosition.dx;
          _y = event.localPosition.dy;
          setState(() {});
        },
        onPointerHover: (event) {
          print("onPointerHover: ${event}");
        },
        onPointerSignal: (event) {
          print("onPointerSignal: ${event}");
        },
        onPointerPanZoomStart: (event) {
          print("onPointerPanZoomStart: ${event}");
        },
        onPointerPanZoomUpdate: (event) {
          print("onPointerPanZoomUpdate: ${event}");
        },
        onPointerPanZoomEnd: (event) {
          print("onPointerPanZoomEnd: ${event}");
        },
        child: Container(
          alignment: Alignment.center,
          color: Colors.cyan,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("onPan:$_onPan"),
              Text("onRelease:$_onRelease"),
              Text("x:" + _x.toStringAsFixed(2) + " y:" + _y.toStringAsFixed(2)),
            ],
          ),
        ),
      ),
    );
  }
}
