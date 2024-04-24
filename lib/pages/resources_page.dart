import 'package:cceapp/compoents/list_view_builder_forbooks.dart';
import 'package:cceapp/compoents/list_view_forlectures.dart';
import 'package:flutter/material.dart';

class ResourcesPage extends StatelessWidget {
  final List<String> content = ["Books", "Lectures", "Tutorial"];
  final String title;

  ResourcesPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: (title == 'Data Structure and Algorithm')
          ? content.length
          : content.length - 1,
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
              if (title == 'Data Structure and Algorithm' &&
                  content[index] == 'Books') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DSAListViewBuilder(
                        section: content[index], title: title),
                  ),
                );
              } else if (title == 'Data Structure and Algorithm' &&
                  content[index] == 'Lectures') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DSAListViewBuilderLectures(
                        section: content[index], title: title),
                  ),
                );
              } else if (title == 'Signal Processing' &&
                  content[index] == 'Books') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DSPListViewBuilder(
                        section: content[index], title: title),
                  ),
                );
              } else if (title == 'Signal Processing' &&
                  content[index] == 'Lectures') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DSPListViewBuilderLectures(
                        section: content[index], title: title),
                  ),
                );
              } else if (title == 'Probability' && content[index] == 'Books') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MATListViewBuilder(
                        section: content[index], title: title),
                  ),
                );
              } else if (title == 'ECM' && content[index] == 'Books') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ECMListViewBuilder(
                        section: content[index], title: title),
                  ),
                );
              } else if (title == 'ECM' && content[index] == 'Lectures') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ECMListViewBuilder(
                        section: content[index], title: title),
                  ),
                );
              }
            },
            title: Text(
              content[index],
              style: const TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}
