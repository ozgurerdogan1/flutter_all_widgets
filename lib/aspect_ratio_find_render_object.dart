import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({super.key});

  @override
  State<AspectRatioWidget> createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatioWidget> {
  GlobalKey _key = GlobalKey();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getSize();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        getSize();
      }),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.green,
          height: (500),
          width: double.infinity,
          child: AspectRatio(
              key: _key,
              aspectRatio: 1 / 2,
              child: Container(
                color: Colors.amber,
              )),
        ),
      ),
    );
  }

  void getSize() {
    var _renderBox =
        _key.currentContext?.findRenderObject() == null ? null : _key.currentContext!.findRenderObject() as RenderBox;

    var size = _renderBox?.size;
    print(size);
  }
}
