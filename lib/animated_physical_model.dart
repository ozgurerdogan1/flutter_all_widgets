import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedPhysicalModalWidget extends StatefulWidget {
  const AnimatedPhysicalModalWidget({super.key});

  @override
  State<AnimatedPhysicalModalWidget> createState() => _AnimatedPhysicalModalWidgetState();
}

class _AnimatedPhysicalModalWidgetState extends State<AnimatedPhysicalModalWidget> {
  var _shapeType = BoxShape.rectangle;
  double _elevation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: _elevation,
              color: Colors.white,
              shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(5),
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 1),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 4,
                child: Icon(
                  Icons.android_outlined,
                  size: 60,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    //_shapeType = _shapeType == BoxShape.rectangle ? BoxShape.circle : BoxShape.rectangle;
                    _elevation = _elevation == 0 ? 5 : 0;
                  });
                },
                child: Text("change padding $_shapeType $_elevation"))
          ],
        ),
      ),
    );
  }
}
