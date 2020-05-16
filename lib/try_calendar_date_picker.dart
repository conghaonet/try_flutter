import 'package:flutter/material.dart';

class TryCalendarDatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Builder(builder: (context) {
            return CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime.now().add(Duration(days: -365)),
              lastDate: DateTime.now().add(Duration(days: 365)),
              onDateChanged: (datetime) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(datetime.toString()),
                ));
              },
            );
          }),
        ),
      ),
    );
  }
}
