// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LongPressDraggableWidget extends StatefulWidget {
  const LongPressDraggableWidget({super.key});

  @override
  State<LongPressDraggableWidget> createState() => _LongPressDraggableWidgetState();
}

class _LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
  Offset _objectOffset = const Offset(100, 150);
  //Offset _fixOffset = const Offset(0, 0);
  int count = 0;

  List<Positioned> _newDraggableObjects = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                _draggableObject(context, constraints),
                ..._newDraggableObjects,
              ],
            );
          },
        ),
      ),
    );
  }

  Positioned _draggableObject(BuildContext context, BoxConstraints constraints, {Offset? newOffset}) {
    return Positioned(
      top: newOffset == null ? _objectOffset.dy : newOffset.dy,
      left: newOffset == null ? _objectOffset.dx : newOffset.dx,
      child: LongPressDraggable(
        onDragCompleted: () {
          print("onDragCompleted");
        },
        onDragStarted: () {
          print("onDragStarted");
          count = 0;
        },
        onDragUpdate: (details) {
          print("onDragUpdate");

          //to drag the entire object

          // Offset onPanOffset = Offset(details.localPosition.dx, details.localPosition.dy);
          // if (count == 0) {
          //   count++;
          //   _fixOffset = Offset(onPanOffset.dx - _objectOffset.dx, onPanOffset.dy - _objectOffset.dy);
          // }

          // setState(() {
          //   _objectOffset = Offset(onPanOffset.dx - _fixOffset.dx, onPanOffset.dy - _fixOffset.dy);
          // });
        },
        onDragEnd: (details) {
          setState(() {
            double adjustment = MediaQuery.of(context).size.height - constraints.maxHeight;
            // object cut and past code
            // _objectOffset = Offset(details.offset.dx, details.offset.dy - adjustment);


            //object create,  copy and past code
            final creatingOffset = Offset(details.offset.dx, details.offset.dy - adjustment);
            _newDraggableObjects.add(_draggableObject(context, constraints, newOffset: creatingOffset));
          });
        },
        feedback: Opacity(
          opacity: 0.5,
          child: Image.network(
            "https://picsum.photos/200/200",
            color: Colors.orangeAccent,
            colorBlendMode: BlendMode.colorBurn,
          ),
        ),
        child: Image.network(
          "https://picsum.photos/200/200",
        ),
      ),
    );
  }
}
