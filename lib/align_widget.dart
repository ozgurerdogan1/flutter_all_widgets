import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AlignWidget extends StatefulWidget {
  const AlignWidget({super.key});

  @override
  State<AlignWidget> createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 120,
        color: Colors.blueGrey,
        child: const Align(
          alignment: Alignment.topLeft,
          child: FlutterLogo(size: 70),
        ),
      ),
    );
  }
}
