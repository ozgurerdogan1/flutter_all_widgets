import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.amber, fontSize: 30),
            children: [
              TextSpan(text: "To the "),
              TextSpan(
                text: "moon ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: "and beyond!"),
            ],
          ),
        ),
      ),
    );
  }
}
