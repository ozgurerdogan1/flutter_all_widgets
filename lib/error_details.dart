import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  try {
    throw ("This is an error");
  } catch (error) { 
    // debugPrint(error.toString());

    FlutterError.reportError(FlutterErrorDetails(
      library: "CUSTOM MESSAGE 1",
      context: ErrorSummary("CUSTOM MESSAGE 2"),
      exception: error,
    ));
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
