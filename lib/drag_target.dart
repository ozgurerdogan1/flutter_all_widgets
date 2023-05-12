import 'package:flutter/material.dart';


// ignore: must_be_immutable
class DragTargetWidget extends StatelessWidget {
   DragTargetWidget({super.key});

  Color coughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Draggable(
              data: Colors.amber,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: Center(
                  child: Text("Box"),
                ),
              ),
              onDraggableCanceled: (velocity, offset) {},
              onDragCompleted: () {},
              onDragStarted: () {},
              onDragEnd: (details) {},
              onDragUpdate: (details) {},
              feedback: Container(
                width: 150,
                height: 150,
                color: Colors.amber.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    "Box...",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            DragTarget(
              onLeave: (data) => print("onLeave data: $data"),
              onMove: (details) {
                print("onMove details :$details");
              },
              onAcceptWithDetails: (details) {
                print("onAcceptWithDetails details: $details");
              },
              onWillAccept: (data) {
                print("onWillAccept data: $data");
                return true;
              },
              onAccept: (Color color) {
                coughtColor = color;
                print("onAccept color: $color");
              },
              builder: (context, candidateData, rejectedData) {
                print("candidateDate: $candidateData");
                print("rejectedData: $rejectedData");
                return Container(
                  height: 200,
                  width: 200,
                  color: candidateData.isEmpty ? coughtColor : Colors.blue.shade200,
                  child: const Center(
                    child: Text("Drag Here"),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
