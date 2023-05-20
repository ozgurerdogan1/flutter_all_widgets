import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() => _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState extends State<TweenAnimationBuilderWidget> with SingleTickerProviderStateMixin {
  double beginValue = 0;
  double endValue = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween(begin: beginValue, end: endValue),
          duration: const Duration(milliseconds: 400),
          builder: (context, value, child) {
            return IconButton(
              onPressed: () {
                setState(() {
                  endValue = endValue == 100 ? 200 : 100;
                });
              },
              icon: const Icon(Icons.flutter_dash),
              iconSize: value,
            );
          },
        ),
      ),
    );
  }
}
