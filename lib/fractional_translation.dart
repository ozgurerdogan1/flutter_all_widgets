import 'package:flutter/material.dart';

class FractionallTranslationWidget extends StatelessWidget {
  const FractionallTranslationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.pink,
          child: Column(
            children: [
              Container(
                color: Colors.blueGrey,
                height: 100,
                width: 100,
              ),
              FractionalTranslation(
                translation: Offset(1, -1),
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 100,
                ),
              ),
              FractionalTranslation(
                translation: Offset(2, -2),
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
              ),
              FractionalTranslation(
                translation: Offset(3, -3),
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
              ),
              FractionalTranslation(
                translation: Offset(0, -3),
                child: Container(
                  color: Colors.cyan,
                  height: 100,
                  width: 100,
                ),
              ),
              FractionalTranslation(
                translation: Offset(1, -4),
                child: Container(
                  color: Colors.indigo,
                  height: 100,
                  width: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
