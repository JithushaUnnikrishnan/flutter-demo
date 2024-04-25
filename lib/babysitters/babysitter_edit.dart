import 'dart:io';

import 'package:demo/babysitters/babysitter_activity.dart';
import 'package:demo/babysitters/babysitter_profile.dart';
import 'package:demo/babysitters/bs_bottombutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class BabysitterEdit extends StatefulWidget {
  const BabysitterEdit({super.key});

  @override
  State<BabysitterEdit> createState() => _BabysitterEditState();
}

class _BabysitterEditState extends State<BabysitterEdit> {
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
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Stack(
            children: [

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                          GestureDetector(onTap:(){
                            Navigator.pop(context);
                          },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Icon(Icons.arrow_back),
                              )),
                          SizedBox(width: MediaQuery.of(context).size.width * .02,),

                          Container(
                            height: 79,width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: _imageFile != null
                                      ? FileImage(_imageFile!)
                                      : const AssetImage('assets/teacher.png')
                                  as ImageProvider<Object>,)
                            ),
                          ),
                          Column(

                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width * .25,),
                              SizedBox(height: MediaQuery.of(context).size.height * .01,),
                              Text(
                                "Dayana",
                                style: GoogleFonts.inriaSerif(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Female",
                                style: GoogleFonts.inriaSerif(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ]),
            ),
              Positioned(top: 50,left: 75,
                child:IconButton(onPressed: ()
                  async {
                    await getImage();
                  },
                 icon: Icon(Icons.camera_alt_outlined),)
                ),

              Column(
                children: [
                  SizedBox(
                              height:MediaQuery.of(context).size.height*.12
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Address"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:20),
                              child: TextFormField(
                                maxLines: 2,
                                minLines: 2,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,top: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Occupation"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,top: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Phone Number"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,top: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Whatsapp Number"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.white),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Update",
                                    style: GoogleFonts.inriaSerif(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  )),
                            )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
