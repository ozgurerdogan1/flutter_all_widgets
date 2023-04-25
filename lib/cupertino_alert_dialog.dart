import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CupertinoAlertDialogWidget extends StatelessWidget {
  const CupertinoAlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
          child: Text("show alert dialog"),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text("Cupertino Alert"),
                  content: Text("Warning"),
                  actions: [
                    CupertinoDialogAction(
                      isDestructiveAction: true,
                      child: Text("No"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text("Yes"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          }),
    );
  }
}
