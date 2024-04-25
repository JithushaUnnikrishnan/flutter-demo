

import 'dart:io';


import 'package:demo/doctor/doctor_bottombuton.dart';
import 'package:demo/doctor/dr_edit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  final picker = ImagePicker();

  File? _imageFile;

  Future<void> getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

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
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DBottomButton()));
                      },
                      child: Icon(Icons.arrow_back)),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorEdit()));
                    },
                    child: Container(
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
                            padding: const EdgeInsets.only(left: 5,top: 15),
                            child: Container(
                              height: 79,width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: _imageFile != null
                                        ? FileImage(_imageFile!)
                                        : const AssetImage('assets/drimage.png')
                                    as ImageProvider<Object>,)
                              ),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.transparent,

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
              top: MediaQuery.of(context).size.height * .210,
              left: MediaQuery.of(context).size.width * .310,
              child: Container(

                child: IconButton(
                  onPressed: () async {
                    await getImage();
                  },
                  icon: Icon(Icons.camera_alt_outlined),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 300.0, horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Visiting Time:2:00pm to 6:00pm"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text("Qualification"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text("Specialization"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text("Home Address"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
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
