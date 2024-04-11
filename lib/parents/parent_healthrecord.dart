import 'package:demo/parents/parent_addhealth.dart';
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
        title:
          Text(
            "Health Record",
            style: GoogleFonts.inriaSerif(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),


      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, top: 30, right: 50),
          child: Column(

            children: [
              Row(

                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Height",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Weight",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Growth Rate ",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Temperature",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "90cm",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        " 14.29kg",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Normal ",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                      Text(
                        "Normal",
                        style: GoogleFonts.inriaSerif(fontSize: 20, height: 2),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .30,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => AddhealthRecord()));
              //       },
              //       child: Container(
              //         child: Center(
              //             child: Text(
              //           "Add",
              //           style: GoogleFonts.inriaSerif(
              //               fontSize: 20, color: Colors.white),
              //         )),
              //         height: MediaQuery.of(context).size.height * .050,
              //         width: MediaQuery.of(context).size.width * .25,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             boxShadow: [
              //               BoxShadow(
              //                   offset: Offset(0, 4),
              //                   spreadRadius: 1,
              //                   blurRadius: 2,
              //                   color: Colors.grey),
              //             ],
              //             color: Colors.blue),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
