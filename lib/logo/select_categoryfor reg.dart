import 'package:demo/babysitters/babysitters_login.dart';
import 'package:demo/babysitters/babysitters_signup.dart';
import 'package:demo/daycare/daycare_login.dart';
import 'package:demo/daycare/daycare_register.dart';
import 'package:demo/doctor/login_doctor.dart';
import 'package:demo/doctor/signup_doctor.dart';

import 'package:demo/logo/logo_page.dart';
import 'package:demo/parents/parent_login.dart';
import 'package:demo/parents/signup_parent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCategoryreg extends StatefulWidget {
  const SelectCategoryreg({super.key});

  @override
  State<SelectCategoryreg> createState() => _SelectCategoryregState();
}

class _SelectCategoryregState extends State<SelectCategoryreg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 350, 0),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LogoPage()));
              },
                  child: Icon(Icons.arrow_back)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 80),
              child: Container(

                // width: 194,
                // height: 44,
                // decoration:
                // const BoxDecoration(color: Color.fromRGBO(172, 227, 239, 1)),
                child:  Center(
                    child: Text(
                      "Select Category",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 0),
              child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
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
                            builder: (context) => ParentLogin()));
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
               BoxDecoration(borderRadius: BorderRadius.circular(25),color: Color.fromRGBO(255, 251, 148, 1),boxShadow: [
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
                            builder: (context) => BabysitterLogin()));
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
               BoxDecoration(borderRadius: BorderRadius.circular(25),color: Color.fromRGBO(191, 210, 228, 1),boxShadow: [
                  BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                ]),
                height: 104,
                width: 320,
                child: TextButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorLogin()));

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
                 BoxDecoration(borderRadius: BorderRadius.circular(25),color: Color.fromRGBO(97, 237, 220, 1),boxShadow: [
                  BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                ]),
                height: 104,
                width: 320,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DaycareLogin()));
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
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 145.0, right: 145, top: 80, bottom: 0),
            //   child: Container(
            //     child: TextButton(
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => LogoPage()));
            //       },
            //       style: TextButton.styleFrom(
            //           shadowColor: Colors.black,
            //           elevation: 10,
            //           backgroundColor: const Color.fromRGBO(74, 203, 87, 1),
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(30))),
            //       child: Row(
            //         children: [
            //           Text(
            //             "Logout",
            //             style: GoogleFonts.inriaSerif(
            //                 color: Colors.black,
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold),
            //           ),
            //           Icon(Icons.exit_to_app,color: Colors.black,)
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
