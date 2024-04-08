import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Parent_healthRecord extends StatefulWidget {
  const Parent_healthRecord({super.key});

  @override
  State<Parent_healthRecord> createState() => _Parent_healthRecordState();
}

class _Parent_healthRecordState extends State<Parent_healthRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 135, 156, 1),
        toolbarHeight: 122,
        elevation: 6,
        shadowColor: Colors.grey,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .05,
          ),
          Text(
            "Health Record",
            style: GoogleFonts.inriaSerif(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .05,
          ),
        ]),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Height",
                    style: GoogleFonts.inriaSerif(fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    "Weight",
                    style: GoogleFonts.inriaSerif(fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    "Growth Rate",
                    style: GoogleFonts.inriaSerif(fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    "Temperature",
                    style: GoogleFonts.inriaSerif(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "90cm",
                    style: GoogleFonts.inriaSerif(fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    "14kg",
                    style: GoogleFonts.inriaSerif(fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    "Normal",
                    style: GoogleFonts.inriaSerif(fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    "Normal",
                    style: GoogleFonts.inriaSerif(fontSize: 20),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
