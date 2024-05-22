// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class FoodView extends StatefulWidget {
//   const FoodView({super.key});
//
//   @override
//   State<FoodView> createState() => _FoodViewState();
// }
//
// class _FoodViewState extends State<FoodView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black12,
//           toolbarHeight: 100,
//         ),
//         body:Container(height: double.infinity,
//           width: double.infinity,
//           child: Column(children: [
//
//               ListView.builder(
//                 itemCount: 1,
//                 itemBuilder: (context, index) {
//           return  Column(
//             children: [
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding:
//                     const EdgeInsets.only(left: 15, top: 60),
//                   ),
//                   Text('Monday',
//                       style: GoogleFonts.inriaSerif(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               Row(children: [
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * .045,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey)),
//                   height: 65,
//                   width: 105,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("No breakfast data"),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * .045,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey)),
//                   height: 65,
//                   width: 105,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("No Lunch data"),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * .045,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey)),
//                   height: 65,
//                   width: 105,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("No breakfast data"),
//                     ],
//                   ),
//                 )
//               ]),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .01,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                   ),
//                   Text('Tuesday',
//                       style: GoogleFonts.inriaSerif(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('oats,milk'),
//                         Text('banana'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Brown rice,'),
//                         Text('rasam&curd'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Long cut     '),
//                         Text('banana piece'),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .015,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Text('Wednesday',
//                         style: GoogleFonts.inriaSerif(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold)),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('oats,milk'),
//                         Text('banana'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Brown rice,'),
//                         Text('rasam&curd'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Egg & Milk'),
//                         Text('apples'),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .015,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                   ),
//                   Text('Thursday',
//                       style: GoogleFonts.inriaSerif(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('oats,milk'),
//                         Text('banana'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Brown rice,'),
//                         Text('rasam&curd'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('banana  with'),
//                         Text('peanut butter'),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .015,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                   ),
//                   Text('Friday',
//                       style: GoogleFonts.inriaSerif(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('oats,milk'),
//                         Text('banana'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Brown rice,'),
//                         Text('rasam&curd'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Egg & Milk'),
//                         Text('apples'),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .015,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                   ),
//                   Text('Saturday',
//                       style: GoogleFonts.inriaSerif(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('oats,milk'),
//                         Text('banana'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Brown rice,'),
//                         Text('rasam&curd'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .045,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey)),
//                     height: 65,
//                     width: 105,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('juice&fruits'),
//                         Text('milk'),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           );
//                 },
//
//               )
//               ],),
//         ));
//   }
// }
