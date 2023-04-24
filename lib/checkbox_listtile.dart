import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CheckboxListTileWidget extends StatefulWidget {
  const CheckboxListTileWidget({super.key});

  @override
  State<CheckboxListTileWidget> createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  bool? _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Text("X")),
      body: Center(
        child: CheckboxListTile(
          value: _check,
          onChanged: (value) {
            setState(() {
              _check = value;
            });
          },
          activeColor: Colors.amber,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          controlAffinity: ListTileControlAffinity.leading,
          dense: false, // yoğunluk
          autofocus: true,
          enableFeedback: true, // dokunma sesi
          tristate: true,
          isThreeLine: false,
          enabled: true,
          // selected: _check ?? false,
          //selectedTileColor: Colors.amber,
          side: BorderSide(
            width: 2,
            color: Colors.white,
            style: BorderStyle.solid,
            strokeAlign: 0,
          ),
          visualDensity: VisualDensity.comfortable,
          secondary: Icon(Icons.add),// sağ tarafında bir widget daha gosterır
          
          onFocusChange: (value) {
            if (value) {
              print("onfocus");
            }
            if (!value) {
              print("on not focus");
            }
          },
          title: Text(
            "checkbox list tile",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text("checkbox subtitle", style: TextStyle(color: Colors.white)),
          contentPadding: EdgeInsets.all(8),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                width: 0.5,
                color: Colors.white,
                style: BorderStyle.solid,
                strokeAlign: 0,
              )),
        ),
      ),
    );
  }
}
