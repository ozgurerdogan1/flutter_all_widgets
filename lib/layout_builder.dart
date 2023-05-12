import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatefulWidget {
  const LayoutBuilderWidget({super.key});

  @override
  State<LayoutBuilderWidget> createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(" constraints.biggest: ${constraints.biggest} ");
        print(" constraints.flipped: ${constraints.flipped} ");
        print(" constraints.hasBoundedHeight: ${constraints.hasBoundedHeight} ");
        print(" constraints.hasBoundedWidth: ${constraints.hasBoundedWidth} ");
        print(" constraints.hasInfiniteHeight: ${constraints.hasInfiniteHeight} ");
        print(" constraints.hasInfiniteWidth: ${constraints.hasInfiniteWidth} ");
        print(" constraints.hasTightHeight: ${constraints.hasTightHeight} ");
        print(" constraints.hasTightWidth: ${constraints.hasTightWidth} ");
        print(" constraints.isNormalized: ${constraints.isNormalized} ");
        print(" constraints.maxHeight: ${constraints.maxHeight} ");
        print(" constraints.maxWidth: ${constraints.maxWidth} ");
        print(" constraints.minHeight: ${constraints.minHeight} ");
        print(" constraints.minWidth: ${constraints.minWidth} ");

        if (constraints.maxHeight > constraints.maxWidth) {
          return Scaffold(
            body: Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  //Image.network("https://picsum.photos/${constraints.maxWidth}/${constraints.maxHeight}"),
                  Image.network("https://picsum.photos/393/852"),
                  _buildText(constraints),
                ],
              ),
            ),
          );
        }
        return Scaffold(
          body: Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network("https://picsum.photos/852/393"),
                _buildText(constraints),
              ],
            ),
          ),
        );
      },
    );
  }

  Column _buildText(BoxConstraints constraints) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "w:" + constraints.maxWidth.toString(),
          style: TextStyle(backgroundColor: Colors.black, fontSize: 24),
        ),
        Text(
          "h:" + constraints.maxHeight.toString(),
          style: TextStyle(backgroundColor: Colors.black, fontSize: 24),
        ),
      ],
    );
  }
}
