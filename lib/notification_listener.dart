import 'package:flutter/material.dart';

class NotificationListenerWidget extends StatefulWidget {
  const NotificationListenerWidget({super.key});

  @override
  State<NotificationListenerWidget> createState() => _NotificationListenerWidgetState();
}

class _NotificationListenerWidgetState extends State<NotificationListenerWidget> {
  String _notificationInfoTxt = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: Colors.amber,
              child: Text(
                _notificationInfoTxt,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification notification) {
                  if (notification is ScrollStartNotification) {
                    print("ScrollStartNotification");
                    setState(() {
                      _notificationInfoTxt = "Scroll Started";
                    });
                  }
                  if (notification is ScrollUpdateNotification) {
                    print("ScrollUpdateNotification");
                    setState(() {
                      _notificationInfoTxt = "Scroll Updated";
                    });
                  }
                  if (notification is ScrollEndNotification) {
                    print("ScrollEndNotification");
                    setState(() {
                      _notificationInfoTxt = "Scroll Ended";
                    });
                  }
                  return false;
                },
                child: ListView.builder(
                  itemExtent: 40,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Text(
                      "index $index",
                      textAlign: TextAlign.center,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
