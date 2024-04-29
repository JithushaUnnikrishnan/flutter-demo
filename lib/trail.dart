// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
//
// class Trail extends StatefulWidget {
//   const Trail({super.key});
//
//   @override
//   State<Trail> createState() => _TrailState();
// }
//
// class _TrailState extends State<Trail> {
//   String _filePath = '';
//
//   Future<void> _openFilePicker() async {
//     // String? filePath = await FilePicker.platform.pickFiles();
//     if (filePath != null) {
//       setState(() {
//         _filePath = filePath;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: _openFilePicker,
//               child: Text('Open File Picker'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Selected File: $_filePath',
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
