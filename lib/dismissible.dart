import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  const DismissibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 16),
          itemCount: 100,
          itemBuilder: (context, index) {
            return Dismissible(
              key: ValueKey(index),
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete),
              ),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                print(index);
                // listItem.removeAt(index); 
                // print(direction.name);
              },
              onResize: () {
                print("onResize");
              },
              onUpdate: (details) {
                print("onUpdate");
                print(details.progress);
              },
              confirmDismiss: (direction) async {
                bool result = false;
                await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Alert"),
                      content: Text("Do you really want to delete this item"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              result = true;
                              Navigator.pop(context);
                            },
                            child: Text("Yes")),
                        TextButton(
                            onPressed: () {
                              result = false;
                              Navigator.pop(context);
                            },
                            child: Text("No"))
                      ],
                    );
                  },
                );
                return result;

                return await Future.delayed(Duration(seconds: 1)).then((value) => false);
              },
              child: ListTile(
                title: Text(
                  "index $index",
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
