import 'package:flutter/material.dart';

class ExpandIconWidget extends StatefulWidget {
  const ExpandIconWidget({super.key});

  @override
  State<ExpandIconWidget> createState() => _ExpandIconWidgetState();
}

class _ExpandIconWidgetState extends State<ExpandIconWidget> {
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("title"),
                  ExpandIcon(
                    isExpanded: _isOpen,
                    onPressed: (value) {
                      _isOpen = !_isOpen;
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
            Visibility(
              visible: _isOpen,
              child: const Text(
                "Flutter Mapp",
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}
