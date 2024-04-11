import 'package:demo/daycare/daycare_updatepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareUpdate extends StatefulWidget {
  const DaycareUpdate({super.key});

  @override
  State<DaycareUpdate> createState() => _DaycareUpdateState();
}

class _DaycareUpdateState extends State<DaycareUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 10, 100, 1), toolbarHeight: 122,

          elevation: 10,
          shadowColor: Colors.black,
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)))
      ),
      body: Container(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              children: [

                Column(
                  children: [
                    SizedBox(height:MediaQuery.of(context).size.height*.08),
                    Text("Dancing",style: GoogleFonts.inriaSerif(fontSize: 20))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,top: 40),
                  child: Column(
                    children: [
                      InkWell(onTap:(){},
                        child: Container(
                          height:45,width:125,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),color: Colors.red.shade600,
                              boxShadow: [
                                BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                              ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.delete,color: Colors.white),Text("Delete",style: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height*.04),
                      InkWell(onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DaycareUpdatepage()));
                      },
                        child: Container(
                          height:45,width:135,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),color: Colors.green.shade400,
                              boxShadow: [
                                BoxShadow(offset: Offset(0, 3),spreadRadius: 2,blurRadius: 2,color: Colors.black45)
                              ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_circle_outline,color: Colors.white,),Text("Update",style: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.white)),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
