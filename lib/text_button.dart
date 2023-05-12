import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: null, child: Text("Disable")),
            TextButton(onPressed: () {}, child: Text("Enable")),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0, 0.8, 1],
                    colors: [
                      Colors.blue,
                      Colors.blue.shade200,
                      Colors.blue,
                    ],
                  ),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Gradiant",
                      style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
