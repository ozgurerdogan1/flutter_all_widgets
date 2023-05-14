import 'package:flutter/material.dart';

class OrientationBuilderWidget extends StatefulWidget {
  const OrientationBuilderWidget({super.key});

  @override
  State<OrientationBuilderWidget> createState() => _OrientationBuilderWidgetState();
}

class _OrientationBuilderWidgetState extends State<OrientationBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return _buildPortraitLayout();
        }

        return _buildLandscapeLayout();
      },
    );
  }

  Scaffold _buildLandscapeLayout() {
    return const Scaffold(
      body: Center(
        child: Text("Lanscape"),
      ),
    );
  }

  Scaffold _buildPortraitLayout() {
    return const Scaffold(
      body: Center(
        child: Text("Portrait"),
      ),
    );
  }
}
