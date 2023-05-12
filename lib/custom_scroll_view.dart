import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) => Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text(
                      "Grid Item $index",
                    ),
                  )),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 3,
                //mainAxisExtent: 290,
              ))
        ],
      ),
    );
  }
}
