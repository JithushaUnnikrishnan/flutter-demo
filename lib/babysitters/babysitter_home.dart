import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BabysitterHome extends StatefulWidget {
  const BabysitterHome({super.key});

  @override
  State<BabysitterHome> createState() => _BabysitterHomeState();
}

class _BabysitterHomeState extends State<BabysitterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/homebaby.png"),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Menu",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          backgroundColor: Color.fromRGBO(95, 213, 239, 1),
                          elevation: 10,
                          shadowColor: Colors.black,
                          minimumSize: Size(150, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28))),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Activity",
                      style: GoogleFonts.inriaSerif(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        backgroundColor: Color.fromRGBO(211, 134, 64, 1),
                        minimumSize: Size(150, 100),
                        elevation: 10,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28))),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(5, 30, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "My Children",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        backgroundColor: Color.fromRGBO(190, 64, 211, 1),
                        minimumSize: Size(150, 100),
                        elevation: 10,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28))),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Logout",
                      style: GoogleFonts.robotoSerif(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(81, 150, 188, 0.56),
                        elevation: 10,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home,color: Colors.black, ), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_crop_circle_fill,color: Colors.black,), label: 'Profile'),
        ],
      ),
    );
  }
}
