import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, lowerBound: 0.0, upperBound: 1, value: 0.0);
    _animationController.duration = Duration(milliseconds: 500);
    _animationController.reverseDuration = Duration(milliseconds: 200);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                // barrierColor: Colors.white30,
                //constraints: BoxConstraints(maxHeight: 100, maxWidth: 300),
                elevation: 10,
                enableDrag: true,
                isDismissible: true,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                isScrollControlled: false,
                useSafeArea: false,
                transitionAnimationController: _animationController,

                context: context,
                builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          height: 5,
                          width: 100,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("close modal sheet"),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text("show bottom sheet")),
      ),
    );
  }
}
