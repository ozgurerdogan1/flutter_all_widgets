import 'package:flutter/material.dart';

class ColorFilteredWidget extends StatelessWidget {
  const ColorFilteredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.pink.shade200, BlendMode.darken),
            child: Image.network(
              "https://picsum.photos/500/500/",
              height: 300,
            )),
      ),
    );
  }
}
