import 'package:demo/parents/parent_bottombuton.dart';
import 'package:demo/parents/parent_dailytask.dart';
import 'package:demo/parents/parent_healthrecord.dart';
import 'package:demo/parents/parent_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentBabyprofile extends StatefulWidget {
  const ParentBabyprofile({super.key});

  @override
  State<ParentBabyprofile> createState() => _ParentBabyprofileState();
}

class _ParentBabyprofileState extends State<ParentBabyprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [

            Positioned(
              left: 25, // Position the first image outside the container
              top: 115,
              child: Container(
                width: 367,
                height: 167,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Colors.black45)
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 40),
                      child: Column(
                        children: [
                          Image.asset('assets/rectgirl.png'),
                          Text('Jeni',
                              style: GoogleFonts.inriaSerif(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text('Female',
                              style: GoogleFonts.inriaSerif(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('My Child',
                              style: GoogleFonts.inknutAntiqua(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * .03),
                          Text('Blood Group  A+',
                              style: GoogleFonts.inriaSerif(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Text('06/12/2021',
                              style: GoogleFonts.inriaSerif(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 330,left: 20),
              child: InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Parent_healthRecord()));
              },
                child: Container(
                    child: Row(
                  children: [
                    Container(
                      width: 162,height: 85,
                    decoration:   BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),spreadRadius: 2,
                            blurRadius: 2,
                            color: Colors.black45
                        )
                      ],
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(239, 96, 216, 1),
                      ),
                      child: Center(
                        child: Text('Health Record',
                            style: GoogleFonts.inriaSerif(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .1),
                    InkWell(onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParentDailytask()));
                    },
                      child: Container( width: 162,height: 85,
                          decoration:   BoxDecoration(boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black45
                            )
                          ],
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(100, 202, 98, 1),
                          ),
                          child: Center(
                            child: Text('Daily Task', style: GoogleFonts.inriaSerif(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                          )),
                    ),
                  ],
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Image.asset(
                'assets/stckpic.png',
                width: 350,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
