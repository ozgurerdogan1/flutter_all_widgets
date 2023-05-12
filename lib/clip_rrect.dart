import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            "https://picsum.photos/500/500/",
            height: 300,
          ),
        ),
      ),
    );
  }
}
