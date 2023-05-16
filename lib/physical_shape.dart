import 'package:flutter/material.dart';

class PhysicalShapeWidget extends StatelessWidget {
  const PhysicalShapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PhysicalShape(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        color: Colors.amber,
        child: const SizedBox(
          height: 250,
          width: 250,
          child: Center(
            child: Icon(
              Icons.flutter_dash,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
