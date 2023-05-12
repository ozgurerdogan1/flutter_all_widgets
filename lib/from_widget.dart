import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter something";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter something";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    bool? result = _formKey.currentState?.validate();
                    if (result == true) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Great")));
                    }
                  },
                  child: const Text("Validate Check"),
                )
              ],
            )),
      ),
    );
  }
}
