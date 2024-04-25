import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareProfile extends StatefulWidget {
  const DaycareProfile({super.key});

  @override
  State<DaycareProfile> createState() => _DaycareProfileState();
}

class _DaycareProfileState extends State<DaycareProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(117, 10, 100, 1),
        toolbarHeight: 122,
        elevation: 6,
        shadowColor: Colors.grey,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        title: Center(
          child: Text(
            "Profile",
            style: GoogleFonts.inriaSerif(
              fontSize: 38,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              Row(
                children: [
                  Icon(CupertinoIcons.building_2_fill),
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('Name',
                      style: GoogleFonts.inriaSerif(
                        fontSize: 20,
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 42),
                    child: Text('Littile Kids',style: GoogleFonts.inriaSerif(
                      fontSize: 20,)),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.45,),
                  Icon(Icons.edit),
                ],
              ),

              Divider(color: Colors.grey,indent: 40),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),

              Row(
                children: [
                  Icon(Icons.report),
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('About',
                      style: GoogleFonts.inriaSerif(
                        fontSize: 20,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: Row(
                  children: [
                    Text('Always Available',style: GoogleFonts.inriaSerif(
                      fontSize: 20,)),
                    SizedBox(width: MediaQuery.of(context).size.width*.30,),
                    Icon(Icons.edit),
                  ],
                ),
              ),

              Divider(color: Colors.grey,indent: 40),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              Row(
                children: [
                  Icon(Icons.call),
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('Phone',
                      style: GoogleFonts.inriaSerif(
                        fontSize: 20,
                      )),
                ],
              ),


              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: Row(
                  children: [
                    Text('9048567321',style: GoogleFonts.inriaSerif(
                      fontSize: 20,)),
                    SizedBox(width: MediaQuery.of(context).size.width*.43,),
                    Icon(Icons.edit)
                  ],
                ),
              ),
              Divider(color: Colors.grey,indent: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
