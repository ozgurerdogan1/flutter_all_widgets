import 'package:flutter/material.dart';

class InterActiveViewerWidget extends StatefulWidget {
  const InterActiveViewerWidget({super.key});

  @override
  State<InterActiveViewerWidget> createState() => _InterActiveViewerWidgetState();
}

class _InterActiveViewerWidgetState extends State<InterActiveViewerWidget> {
  final TransformationController _controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InterActive Viewer Scaffold"),
      ),
      body: Stack(
        children: [
          _buildInteractiveViewer(_controller),
        ],
      ),
    );
  }

  InteractiveViewer _buildInteractiveViewer(TransformationController _controllerThis) {
    return InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
        onInteractionStart: (details) {
          print("onInteractionStart details.focalpoint ${details.focalPoint}");
          print("onInteractionStart details.localFocalPoint ${details.localFocalPoint}");
          print("onInteractionStart details.pointerCount ${details.pointerCount}");
        },
        onInteractionUpdate: (details) {
          print("onInteractionUpdate details.focalpoint ${details.focalPoint}");
          print("onInteractionUpdate details.focalPointDelta ${details.focalPointDelta}");
          print("onInteractionUpdate details.localFocalPoint ${details..localFocalPoint}");
          print("onInteractionUpdate details.pointerCount ${details.pointerCount}");
          print("onInteractionUpdate details.scale ${details.scale}");
          print("onInteractionUpdate details.horizontalScale ${details.horizontalScale}");
          print("onInteractionUpdate details.verticalScale ${details.verticalScale}");
          print("onInteractionUpdate details.rotation ${details.rotation}");
        },
        onInteractionEnd: (details) async {
          print("onInteractionEnd details.pointerCount ${details.pointerCount}");
          print("onInteractionEnd details.scaleVelocity ${details.scaleVelocity}");
          print("onInteractionEnd details.velocity ${details.velocity}");
          // await Future.delayed(Duration(milliseconds: 100));

          // _controller.value = Matrix4.identity();
        },
        maxScale: 55,
        minScale: 0.01,
        trackpadScrollCausesScale: true,
        scaleEnabled: true,
        panEnabled: true,
        panAxis: PanAxis.free,
        transformationController: _controllerThis,
        child: Center(
            child: Image.network(
          "https://picsum.photos/700/700",
          height: 300,
        )));
  }
}
