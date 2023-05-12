import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 16,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: GridTile(
                  header: const GridTileBar(
                    backgroundColor: Colors.black38,
                    leading: Icon(Icons.person),
                    title: Text("Flutter Map"),
                    trailing: Icon(Icons.menu),
                  ),
                  footer: const GridTileBar(
                    backgroundColor: Colors.black38,
                    leading: Icon(Icons.favorite),
                  ),
                  child: Image.network(
                    "https://picsum.photos/500/500",
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
