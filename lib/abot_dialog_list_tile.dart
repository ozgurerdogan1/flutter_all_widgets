import 'package:flutter/material.dart';

class AboutListTileWidget extends StatefulWidget {
  const AboutListTileWidget({super.key});

  @override
  State<AboutListTileWidget> createState() => _AboutListTileWidgetState();
}

class _AboutListTileWidgetState extends State<AboutListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(textColor: Colors.tealAccent, duration: Duration(milliseconds: 300)),
        applicationLegalese: "legase",
        applicationName: "Flutter App",
        applicationVersion: "1.0.0",
        dense: false,
        aboutBoxChildren: [Text("This is a text created by Flutter App")],
        //child: Text("child text"),
        
      ),
    ));
  }
}
