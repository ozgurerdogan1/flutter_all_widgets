import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  const CupertinoActivityIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(
        color: Colors.amber,
        radius: 30,
        animating: true,
      ),
    );
  }
}
