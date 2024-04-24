import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents PDFViewer for Navigation
class PDFViewer extends StatefulWidget {
  final String pdfPath;
  final String pdfName;

  const PDFViewer({super.key, required this.pdfPath, required this.pdfName});

  @override
  _PDFViewer createState() => _PDFViewer();
}

class _PDFViewer extends State<PDFViewer> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "PdfViewer",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        widget.pdfPath.toString(),
        key: _pdfViewerKey,
      ),
    );
  }
}
