import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/parents/book_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class ParentBookingDr extends StatefulWidget {
  const ParentBookingDr({super.key, required this.id});
  final id;
  @override
  State<ParentBookingDr> createState() => _ParentBookingDrState();
}

class _ParentBookingDrState extends State<ParentBookingDr> {
  DocumentSnapshot? Booking;

  Getfirebase() async {
    Booking = await FirebaseFirestore.instance.collection("DoctorReg").doc(widget.id).get();
  }
  DateTime? _selectedDate;
  final formkey = GlobalKey<FormState>();
  var Name = TextEditingController();
  var Age = TextEditingController();

  Future<dynamic> Drbooking() async {
    await FirebaseFirestore.instance.collection("drbooking").add({
      "Name": Name.text,
      "Age": Age.text,
      "date":_selectedDate.toString()
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(
            147,
            180,
            209,
            1,
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Text(
                    "Booking",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                width: double.infinity,
                height: 100,
                color: Color.fromRGBO(
                  147,
                  180,
                  209,
                  1,
                ),
              ),
              FutureBuilder(future: Getfirebase(),
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

                 return  Positioned(
                   top: 70,
                   left: 50,
                   child: Material(
                     elevation: 10,
                     child: Container(
                       width: 312,
                       height: 124,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Row(
                         children: [
                           Column(children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: CircleAvatar(
                                 radius: 50,
                                 backgroundColor: Colors.transparent,
                                 child: Image.asset(
                                   "assets/drimage.png",
                                 ),
                               ),
                             ),
                           ]),
                           SizedBox(
                             width: 30,
                           ),
                           Column(children: [
                             SizedBox(
                               height: 30,
                             ),
                             Text(Booking!["Username"],
                                 style: GoogleFonts.holtwoodOneSc(fontSize: 20)),
                             Text("Visiting Time"),
                             Text("11:30pm-3:30pm"),
                           ]),
                         ],
                       ),
                     ),
                   ),
                 );
               },

              ),
              SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 290,
                      ),
                      child: Text(
                        'Select a Date',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            child: _selectedDate != null
                                ? Text(
                                    'Selected Date: ${_selectedDate!.day}-${_selectedDate!.month}-${_selectedDate!.year}',
                                    style: TextStyle(fontSize: 18),
                                  )
                                : Text("Select")),
                        IconButton(
                          onPressed: () async {
                            DateTime? datepick = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025),
                            );
                            if (datepick != null) {
                              setState(() {
                                _selectedDate = datepick;
                              });
                            }
                          },
                          icon: Icon(Icons.calendar_month_rounded),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: TextFormField(
                        controller: Name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty Name !";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: Age,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty Age !";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Age',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          Drbooking();
                        }
                      },
                      child: Container(
                        height: 45,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(152, 183, 211, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          'Book Appointment',
                          style: GoogleFonts.inriaSerif(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
