import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({super.key});

  @override
  State<TeacherProfile> createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                child: Image.asset(
                  "assets/teacher.png",
                  height: 49,
                  width: 35,
                ),
              ),
              trailing: InkWell(
                onTap: () {},
                child: Container(
                  height: 28,
                  width: 50,
                  child: Row(
                    children: [
                      Text(
                        "Edit",
                        style: TextStyle(fontSize: 14),
                      ),
                      Icon(
                        CupertinoIcons.pen,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
              title: Text(
                "Dayana",
                style: GoogleFonts.inriaSerif(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Female",
                style: GoogleFonts.inriaSerif(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text("Address"),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text("Occupation"),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text("Phone Number"),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text("Whatsapp Number",style: TextStyle(fontSize: 14),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
