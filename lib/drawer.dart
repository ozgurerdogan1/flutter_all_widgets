import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey scaffoldKey = GlobalKey();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Flutter Mapp"),
      ),
      drawer: Builder(builder: (context) {
        return Drawer(
            child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  
                ),
                child: Text("Draer Header")),
            ...List.generate(
                10,
                (index) => ListTile(
                      onTap: () {
                        Scaffold.of(context).closeDrawer();
                      },
                      title: Text("index $index"),
                    )),
          ],
        ));
      }),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          onPressed: () {
            if (Scaffold.of(context).isDrawerOpen) Scaffold.of(context).closeDrawer();
            if (!Scaffold.of(context).isDrawerOpen) Scaffold.of(context).openDrawer();
          },
        );
      }),
    );
  }
}
