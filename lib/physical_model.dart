import 'package:flutter/material.dart';

class PyhsicalModelWidget extends StatefulWidget {
  const PyhsicalModelWidget({super.key});

  @override
  State<PyhsicalModelWidget> createState() => _PyhsicalModelWidgetState();
}

class _PyhsicalModelWidgetState extends State<PyhsicalModelWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PhysicalModel(
                color: Colors.amber,
                elevation: 20,
                //shadowColor: Colors.redAccent.shade100,
                shape: BoxShape.circle,

                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Icon(
                    Icons.flutter_dash,
                    size: 100,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 20,
                      offset: Offset(0, 20),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.flutter_dash,
                  size: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
