import 'package:flutter/material.dart';

class DecorationBoxTransitionWidget extends StatefulWidget {
  const DecorationBoxTransitionWidget({super.key});

  @override
  State<DecorationBoxTransitionWidget> createState() => _DecorationBoxTransitionWidgetState();
}

class _DecorationBoxTransitionWidgetState extends State<DecorationBoxTransitionWidget> with TickerProviderStateMixin {
  final DecorationTween _decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(30),
      boxShadow: const [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 10,
          spreadRadius: 3,
          offset: Offset(0, 6),
        ),
      ],
    ),
    end: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.zero,
    ),
  );

  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
    lowerBound: 0,
    upperBound: 1,
  )..repeat(reverse: true);

  @override
  void initState() {
    super.initState();
    _animationController.addListener(() {
      print(_animationController.value);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: DecoratedBoxTransition(
          decoration: _decorationTween.animate(_animationController),
          child: Container(
            height: 250,
            width: 250,
            padding: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
