import 'package:flutter/material.dart';

class GridTileWidget extends StatelessWidget {
  const GridTileWidget({super.key});

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
          header: Container(
            alignment: Alignment.center,
            color: Colors.black45,
            height: 40,
            child: Center(child: Text("header")),
          ),
          child: Image.network("https://picsum.photos/300/400"),
          footer: Container(
            alignment: Alignment.center,
            color: Colors.black45,
            height: 40,
            child: Center(child: Text("footer")),
          ),
        ),
      ),
    ));
  }
}
