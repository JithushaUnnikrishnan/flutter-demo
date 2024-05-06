import 'package:demo/doctor/dr_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorEdit extends StatefulWidget {
  const DoctorEdit({super.key});

  @override
  State<DoctorEdit> createState() => _DoctorEditState();
}

class _DoctorEditState extends State<DoctorEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Center(
              child: Text('Edit',
                  style: GoogleFonts.inriaSerif(
                      fontSize: 35, color: Colors.white))),
          toolbarHeight: MediaQuery.of(context).size.height * .15,
          backgroundColor: Color.fromRGBO(
            147,
            180,
            209,
            1,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Text("Name"),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Text("qualification"),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Text("Specialization"),
              TextFormField(
                minLines: 4,
                maxLines: 5,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Text("Home Address"),
              TextFormField(
                minLines: 4,
                maxLines: 5,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Text("Office Address"),
              TextFormField(
                minLines: 4,
                maxLines: 5,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Text("Experiance"),
              TextFormField(
                minLines: 4,
                maxLines: 5,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * .05,
                    width: MediaQuery.of(context).size.width * .25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue),
                    child: Center(
                        child: Text(
                      "Update",
                      style: GoogleFonts.inriaSerif(
                          fontSize: 20, color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
            ]),
          ),
        ));
  }
}
