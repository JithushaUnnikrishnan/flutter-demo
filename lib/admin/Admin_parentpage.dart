// import 'package:demo/admin/ad_home.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class AdminParent extends StatefulWidget {
//   const AdminParent({super.key});
//
//   @override
//   State<AdminParent> createState() => _AdminParentState();
// }
//
// class _AdminParentState extends State<AdminParent> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           elevation: 10,
//           shadowColor: Colors.black,
//           backgroundColor: Color.fromRGBO(117, 10, 100, 1),
//           toolbarHeight: 104,
//           title:
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 55),
//               child: Text("Parent",style: GoogleFonts.inriaSerif(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 40),),
//             ),
//           )
//
//       ),
//       body: Container(
//         child: ListView(
//           children: [
//
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Container(
//                         child: const Image(
//                           image: AssetImage("assets/parent.png"),
//                         ),
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment:CrossAxisAlignment.start,
//                       children: [ Text("Aswathi"),
//                       Text('Phone No:9047483821'),
//                       Text('aswathi@gmail.com',style: TextStyle(color: Colors.blue,fontSize: 13),)],),
//
//                     const Padding(
//                       padding: EdgeInsets.only(left: 100.0),
//                       child: Icon(
//                         CupertinoIcons.delete,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Divider(
//                   color: Colors.grey,
//                   endIndent: 10,
//                   indent: 10,
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   items: const [
//       //     BottomNavigationBarItem(
//       //         icon: Icon(
//       //           CupertinoIcons.back,
//       //         ),
//       //         label: "back"),
//       //     BottomNavigationBarItem(
//       //         icon: Icon(CupertinoIcons.home), label: "Home")
//       //   ],
//       // ),
//     );
//   }
// }
