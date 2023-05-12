import 'package:flutter/cupertino.dart';

class CupertinoButtonWidget extends StatelessWidget {
  const CupertinoButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
            child: Text("button1"),
            onPressed: () {},
          ),
          CupertinoButton.filled(
            child: Text("button2"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
