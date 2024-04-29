

import 'package:demo/parents/penroll_edit.dart';
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
        automaticallyImplyLeading: false,
        toolbarHeight: 122,
        backgroundColor: Color.fromRGBO(66, 135, 156, 1),
        shadowColor: Colors.grey,
        elevation: 10,

        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EnrollEdit()));
            },
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
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        height: 75,width: 60,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: AssetImage("assets/rectgirl.png"))),),


                      Text(
                        "Jeni",
                        style: GoogleFonts.inriaSerif(fontSize: 20,),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height*.035,),
                      Icon(Icons.home,),
                      Text(
                        "DOB",
                        style: GoogleFonts.inriaSerif(fontSize: 16,height:11 ),
                      ),
                      Text(
                        "Parent's",
                        style: GoogleFonts.inriaSerif(fontSize: 16),
                      ),
                      Text(
                        "Occupation",
                        style: GoogleFonts.inriaSerif(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height:MediaQuery.of(context).size.height*.165,),
                    Text(":"),Text(":",style: TextStyle(height: 12.5),),Text(":"),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(


                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:MediaQuery.of(context).size.height*.155,),

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

                      Text(
                        "06/12/2021",
                        style: GoogleFonts.inriaSerif(fontSize: 20,height:3.1),
                      ),

                      Text(
                        "Doctor",
                        style: GoogleFonts.inriaSerif(fontSize: 20,height:6.3),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
