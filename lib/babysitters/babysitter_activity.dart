// import 'package:demo/babysitters/addactivity.dart';
// import 'package:demo/babysitters/babysitter_home.dart';
// import 'package:demo/babysitters/bs_bottombutton.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class TeacherActivity extends StatefulWidget {
//   const TeacherActivity({super.key});
//
//   @override
//   State<TeacherActivity> createState() => _TeacherActivityState();
// }
//
// class _TeacherActivityState extends State<TeacherActivity> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Container(
//           child: InkWell(onTap: (){
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => BottomButton()));
//           },
//               child: Icon(CupertinoIcons.arrow_left)),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 18.0),
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Students",
//                 style: GoogleFonts.roboto(
//                     fontSize: 12, fontWeight: FontWeight.normal),
//               ),
//               Row(
//                 children: [
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 20),
//                         child: Image.asset(
//                           "assets/girl.png",
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 20.0),
//                         child: Image.asset(
//                           "assets/child2.png",
//                           height: 60.5,
//                           width: 50,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Container(
//                 decoration: BoxDecoration(boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 5,
//                       spreadRadius: 1,
//                       offset: Offset(0, 12))
//                 ]),
//               ),
//               Divider(
//                 color: Colors.grey,
//                 thickness: 1,
//                 endIndent: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Row(
//                   children: [
//                     Text("Time  :"),
//                     Text(
//                       "Today,2:55pm",
//                       style: TextStyle(color: Colors.purple),
//                     ),
//                     Spacer(),
//                     Icon(
//                       CupertinoIcons.pen,
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 4,
//                       spreadRadius: 1,
//                       offset: Offset(0, 12))
//                 ]),
//               ),
//               Divider(
//                 color: Colors.grey,
//                 thickness: 1,
//                 endIndent: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Photo",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Spacer(),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 8.0),
//                       child: Icon(
//                         CupertinoIcons.delete,
//                         color: Colors.grey,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Image.asset(
//                 "assets/photo1.png",
//                 height: 250,
//                 width: 380,
//               ),
//               Text(
//                 "Note",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Text("They are playing together"),
//               Container(
//                 decoration: BoxDecoration(boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 4,
//                       spreadRadius: 1,
//                       offset: Offset(0, 12))
//                 ]),
//               ),
//               Divider(
//                 color: Colors.grey,
//                 thickness: 1,
//                 endIndent: 20,
//               ),
//               Spacer(),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 38.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => AddActivity()));
//                       },
//                       child: Text("Add Activity",style: GoogleFonts.ubuntu(color: Colors.white,fontWeight:FontWeight.bold),),
//                       style: ButtonStyle(
//                         minimumSize: MaterialStateProperty.all<Size>(
//                             Size(275, 50),),
//                           backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF3FA035)),
//                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
