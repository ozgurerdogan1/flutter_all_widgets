import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BaseLineWidget extends StatelessWidget {
  const BaseLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          height: 250,
          width: 250,
          // alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Baseline(
                baseline: 250,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(
                  size: 50,
                ),
              ),
              Baseline(
                baseline: 250,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(
                  size: 40,
                ),
              ),
              Baseline(
                baseline: 250,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
