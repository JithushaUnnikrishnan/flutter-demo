import 'package:demo/daycare/Daycare_childview.dart';
import 'package:demo/daycare/daybottombutn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareChildren extends StatefulWidget {
  const DaycareChildren({super.key});

  @override
  State<DaycareChildren> createState() => _DaycareChildrenState();
}

class _DaycareChildrenState extends State<DaycareChildren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading:IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DayBottomButton()));
        }, icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromRGBO(117, 10, 100, 1),
        toolbarHeight: 122,
        elevation: 6,
        shadowColor: Colors.grey,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        title: Center(
          child: Text(
            " Children",
            style: GoogleFonts.inriaSerif(
              fontSize: 38,
              color: Colors.white,
            ),
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
            "No of Children",
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
              Text("Jeni",
                  style: GoogleFonts.inriaSerif(
                      fontSize: 30, color: Colors.black)),
              SizedBox(
                width: MediaQuery.of(context).size.width * .45,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DaycareChildview()));
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
      ])),
    );
  }
}
