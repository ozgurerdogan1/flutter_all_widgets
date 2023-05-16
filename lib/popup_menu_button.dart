import 'package:flutter/material.dart';

class PopUpMenuButtonWidget extends StatefulWidget {
  const PopUpMenuButtonWidget({super.key});

  @override
  State<PopUpMenuButtonWidget> createState() => _PopUpMenuButtonWidgetState();
}

class _PopUpMenuButtonWidgetState extends State<PopUpMenuButtonWidget> {
  String item1 = "First İtem";

  String item2 = "Second İtem";

  String title = "Not selected ıtem";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListTile(
          title: Text(title),
          trailing: PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: item1,
                  child: Text(item1),
                ),
                PopupMenuItem(
                  value: item1,
                  child: Text(item2),
                ),
              ];
            },
            onSelected: (value) {
              setState(() {
                title = value;
              });
            },
            // color: Colors.amber,
            // child: Icon(Icons.menu),
            //enabled: false,
            // icon: Icon(Icons.abc),
            // initialValue: title,
          ),
        ),
      ),
    );
  }
}
