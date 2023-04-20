import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Scaffold(
        body: AnimatedContainer(
          width: isSelected ? 200 : 100,
          height: isSelected ? 100 : 200,
          color: isSelected ? Colors.blueGrey : Colors.white,
          alignment: isSelected ? Alignment.center : Alignment.topCenter,
          duration: Duration(seconds: 2),
          clipBehavior: Clip.antiAliasWithSaveLayer,
         // constraints: BoxConstraints(),
         
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(
            size: 75,
          ),
        ),
      ),
    );
  }
}
