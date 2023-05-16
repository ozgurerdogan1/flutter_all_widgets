import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({super.key});

  @override
  State<ReorderableListViewWidget> createState() => _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  late List<String> list;

  @override
  void initState() {
    list = List.generate(20, (index) => "item $index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ReorderableListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            key: Key(index.toString()),
            title: Text(list[index]),
            trailing: Icon(Icons.reorder_outlined),
          );
        },
        onReorder: (oldIndex, newIndex) {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          final String reorderItem = list.removeAt(oldIndex);
          list.insert(newIndex, reorderItem);

          print(list);
        },
      ),
    ));
  }
}
