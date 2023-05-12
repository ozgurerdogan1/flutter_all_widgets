import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: ClipRect(
          child: Banner(
            message: "25% off",
            // textStyle: TextStyle(fontSize: 10),
            // layoutDirection: TextDirection.ltr,
            // textDirection: TextDirection.ltr,
            color: Colors.red,
            location: BannerLocation.topEnd,
            child: Container(
              color: Colors.blueGrey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Image.network(
                            "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png"),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Flutter Course Beginner",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Get Now"),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
