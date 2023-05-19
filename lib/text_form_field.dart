import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  List<String> titles = ["", "", ""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
              autovalidateMode: AutovalidateMode.always,
              onChanged: () {
                setState(() {
                  Form.of(primaryFocus!.context!).save();
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      3,
                      (index) => Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (value) {
                                    return (value?.isEmpty ?? true) ? "boş olamaz" : null;
                                  },

                                  // onChanged: (value) {
                                  //   titles[index] = value;
                                  // },
                                  onSaved: (newValue) {
                                    if (newValue != null) {
                                      titles[index] = newValue;
                                    }
                                  },
                                ),
                                SizedBox(height: 10),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(titles[index]),
                                  ),
                                )
                              ],
                            ),
                          ))
                ],
              )),
        ),
      ),
    );
  }
}
