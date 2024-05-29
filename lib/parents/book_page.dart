import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/parents/parent_dr.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ParentBooking()));
        },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: FutureBuilder(future: FirebaseFirestore.instance.collection("drbooking").get(),
        builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
                  color: Colors.purple,
                ));
          }
          if (snapshot.hasError) {
            return Text("Error${snapshot.error}");
          }
          final bookingsuc = snapshot.data?.docs ?? [];
          return  ListView.builder(
            itemCount: bookingsuc.length,
            itemBuilder: (context, index) {
              return  Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   "All Done",
                      //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      // ),
                      Row(
                        children: [
                          Text(
                            "Booking Successful",
                            style: TextStyle(
                                color: Color.fromRGBO(147, 181, 210, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.check_circle_outline,
                            color: Color.fromRGBO(147, 181, 210, 1),size: 40,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .010,
                      ),
                      Container(
                        height: 220,
                        width: 345,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(174, 214, 236, 1),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(bookingsuc[index]["drname"]),
                            Text(bookingsuc[index]["Phone"]),

                            Container(
                              child: Column(
                                children: [
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                    endIndent: 25,
                                    indent: 25,
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height * .020,),
                                  Text(bookingsuc[index]["Name"]),
                                  Text(bookingsuc[index]["Age"]),
                                  Text(bookingsuc[index]["date"]),
                                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                  ElevatedButton(onPressed: (){
                                    setState(() {
                                      FirebaseFirestore.instance.collection("drbooking").doc(bookingsuc[index].id).delete();
                                    });
                                  }, child: Text("Cancel"),style: ElevatedButton.styleFrom(foregroundColor:Colors.white,backgroundColor: Colors.red.shade700,elevation: 3 ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),

                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * .010,
                                  ),
                                ],
                              ),



                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },

          );
        },

      ),
    );
  }
}
