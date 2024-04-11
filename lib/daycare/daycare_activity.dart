import 'package:demo/daycare/daycare_addactivity.dart';
import 'package:demo/daycare/daycare_update.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareActivity extends StatefulWidget {
  const DaycareActivity({super.key});

  @override
  State<DaycareActivity> createState() => _DaycareActivityState();
}

class _DaycareActivityState extends State<DaycareActivity> {
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

          Center(
            child: Text(
              "Activity",
              style: GoogleFonts.inriaSerif(
                fontSize: 38,
                color: Colors.white,
              ),
            ),
          ),


      ),
      body: Container(
        child: Column(
          children: [
        SizedBox(
        height: MediaQuery.of(context).size.height * .25,
        width:MediaQuery.of(context).size.width * 1,),
            InkWell(onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DaycareAddactivity()));
            },
              child: Container(
                height: 60,width: 199,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),spreadRadius: 2,
                      blurRadius: 2,
                      color: Colors.black45
                  )
                ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue
                ),
                child: Center(
                  child: Text("Add",style: GoogleFonts.inriaSerif(color: Colors.white,
                    fontSize: 30,


                  ),),
                ),
              ),
            ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .09,),
            InkWell(onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>DaycareUpdate()));
            },
              child: Container(
                height: 60,width: 199,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),spreadRadius: 2,
                      blurRadius: 2,
                      color: Colors.black45
                  )
                ],
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(255, 103, 140, 1),
                ),
                child: Center(
                  child: Text("Update&Delete",style: GoogleFonts.inriaSerif(color: Colors.white,
                    fontSize: 25,


                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
