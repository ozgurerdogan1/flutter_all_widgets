import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
    reverseDuration: Duration(seconds: 1),
  );

  @override
  void initState() {
    // _controller.forward();
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: NetworkImage(
            "https://picsum.photos/400/800",
          ),
          color: Colors.blue,
          colorBlendMode: BlendMode.overlay,
          opacity: _controller,
          filterQuality: FilterQuality.high,
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            print("frame: $frame");
            print("wasSynchronouslyLoaded: $wasSynchronouslyLoaded");
            return Padding(
              padding: EdgeInsets.all(30),
              child: child,
            );
          },
          loadingBuilder: (context, child, loadingProgress) {
            print("loadingProgress ${loadingProgress?.cumulativeBytesLoaded}");

            if (loadingProgress?.cumulativeBytesLoaded == loadingProgress?.expectedTotalBytes) {
              return child;
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }


  
}
