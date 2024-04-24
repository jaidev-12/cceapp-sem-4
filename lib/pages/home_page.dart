import 'package:cceapp/compoents/data_set.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        leading: const Icon(Icons.menu_rounded, color: Colors.black),
      ),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "CCE",
                  style: TextStyle(
                      color: Color.fromARGB(255, 8, 69, 160),
                      fontSize: 100,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Text("Study material",
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 69, 160),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 20,
              ),
              CardListView()
            ],
          ),
        ),
      ),
    );
  }
}
