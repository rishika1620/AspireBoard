
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:portfolio/screens/widgets/pdfViewer.dart';
import '../../constants/colors.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'package:path/path.dart';
import 'dart:async';

class DownloadCVButton extends StatefulWidget {
  const DownloadCVButton({super.key});

  @override
  State<DownloadCVButton> createState() => _DownloadCVButtonState();
}

class _DownloadCVButtonState extends State<DownloadCVButton> {
  bool downloading = false;
  String progress = "0%";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.yelloworange)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("View Resume",style: TextStyle(color: AppColors.lightGrey),),
          const SizedBox.square(dimension: 12,),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.download,
              color: AppColors.yelloworange, // Replace with AppColors.yelloworange
              size: 18,
            ),
            onPressed: () async {
              // Call the function to copy the file from assets
              final path = "assets/pdf/resume.pdf";
              final file = await PdfDownload.loadAsset(path);
              openPDF(context, file);
              //await downloadResume();

            },
          )
        ],
      ),
    );
  }

  void openPDF(BuildContext context, File file) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => pdfViewer(file: file)));
  }

  Future<void> downloadResume() async {
    // Request permissions for storage
    if (await _requestStoragePermission()) {
      setState(() {
        downloading = true;
      });

      // Get the local downloads directory
      Directory? downloadsDir = await getApplicationDocumentsDirectory();
      if (downloadsDir != null) {
        String downloadsPath = downloadsDir.path;

        // Specify the file path for the resume
        String filePath = '$downloadsPath/resume.pdf';

        try {
          print("here i try");
          // If downloading from assets, load the file as bytes
          ByteData data = await rootBundle.load('assets/pdf/resume.pdf');
          List<int> bytes = data.buffer.asUint8List();

          // Save the file to the downloads directory
          File file = File(filePath);
          await file.writeAsBytes(bytes);

          print("write iin file");

          setState(() {
            progress = "Download complete!";
            downloading = false;
          });
          print('Resume downloaded to: $filePath');
        } catch (e) {
          setState(() {
            progress = "Download failed!";
            downloading = false;
          });
          print("Error: $e");
        }
      }
    }
  }

  // Request permission to write to external storage
  Future<bool> _requestStoragePermission() async {
    AndroidDeviceInfo build = await DeviceInfoPlugin().androidInfo;
    if(build.version.sdkInt>=30){
      var request = await Permission.manageExternalStorage.request();
      if (request.isGranted) {
        return true;
      } else {
        print("Permission denied!");
        return false;
      }
    }
    else{
      final status = await Permission.storage.request();
      if (status.isGranted) {
        return true;
      } else {
        print("Permission denied!");
        return false;
      }
    }
  }
}

class PdfDownload{
  static Future<File> loadAsset(String path) async{
    print("Insdie pdfdownload");
    final data = await rootBundle.load(path);
    print(data.lengthInBytes);
    final bytes = data.buffer.asUint8List();
    return _storeFiles(path, bytes);
  }

  static Future<File> _storeFiles(String url,List<int>bytes) async {
    final fileName = basename(url);
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$fileName');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}







