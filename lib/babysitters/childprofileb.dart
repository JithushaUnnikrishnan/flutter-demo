import 'package:flutter/cupertino.dart';
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
        title: Center(
            child: Text(
          "My Children",
          style: GoogleFonts.inriaSerif(color: Colors.black, fontSize: 40),
        )),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90,left: 20,right: 20),
              child: Container(
                  child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(215, 240, 62, 1),
                          minimumSize: const Size(100, 150),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Image(
                                    image: AssetImage("assets/kid.png"),
                                    height: 92,
                                    width: 60,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jeni",
                                  style: GoogleFonts.inriaSerif(
                                      fontSize: 40, color: Colors.black),
                                ),
                                Text("Female",
                                    style: GoogleFonts.inriaSerif(
                                        fontSize: 40, color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ))),
            ),
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(240, 190, 62, 1),
                    minimumSize: const Size(100, 150),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/kid2.png",),width: 82,height: 109,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text("Alen",style: GoogleFonts.inriaSerif(color: Colors.black,fontSize: 40),),
                            Text("Male",style: GoogleFonts.inriaSerif(color: Colors.black,fontSize: 40),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(255, 252, 250, 1),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon:Icon(
      //       CupertinoIcons.home,color: Colors.black,),label: "Home" ),
      //     BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_crop_circle_fill,color: Colors.black,),label: "Profile"),
      //   ],
      // ),
    );
  }
}
