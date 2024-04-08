import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnrollChild extends StatefulWidget {
  const EnrollChild({super.key});

  @override
  State<EnrollChild> createState() => _EnrollChildState();
}

class _EnrollChildState extends State<EnrollChild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 122,
        backgroundColor: Color.fromRGBO(66, 135, 156, 1),
        shadowColor: Colors.grey,
        elevation: 10,
        title: Icon(Icons.arrow_back_ios_sharp),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1, 2),
                        spreadRadius: 2,
                        blurRadius: 3,
                        color: Colors.black54)
                  ]),
              height: 45,
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Edit",
                    style: GoogleFonts.inriaSerif(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .010,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .060,
          ),
        ],
      ),
      body: Container(
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/rectgirl.png"),
                Center(
                    child: Text(
                  "Jeni",
                  style: GoogleFonts.inriaSerif(fontSize: 20),
                )),
                SizedBox(
                  height: MediaQuery.of(context).size.hashCode * .0000006,
                ),
                Icon(Icons.home),
                SizedBox(
                  height: MediaQuery.of(context).size.hashCode * .0000008,
                ),
                Text(
                  "DOB",
                  style: GoogleFonts.inriaSerif(fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Text(
                  "Parent's",
                  style: GoogleFonts.inriaSerif(fontSize: 16),
                ),
                Text(
                  "Occupation",
                  style: GoogleFonts.inriaSerif(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .070,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .18,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * .115,
                      child: Text(":",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * .11,
                      child: Text(
                        ":",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                  Text(
                    ":",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .176,
                ),
                Text(
                  "Palaparamba House,",
                  style: GoogleFonts.inriaSerif(fontSize: 20),
                ),
                Text(
                  "Malappuram",
                  style: GoogleFonts.inriaSerif(fontSize: 20),
                ),
                Text(
                  "Pin:673645",
                  style: GoogleFonts.inriaSerif(fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .007,
                ),
                Text(
                  "06/12/2021",
                  style: GoogleFonts.inriaSerif(fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .07,
                ),
                Text(
                  "Doctor",
                  style: GoogleFonts.inriaSerif(fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
