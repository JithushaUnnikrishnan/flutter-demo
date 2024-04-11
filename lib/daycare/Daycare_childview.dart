import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareChildview extends StatefulWidget {
  const DaycareChildview({super.key});

  @override
  State<DaycareChildview> createState() => _DaycareChildviewState();
}

class _DaycareChildviewState extends State<DaycareChildview> {
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
          Padding(
            padding: const EdgeInsets.only(left: 87),
            child: Column(
              children: [
                Text(
                  "Jeni",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 38,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Child",
                  style: GoogleFonts.inriaSerif(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Image.asset("assets/childb.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,),
              Text(
                "Health : Normal",
                style: GoogleFonts.inriaSerif(
                  fontSize: 20,
                ),
              ),
              Text(
                "Blood Group : A+",
                style: GoogleFonts.inriaSerif(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
