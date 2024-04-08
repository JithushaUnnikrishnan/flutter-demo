import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareHome extends StatefulWidget {
  const DaycareHome({super.key});

  @override
  State<DaycareHome> createState() => _DaycareHomeState();
}

class _DaycareHomeState extends State<DaycareHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 122,
        backgroundColor: Color.fromRGBO(117, 10, 100, 1),
        elevation: 10,
        shadowColor: Colors.black,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),

        title: Row(
          children: [
            Text("My School",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 40)),
            SizedBox(width: MediaQuery.of(context).size.width * 0.15,),
            Container(
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(117, 10, 100, 1),
                  boxShadow: [
                    BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                  ]
              ),
              height: 50,width: 110,
              child: Center(child: Text("Logout",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 20))),
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              InkWell(onTap: (){},
                child: Container(
                  height: 72,width: 312,
                  decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(241, 210, 210, 1),
                          boxShadow: [
                BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                          ]
                      ),
                  child: Center(child: Text("My Staff",style: GoogleFonts.inriaSerif(color: Colors.black,fontSize: 40))),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              InkWell(onTap: (){},
                child: Container(
                  height: 72,width: 312,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(205, 242, 199, 1),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                      ]
                  ),
                  child: Text("Parent Request",style: GoogleFonts.inriaSerif(color: Colors.black,fontSize: 35)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              InkWell(onTap: (){},
                child: Container(
                  height: 72,width: 312,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(207, 201, 244, 1),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                      ]
                  ),
                  child: Center(child: Text("Children",style: GoogleFonts.inriaSerif(color: Colors.black,fontSize: 40))),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              InkWell(onTap: (){},
                child: Container(
                  height: 72,width: 312,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(242, 215, 133, 1),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                      ]
                  ),
                  child: Center(child: Text("Activity",style: GoogleFonts.inriaSerif(color: Colors.black,fontSize: 40))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
