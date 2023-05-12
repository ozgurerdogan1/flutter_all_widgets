import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ExpansionTile(
              title: Text("Expansion Tile"),
              children: [
                ListTile(
                  title: Text("This is tile number 1"),
                ),
                ListTile(
                  title: Text("This is tile number 2"),
                ),
                ListTile(
                  title: Text("This is tile number 3"),
                )
              ],
              onExpansionChanged: (value) {
                print(value);
              },
              controlAffinity: ListTileControlAffinity.trailing,
              
            )
          ],
        ),
      ),
    );
  }
}
