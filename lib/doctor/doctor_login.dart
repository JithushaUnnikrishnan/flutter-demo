// import 'package:demo/doctor/doctor_bottombuton.dart';
// import 'package:demo/doctor/doctor_home.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class DoctorLogin22 extends StatefulWidget {
//   const DoctorLogin22({super.key});
//
//   @override
//   State<DoctorLogin22> createState() => _DoctorLogin22State();
// }
//
// class _DoctorLogin22State extends State<DoctorLogin22> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration:  BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/output.png'),
//             //   // fit: BoxFit.fill,
//           ),
//         ),
//         padding: const EdgeInsets.all(30),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   "Login",
//                   style: GoogleFonts.rubikGlitch(
//                     fontSize: 50,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 60,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 border: const OutlineInputBorder(),
//                 labelText: "Email",
//                 filled: true,
//                 fillColor: Colors.grey[50],
//                 labelStyle: const TextStyle(color: Colors.grey),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                   border: const OutlineInputBorder(),
//                   labelText: "Password",
//                   filled: true,
//                   fillColor: Colors.grey[50],
//                   labelStyle: const TextStyle(color: Colors.grey)),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Row(
//               children: [
//                 Expanded(
//                     child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: Text(
//                     "Forgot password?",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 )),
//               ],
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => DBottomButton()));
//                 },
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     foregroundColor: Colors.white),
//                 child: const Text(
//                   "Login",
//                 )),
//             const SizedBox(
//               height: 20,
//             ),
//             TextButton(
//               onPressed: () {
//
//               },
//               style: ButtonStyle(
//                 overlayColor: MaterialStateProperty.all(Colors.transparent),
//                 mouseCursor:
//                     MaterialStateProperty.all(SystemMouseCursors.basic),
//               ),
//               child: const Text(
//                 "Create account?",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
