import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({super.key});

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              transitionBuilder: (child, animation) {
                //return ScaleTransition(child: child, scale: animation);
                // return SizeTransition(child: child, sizeFactor: animation);

                return FadeTransition(opacity: animation, child: child);
              },
              layoutBuilder: (currentChild, previousChildren) {
                return Stack(
                  children: <Widget>[
                    ...previousChildren,
                    if (currentChild != null) currentChild,
                  ],
                );
              },
              child: Text(
                key: ValueKey(count),
                "$count",
                style: const TextStyle(fontSize: 44),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count += 1;
                  });
                },
                child: Text("ıncrement count"))
          ],
        ),
      ),
    );
  }
}
