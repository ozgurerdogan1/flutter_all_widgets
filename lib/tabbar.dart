import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Icon(Icons.add),
              Icon(Icons.settings),
              Icon(Icons.person),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.amber, child: Icon(Icons.add)),
            Container(color: Colors.green, child: Icon(Icons.settings)),
            Container(color: Colors.red, child: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
