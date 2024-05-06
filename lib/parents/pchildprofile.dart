

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
                  borderRadius: BorderRadius.circular(10),),
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
    SizedBox(height: MediaQuery.of(context).size.height*.02,),
    Container(
      height: MediaQuery.of(context).size.height*.09,
      width:MediaQuery.of(context).size.width*.2,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/rectgirl.png"))),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*.02,),

    Text("Name",style: TextStyle(color: Colors.grey),)
  ],
),
      ),
    );
  }
}
