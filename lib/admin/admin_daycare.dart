import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDaycare extends StatefulWidget {
  const AdminDaycare({super.key});

  @override
  State<AdminDaycare> createState() => _AdminDaycareState();
}

class _AdminDaycareState extends State<AdminDaycare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.black,
          backgroundColor: Color.fromRGBO(51, 242, 151, 1),
          toolbarHeight: 104,
          title: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Text(
                "Day Care",
                style: GoogleFonts.inriaSerif(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
          )),
      body: FutureBuilder(
          future:
              FirebaseFirestore.instance.collection("DaycareRegister").get(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Center(child: Text("Error:${snapshot.error}"));
            }
            final Daycare = snapshot.data?.docs ?? [];
            return ListView.builder(
              itemCount: Daycare.length,
              itemBuilder: (context, index) {
                return Column(

                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .10,
                          height: MediaQuery.of(context).size.height * .10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Daycare[index]['Username'],
                              style: GoogleFonts.inriaSerif(fontSize: 15),
                            ),Text(
                              Daycare[index]['PreschoolAddress'],
                              style: GoogleFonts.inriaSerif(fontSize: 15),
                            ),Text(
                              Daycare[index]['Phone'],
                              style: GoogleFonts.inriaSerif(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .2,
                        ),
                        IconButton(onPressed: (){
                         setState(() {
                           FirebaseFirestore.instance.collection("DaycareRegister").doc(Daycare[index].id).delete();
                         });
                        }, icon: Icon(CupertinoIcons.delete))
                      ],
                    ),
                    Divider(),
                  ],
                );
              },
            );
          }),
    );
  }
}
