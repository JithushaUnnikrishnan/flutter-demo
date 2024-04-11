import 'package:demo/daycare/daycare_addview.dart';
import 'package:demo/daycare/daycare_stafadd.dart';
import 'package:demo/daycare/daycarestafview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareStaff extends StatefulWidget {
  const DaycareStaff({super.key});

  @override
  State<DaycareStaff> createState() => _DaycareStaffState();
}

class _DaycareStaffState extends State<DaycareStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 10, 100, 1),
        toolbarHeight: 122,
        elevation: 6,
        shadowColor: Colors.grey,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        title:

          Text(
            "My Staff",
            style: GoogleFonts.inriaSerif(
              fontSize: 38,
              color: Colors.white,
            ),
          ),

      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "No of Staffs",
                style: GoogleFonts.inriaSerif(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Container(
              width: 367,
              height: 67,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Colors.black45)
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(245, 245, 245, 1)),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .05,
                  ),
                  Text("Dayana",
                      style: GoogleFonts.inriaSerif(
                          fontSize: 30, color: Colors.black)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DaycareStafview()));
                    },
                    child: Container(
                        height: 40,
                        width: 74,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.black45)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "View",
                            style: GoogleFonts.inriaSerif(
                                fontSize: 20, color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              width: 367,
              height: 67,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Colors.black45)
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(245, 245, 245, 1)),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .05,
                  ),
                  Text("Rajesh",
                      style: GoogleFonts.inriaSerif(
                          fontSize: 30, color: Colors.black)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 40,
                        width: 74,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.black45)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "View",
                            style: GoogleFonts.inriaSerif(
                                fontSize: 20, color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DaycareStafadd()));
              },
              child: Container(
                height: 60,
                width: 300,
                child: Center(
                  child: Text(
                    "Add Staff",
                    style: GoogleFonts.inriaSerif(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.black45)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(
                      14,
                      97,
                      116,
                      0.99,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
