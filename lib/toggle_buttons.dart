import 'package:flutter/material.dart';

class ToggleButtonsWidget extends StatefulWidget {
  const ToggleButtonsWidget({super.key});

  @override
  State<ToggleButtonsWidget> createState() => _ToggleButtonsWidgetState();
}

class _ToggleButtonsWidgetState extends State<ToggleButtonsWidget> {
  List<bool> isSelectedList = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ToggleButtons(
          isSelected: isSelectedList,
          onPressed: (index) {
            setState(() {
              //  isSelectedList[index] = !isSelectedList[index];
              for (int i = 0; i < isSelectedList.length; i++) {
                if (i == index) {
                  isSelectedList[i] = true;
                } else {
                  isSelectedList[i] = false;
                }
              }
            });
          },
          children: const [
            Icon(Icons.home),
            Icon(Icons.settings),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
