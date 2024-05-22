import 'package:demo/parents/book_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class ParentBookingDr extends StatefulWidget {
  const ParentBookingDr({super.key});
  @override
  State<ParentBookingDr> createState() => _ParentBookingDrState();
}

class _ParentBookingDrState extends State<ParentBookingDr> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(
        147,
        180,
        209,
        1,
      ),),
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
            Positioned(
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
                        Text('DR.SARAH',
                            style: GoogleFonts.holtwoodOneSc(fontSize: 20)),
                        Text("Visiting Time"),
                        Text("11:30pm-3:30pm"),
                      ]),
                    ],
                  ),
                ),
              ),
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          DateTime? datepick = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025));
                          if (datepick != null) {
                            print(
                                'Date selected:${datepick.day}-${datepick.month}-${datepick.year}');
                          }
                        },
                        child: Text(
                          'Date',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SuccessPage()));
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
    );
  }
}
