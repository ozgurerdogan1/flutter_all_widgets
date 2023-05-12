import 'package:flutter/material.dart';

class DefaultTextStyleWidget extends StatelessWidget {
  const DefaultTextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("özgür erdoğan"),
            DefaultTextStyle(
                style: TextStyle(fontSize: 36, color: Colors.blue),
                child: Column(
                  children: [
                    Text("özgür erdoğan"),
                    Text(
                      "özgür erdoğan",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "özgür erdoğan",
                      style: TextStyle(color: Colors.amber, fontSize: 24),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
