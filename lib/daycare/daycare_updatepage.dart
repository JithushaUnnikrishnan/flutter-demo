// import 'package:demo/daycare/daycare_updated.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class DaycareUpdatepage extends StatefulWidget {
//   const DaycareUpdatepage({super.key});
//
//   @override
//   State<DaycareUpdatepage> createState() => _DaycareUpdatepageState();
// }
//
// class _DaycareUpdatepageState extends State<DaycareUpdatepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             backgroundColor: Color.fromRGBO(117, 10, 100, 1),
//             toolbarHeight: 122,
//
//             elevation: 10,
//             shadowColor: Colors.black,
//             shape: ContinuousRectangleBorder(
//                 borderRadius:
//                     BorderRadius.only(bottomLeft: Radius.circular(80)))),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Date",
//                   style: GoogleFonts.inriaSerif(fontSize: 16),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     focusColor: Colors.white,
//                     filled: true,
//                     fillColor: Colors.white,
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                       borderSide: BorderSide(
//                         color: Colors.grey.shade300,
//                         width: 1.0,
//                       ),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                       borderSide: BorderSide(
//                         color: Colors.grey.shade300,
//                         width: 1.0,
//                       ),
//                     ),
//                     hintText: "10:30am",
//                     hintStyle: GoogleFonts.inriaSerif(fontSize: 18),
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * .05,
//                 ),
//                 Text(
//                   "Time",
//                   style: GoogleFonts.inriaSerif(fontSize: 16),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       focusColor: Colors.white,
//                       fillColor: Colors.white,
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(
//                           color: Colors.grey.shade300,
//                           width: 1.0,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(
//                           color: Colors.grey.shade300,
//                           width: 1.0,
//                         ),
//                       ),
//                       hintText: "02/02/2024",
//                       hintStyle: GoogleFonts.inriaSerif(fontSize: 18)),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * .05,
//                 ),
//                 Text(
//                   "Activity",
//                   style: GoogleFonts.inriaSerif(fontSize: 16),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       focusColor: Colors.green,
//                       filled: true,
//                       fillColor: Colors.white,
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(
//                           color: Colors.grey.shade300,
//                           width: 1.0,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(
//                           color: Colors.grey.shade300,
//                           width: 1.0,
//                         ),
//                       ),
//                       hintText: "Song",
//                       hintStyle: GoogleFonts.inriaSerif(fontSize: 18)),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * .075,
//                 ),
//                 Center(
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => DaycareUpdated()));
//                     },
//                     child: Container(
//                       child: Center(
//                         child: Text(
//                           "Update",
//                           style: GoogleFonts.inriaSerif(
//                               fontSize: 20, color: Colors.white),
//                         ),
//                       ),
//                       height: MediaQuery.of(context).size.height * .050,
//                       width: MediaQuery.of(context).size.width * .25,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: [
//                           BoxShadow(
//                               offset: Offset(0, 4),
//                               spreadRadius: 1,
//                               blurRadius: 2,
//                               color: Colors.grey),
//                         ],
//                         color: Color.fromRGBO(91, 117, 184, 1),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         backgroundColor: Color.fromRGBO(245, 245, 245, 1));
//   }
// }
