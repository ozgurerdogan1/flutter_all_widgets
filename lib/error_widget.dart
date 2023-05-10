import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  var errorWidget = ErrorWidget.builder = (FlutterErrorDetails details) {
    print("budası çalıştı");
    bool indebug = false;
    assert(() {
      indebug = false;
      return true;
    }());

    if (indebug) return ErrorWidget(details.exception);

    return Container(
      child: Text(
        "Error\n${details.exception}",
        style: const TextStyle(
          color: Colors.amber,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  };

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? errorMessage;
  @override
  Widget build(BuildContext context) {
    print("error message: $errorMessage");
    return errorMessage != null
        ? ErrorWidget(errorMessage!)
        : MaterialApp(
            home: Scaffold(
              body: Center(
                child: ElevatedButton(
                    onPressed: () {
                      try {
                        throw Exception("bilinmeyen bir hata meyddana geldi");
                      } catch (e) {
                        setState(() {
                          errorMessage = e.toString();
                        });
                        // return ErrorWidget("hata $e");
                      }
                    },
                    child: Text("Error")),
              ),
            ),
          );
  }
}
