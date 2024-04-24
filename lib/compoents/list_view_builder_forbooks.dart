import 'package:cceapp/pages/pdfviewonline.dart';
import 'package:flutter/material.dart';

class DSAListViewBuilder extends StatelessWidget {
  final String section;
  final String title;
  DSAListViewBuilder({Key? key, required this.section, required this.title})
      : super(key: key);

  final List<String> DSAlocation = [
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FBooks%2FAlgorithmsFourthEdition_RobertSedgewick.pdf?alt=media&token=dc01ab5c-5713-4020-a201-4bc4a9bc8c42",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FBooks%2FIntroduction.to.Computation.and.Programming.Using.Python.2nd.Edition.pdf?alt=media&token=0b538b47-4343-43e9-b762-1ecf42b17ece",
  ];

  final List<String> DSAbookName = [
    "AlgorithmsFourthEdition_RobertSedgewick.pdf",
    "Introduction.to.Computation.and.Programming.Using.Python.2nd.Edition.pdf",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(section),
      ),
      body: ListView.separated(
        itemCount: DSAlocation.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                        pdfPath: DSAlocation[index],
                        pdfName: DSAbookName[index]),
                  ),
                );
              },
              title: Text(
                DSAbookName[index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DSPListViewBuilder extends StatelessWidget {
  final String section;
  final String title;
  DSPListViewBuilder({Key? key, required this.section, required this.title})
      : super(key: key);

  final List<String> DSPlocation = [
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FBooks%2Fsignals-and-systems-simon-haykin.pdf?alt=media&token=7dc0c516-4449-4523-bc00-a268f7fd207f"
  ];

  final List<String> DSPbookName = ["signals-and-systems-simon-haykin"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(section),
      ),
      body: ListView.separated(
        itemCount: DSPlocation.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                        pdfPath: DSPlocation[index],
                        pdfName: DSPbookName[index]),
                  ),
                );
              },
              title: Text(
                DSPbookName[index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MATListViewBuilder extends StatelessWidget {
  final String section;
  final String title;
  MATListViewBuilder({Key? key, required this.section, required this.title})
      : super(key: key);

  final List<String> MATlocation = [
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FBooks%2FBook-Applied%20StatisticsandProbability%20for%20Engineers%2C%20e5%20.pdf?alt=media&token=5c2519cc-f9db-4af6-abfd-fcaeac0169d6"
  ];

  final List<String> MATbookName = [
    "Applied StatisticsandProbability for Engineers"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(section),
      ),
      body: ListView.separated(
        itemCount: MATlocation.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                        pdfPath: MATlocation[index],
                        pdfName: MATbookName[index]),
                  ),
                );
              },
              title: Text(
                MATbookName[index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ECMListViewBuilder extends StatelessWidget {
  final String section;
  final String title;
  ECMListViewBuilder({Key? key, required this.section, required this.title})
      : super(key: key);

  final List<String> ECMlocation = [
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FCEM%20viva%20notes.pdf?alt=media&token=31c1ddb2-3ed4-49ba-bbf6-3c57923b6719"
  ];

  final List<String> ECMbookName = ["CEM viva notes"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(section),
      ),
      body: ListView.separated(
        itemCount: ECMlocation.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                        pdfPath: ECMlocation[index],
                        pdfName: ECMbookName[index]),
                  ),
                );
              },
              title: Text(
                ECMbookName[index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
