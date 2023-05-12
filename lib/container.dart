import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 50,
                      offset: Offset.zero,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(0.1),
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://picsum.photos/500/500/")),
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
                    border: Border.all(
                      color: Colors.white,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      style: BorderStyle.solid,
                      width: 4,
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.green,
                      Colors.teal,
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.red,
                      Colors.green,
                      Colors.blue,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
