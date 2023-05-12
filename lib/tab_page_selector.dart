import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabPageSelectorWidget extends StatefulWidget {
  const TabPageSelectorWidget({super.key});

  @override
  State<TabPageSelectorWidget> createState() => _TabPageSelectorWidgetState();
}

class _TabPageSelectorWidgetState extends State<TabPageSelectorWidget> with SingleTickerProviderStateMixin {
  List<Widget> widgets = const [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.person),
  ];

  late final TabController _tabController;
  int _index = 0;
  @override
  void initState() {
    _tabController = TabController(
      length: widgets.length,
      vsync: this,
      initialIndex: _index,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: _tabController,
            children: widgets,
          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: _tabController,
            ),
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              _tabController.animateTo(_index);
            },
            hoverElevation: 0,
            elevation: 0,
            child: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
