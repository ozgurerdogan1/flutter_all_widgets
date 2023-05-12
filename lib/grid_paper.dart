import 'package:flutter/material.dart';

class GridPaperWidget extends StatelessWidget {
  const GridPaperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: GridPaper(
              color: Colors.teal,
              divisions: 1,
              interval: 100,
              subdivisions: 5,
              child: Column(
                children: [...List.generate(20, (index) => Text("index $index"))],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
