import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Table(
              border: TableBorder.all(color: Colors.white30),
              defaultVerticalAlignment: TableCellVerticalAlignment.top,
              children: [
                TableRow(decoration: const BoxDecoration(color: Colors.red), children: [
                  ...List.generate(
                    5,
                    (cellIndex) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text("Cell $cellIndex"),
                      ),
                    ),
                  )
                ]),
                ...List.generate(
                    30,
                    (rowIndex) => TableRow(
                            decoration: BoxDecoration(color: rowIndex % 2 == 0 ? Colors.white10 : null),
                            children: [
                              ...List.generate(
                                5,
                                (cellIndex) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Text("Cell $cellIndex"),
                                  ),
                                ),
                              )
                            ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
