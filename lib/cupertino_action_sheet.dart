import 'package:flutter/cupertino.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  const CupertinoActionSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text("CupertinoActionSheet"),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return CupertinoActionSheet(
                  title: Text("Flutter Map"),
                  message: Text("Your Message"),
                  actions: [
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Do Something",
                      ),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context); 
                      },
                      child: Text(
                        "Do Something Else",
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
