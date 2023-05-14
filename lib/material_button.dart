import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          color: Colors.cyan,
          colorBrightness: Brightness.dark,
          // highlightColor: Colors.white,
          highlightElevation: 4,
          hoverColor: Colors.blue,
          splashColor: Colors.orange.shade200,
          
          child: Text("Material Button"),
        ),
      ),
    );
  }
}
