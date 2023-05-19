import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

Stream<int> generateStream() async* {
  for (int i = 0; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));

    // if (a == 15) {
    //   yield throw "generate stream on error";
    // }
    yield i;
  }
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: StreamBuilder<int>(
            stream: generateStream(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("Erorr: ${snapshot.error}");
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(
                  color: Colors.amber,
                );
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: CircularProgressIndicator(
                          value: (snapshot.data ?? 0) / 10,
                          strokeWidth: 9,
                          color: (snapshot.data ?? 0) == 10
                              ? Colors.orange.shade900
                              : Colors.amber[((snapshot.data ?? 0)) % 10 * 100],
                        ),
                      ),
                      Text(
                        snapshot.data.toString(),
                        style: TextStyle(fontSize: 54),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    snapshot.connectionState.toString(),
                    style: TextStyle(fontSize: 24),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
