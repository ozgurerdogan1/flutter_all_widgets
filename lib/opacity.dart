import 'package:flutter/material.dart';

class OpacityWidget extends StatelessWidget {
  const OpacityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Opacity(
            opacity: 1,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.amber,
            ),
          ),
          Opacity(
            opacity: .7,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.amber,
            ),
          ),
          Opacity(
            opacity: .3,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
