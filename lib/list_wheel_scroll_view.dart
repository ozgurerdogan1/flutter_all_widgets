import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListWheelScrollViewWidget extends StatefulWidget {
  const ListWheelScrollViewWidget({super.key});

  @override
  State<ListWheelScrollViewWidget> createState() => _ListWheelScrollViewWidgetState();
}

class _ListWheelScrollViewWidgetState extends State<ListWheelScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
          onSelectedItemChanged: (value) {},

          itemExtent: 100,
          // diameterRatio: 2,
          // squeeze: 1,
          // offAxisFraction: 0,
          // magnification: 1.5,
          // useMagnifier: true,
          // perspective: RenderListWheelViewport.defaultPerspective,
          // overAndUnderCenterOpacity: 0.9,
          renderChildrenOutsideViewport: true,
          clipBehavior: Clip.none,
          children: [
            ...List.generate(100, (index) => Text("Flutter Learn")),
          ],
        ),
      ),
    );
  }
}
