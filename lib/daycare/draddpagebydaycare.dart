import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/daycare/signup_doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'daycare_drviewpage.dart';

class DrAdd extends StatefulWidget {
  const DrAdd({super.key});

  @override
  State<DrAdd> createState() => _DrAddState();
}

class _DrAddState extends State<DrAdd> {
  void showDeleteDialog(BuildContext context, String docId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Deletion"),
          content: Text("Are you sure you want to delete this Doctor?"),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("OK"),
              onPressed: () {
                FirebaseFirestore.instance
                    .collection("DoctorReg")
                    .doc(docId)
                    .delete();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DoctorSignup()));
        },
        child: Center(child: Text("+",style: TextStyle(fontSize: 35),)),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("DoctorReg").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(
              color: Color(0xFF750A64),
            ));
          }
          if (snapshot.hasError) {
            return Text("Error:${snapshot.error}");
          }
          final Dr = snapshot.data?.docs ?? [];
          return  ListView.builder(
            itemCount: Dr.length,
            itemBuilder: (context, index) {
              return  Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Card(
                  child: ListTile(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Drview(id:Dr[index].id)));
                  },
                      title: Text(Dr[index]["Username"],
                          style: GoogleFonts.inriaSerif(
                              fontSize: 20, color: Colors.black)),
                      subtitle:

                      Text(Dr[index]["homeaddress"],
                          style: GoogleFonts.inriaSerif()),


                      trailing:

                      IconButton(
                          onPressed: () {
                            showDeleteDialog(context, Dr[index].id);
                          },
                          icon: Icon(CupertinoIcons.delete))
                  ),
                ),);
            },

          );
        },

      ),
    );
  }
}
