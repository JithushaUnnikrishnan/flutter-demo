import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherChildprofile extends StatefulWidget {
  const TeacherChildprofile({super.key});

  @override
  State<TeacherChildprofile> createState() => _TeacherChildprofileState();
}

class _TeacherChildprofileState extends State<TeacherChildprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Children",style:GoogleFonts.inriaSerif(color: Colors.black,fontSize: 40),)),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50,horizontal: 100),
              child:TextButton(onPressed: (){}, child: Text("Jeni",style: GoogleFonts.inriaSerif(fontSize: 40,color: Colors.black),))
            ),
          ],
        ),
      ),
    );
  }
}
