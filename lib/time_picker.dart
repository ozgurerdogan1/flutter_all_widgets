import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

Stream<DateTime> getCurrentStreamTime() async* {
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield DateTime.now();
  }
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay? _setTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: getCurrentStreamTime(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,
                        child: Text(
                          "${snapshot.data!.hour}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(":"),
                      SizedBox(
                        width: 20,
                        child: Text(
                          "${snapshot.data!.minute}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(":"),
                      SizedBox(
                          width: 20,
                          child: Text(
                            "${snapshot.data!.second}",
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text("set time of: ${_setTime?.hour}:${_setTime?.minute}"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async {
                      final TimeOfDay? timeOfDay = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        cancelText: "IPTAL",
                        confirmText: "SEÇ",
                        helpText: "Saati Ayarı",
                        hourLabelText: "Saat",
                        minuteLabelText: "Dakika",
                        errorInvalidText: "Geçersiz format!",
                        initialEntryMode: TimePickerEntryMode.dial,
                        onEntryModeChanged: (p0) {
                          switch (p0) {
                            case TimePickerEntryMode.dial:
                              print("TimePickerEntryMode.dial");
                              break;
                            case TimePickerEntryMode.input:
                              print("TimePickerEntryMode.input");
                              break;
                            case TimePickerEntryMode.dialOnly:
                              print("TimePickerEntryMode.dialOnly");
                              break;
                            case TimePickerEntryMode.inputOnly:
                              print("TimePickerEntryMode.inputOnly");
                              break;
                          }
                        },
                        orientation: MediaQuery.orientationOf(context),
                        builder: (context, child) {
                          return Theme(
                            data: ThemeData.light(),
                            child: Container(
                              child: child,
                            ),
                          );
                        },
                      );
                      if (timeOfDay != null) {
                        _setTime = timeOfDay;
                        setState(() {});
                      }
                    },
                    child: Text("set time"),
                  ),
                ],
              );
            }
            return Text("");
          },
        ),
      ),
    );
  }
}
