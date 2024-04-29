import 'package:demo/admin/ad_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminStaff extends StatefulWidget {
  const AdminStaff({super.key});

  @override
  State<AdminStaff> createState() => _AdminStaffState();
}

class _AdminStaffState extends State<AdminStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.black,
          backgroundColor: Color.fromRGBO(250, 244, 115, 1),
          toolbarHeight: 104,
          title:
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Text("Babysitters",style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),),
            ),
          )

      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: const Image(
                          image: AssetImage("assets/babysitters.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dayana", style: GoogleFonts.inriaSerif(fontSize: 20),),
                        Text('Daycare Name:Little kids', style: GoogleFonts.inriaSerif(fontSize: 15),),
                        Text('No of students:10', style: GoogleFonts.inriaSerif(fontSize: 15),),
                        Text('Phone No:90785610', style: GoogleFonts.inriaSerif(fontSize: 15),),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*.15,),
                    Icon(CupertinoIcons.delete),
                  ],
                ),
                 Divider(

                )
              ],
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.back), label: "Back"),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.home), label: "Home")
      //   ],
      // ),
    );
  }
}
