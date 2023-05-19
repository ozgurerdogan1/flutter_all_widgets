import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          message: "A picture of lorem picsum",
          child: Image.network("https://picsum.photos/200/300"),
        ),
      ),
    );
  }
}
