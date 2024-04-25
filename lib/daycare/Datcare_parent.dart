import 'package:demo/daycare/daycare_parent%20viewpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareParent extends StatefulWidget {
  const DaycareParent({super.key});

  @override
  State<DaycareParent> createState() => _DaycareParentState();
}

class _DaycareParentState extends State<DaycareParent> {
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
              "Parent Request",
              style: GoogleFonts.inriaSerif(
                fontSize: 38,
                color: Colors.white,
              ),
            ),


        ),
        body: Container(
            child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "No of Requests",
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
            width: 350,
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
              color: Color.fromRGBO(245, 245, 245, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .05,
                ),
                Text(
                  "Jeni",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestAccept()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
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
                ),
              ],
            ),
          )
        ])));
  }
}
