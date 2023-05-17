import 'package:flutter/material.dart';

class SemanticWidget extends StatelessWidget {
  const SemanticWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Semantics(
            label: "This is a flutter logo",
            child: FlutterLogo(
              size: 100,
            ),
          ),
          FlutterLogo(
            size: 100,
          ),
        ],
      ),
    );
  }
}
