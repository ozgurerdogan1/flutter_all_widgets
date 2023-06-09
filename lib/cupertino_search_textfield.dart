import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSearchTextFieldWidget extends StatelessWidget {
  CupertinoSearchTextFieldWidget({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: CupertinoSearchTextField(
              controller: _controller,
              suffixMode: OverlayVisibilityMode.editing,
            ),
          ),
        ],
      ),
    );
  }
}
