import 'package:demo/daycare/daycare_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaycareForgot extends StatefulWidget {
  const DaycareForgot({super.key});

  @override
  State<DaycareForgot> createState() => _DaycareForgotState();
}

class _DaycareForgotState extends State<DaycareForgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90,left: 150),
                child: CircleAvatar(
                  child: Image.asset(
                    'assets/ellips.png',
                  ),
                  backgroundColor: Colors.white,
                  radius: 50,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.04,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("New Password",style: GoogleFonts.inriaSerif(fontSize: 20,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.09,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Confirm Password",style: GoogleFonts.inriaSerif(fontSize: 20,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DaycareLogin()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 170,top: 90),
                  child: Container(
                      height: 50,
                      width: 75,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black45)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Done",
                          style: GoogleFonts.inriaSerif(
                              fontSize: 20, color: Colors.white),
                        ),
                      )),
                ),
              ),

            ]
        ),
      ),
    );
  }
}
