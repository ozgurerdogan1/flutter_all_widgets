import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DraggableScrollableWidget extends StatefulWidget {
  DraggableScrollableWidget({super.key});

  @override
  State<DraggableScrollableWidget> createState() => _DraggableScrollableWidgetState();
}

class _DraggableScrollableWidgetState extends State<DraggableScrollableWidget> {
  final _controller = DraggableScrollableController();

  @override
  void setState(VoidCallback fn) {
    print("setState");
    super.setState(fn);
  }

  @override
  void initState() {
    _controller.addListener(() {
      print("addListener");
      draggableListener();
    });
    super.initState();
  }

  void draggableListener() {
    print("draggableListener");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _controller.animateTo(0.6,
                            duration: Duration(milliseconds: 200), curve: Curves.linearToEaseOut);
                      },
                      child: Text("show")),
                  ElevatedButton(
                    onPressed: () {
                      _controller.reset();
                    },
                    child: Text("reset"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _controller.animateTo(_controller.size + 0.05,
                          duration: Duration(milliseconds: 200), curve: Curves.linearToEaseOut);
                    },
                    child: Text("Yukarı"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _controller.animateTo(_controller.size - 0.05,
                          duration: Duration(milliseconds: 200), curve: Curves.linearToEaseOut);
                    },
                    child: Text("Aşağı"),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              controller: _controller,
              initialChildSize: 0.3,
              maxChildSize: 1,
              minChildSize: 0.0,
              builder: (context, scrollController) {
                return Container(
                  color: Colors.cyan,
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 500,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("index $index"),
                      );
                    },
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("_controller.isAttached; ${_controller.isAttached}"),
                  if (_controller.isAttached) Text("_controller.size; ${_controller.size}"),
                  if (_controller.isAttached) Text("_controller.pixels; ${_controller.pixels}"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
