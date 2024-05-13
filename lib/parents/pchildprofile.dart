

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/parents/penroll_edit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';


class EnrollChild extends StatefulWidget {
  const EnrollChild({super.key});

  @override
  State<EnrollChild> createState() => _EnrollChildState();
}

class _EnrollChildState extends State<EnrollChild> {

  var ID;

  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      ID = spref.getString("id");
    });
    print("sharedPreference Data get");
  }

  DocumentSnapshot? Parentchildprofile;

  Getfirebase() async {
    Parentchildprofile = await FirebaseFirestore.instance
        .collection("ChildRegister")
        .doc(ID)
        .get();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Getfirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator(color: Colors.purple,));
        }
        if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        }
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 122,
            backgroundColor: Color.fromRGBO(66, 135, 156, 1),
            shadowColor: Colors.grey,
            elevation: 10,

            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnrollEdit()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Edit",
                        style: GoogleFonts.inriaSerif(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .010,
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.black,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .060,
              ),
            ],
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                  Container(
                    height: MediaQuery.of(context).size.height*.09,
                    width:MediaQuery.of(context).size.width*.15,
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),image: DecorationImage(image: AssetImage("assets/rectgirl.png"),fit: BoxFit.fill)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.04,),

                  Text("Name",style: TextStyle(color: Colors.grey),),

                  Text("Jeni"),
                  Divider(color: Colors.grey,endIndent: 20,),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Icon(Icons.home,color: Colors.grey,),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Text("Palaparamba house \nMalappuram pin:673637"),
                  Divider(endIndent: 20,),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Icon(Icons.calendar_month_rounded,color: Colors.grey,),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Text("06/12/2001"),
                  Divider(endIndent: 20,),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Text("Parent Occupation",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Text("Doctor"),
                  Divider(endIndent: 20,)
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
