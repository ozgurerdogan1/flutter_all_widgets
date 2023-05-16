import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  late List<String> options;
  late String currentOptions;
  @override
  void initState() {
    options = ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5"];
    currentOptions = options[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(options[0]),
              leading: Radio(
                value: options[0],
                groupValue: currentOptions,
                onChanged: (value) {
                  setState(() {
                    currentOptions = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text(options[1]),
              leading: Radio(
                value: options[1],
                groupValue: currentOptions,
                onChanged: (value) {
                  setState(() {
                    currentOptions = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text(options[2]),
              leading: Radio(
                value: options[2],
                groupValue: currentOptions,
                onChanged: (value) {
                  setState(() {
                    currentOptions = value.toString();
                  });
                },
              ),
            ),
            RadioListTile(
              title: Text(options[3]),
              value: options[3],
              groupValue: currentOptions,
              onChanged: (value) => setState(() {
                currentOptions = value.toString();
              }),
            ),
            RadioListTile(
              title: Text(options[4]),
              value: options[4],
              groupValue: currentOptions,
              onChanged: (value) => setState(() {
                currentOptions = value.toString();
              }),
            )
          ],
        ),
      ),
    );
  }
}
