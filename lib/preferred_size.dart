import 'package:flutter/material.dart';

class PreferrefSizeWidget extends StatelessWidget {
  const PreferrefSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildPreferredSize(),
    );
  }

  PreferredSize _buildPreferredSize() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.redAccent,
          Colors.orangeAccent,
        ])),
        child: SafeArea(
            child: Center(
                child: ListTile(
          title: Text("Preferred Size"),
          trailing: Icon(Icons.search),
        ))),
      ),
    );
  }
}
