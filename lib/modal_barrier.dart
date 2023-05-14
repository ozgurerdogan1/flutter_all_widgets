import 'package:flutter/material.dart';

class ModalBarrierWidget extends StatefulWidget {
  const ModalBarrierWidget({super.key});

  @override
  State<ModalBarrierWidget> createState() => _ModalBarrierWidgetState();
}

class _ModalBarrierWidgetState extends State<ModalBarrierWidget> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  active = !active;
                });
              },
              child: Text("Reactive"),
            ),
            if (active)
              Opacity(
                opacity: 0.5,
                child: ModalBarrier(
                  color: Colors.amber,
                  dismissible: true,
                  onDismiss: () {
                    setState(() {
                      active = !active;
                    });
                  },
                ),
              )
          ],
        ),
      )),
    );
  }
}
