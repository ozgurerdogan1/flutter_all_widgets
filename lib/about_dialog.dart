import 'package:flutter/material.dart';

class AboutDialogWidget extends StatefulWidget {
  const AboutDialogWidget({super.key});

  @override
  State<AboutDialogWidget> createState() => _AboutDialogWidgetState();
}

class _AboutDialogWidgetState extends State<AboutDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationName: "Flutter App",
                    applicationVersion: "1.0.0",
                    applicationLegalese: "Legase",
                    children: [Text("children")],
                  );
                },
              );
            },
            child: const Text("show dialog")),
      ),
    );
  }
}
