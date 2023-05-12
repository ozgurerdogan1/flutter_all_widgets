import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({super.key});

  @override
  State<IndexedStackWidget> createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          print(("deneme"));
        },
        child: Ink(
          child: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CupertinoSegmentedControl(
                    unselectedColor: Colors.white,
                    selectedColor: Colors.black54,
                    pressedColor: Colors.orange.shade300,
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                    children: {
                      "0": Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        color: _index == 0 ? Colors.orange.shade300 : null,
                        child: Text("0"),
                      ),
                      "1": Container(
                        color: _index == 1 ? Colors.orange.shade300 : null,
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text("1"),
                      ),
                      "2": Container(
                        color: _index == 2 ? Colors.orange.shade300 : null,
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(" 2 "),
                      ),
                    },
                    onValueChanged: (value) {
                      setState(() {
                        _index = int.parse(value);
                      });
                    },
                  ),
                  Expanded(
                    child: IndexedStack(
                      index: _index,
                      children: [
                        ...List.generate(
                          3,
                          (index) => Image.network(
                            _index == 0
                                ? "https://picsum.photos/400/600"
                                : (_index == 1 ? "https://picsum.photos/400/700" : "https://picsum.photos/400/800"),
                            //fit: BoxFit.contain,
                            // color: _index == 0 ? Colors.amber : (_index == 1 ? Colors.blue : Colors.green),
                            //colorBlendMode: BlendMode.colorBurn,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
