import 'package:cceapp/pages/resources_page.dart';
import 'package:flutter/material.dart';

class DSADriveFiles extends StatelessWidget {
  final String header;
  final List<String> content = ["Books", "Lectures", "Tutorial"];

  DSADriveFiles({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(header),
      ),
      body: Column(
        children: [
          Expanded(
            child: ResourcesPage(title: header),
          )
        ],
      ),
    );
  }
}

class DSPDriveFiles extends StatelessWidget {
  final String header;
  final List<String> content = ["Books", "Lectures", "Tutorial"];

  DSPDriveFiles({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(header),
      ),
      body: Column(
        children: [
          Expanded(
            child: ResourcesPage(title: header),
          )
        ],
      ),
    );
  }
}

class MATDriveFiles extends StatelessWidget {
  final String header;
  final List<String> content = ["Books", "Lectures", "Tutorial"];

  MATDriveFiles({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(header),
      ),
      body: Column(
        children: [
          Expanded(
            child: ResourcesPage(title: header),
          )
        ],
      ),
    );
  }
}

class ECMDriveFiles extends StatelessWidget {
  final String header;
  final List<String> content = ["Books", "Lectures", "Tutorial"];

  ECMDriveFiles({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(header),
      ),
      body: Column(
        children: [
          Expanded(
            child: ResourcesPage(title: header),
          )
        ],
      ),
    );
  }
}
