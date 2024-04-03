
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: Container(
                width: 194,
                height: 44,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(172, 227, 239, 1)),
                child: const Center(
                    child: Text(
                  "Select Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(
                    232,
                    196,
                    233,
                    1,
                  ),
                ),
                height: 104,
                width: 320,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Parent",
                    style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, top: 35, bottom: 0),
              child: Container(
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(255, 251, 148, 1)),
                height: 104,
                width: 320,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Babysitters",
                      style: GoogleFonts.inriaSerif(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, top: 35, bottom: 0),
              child: Container(
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(191, 210, 228, 1)),
                height: 104,
                width: 320,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Doctors",
                      style: GoogleFonts.inriaSerif(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, top: 35, bottom: 0),
              child: Container(
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(97, 237, 220, 1)),
                height: 104,
                width: 320,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Daycare",
                    style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 145.0, right: 145, top: 100, bottom: 0),
              child: Container(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(74, 203, 87, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    "Logout",
                    style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
