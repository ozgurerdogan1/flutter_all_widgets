import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({super.key});

  @override
  State<SliverAppBarWidget> createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver Appbar"),
              background: Image.network(
                "https://picsum.photos/400/200",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink,
              height: 40,
              child: Center(
                child: Text("Sliver to box adapter"),
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.9,
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  color: Colors.deepOrange,
                  child: Text(
                    "Sliver opacity 0.9",
                    style: TextStyle(fontSize: 24),
                  ),
                )
              ])),
            ),
          ),
          SliverOpacity(
            opacity: 0.5,
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                color: Colors.deepOrange,
                child: Text(
                  "Sliver opacity 0.5",
                  style: TextStyle(fontSize: 24),
                ),
              )
            ])),
          ),
          SliverOpacity(
            opacity: 0.1,
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                color: Colors.deepOrange,
                child: Text(
                  "Sliver opacity 0.1",
                  style: TextStyle(fontSize: 24),
                ),
              )
            ])),
          ),
          SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 9,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.centerLeft,
                color: Colors.lime[(index % 9 + 1) * 100],
                child: Text("SliverGrid index $index"),
              );
            },
          ),
          SliverFixedExtentList(
            itemExtent: 60,
            delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => Container(
                alignment: Alignment.centerLeft,
                color: Colors.cyan[(index % 9 + 1) * 100],
                child: Text("SliverFixedExtentList index $index"),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) => Container(
                alignment: Alignment.centerLeft,
                color: Colors.teal[(index % 9 + 1) * 100],
                child: Text("SliverList index $index"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
