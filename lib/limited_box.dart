import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  const LimitedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Container(
              color: Colors.deepOrangeAccent,
              child: const LimitedBox(
                maxHeight: 50,
                maxWidth: 250,
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text("ListTile Object"),
                  leading: Icon(Icons.person),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
