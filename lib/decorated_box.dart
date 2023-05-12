import 'package:flutter/material.dart';

class DecoratedBoxWidget extends StatelessWidget {
  const DecoratedBoxWidget({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const Scaffold(
  //     body: SizedBox.expand(
  //       child: DecoratedBox(
  //         decoration: BoxDecoration(
  //           gradient: LinearGradient(
  //             begin: Alignment.topLeft,
  //             end: Alignment.bottomRight,
  //             tileMode: TileMode.clamp,
  //             stops: [0, 0.5, 1],
  //             colors: [Colors.green, Colors.blue, Colors.purple],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return const Scaffold(
  //     body: SizedBox.expand(
  //       child: DecoratedBox(
  //         decoration: BoxDecoration(
  //           gradient: SweepGradient(
  //             center: Alignment.topRight,
  //             stops: [0, 0.5, 1],
  //             colors: [Colors.green, Colors.blue, Colors.purple],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.topLeft,
              stops: [0.4, 0.5, 0.7],
              colors: [Colors.yellow, Colors.yellow.shade100, Colors.blue.shade200],
            ),
          ),
        ),
      ),
    );
  }
}
