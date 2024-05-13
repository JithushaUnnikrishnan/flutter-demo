import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/babysitters/babysitter_edit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../logo/select_categoryfor reg.dart';

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({super.key});

  @override
  State<TeacherProfile> createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  var id;

  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      id = spref.getString("id");
    });
    print("sharedPreference Data get");
  }

  DocumentSnapshot? Babysitter;

  Getfirebase() async {
    Babysitter = await FirebaseFirestore.instance
        .collection("babysiiterReg")
        .doc(id)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Getfirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator(
            color: Colors.purple,
          ));
        }
        if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        }
        return Scaffold(
          body: SafeArea(
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      child: Image.asset(
                        "assets/teacher.png",
                        height: 49,
                        width: 35,
                      ),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BabysitterEdit()));
                      },
                      child: Container(
                        height: 28,
                        width: 50,
                        child: Row(
                          children: [
                            Text(
                              "Edit",
                              style: TextStyle(fontSize: 14),
                            ),
                            Icon(
                              Icons.edit,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                    ),
                    title: Text(
                      Babysitter!['UserName'],
                      style: GoogleFonts.inriaSerif(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      Babysitter!["gender"],
                      style: GoogleFonts.inriaSerif(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        Text(Babysitter!["address"]),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.building_2_fill),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        Text(Babysitter!['daycarename']),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.school),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        Text(Babysitter!['qualification']),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        Text(Babysitter!['experiance']),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        Text(Babysitter!['phonenumber']),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.chat_bubble_rounded),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        Text(
                          Babysitter!['whatsappNumber'],
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox( height: MediaQuery.of(context).size.height*.2,),
                  InkWell(onTap: (){
                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SelectCategoryreg()));
                  },
                    child: Container(
                        child: Center(
                            child: Text("Logout",
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white, fontSize: 20))),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFC65264),
                        )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
