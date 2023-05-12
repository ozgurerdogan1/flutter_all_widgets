import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> with TickerProviderStateMixin {
  bool _bool = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text("change image")),
        AnimatedCrossFade(
          firstChild: Image.network(
            "https://picsum.photos/200/300",
            scale: 0.7,
            color: Colors.yellow.withOpacity(.3),
            colorBlendMode: BlendMode.colorBurn,
            filterQuality: FilterQuality.high,
          ),
          secondChild: Image.network(
            "https://picsum.photos/200",
          ),
          crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 1000),
        )
      ],
    );
  }
}
