
import 'package:demo/admin/Admin_parentpage.dart';
import 'package:demo/admin/admin_daycare.dart';
import 'package:demo/admin/admin_doctor.dart';
import 'package:demo/admin/staff_admin.dart';
import 'package:demo/logo/logo_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 80),
              child: Container(
                // width: 194,
                // height: 44,
                // decoration:
                //     const BoxDecoration(color: Color.fromRGBO(172, 227, 239, 1)),
                child: Center(
                    child: Text(
                  "Select Category",
                  style:GoogleFonts.inriaSerif(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
            //   child: Container(
            //     decoration: const BoxDecoration(
            //       color: Color.fromRGBO(
            //           232, 196, 233, 1
            //       ),boxShadow: [
            //       BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
            //     ]
            //     ),
            //     height: 104,
            //     width: 320,
            //     child: TextButton(
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => AdminParent()));
            //       },
            //       child: Text(
            //         "Parent",
            //         style: GoogleFonts.inriaSerif(
            //             color: Colors.black,
            //             fontSize: 40,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, top: 25, bottom: 0),
              child: Container(
                decoration:
                     BoxDecoration(color: Color.fromRGBO(255, 251, 148, 1),borderRadius: BorderRadius.circular(10),boxShadow: [
                      BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                    ]
                     ),
                height: 104,
                width: 320,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminStaff()));
                    },
                    child: Text(
                      "Babysitters",
                      style: GoogleFonts.inriaSerif(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, top: 35, bottom: 0),
              child: Container(
                decoration:
                     BoxDecoration(color: Color.fromRGBO(191, 210, 228, 1),boxShadow: [
                      BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                    ],borderRadius: BorderRadius.circular(10),
                    ),
                height: 104,
                width: 320,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminDoctor()));
                    },
                    child: Text(
                      "Doctors",
                      style: GoogleFonts.inriaSerif(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, top: 35, bottom: 0),
              child: Container(
                decoration:
                     BoxDecoration(color: Color.fromRGBO(97, 237, 220, 1),borderRadius: BorderRadius.circular(10),boxShadow: [
                      BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                    ]),
                height: 104,
                width: 320,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminDaycare()));
                  },
                  child: Text(
                    "Daycare",
                    style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,right:30,top: 80, bottom: 0),
              child: InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LogoPage()));
              },
                child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*.3,),
                        Text("Logout",
                            style: GoogleFonts.ubuntu(
                                color: Colors.white, fontSize: 20)),
                        SizedBox(width: MediaQuery.of(context).size.width*.01,),

                        Icon(Icons.logout_outlined,color: Colors.white,)
                      ],
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFC65264),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
