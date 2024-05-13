import 'dart:io';

import 'package:demo/parents/parent_bottombuton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class EnrollEdit extends StatefulWidget {
  const EnrollEdit({super.key});

  @override
  State<EnrollEdit> createState() => _EnrollEditState();
}

class _EnrollEditState extends State<EnrollEdit> {
  final formkey = GlobalKey<FormState>();
  var address = TextEditingController();
  var dob = TextEditingController();
  var Name=TextEditingController();
  var parentoccupation = TextEditingController();

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
    return Form(key: formkey,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(66, 135, 156, 1),
            toolbarHeight: 122,
            elevation: 10,
            shadowColor: Colors.black,
            shape: ContinuousRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80)))),

        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(

            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 280, 600),
                  child: Container(
                    height: 75,width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: _imageFile != null
                              ? FileImage(_imageFile!)
                              : const AssetImage('assets/rectgirl.png')
                          as ImageProvider<Object>,)
                    ),
                  ),
                ),
                Positioned(
                    top: 57,
                    left: 49,
                    child: IconButton(
                        onPressed: () async {
                          await getImage();
                        },
                        icon: Icon(Icons.camera_alt_outlined))),

                  Padding(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",style: GoogleFonts.inriaSerif(fontSize: 16),),
                    TextFormField(
      controller: Name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty Name !";
                        }
                      },

                      decoration: InputDecoration(

                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02,),
                    Text("Address",style: GoogleFonts.inriaSerif(fontSize: 16),),
                    TextFormField(
            controller: address,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty address !";
                        }
                      },
                      maxLines: 4,
                      minLines: 4,
                      decoration: InputDecoration(

                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02,),
                            Text("DOB",style: GoogleFonts.inriaSerif(fontSize: 16),),
                            TextFormField(
                              controller: dob,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Empty Dob !";
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * .02,),
                            Text("Parent's Occupation",style: GoogleFonts.inriaSerif(fontSize: 16),),
                            TextFormField(
                              controller: parentoccupation,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Empty Parent Occupation !";
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),

                            SizedBox(height: MediaQuery.of(context).size.height * .02,),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  if (formkey.currentState!.validate()){
                                  Navigator.pop(context);}
                                },
                                child: Container(
                                  child: Center(child: Text("Update",style: GoogleFonts.inriaSerif(fontSize: 20,color: Colors.white),)),
                                  height: MediaQuery.of(context).size.height * .050,width: MediaQuery.of(context).size.width * .25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 4),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey
                                      ),
                                  ],color: Colors.blue
                                  ),
                                ),
                              ),
                            ),
                    SizedBox(height: MediaQuery.of(context).size.height * .01,),
                ],
              ),
                  ),]),
          )
        ),
      ),
    );
  }
}
