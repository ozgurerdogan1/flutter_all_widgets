import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({super.key});

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  List<String> _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "item ${_items.length + 1} ");
    _key.currentState?.insertItem(0, duration: const Duration(milliseconds: 300));
  }

  void _removeItem(int index) {
    _key.currentState?.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text(
              "Deleted ",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      );
    }, duration: const Duration(milliseconds: 300));

    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          IconButton(
              onPressed: () {
                _addItem();
              },
              icon: Icon(Icons.add)),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: Card(
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            _removeItem(index);
                          },
                          icon: const Icon(Icons.delete)),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
