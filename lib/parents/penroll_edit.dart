import 'package:demo/parents/parent_bottombuton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnrollEdit extends StatefulWidget {
  const EnrollEdit({super.key});

  @override
  State<EnrollEdit> createState() => _EnrollEditState();
}

class _EnrollEditState extends State<EnrollEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 135, 156, 1), toolbarHeight: 122,


        elevation: 10,
        shadowColor: Colors.black,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)))
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
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
              SizedBox(height: MediaQuery.of(context).size.height * .02,),
              Text("Photo",style: GoogleFonts.inriaSerif(fontSize: 16),),
              Row(
                children: [
                  Container(

                    height:MediaQuery.of(context).size.height * .075,
                    width: MediaQuery.of(context).size.width * .87,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black54,width: 1)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 300),
                      child: InkWell(onTap: (){},
                        child: Icon(
                          Icons.camera_alt_outlined,size: 40,color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .075,),
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
        ),
      ),
    );
  }
}
