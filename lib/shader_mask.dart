import 'package:flutter/material.dart';

class ShaderMaskWidge extends StatelessWidget {
  const ShaderMaskWidge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) {
            return RadialGradient(
              center: Alignment.topRight,
              radius: 4,
              tileMode: TileMode.mirror,
              colors: [
                Colors.orangeAccent,
                Colors.redAccent,
              ],
            ).createShader(bounds);
          },
          child: Text(
            "This is a shader mask text",
            style: TextStyle(fontSize: 36),
          ),
        ),
      ),
    );
  }
}
