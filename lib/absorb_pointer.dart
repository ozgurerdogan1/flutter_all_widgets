import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AbsorbPointerWdget extends StatefulWidget {
  const AbsorbPointerWdget({super.key});

  @override
  State<AbsorbPointerWdget> createState() => _AbsorbPointerWdgetState();
}

class _AbsorbPointerWdgetState extends State<AbsorbPointerWdget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: 100,
            width: 200,
            child: ElevatedButton(onPressed: () {}, child: null),
          ),
          SizedBox(
            height: 200,
            width: 100,
            child: AbsorbPointer(
              absorbing: true,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade100),
                onPressed: () {
                  print("button click");
                },
                child: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
