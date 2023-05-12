import 'package:flutter/material.dart';

class FlexibleAndExpandedWidgets extends StatelessWidget {
  const FlexibleAndExpandedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: _expandedColumn()),
          Expanded(child: _flexibleColumn()),
        ],
      ),
    );
  }

  Column _flexibleColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Container(
            color: Colors.amber,
            width: double.infinity,
            child: const FittedBox(
              child: Text(
                "Expanded flex:1",
              ),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          fit: FlexFit.tight, // tight seçildiğinde expanded gibi davranır..
          child: Container(
            color: Colors.blue,
            width: double.infinity,
            child: const FittedBox(
              child: Text(
                "Expanded flex:2 \nFlexFit.tight",
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Container(
            color: Colors.green,
            width: double.infinity,
            child: const FittedBox(
              child: Text(
                "Expanded flex:1",
              ),
            ),
          ),
        )
      ],
    );
  }

  Column _expandedColumn() {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.amber,
            width: double.infinity,
            child: const FittedBox(
              child: Text(
                "Expanded flex:1",
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            width: double.infinity,
            child: const FittedBox(
              child: Text(
                "Expanded flex:2",
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            width: double.infinity,
            child: const FittedBox(
              child: Text(
                "Expanded flex:1",
              ),
            ),
          ),
        )
      ],
    );
  }
}
