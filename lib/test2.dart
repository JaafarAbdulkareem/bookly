// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:dio/dio.dart';

// class Test2 extends StatefulWidget {
//   const Test2({super.key});

//   @override
//   _Test2State createState() => _Test2State();
// }

// class _Test2State extends State<Test2> {
//   String? localPdfPath;

//   @override
//   void initState() {
//     super.initState();
//     _downloadAndSavePdf();
//   }

//   Future<void> _downloadAndSavePdf() async {
//     const url =
//         "http://books.google.co.in/books?id=6AkgAAAAIAAJ&printsec=frontcover&dq=programming&hl=&as_brr=7&as_pt=BOOKS&cd=2&source=gbs_api"; // Replace with your URL
//     final dio = Dio();

//     try {
//       final dir = await getApplicationDocumentsDirectory();
//       final filePath = "${dir.path}/sample.pdf";

//       await dio.download(
//         url,
//         filePath,
//         onReceiveProgress: (received, total) {
//           if (total != -1) {
//             print(
//                 "Download progress: ${(received / total * 100).toStringAsFixed(0)}%");
//           }
//         },
//       );

//       setState(() {
//         localPdfPath = filePath;
//       });
//     } catch (e) {
//       print("Error downloading PDF: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("PDF Viewer")),
//       body: localPdfPath == null
//           ? Center(child: CircularProgressIndicator())
//           : PDFView(
//               filePath: localPdfPath!,
//             ),
//     );
//   }
// }
