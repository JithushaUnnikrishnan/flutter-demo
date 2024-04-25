import 'package:demo/admin/ad_home.dart';
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
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromRGBO(250, 244, 115, 1),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Colors.black45)
                  ]),
              child: Center(
                  child: Row(
                children: [
                  InkWell(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminHome()));
                  },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Icons.arrow_back),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  Text(
                    "Babysitters",
                    style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
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
                          image: AssetImage("assets/babysitters.png"),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text("Dayana"),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 150.0),
                        child: Icon(CupertinoIcons.delete)),
                  ],
                ),
                const Divider(
                  endIndent: 10,
                  indent: 10,
                )
              ],
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.back), label: "Back"),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.home), label: "Home")
      //   ],
      // ),
    );
  }
}
