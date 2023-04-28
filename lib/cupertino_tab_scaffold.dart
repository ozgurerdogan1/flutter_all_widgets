import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CupertinoTabScaffoldWidget extends StatefulWidget {
  const CupertinoTabScaffoldWidget({super.key});

  @override
  State<CupertinoTabScaffoldWidget> createState() => _CupertinoTabScaffoldWidgetState();
}

class _CupertinoTabScaffoldWidgetState extends State<CupertinoTabScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: "Settings"),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return Center(
              child: index == 0
                  ? const Icon(
                      CupertinoIcons.home,
                      size: 100,
                    )
                  : const Icon(
                      CupertinoIcons.settings,
                      size: 100,
                    ),
            );
          },
        );

   
      },
    );
  }
}
