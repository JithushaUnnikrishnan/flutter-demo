import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Color.fromRGBO(
                147,
                180,
                209,
                1,
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_sharp),
                  Spacer(),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Edit",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.edit),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            Positioned(
                left: 50,
                top: 115,
                child: Material(
                  elevation: 5,
                  child: Container(
                    width: 312,
                    height: 124,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                "assets/drimage.png",
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(
                          width: 30,
                        ),
                        Column(children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .030,
                          ),
                          Text('DR.SARAH',
                              style: GoogleFonts.holtwoodOneSc(fontSize: 20)),
                          Text("Visiting Time"),
                          Text("11:30pm-3:30pm"),
                        ]),
                      ],
                    ),
                  ),
                )),
            Positioned(
              top: MediaQuery.of(context).size.height * .200,
              left: MediaQuery.of(context).size.height * .170,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * .040,
                child: Icon(Icons.camera_alt_outlined),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 300.0, horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Visiting Time:2:00pm to 6:00pm"),
                  SizedBox(height:MediaQuery.of(context).size.height * .02,),
                  Text("Qualification"),
                  SizedBox(height:MediaQuery.of(context).size.height * .02,),
                  Text("Specialization"),
                  SizedBox(height:MediaQuery.of(context).size.height * .02,),
                  Text("Home Address"),
                  SizedBox(height:MediaQuery.of(context).size.height * .02,),
                  Text("Office Address"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
