import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShowMenuWidget extends StatefulWidget {
  const ShowMenuWidget({super.key});

  @override
  State<ShowMenuWidget> createState() => _ShowMenuWidgetState();
}

class _ShowMenuWidgetState extends State<ShowMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/200/300"),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.folder_open),
                    label: Text("Open"),
                  ),
                )
              ];
            },
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
