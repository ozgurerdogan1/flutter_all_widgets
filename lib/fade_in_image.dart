import 'package:flutter/material.dart';

class FadeInImageWidget extends StatefulWidget {
  const FadeInImageWidget({super.key});

  @override
  State<FadeInImageWidget> createState() => _FadeInImageWidgetState();
}

class _FadeInImageWidgetState extends State<FadeInImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FadeInImage.assetNetwork(
          imageScale: 1 / 1, placeholder: "assets/image.jpeg", image: "https://picsum.photos/400/600"),
    ));
  }
}
