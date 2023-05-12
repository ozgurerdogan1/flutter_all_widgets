import 'package:flutter/cupertino.dart';

class CupertinoDatePickerWidget extends StatefulWidget {
  const CupertinoDatePickerWidget({super.key});

  @override
  State<CupertinoDatePickerWidget> createState() => _CupertinoDatePickerWidgetState();
}

class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text("${date.day}-${date.month}-${date.year}"),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 250,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.dateAndTime,
                    use24hFormat: false,
                    initialDateTime: date,
                    onDateTimeChanged: (value) {
                      setState(() {
                        date = value;
                      });
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
