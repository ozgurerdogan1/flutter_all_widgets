import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListTile(
          title: Text("click on me"),
          trailing: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
              icon: Hero(tag: "tag-1", child: Icon(Icons.person))),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second page")),
      body: Center(
        child: Hero(
          tag: "tag-1",
          child: Icon(
            Icons.person,
            size: 44,
          ),
        ),
      ),
    );
  }
}
