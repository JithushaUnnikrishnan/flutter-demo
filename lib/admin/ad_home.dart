
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
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(
                      232, 196, 233, 1
                  ),boxShadow: [
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
                            builder: (context) => AdminParent()));
                  },
                  child: Text(
                    "Parent",
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
                  left: 15.0, right: 15, top: 25, bottom: 0),
              child: Container(
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(255, 251, 148, 1),boxShadow: [
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
                    const BoxDecoration(color: Color.fromRGBO(191, 210, 228, 1),boxShadow: [
                      BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                    ]),
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
                    const BoxDecoration(color: Color.fromRGBO(97, 237, 220, 1),boxShadow: [
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
                  left: 145.0, right: 145, top: 80, bottom: 0),
              child: Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogoPage()));
                  },
                  style: TextButton.styleFrom(
                    shadowColor: Colors.black,
                      elevation: 10,
                      backgroundColor: const Color.fromRGBO(74, 203, 87, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Row(
                    children: [
                      Text(
                        "Logout",
                        style: GoogleFonts.inriaSerif(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.exit_to_app,color: Colors.black,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
