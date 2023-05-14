import 'package:flutter/material.dart';

class OverflowBarWidget extends StatefulWidget {
  const OverflowBarWidget({super.key});

  @override
  State<OverflowBarWidget> createState() => _OverflowBarWidgetState();
}

class _OverflowBarWidgetState extends State<OverflowBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OverflowBar(
          // spacing: 8,
          overflowDirection: VerticalDirection.down,
          // alignment: MainAxisAlignment.end,
          overflowAlignment: OverflowBarAlignment.end,

          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button 0"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button 1"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button 2"),
            ),
          ],
        ),
      ),
    );
  }
}
