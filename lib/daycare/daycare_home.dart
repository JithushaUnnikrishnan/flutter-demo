import 'package:demo/daycare/DAycarefoodview.dart';
import 'package:demo/daycare/Datcare_parent.dart';
import 'package:demo/daycare/daycare_activity.dart';
import 'package:demo/daycare/daycare_children.dart';
import 'package:demo/daycare/daycare_food.dart';
import 'package:demo/daycare/daycare_staff.dart';
import 'package:demo/logo/select_categoryfor%20reg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'daycaraefood editview.dart';

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
        title: Padding(
          padding: const EdgeInsets.only(left:50 ),
          child: Text("My School",style: GoogleFonts.inriaSerif(color: Colors.white,fontSize: 30)),
        ),


      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.075),
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DaycareStaff()));
              },
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
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DaycareParent()));
              },
                child: Container(
                  height: 72,width: 312,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(205, 242, 199, 1),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                      ]
                  ),
                  child: Text("Children Request",style: GoogleFonts.inriaSerif(color: Colors.black,fontSize: 33)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DaycareChildren()));
              },
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
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DaycareActivity()));
              },
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
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DaycareFood()));
              },
                child: Container(
                  height: 72,width: 312,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(255, 99, 130, 1),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                      ]
                  ),
                  child: Center(child: Text("Food Add",style: GoogleFonts.inriaSerif(color: Colors.black,fontSize: 40))),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
