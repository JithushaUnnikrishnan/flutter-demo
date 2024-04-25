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
          physics: NeverScrollableScrollPhysics( ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 280, 600),
                child: Container(
                  height: 75,width: 65,
                  decoration: BoxDecoration(
          
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
                  Text("Address",style: GoogleFonts.inriaSerif(fontSize: 16),),
                  TextFormField(
          
                    maxLines: 4,
                    minLines: 4,
                    decoration: InputDecoration(
          
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .02,),
                          Text("DOB",style: GoogleFonts.inriaSerif(fontSize: 16),),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * .02,),
                          Text("Parent's Occupation",style: GoogleFonts.inriaSerif(fontSize: 16),),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
          
                          SizedBox(height: MediaQuery.of(context).size.height * .15,),
                          Center(
                            child: InkWell(
                              onTap: (){Navigator.pop(context);
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
                          )
              ],
            ),
                ),]),
        )
      ),
    );
  }
}
