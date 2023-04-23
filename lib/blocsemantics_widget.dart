import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BlocSemanticsWidget extends StatefulWidget {
  const BlocSemanticsWidget({super.key});

  @override
  State<BlocSemanticsWidget> createState() => _BlocSemanticsWidgetState();
}

class _BlocSemanticsWidgetState extends State<BlocSemanticsWidget> {
  bool _isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isShow = !_isShow;
                  });
                },
                child: Text("button 1")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isShow = !_isShow;
                  });
                },
                child: Text("button 3")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isShow = !_isShow;
                  });
                },
                child: Text("button 4")),
            if (_isShow)
              BlockSemantics(
                blocking: false,
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.amber,
                ),
              ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isShow = !_isShow;
                  });
                },
                child: Text("button 2")),
          ],
        ),
      ),
    );
  }
}
