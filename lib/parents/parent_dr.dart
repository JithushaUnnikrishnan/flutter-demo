import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/parents/drBookingdatepicker.dart';
import 'package:demo/parents/parent_bottombuton.dart';
import 'package:demo/parents/parent_home.dart';
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
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection("DoctorReg").get(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator(
            color: Colors.purple,
          ));
        }
        if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        }
        final Doctor = snapshot.data?.docs ?? [];
        return Scaffold(
            appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PBottomButton()));
                    },
                    icon: Icon(Icons.arrow_back)),
                elevation: 20,
                shadowColor: Colors.black,
                backgroundColor: Color.fromRGBO(
                  119,
                  164,
                  204,
                  1,
                ),
                toolbarHeight: 154,
                automaticallyImplyLeading: false,
                title: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/drpic.png"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Text(
                            "DOCTOR",
                            style: GoogleFonts.irishGrover(
                                fontSize: 40, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            body: ListView.builder(
              itemCount: Doctor.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Image.asset("assets/drimage.png"),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      .025),
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Doctor[index]["Username"],
                                style: GoogleFonts.holtwoodOneSc(fontSize: 20),
                              ),
                              Text(
                                Doctor[index]["specialization"],
                                style: GoogleFonts.inter(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 15),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 15),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 15),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 15),
                                ],
                              ),
                              Text(Doctor[index]["specialization"],
                                  style: GoogleFonts.inter(fontSize: 16)),
                              Text(Doctor[index]["experience"],
                                  style: GoogleFonts.inter(fontSize: 16)),
                              Text(Doctor[index]["officeaddress"],
                                  style: GoogleFonts.inter(fontSize: 16)),
                              Text(Doctor[index]["homeaddress"],
                                  style: GoogleFonts.inter(fontSize: 16)),
                              Text(Doctor[index]["Phone"],
                                  style: GoogleFonts.inter(fontSize: 16)),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      .021),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ParentBookingDr(
                                                          id: Doctor[index].id,
                                                        )));
                                          },
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.all(10),
                                            child: Container(
                                                child: Center(
                                                  child: Text(
                                                    "BOOK",
                                                    style: GoogleFonts.jomhuria(
                                                        fontSize: 20,color:Colors.white ),
                                                  ),
                                                ),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .031,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .2,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: Colors.blue)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .050,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                              child: Center(
                                                child: Text(
                                                  "CALL",
                                                  style: GoogleFonts.jomhuria(
                                                      fontSize: 20,color: Colors.white),
                                                ),
                                              ),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .031,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .2,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.green[400])),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: Offset(0, 4),
                            spreadRadius: 2,
                            blurRadius: 3,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                );
              },
            ));
      },
    );
  }
}
