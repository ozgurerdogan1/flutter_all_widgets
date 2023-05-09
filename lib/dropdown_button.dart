import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  int selectItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: selectItem,
          icon: const Icon(Icons.menu),
          items: [
            ...List.generate(
                3,
                (index) => DropdownMenuItem(
                      value: index,
                      child: Text("Item $index"),
                    )),
          ],
          onChanged: (value) {
            setState(() {
              selectItem = value as int;
            });

            print(value);
          },
        ),
      ),
    );
  }
}
