import 'package:flutter/material.dart';

class GridTileBarWidget extends StatelessWidget {
  const GridTileBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 400,
        width: 300,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.white, width: 3), borderRadius: BorderRadius.circular(10)),
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
          child: Image.network("https://picsum.photos/300/400"),
        ),
      ),
    ));
  }
}
