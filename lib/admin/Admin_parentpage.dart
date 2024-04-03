import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminParent extends StatefulWidget {
  const AdminParent({super.key});

  @override
  State<AdminParent> createState() => _AdminParentState();
}

class _AdminParentState extends State<AdminParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              width: 360,
              height: 104,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromRGBO(113, 9, 115, 1)),
              child: Center(
                  child: Text(
                "Parent",
                style: GoogleFonts.inriaSerif(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              )),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: const Image(
                          image: AssetImage("assets/parent.png"),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text("Aswathi"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 150.0),
                      child: Icon(
                        CupertinoIcons.delete,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  endIndent: 10,
                  indent: 10,
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.back,
              ),
              label: "back"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home")
        ],
      ),
    );
  }
}
