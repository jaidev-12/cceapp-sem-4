import 'package:cceapp/compoents/image_page.dart';
import 'package:cceapp/pages/drive_files_page.dart';
import 'package:flutter/material.dart';

class CardListView extends StatelessWidget {
  final List<String> subjects = <String>[
    "Data Structure and Algorithm",
    "Signal Processing",
    "Probability",
    "ECM",
    "TimeTable"
  ];

  CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: subjects.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: const Color.fromARGB(255, 8, 69, 160),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 0,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                if (subjects[index] == 'TimeTable') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TimeTablePage(header: subjects[index]),
                    ),
                  );
                } else if (subjects[index] == 'Data Structure and Algorithm') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DSADriveFiles(header: subjects[index]),
                    ),
                  );
                } else if (subjects[index] == 'Signal Processing') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DSPDriveFiles(header: subjects[index]),
                    ),
                  );
                } else if (subjects[index] == 'Probability') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MATDriveFiles(header: subjects[index]),
                    ),
                  );
                } else if (subjects[index] == 'ECM') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ECMDriveFiles(header: subjects[index]),
                    ),
                  );
                }
              },
              title: Text(
                subjects[index],
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
