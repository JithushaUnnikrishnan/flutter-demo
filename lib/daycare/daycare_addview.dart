import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareAddview extends StatefulWidget {
  const DaycareAddview({super.key});

  @override
  State<DaycareAddview> createState() => _DaycareAddviewState();
}

class _DaycareAddviewState extends State<DaycareAddview> {
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
        child: Padding(
          padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
          child: Column(
            children: [
              Align(alignment: Alignment.centerLeft,
                  child: Text("Activities",style: GoogleFonts.inriaSerif(fontSize: 20))),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Text("Dancing",style: GoogleFonts.inriaSerif(fontSize: 18),),
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("06/12/2023",style: GoogleFonts.inriaSerif(fontSize: 12)),
                        Text("2:00pm",style: GoogleFonts.inriaSerif(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
