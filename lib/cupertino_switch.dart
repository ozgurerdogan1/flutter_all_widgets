import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchWidget extends StatefulWidget {
  const CupertinoSwitchWidget({super.key});

  @override
  State<CupertinoSwitchWidget> createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool _selectedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_selectedValue == true ? "open" : "close"),
            const SizedBox(height: 50),
            CupertinoSwitch(
              value: _selectedValue,
              activeColor: Colors.green,
              thumbColor: CupertinoColors.white,
              trackColor: CupertinoColors.secondarySystemFill,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            Switch(
              value: _selectedValue,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            Switch.adaptive(
              value: _selectedValue,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
