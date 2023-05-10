import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Item {
  String headerText;
  String expandedText;
  bool isExpanded;

  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
}

class ExpansionPanelListWidget extends StatefulWidget {
  const ExpansionPanelListWidget({super.key});

  @override
  State<ExpansionPanelListWidget> createState() => _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  final _data = List.generate(
    10,
    (index) => Item(headerText: "Item $index", expandedText: "This is ıtem number $index"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                _data[panelIndex].isExpanded = !isExpanded;
              });
            },
            children: _data
                .map<ExpansionPanel>((item) => ExpansionPanel(
                      isExpanded: item.isExpanded,
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                          title: Text(item.headerText),
                        );
                      },
                      body: ListTile(
                        title: Text(item.expandedText),
                        subtitle: const Text("To delete this item, click trash icon"),
                        trailing: const Icon(
                          Icons.delete,
                          color: Colors.orange,
                        ),
                        onTap: () {
                          setState(() {
                            _data.removeWhere((Item currentItem) => item == currentItem);
                          });
                        },
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
