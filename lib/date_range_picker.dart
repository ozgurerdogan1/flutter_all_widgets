import 'package:flutter/material.dart';

class DateRangePickerWidget extends StatefulWidget {
  const DateRangePickerWidget({super.key});

  @override
  State<DateRangePickerWidget> createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  @override
  Widget build(BuildContext context) {
    String dateRange = "";
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Text(dateRange),
          ElevatedButton(
            onPressed: () {
              showDateRangePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
                currentDate: DateTime.now(),
                initialDateRange: DateTimeRange(start: DateTime(2023, 5, 1), end: DateTime.now()),
              ).then((value) => setState(
                    () {
                      print(value?.duration.inDays);
                      print("${value?.end.difference(value.start).inDays}");
                      dateRange = value.toString();
                      print(dateRange);
                    },
                  ));
            },
            child: const Text("select date range"),
          ),
        ],
      )),
    );
  }
}
