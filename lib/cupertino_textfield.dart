import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextFieldWidget extends StatelessWidget {
  CupertinoTextFieldWidget({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                controller: _controller,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                suffixMode: OverlayVisibilityMode.editing,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
