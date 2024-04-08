import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDoctor extends StatefulWidget {
  const AdminDoctor({super.key});

  @override
  State<AdminDoctor> createState() => _AdminDoctorState();
}

class _AdminDoctorState extends State<AdminDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black,
        backgroundColor: Color.fromRGBO(54, 151, 238, 1),
        toolbarHeight: 104,
        title: Row(
          children: [
            Icon(Icons.arrow_back_ios_sharp),
            SizedBox(
              width: MediaQuery.of(context).size.width * .170,
            ),
            Container(
              child: Text("Doctor",style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                  height:  MediaQuery.of(context).size.height * .2,
                ),
                Image.asset("assets/drimage.png"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .0150,
                ),
                Text("Dr.Sarah",style: GoogleFonts.inriaSerif(fontSize: 20),),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .250,
                ),
                Icon(CupertinoIcons.delete)
              ],
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.grey,
            ),
            Container(
              height: 67,width: 390,
              decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10),color: Colors.white,
    boxShadow: [
    BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
    ]
    ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .035,
                  ),
                  Text("Dr.Deepak",style: GoogleFonts.inriaSerif(fontSize: 20),),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  Container(
                    height: 36,width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(233, 23, 23, 1,),
                        boxShadow: [
                          BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                        ]
                    ),
                    child: Center(child: Text("Reject",style: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.white),)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .0150,
                  ),
                  Container(
                    height: 36,width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(56, 41, 227, 1),
                        boxShadow: [
                          BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                        ]
                    ),
                    child: Center(child: Text("Accept",style: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.white),)),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
