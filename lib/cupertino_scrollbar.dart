import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScrollBarWidget extends StatelessWidget {
  const CupertinoScrollBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: CupertinoScrollbar(
        thickness: 6,
        thicknessWhileDragging: 10,
        radius: const Radius.circular(5),
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Text(
              "$index",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 36),
            );
          },
        ),
      ),
    );
  }
}
