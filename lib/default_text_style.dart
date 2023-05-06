import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DefaultTextStyleWidget extends StatelessWidget {
  const DefaultTextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("özgür erdoğan"),
            DefaultTextStyle(
                style: const TextStyle(fontSize: 36, color: Colors.blue),
                child: Column(
                  children: const [
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
