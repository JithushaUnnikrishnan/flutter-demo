import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/admin/ad_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminStaff extends StatefulWidget {
  const AdminStaff({super.key});

  @override
  State<AdminStaff> createState() => _AdminStaffState();
}

class _AdminStaffState extends State<AdminStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 10,
            shadowColor: Colors.black,
            backgroundColor: Color.fromRGBO(250, 244, 115, 1),
            toolbarHeight: 104,
            title: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  "Babysitters",
                  style: GoogleFonts.inriaSerif(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            )),
        body: FutureBuilder(
          future: FirebaseFirestore.instance.collection("babysiiterReg").get(),
          builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {
            if (snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            if(snapshot.hasError){
              return Center(child: Text("Error:${snapshot.error}"));
            }
            final Babysitter=snapshot.data?.docs??[];
            return ListView.builder(
              itemCount: Babysitter.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:NetworkImage( Babysitter[index]["path"],) ,
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(5.0),
                        //   child: Container(
                        //     child:  Image(
                        //       image: NetworkImage( Babysitter[index]["path"],),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Babysitter[index]["UserName"],
                                  style: GoogleFonts.inriaSerif(fontSize: 20),
                                ),
                                Text(
                                  Babysitter[index]["daycarename"],
                                  style: GoogleFonts.inriaSerif(fontSize: 15),
                                ),
                                Text(
                                  Babysitter[index]["Address"],
                                  style: GoogleFonts.inriaSerif(fontSize: 15),
                                ),
                                Text(
                                  Babysitter[index]["experiance"],
                                  style: GoogleFonts.inriaSerif(fontSize: 15),
                                ),
                                Text(
                                  Babysitter[index]["qualification"],
                                  style: GoogleFonts.inriaSerif(fontSize: 15),
                                ),
                                Text(
                                  Babysitter[index]["phonenumber"],
                                  style: GoogleFonts.inriaSerif(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .25,
                        ),
                        IconButton(onPressed: (){
                          setState(() {
                            FirebaseFirestore.instance.collection("babysiiterReg").doc(Babysitter[index].id).delete();
                          });
                        }, icon:  Icon(CupertinoIcons.delete),)
                      ],
                    ),
                    Divider()
                  ],
                );
              },
            );
          },


        )
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //         icon: Icon(CupertinoIcons.back), label: "Back"),
        //     BottomNavigationBarItem(
        //         icon: Icon(CupertinoIcons.home), label: "Home")
        //   ],
        // ),
        );
  }
}
