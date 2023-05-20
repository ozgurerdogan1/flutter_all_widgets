import 'package:flutter/material.dart';

ValueNotifier<int> number = ValueNotifier(0);

class ValueListenableBuilderWidget extends StatelessWidget {
  const ValueListenableBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: number,
              builder: (context, value, child) {
                return Text(value.toString());
              },
            ),
            ElevatedButton(
              onPressed: () {
                number.value += 1;
              },
              child: const Text("+"),
            )
          ],
        ),
      ),
    );
  }
}
