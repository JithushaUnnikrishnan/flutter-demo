import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentDailytask extends StatefulWidget {
  const ParentDailytask({super.key});

  @override
  State<ParentDailytask> createState() => _ParentDailytaskState();
}

class _ParentDailytaskState extends State<ParentDailytask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 135, 156, 1),
        toolbarHeight: 122,
        elevation: 6,
        shadowColor: Colors.grey,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        title:
        Center(
          child: Text(
            "Daily Task",
            style: GoogleFonts.inriaSerif(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),


      ),
    );
  }
}
