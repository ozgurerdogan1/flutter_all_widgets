import 'package:flutter/material.dart';

class ScrollBarWidget extends StatelessWidget {
  ScrollBarWidget({super.key});

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: _controller,
        child: ListView.builder(
          controller: _controller,
          itemCount: 300,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("index $index"),
            );
          },
        ),
      ),
    );
  }
}
