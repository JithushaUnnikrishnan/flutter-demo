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
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 104,
              width: 360,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromRGBO(250, 244, 115, 1)),
              child: Center(
                  child: Text(
                "Babysitters",
                style: GoogleFonts.inriaSerif(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Image(
                          image: AssetImage("assets/babysitters.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text("Dayana"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150.0),
                      child: Icon(CupertinoIcons.delete)),
                  ],
                ),
                Divider(endIndent: 10,indent: 10,)
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.back),label: "Back"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home")
      ],),
    );
  }
}
