import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class pdfViewer extends StatefulWidget {
  final File file;
  const pdfViewer({super.key, required this.file});

  @override
  State<pdfViewer> createState() => _pdfViewerState();
}

class _pdfViewerState extends State<pdfViewer> {

  late PDFViewController pdfViewController;
  int pages = 0;
  int indexpage = 0;
  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);
    final text = '${indexpage+1} of $pages';
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title : Text(name),
        centerTitle: true,
        actions:pages>=2? [

          Center(child: Text(text),),
          IconButton(onPressed: (){
            final page = indexpage == 0? pages : indexpage+1;
            pdfViewController.setPage(page);
          }, icon: Icon(Icons.chevron_left)),
          IconButton(onPressed: (){
            final page = indexpage == pages-1? 0 : indexpage+1;
            pdfViewController.setPage(page);
          }, icon: Icon(Icons.chevron_right)),
        ] : null,
      ),

      body: PDFView(
        filePath: widget.file.path,
        onRender: (pages) => setState(() => this.pages = pages!),
        onViewCreated: (pdfViewController) => this.pdfViewController = pdfViewController,
        onPageChanged: (indexpage, _) => setState(() => this.indexpage = indexpage!),
        enableSwipe: true,   // Enables smooth swiping between pages
        swipeHorizontal: false, // Change to true if you want horizontal scrolling
        autoSpacing: true,   // Adds space between pages for better readability
        pageFling: true,     // Allows fling gesture to navigate between pages
        fitPolicy: FitPolicy.BOTH,  // Adjust the fit policy to maintain aspect ratio and improve visibility
        nightMode: false,
      ),
    );
  }
}