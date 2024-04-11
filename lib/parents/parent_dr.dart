import 'package:demo/parents/parent_bottombuton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentBooking extends StatefulWidget {
  const ParentBooking({super.key});

  @override
  State<ParentBooking> createState() => _ParentBookingState();
}

class _ParentBookingState extends State<ParentBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(
              119,
              164,
              204,
              1,
            ),
            height: MediaQuery.of(context).size.height * .175,
            width: MediaQuery.of(context).size.height * .485,
            child: Row(
              children: [
                InkWell(onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PBottomButton()));
                },
                    child: Icon(Icons.arrow_back_ios_sharp)),
                Image.asset("assets/drpic.png"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .05,
                ),
                Text(
                  "DOCTOR",
                  style: GoogleFonts.irishGrover(
                      fontSize: 60, color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 42,
              width: 312,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Search",
                  style:
                      GoogleFonts.inriaSerif(color: Colors.grey, fontSize: 30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: Container(
              child: Row(
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Image.asset("assets/drimage.png"),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .025),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Book",
                                      style: GoogleFonts.jomhuria(fontSize: 20),
                                    ),
                                  ),
                                  height: MediaQuery.of(context).size.height * .021,
                                  width: MediaQuery.of(context).size.width * .09,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue)),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * .050,),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Call",
                                    style: GoogleFonts.jomhuria(fontSize: 20),
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height * .021,
                                width: MediaQuery.of(context).size.width * .09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green[400])),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DR.SARAh",
                          style: GoogleFonts.holtwoodOneSc(fontSize: 20),
                        ),
                        Text(
                          "Pediatrician",
                          style: GoogleFonts.inter(fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                          ],
                        ),
                        Text("Tirur City Hospital",
                            style: GoogleFonts.inter(fontSize: 16)),
                        Text("Trikandiyur Rd,",
                            style: GoogleFonts.inter(fontSize: 16)),
                        Text("near Bus stand",
                            style: GoogleFonts.inter(fontSize: 16)),
                        Text("04563218953",
                            style: GoogleFonts.inter(fontSize: 16)),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .021),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(0, 4),
                  spreadRadius: 2,
                  blurRadius: 3,

                )],
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: Container(
              child: Row(
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Image.asset("assets/maledr.png"),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .025),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 10),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Book",
                                      style: GoogleFonts.jomhuria(fontSize: 20),
                                    ),
                                  ),
                                  height: MediaQuery.of(context).size.height * .021,
                                  width: MediaQuery.of(context).size.width * .09,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue)),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * .050,),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Call",
                                    style: GoogleFonts.jomhuria(fontSize: 20),
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height * .021,
                                width: MediaQuery.of(context).size.width * .09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green[400])),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DR.ANTONY",
                          style: GoogleFonts.holtwoodOneSc(fontSize: 20),
                        ),
                        Text(
                          "Pediatrician",
                          style: GoogleFonts.inter(fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.grey, size: 15),
                          ],
                        ),
                        Text("M.B Hospital",
                            style: GoogleFonts.inter(fontSize: 16)),
                        Text("Malappuram,",
                            style: GoogleFonts.inter(fontSize: 16)),
                        Text("04832345678",
                            style: GoogleFonts.inter(fontSize: 16)),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .021),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0, 4),
                    spreadRadius: 2,
                    blurRadius: 3,

                  )],
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          )
        ],
      ),
    );
  }
}
