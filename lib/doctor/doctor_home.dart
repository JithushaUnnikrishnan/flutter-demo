
import 'package:demo/logo/select_categoryfor%20reg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({super.key});

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Color.fromRGBO(
              147,
              180,
              209,
              1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(
                    147,
                    180,
                    209,
                    1,
                  ),
                  elevation: 5,
                  child: InkWell(onTap: (){
                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SelectCategoryreg()));
                  },
                    child: Container(
                      width: 140, height: 50,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(
                            Icons.logout,
                            size: 30,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      // decoration: ,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),

          ),
          Positioned(
            top: 120,
            left: 40,
            child: Material(
              elevation: 10,
              child: Container(
                width: 312,
                height: 124,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(

                          radius: 50,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "assets/drimage.png",
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 30,
                    ),
                    Column(children: [

                      SizedBox(
                        height: 30,
                      ),
                      Text('DR.SARAH',
                          style: GoogleFonts.holtwoodOneSc(fontSize: 20)),
                      Text("Visiting Time"),
                      Text("11:30pm-3:30pm"),
                    ]),
                  ],
                ),
              ),
            ),

          ),


          Row(
            children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 80,
              vertical: 290,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Text("Name: Jeni"),
                Text("Date: October/12/12"),
              ],
            ),
          ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 290),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 25,width: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 2))
                          ],
                          borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(152, 183, 211, 1,),
                        ),
                        child: Center(child: Text("Approve",style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){},
                   child:  Container(
                      height: 25,
                      width:80,
                      child: Center(child: Text("Reject",style: TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2))
                      ],
                        borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(241, 70, 104, 1, )

                      ),
                    ),
                    ),
                    
                  ],
                ),

              ),

          ]
        ),

        ],
      ),
          
    ),
      
    );
  }
}
