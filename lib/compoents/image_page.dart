import 'package:flutter/material.dart';

class TimeTablePage extends StatelessWidget {
  final String header;

  const TimeTablePage({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(header),
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
      ),
      body: const Center(
        child: RotatedBox(
          quarterTurns: 1,
          child: Image(
            image: AssetImage('assets/timetable.jpeg'),
          ),
        ),
      ),
    );
  }
}
