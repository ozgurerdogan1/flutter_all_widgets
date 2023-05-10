import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FlowWidget extends StatefulWidget {
  const FlowWidget({super.key});

  @override
  State<FlowWidget> createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget> with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 250));

  IconData? _lastIconClicked;

  final List menuItems = [
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flow(
          delegate: FlowMenuDelegete(animationController: _animationController),
          children: menuItems
              .map((icon) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FloatingActionButton(
                      onPressed: () {
                        if (icon != Icons.menu) {
                          setState(() {
                            _lastIconClicked = icon;
                          });
                        }
                        _animationController.status == AnimationStatus.completed
                            ? _animationController.reverse()
                            : _animationController.forward();
                      },
                      child: Icon(icon),
                      splashColor: Colors.orangeAccent,
                      backgroundColor: _lastIconClicked == icon ? Colors.orangeAccent : Colors.grey,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class FlowMenuDelegete extends FlowDelegate {
  AnimationController animationController;
  FlowMenuDelegete({required this.animationController}) : super(repaint: animationController);

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (var i = 0; i < context.childCount; i++) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(dx * animationController.value, 0, 0),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowMenuDelegete oldDelegate) {
    return oldDelegate.animationController != animationController;
  }
}
