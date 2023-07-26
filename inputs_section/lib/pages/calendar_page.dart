import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final DateTime _initialDate = DateTime.now().add(const Duration(
    days: 3,
  ));
  late DateTime _timeSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CalendarDatePicker(
                  initialDate: _initialDate,
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now().add(const Duration(days: 40)),
                  onDateChanged: (date) {
                    _timeSelected = date;
                    print('Este es el dia escogido');
                    print(_timeSelected.toString());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
