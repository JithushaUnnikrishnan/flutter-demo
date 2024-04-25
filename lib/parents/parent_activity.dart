import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentActivity extends StatefulWidget {
  const ParentActivity({super.key});

  @override
  State<ParentActivity> createState() => _ParentActivityState();
}

class _ParentActivityState extends State<ParentActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(66, 135, 156, 1),
        toolbarHeight: 122,
        elevation: 6,
        shadowColor: Colors.grey,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [

          SizedBox(
            width: MediaQuery.of(context).size.width * .25,
          ),
          Text(
            "ACTIVITY",
            style: GoogleFonts.inriaSerif(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .05,
          ),
        ]),
      ),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .050,
              ),
              Container(
                height: 82,
                width: 316,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: Colors.black45)
                    ],
                    color: Color.fromRGBO(
                      252,
                      229,
                      251,
                      1,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Albhabet sensory bin",
                      style: GoogleFonts.inriaSerif(fontSize: 20),
                    ),
                    Text(
                      "Time:10:00am",
                      style: GoogleFonts.inriaSerif(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .050,
              ),
              Container(
                height: 82,
                width: 316,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: Colors.black45)
                ], color: Color.fromRGBO(255, 239, 207, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Craft Making",
                      style: GoogleFonts.inriaSerif(fontSize: 20),
                    ),
                    Text(
                      "Time:1:30pm",
                      style: GoogleFonts.inriaSerif(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .050,
              ),
              Container(
                height: 82,
                width: 316,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: Colors.black45)
                ], color: Color.fromRGBO(215, 255, 201, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dancing",
                      style: GoogleFonts.inriaSerif(fontSize: 20),
                    ),
                    Text(
                      "Time:2:30pm",
                      style: GoogleFonts.inriaSerif(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
