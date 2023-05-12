import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double _turn = 0;
  bool _bool = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedRotation(
            turns: _turn,
            duration: Duration(milliseconds: 700),
            child: FlutterLogo(
              size: 100,
            ),
          ),
          // Transform.rotate(

          //     angle: _turn,
          //     child: FlutterLogo(
          //       size: 100,
          //       style: FlutterLogoStyle.horizontal,
          //     )),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () async {
                _bool = !_bool;
                print("bool: $_bool");
                print("_turn: $_turn");
                while (_bool) {
                  setState(() {
                    _turn = _turn + 1 / 60;
                    print(_bool);
                    print(_turn);
                  });
                  await Future.delayed(Duration(milliseconds: 1000));
                }
              },
              child: Text("turn"))
        ],
      ),
    );
  }
}
