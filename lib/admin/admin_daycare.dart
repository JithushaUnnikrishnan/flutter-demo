import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDaycare extends StatefulWidget {
  const AdminDaycare({super.key});

  @override
  State<AdminDaycare> createState() => _AdminDaycareState();
}

class _AdminDaycareState extends State<AdminDaycare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.black,
          backgroundColor: Color.fromRGBO(51, 242, 151, 1),
          toolbarHeight: 104,
          title: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Text(
                "Day Care",
                style: GoogleFonts.inriaSerif(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
          )),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .10,
                  height: MediaQuery.of(context).size.height * .10,
                ),
                Text(
                  "Name:Little kids\nKottukara,\nnear Kondotty\npin:673637",
                  style: GoogleFonts.inriaSerif(fontSize: 15),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .41,
                ),
                Icon(CupertinoIcons.delete)
              ],
            ),
            Divider(),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .10,
                  height: MediaQuery.of(context).size.height * .10,
                ),
                Text(
                  "Name:Tiny Care\nMavoor,\nnear Calicut\npin:673639",
                  style: GoogleFonts.inriaSerif(fontSize: 15),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .41,
                ),
                Icon(CupertinoIcons.delete)
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
