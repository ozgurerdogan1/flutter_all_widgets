import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopupSurfaceWidget extends StatelessWidget {
  const CupertinoPopupSurfaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: CupertinoButton(
            child: Text("pop show"),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoPopupSurface(
                    isSurfacePainted: false,
                    child: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 300,
                      child: CupertinoButton(
                        child: const Text(
                          "back",
                          style: TextStyle(color: Colors.black45),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
