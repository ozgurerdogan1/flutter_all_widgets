import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle title = const TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      body: SafeArea(
        child: DataTable(
          
          columns: const [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Color")),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(
                  Text("Özgür"),
                ),
                DataCell(Text("30")),
                DataCell(Text("Blue")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("Melike")),
                DataCell(Text("31")),
                DataCell(Text("Purple")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("Ebrar")),
                DataCell(Text("5")),
                DataCell(Text("Purple")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("Hafsa")),
                DataCell(Text("1.5")),
                DataCell(Text("Yellow")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
