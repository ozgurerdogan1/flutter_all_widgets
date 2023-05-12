import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class BackDropFilterWidget extends StatefulWidget {
  const BackDropFilterWidget({super.key});

  @override
  State<BackDropFilterWidget> createState() => _BackDropFilterWidgetState();
}

class _BackDropFilterWidgetState extends State<BackDropFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              "0" * 2400,
              style: TextStyle(color: Colors.green),
            ),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4,
                    sigmaY: 4,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    child: Text("blur"),
                  ),
                ),
              ),  
            )
          ],
        ),
      ),
    );
  }
}
